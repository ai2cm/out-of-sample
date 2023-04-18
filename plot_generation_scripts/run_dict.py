BASELINE_ALG = "baseline"
ML_ONLY_ALG = "ml-only"
ML_ONLY_TQ_ALG = "ml-only-tq"
OCSVM_ALG = "ocsvm"
MINMAX_ALG = "minmax"
CUTOFF = "cutoff_true"


OCSVM_LARGE_GAMMA = "ocsvm-gamma-8_79-75pct"
OCSVM_DEFAULT = "ocsvm-gamma-4_79-75pct"
OCSVM_SMALL_GAMMA = "ocsvm-gamma-2_79-75pct"
OCSVM_SMALLEST_GAMMA = "ocsvm-gamma-1_79-75pct"
MINMAX_T = "minmax_T"
OCSVM_T = "ocsvm_T"

RUN_DICT = {
    BASELINE_ALG: {
        "url": "gs://vcm-ml-experiments/claytons/2022-08-10/baseline-trial2/",
        "alg": BASELINE_ALG
    },
    ML_ONLY_ALG: {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-01-25/ml-tapered-all-tquv-seed-0/",
        "alg": ML_ONLY_ALG
    },
    "minmax_T": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-01-24/oos-tapered-tquv-nd-minmax-0-default-0-trial0/",
        "alg": MINMAX_ALG,
        "cutoff": 0,
        "cutoff_true": 0
    },
    "ocsvm_T": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-01-24/oos-tapered-tquv-nd-ocsvm-t-0-default-0-trial0/",
        "alg": OCSVM_ALG,
        "cutoff": 0,
        "gamma": 4/79,
        "cutoff_true": 0
    },
    # gamma = 1/79
    "ocsvm-gamma-1_79-95pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--221.6/",
        "alg": OCSVM_ALG,
        "gamma": 1/79,
        "cutoff": -221.6,
        "cutoff_true": 226.8
    },
    "ocsvm-gamma-1_79-75pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--283.5/",
        "alg": OCSVM_ALG,
        "gamma": 1/79,
        "cutoff": -283.5,
        "cutoff_true": 288.7
    },
    "ocsvm-gamma-1_79-50pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--315/",
        "alg": OCSVM_ALG,
        "gamma": 1/79,
        "cutoff": -315,
        "cutoff_true": 321
    },
    "ocsvm-gamma-1_79-25pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--346/",
        "alg": OCSVM_ALG,
        "gamma": 1/79,
        "cutoff": -346,
        "cutoff_true": 351.5
    },
    # gamma = 2/79
    "ocsvm-gamma-2_79-99pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--20.7/",
        "alg": OCSVM_ALG,
        "gamma": 2/79,
        "cutoff": -20.7,
        "cutoff_true": 22.3
    },
    "ocsvm-gamma-2_79-95pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--40.0/",
        "alg": OCSVM_ALG,
        "gamma": 2/79,
        "cutoff": -40.0,
        "cutoff_true": 41.7
    },
    "ocsvm-gamma-2_79-75pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--58.7/",
        "alg": OCSVM_ALG,
        "gamma": 2/79,
        "cutoff": -58.7,
        "cutoff_true": 60.3
    },
    "ocsvm-gamma-2_79-50pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--68.6/",
        "alg": OCSVM_ALG,
        "gamma": 2/79,
        "cutoff": -68.6,
        "cutoff_true": 70.3
    },
    "ocsvm-gamma-2_79-25pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-18/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--78.0/",
        "alg": OCSVM_ALG,
        "gamma": 2/79,
        "cutoff": -78.0,
        "cutoff_true": 79.7
    },
    # gamma = 4/79
    "ocsvm-gamma-4_79-99pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.095/",
        "alg": OCSVM_ALG,
        "gamma": 4/79,
        "cutoff": 0.095,
        "cutoff_true": 0.025
    },
    "ocsvm-gamma-4_79-95pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.055/",
        "alg": OCSVM_ALG,
        "gamma": 4/79,
        "cutoff": 0.055,
        "cutoff_true": 0.065
    },
    "ocsvm-gamma-4_79-75pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-01-24/oos-tapered-tquv-nd-ocsvm-tq-0-default-0-trial0/",
        "alg": OCSVM_ALG,
        "gamma": 4/79,
        "cutoff": 0,
        "cutoff_true": 0.12
    },
    "ocsvm-gamma-4_79-50pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.03/",
        "alg": OCSVM_ALG,
        "gamma": 4/79,
        "cutoff": -0.03,
        "cutoff_true": 0.15
    },
    "ocsvm-gamma-4_79-25pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.05/",
        "alg": OCSVM_ALG,
        "gamma": 4/79,
        "cutoff": -0.05,
        "cutoff_true": 0.17
    },
    # gamma = 8/79
    "ocsvm-gamma-8_79-99pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00032/",
        "alg": OCSVM_ALG,
        "gamma": 8/79,
        "cutoff": 0.00032,
        "cutoff_true": 1.7e-5
    },
    "ocsvm-gamma-8_79-95pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00024/",
        "alg": OCSVM_ALG,
        "gamma": 8/79,
        "cutoff": 0.00024,
        "cutoff_true": 9.3e-5
    },
    "ocsvm-gamma-8_79-75pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-5.3e-05/",
        "alg": OCSVM_ALG,
        "gamma": 8/79,
        "cutoff": 5.3e-05,
        "cutoff_true": 2.8e-4
    },
    "ocsvm-gamma-8_79-50pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00011/",
        "alg": OCSVM_ALG,
        "gamma": 8/79,
        "cutoff": -0.00011,
        "cutoff_true": 4.4e-4
    },
    "ocsvm-gamma-8_79-25pct": {
        "url": "gs://vcm-ml-experiments/out-of-sample-right-side-up-winds/2023-02-21/ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00026/",
        "alg": OCSVM_ALG,
        "gamma": 8/79,
        "cutoff": -0.00026,
        "cutoff_true": 5.9e-4
    },
}

