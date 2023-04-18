#!/bin/bash


name=ml-tquv-seeds-tapered-tquv-ocsvm-t-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_tapered_Tquv_OCSVM_T_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"


name=ml-tquv-seeds-tapered-tquv-minmax-t-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_tapered_Tquv_minmax_T_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"


name=ml-tquv-seeds-tapered-tquv-ocsvm-tq-report
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_tapered_Tquv_OCSVM_Tq_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"

