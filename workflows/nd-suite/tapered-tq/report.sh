#!/bin/bash


name=ml-tq-seeds-tapered-tq-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name ml-tq-seeds-tapered-tq-report \
    -p runs="$(< rundirs_ML_Tq_tapered_tq_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"
