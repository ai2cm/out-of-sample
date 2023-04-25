import fsspec
import json
from math import isclose
import os
from run_dict import RUN_DICT, BASELINE_ALG, ML_ONLY_ALG, ML_ONLY_TQ_ALG, MINMAX_ALG, OCSVM_ALG
from vcm.catalog import catalog 
import xarray as xr

RUN_DIR = 'fv3gfs_run'

COMMON_COORDS = {"tile": range(6), "x": range(48), "y": range(48)}
GRID = catalog["grid/c48"].read().assign_coords(COMMON_COORDS)

def get_fsspec_datasets_from_path(runs, path_fn):
    datasets = {
        name: xr.open_zarr(fsspec.get_mapper(path_fn(run)))
        for name, run in runs.items()
    }
    return datasets

def get_diags(runs):
    """
    runs is a subdictionary of RUN_DICT
    """
    diags_path = lambda run: os.path.join(run["url"], RUN_DIR, 'diags.zarr')
    return get_fsspec_datasets_from_path(runs, diags_path)

def get_diags_3d(runs):
    diags_3d_path = lambda run: os.path.join(run["url"], RUN_DIR, 'diags_3d.zarr')
    runs = {name: run for name, run in runs.items() if name != BASELINE_ALG}
    return get_fsspec_datasets_from_path(runs, diags_3d_path)

def get_states(runs):
    states_path = lambda run: os.path.join(run["url"], RUN_DIR, 'state_after_timestep.zarr')
    return get_fsspec_datasets_from_path(runs, states_path)

def get_atmos(runs):
    atmos_path = lambda run: os.path.join(run["url"], RUN_DIR, 'atmos_dt_atmos.zarr')
    return get_fsspec_datasets_from_path(runs, atmos_path)

def get_validation():
    validation = xr.open_zarr(fsspec.get_mapper(
        "gs://vcm-ml-intermediate/2021-10-12-PIRE-c48-post-spinup-verification/pire_atmos_dyn_plev_coarse_3h.zarr"
    ))
    return validation

def print_diags_complete_path_download_cli(runs):
    diagnostics_path = lambda run: os.path.join(run['url'], f"{RUN_DIR}_diagnostics", 'diags.nc')
    for name, run in runs.items():
        print(f"mkdir {name}\ngsutil cp {diagnostics_path(run)} {name}")

def get_diags_complete_downloaded(runs, verbose=False):
    diags_complete = {}
    for name in runs:
        if verbose: print(f"Reading diags with name {name}")
        with open(f"../datasets_corrected/{name}/diags.nc", 'rb') as f:
            diags_complete[name] = xr.open_dataset(f).load()
    return diags_complete

def get_metrics(runs):
    metrics = {}
    metrics_path = lambda run: os.path.join(run["url"], f"{RUN_DIR}_diagnostics", 'metrics.json')
    for name, run in runs.items():
        with fsspec.open(metrics_path(run), 'rb') as f:
            metrics[name] = json.load(f)
    return metrics

def get_novelty_fractions(runs):
    diags = get_diags(runs)
    novelty_fractions = {name:
        1 if name == BASELINE_ALG
        else 0 if name in [ML_ONLY_ALG, ML_ONLY_TQ_ALG]
        else diags[name].is_novelty.mean().values.item()
        for name in runs
    }
    return novelty_fractions

def get_names_alg(alg, gamma=None, has_baseline_ml_only=False):
    if gamma is None:
        if has_baseline_ml_only:
            return [name for name, run in RUN_DICT.items() if run["alg"] in [alg, BASELINE_ALG, ML_ONLY_ALG, ML_ONLY_TQ_ALG]]
        else:
            return [name for name, run in RUN_DICT.items() if run["alg"] == alg]
    else:
        assert alg == OCSVM_ALG
        if has_baseline_ml_only:
            return [
                name for name, run in RUN_DICT.items()
                    if run["alg"] in [BASELINE_ALG, ML_ONLY_ALG]
                        or (run["alg"] == alg and isclose(run["gamma"], gamma, abs_tol=110**-10))
            ] 
        else:
            return [name for name, run in RUN_DICT.items() if run["alg"] == alg and isclose(run["gamma"], gamma, abs_tol=10**-10)]
        
    
def get_offline_diags(nd_path, dataset_name) -> xr.Dataset:
    """
    Returns a dataset containing the is_novelty and novelty_score fields that reflect
    the offline behavior of a novelty detector on some other temporal dataset.
    """
    if dataset_name == BASELINE_ALG:
        ds_hash = "61c5f8380a6560540d65ba0b9b9fb41c"
    elif dataset_name == ML_ONLY_ALG:
        ds_hash = "286d3f0e7fcb9b8ce3f8d3a61299c85f"
    diags_url = os.path.join(nd_path, "diags_novelty_offline", ds_hash)
    diags = xr.open_zarr(fsspec.get_mapper(diags_url))
    return diags