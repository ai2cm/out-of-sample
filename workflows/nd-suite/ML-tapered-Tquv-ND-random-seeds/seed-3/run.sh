#!/bin/bash

set -e

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-t-0-default-0-trial3 \
-p config="$(< ocsvm-t-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-f3d69208639641eabdac2a910625244b' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-t-0-default-0,trial=trial3' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-tq-0-default-0-trial3 \
-p config="$(< ocsvm-tq-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-752a56ad3a0a48f7953258247c4acf9d' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-tq-0-default-0,trial=trial3' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-minmax-0-default-0-trial3 \
-p config="$(< minmax-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-268b59f009cf419a8ad163017471a3ed' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-minmax-0-default-0,trial=trial3' 

