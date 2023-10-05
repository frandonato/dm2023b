# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/611_CA_reparar_dataset_05.r")
source("~/dm2023b/src/workflow-inicial/621_DR_corregir_drifting_05.r")
source("~/dm2023b/src/workflow-inicial/631_FE_historia_05.r")
source("~/dm2023b/src/workflow-inicial/641_TS_training_strategy_05.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/z651_HT_lightgbm.r")
source("~/dm2023b/src/workflow-inicial/z661_ZZ_final.r")
