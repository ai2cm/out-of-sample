#!/bin/bash

set -e

for i in {0..3}
do

    TAG="ml-tapered-all-tquv-seed-$i"
    argo delete prognostic-run-$TAG
    sleep 4
    argo submit --from workflowtemplate/prognostic-run \
        -p bucket=vcm-ml-experiments \
        -p project=out-of-sample-right-side-up-winds \
        -p tag=$TAG \
        -p config="$(< configs/ML-taper-Tquv-$i.yaml )" \
        -p segment-count=36 \
        -p memory='35Gi' \
        -p cpu='24' \
        -p online-diags-flags='--verification  1yr_pire_postspinup --n-jobs 4' \
        --name "prognostic-run-$TAG" \
        --labels 'project=out-of-sample-right-side-up-winds' 
    echo "argo get prognostic-run-$TAG"
done