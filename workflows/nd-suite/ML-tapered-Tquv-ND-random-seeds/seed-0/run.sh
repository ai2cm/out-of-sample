#!/bin/bash

set -e

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-t-0-default-0-trial0 \
-p config="$(< ocsvm-t-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-7c70ecee635f42cab009a6b3de18b706' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-t-0-default-0,trial=trial0' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-tq-0-default-0-trial0 \
-p config="$(< ocsvm-tq-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-8938c797953749faaaee67fe7a68d1ba' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-tq-0-default-0,trial=trial0' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-minmax-0-default-0-trial0 \
-p config="$(< minmax-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-cdbf6ad836fa4ee4abbd985d52601161' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-minmax-0-default-0,trial=trial0' 

