#!/bin/bash


name=ml-tquv-seeds-tapered-tquv-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name ml-tquv-seeds-tapered-tquv-report \
    -p runs="$(< rundirs_ML_Tquv_tapered_tquv_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"
