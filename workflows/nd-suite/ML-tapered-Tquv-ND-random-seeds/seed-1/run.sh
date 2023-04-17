#!/bin/bash

set -e

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-t-0-default-0-trial1 \
-p config="$(< ocsvm-t-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-df1b95a13f2b4309af50c6a45b3aea34' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-t-0-default-0,trial=trial1' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-ocsvm-tq-0-default-0-trial1 \
-p config="$(< ocsvm-tq-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-bf23d1f92a45407e976cab841add00ed' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-ocsvm-tq-0-default-0,trial=trial1' 

argo submit --from workflowtemplate/prognostic-run \
-p bucket=vcm-ml-experiments \
-p project=out-of-sample-right-side-up-winds \
-p tag=oos-tapered-tquv-nd-minmax-0-default-0-trial1 \
-p config="$(< minmax-0-default-0/prognostic-run.yaml)" \
-p segment-count=36 \
-p memory='35Gi' \
-p cpu='24' \
-p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
--name 'prognostic-run-f8932235b752428b9e457f5315c0b98c' \
--labels 'project=out-of-sample-right-side-up-winds,experiment=oos-tapered-tquv-nd-minmax-0-default-0,trial=trial1' 

