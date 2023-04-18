!/bin/bash
#name=$(date +%Ft%H%M%S)-$(openssl rand -hex 6)

name=ml-tquv-minmax-t-seeds
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_Tquv_minmax_T_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"

name=ml-tquv-ocsvm-t-seeds
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_Tquv_OCSVM_T_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"

name=ml-tquv-ocsvm-tq-seeds
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_Tquv_OCSVM_Tq_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"


name=ml-tquv-seeds
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_Tquv_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"


name=ml-tquv-seeds-tapered-tquv
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name $name \
    -p runs="$(< rundirs_ML_Tquv_tapered_tquv_seeds.json)" \
    -p recompute-diagnostics=false \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"



name=nd-baseline-recompute
argo submit --from=workflowtemplate/prognostic-run-diags \
    --name "nd-baseline-recompute" \
    -p runs="$(< rundirsbaseline.json)" \
    -p recompute-diagnostics=true \
    -p flags="--verification  1yr_pire_postspinup" 
echo "report generated at: https://storage.googleapis.com/vcm-ml-public/argo/$name/index.html"
