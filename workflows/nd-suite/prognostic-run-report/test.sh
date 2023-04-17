#!/bin/bash
name=$(date +%Ft%H%M%S)-prog-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< test.json)" \
    -p recompute-diagnostics=true \
    -p flags="--verification  1yr_pire_postspinup --n-jobs 3" 

echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"
