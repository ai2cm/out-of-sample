#!/bin/bash

set -e

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--346 \
-p config="$(< ocsvm-tq-gamma-1_79-nu-5e-3--346.3-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-e3a7c79e0da549fd8dc05030beae876e' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--346.3' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--315 \
-p config="$(< ocsvm-tq-gamma-1_79-nu-5e-3--315.7-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-458af057f086435392b63e942531a3b2' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--315.7' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--283.5 \
-p config="$(< ocsvm-tq-gamma-1_79-nu-5e-3--283.5-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-605e068d70a94553ab581ad5bb55d569' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--283.5' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--221.6 \
-p config="$(< ocsvm-tq-gamma-1_79-nu-5e-3--221.6-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-c45d2cfd000a44ab9b55794d6f1bbfeb' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--221.6' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--147.8 \
-p config="$(< ocsvm-tq-gamma-1_79-nu-5e-3--147.8-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-9cb3cc664d04473db9b6655ede72f79e' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-1_79-nu-5e-3--147.8' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--78.0 \
-p config="$(< ocsvm-tq-gamma-2_79-nu-5e-3--78.0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-8abda12e2034475cae2e5040ee1c9ebf' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--78.0' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--68.6 \
-p config="$(< ocsvm-tq-gamma-2_79-nu-5e-3--68.6-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-c37cc3f92b8249659d849364ccc3d735' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--68.6' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--58.7 \
-p config="$(< ocsvm-tq-gamma-2_79-nu-5e-3--58.7-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-753c2d1ce9234197963829fd5ffb1464' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--58.7' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--40.0 \
-p config="$(< ocsvm-tq-gamma-2_79-nu-5e-3--40.0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-ec08440a87e4498a862e85f52d255a15' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--40.0' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--20.7 \
-p config="$(< ocsvm-tq-gamma-2_79-nu-5e-3--20.7-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-6a6dc18d88ad403ba3ace5ca9f3b2a5d' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-2_79-nu-5e-3--20.7' 


argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.055 \
-p config="$(< ocsvm-tq-gamma-4_79-nu-1e-4-0.055-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-318a27e5bc7e46b4bc0bc871588095f7' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.055' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.095 \
-p config="$(< ocsvm-tq-gamma-4_79-nu-1e-4-0.095-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-f2d131e86da14bd2b1389eb24ad0ea72' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4-0.095' 



argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.05 \
-p config="$(< ocsvm-tq-gamma-4_79-nu-1e-4--0.05-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-1f1a7625d8ba45b8ad23e8d989d1831b' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.05' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.03 \
-p config="$(< ocsvm-tq-gamma-4_79-nu-1e-4--0.03-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-d4e31d8fe0c14ae69ee1a512982d3148' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-4_79-nu-1e-4--0.03' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00026 \
-p config="$(< ocsvm-tq-gamma-8_79-nu-4e-6--0.00026-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-243f8787d40046dabed97e6e49ace60c' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00026' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00011 \
-p config="$(< ocsvm-tq-gamma-8_79-nu-4e-6--0.00011-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-8fc4f3e86bd64e7d8e72e6ed3d6c7d6f' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6--0.00011' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-5.3e-05 \
-p config="$(< ocsvm-tq-gamma-8_79-nu-4e-6-5.3e-05-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-cbe1c46daf9d4f6f96e8167d8eebb40a' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-5.3e-05' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00024 \
-p config="$(< ocsvm-tq-gamma-8_79-nu-4e-6-0.00024-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-6f70803878fc4d29b2433eb27c426e79' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00024' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00032 \
-p config="$(< ocsvm-tq-gamma-8_79-nu-4e-6-0.00032-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-9bde21642a1542239931212a9e6a7e39' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=ocsvm_tq_sensitivity_final-ocsvm-tq-gamma-8_79-nu-4e-6-0.00032' 

