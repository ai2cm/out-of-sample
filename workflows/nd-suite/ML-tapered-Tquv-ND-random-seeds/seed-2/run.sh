#!/bin/bash

set -e

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-t-0-default-0-trial2 \
-p config="$(< ocsvm-t-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-9e13cd58ea6f4a08ac824562e7b895f7' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-t-0-default-0,trial=trial2' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-tq-0-default-0-trial2 \
-p config="$(< ocsvm-tq-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-3afe2eb19e2041cdad963405728d6d52' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-tq-0-default-0,trial=trial2' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-minmax-0-default-0-trial2 \
-p config="$(< minmax-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-653ad20ec238430b9a1732134983eb60' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-minmax-0-default-0,trial=trial2' 

