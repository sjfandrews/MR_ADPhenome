##--------------------- Writen Report  ------------------------##

## Summary of tests
message('We conducted a total of ', nrow(mrresults.methods_presso), ' tests') 
message('We observed ', nrow(filter(out.final, qval < 0.05)), ' tests that were significant at an FDR < 0.05') 
message('Of these ', nrow(filter(out.final, qval < 0.05)), ' significant tests, ', nrow(filter(out.final, qval < 0.05 & pass == TRUE)), ' exposure-outcome pairs showed either no evidence of horizontal pleiotropy, or in the presence of horizontal pleiotropy the additional MR sensitivity analysis was significant')

## Generate Odds ratios
res_odds <- mr_best %>% 
  mutate(MRPRESSO.pval = as.numeric(str_replace(MRPRESSO.pval, '<', ""))) %>% 
  filter(qval < 0.05) %>% 
  filter(pass == TRUE) %>%
  select(outcome, exposure, pt, outliers_removed, qval, MRPRESSO.pval, Egger.pval, exposure.name, outcome.name, b = IVW_b, se = IVW_se, pval = IVW_MR.pval, Egger_MR.pval, WME_MR.pval, WMBE_MR.pval) %>%
  generate_odds_ratios(.) %>% 
  mutate(out = ifelse(outcome %in% c('Lambert2013load', 'Kunkle2019load', 'Huang2017aaos', 'Beecham2014npany', 'Beecham2014braak4', 'Beecham2014vbiany'), 
                      paste0(round(or, 2), ' [', round(or_lci95, 2), ', ', round(or_uci95, 2), ']'),
                      paste0(round(b, 2), ' [', round(lo_ci, 2), ', ', round(up_ci, 2), ']'))) %>% 
  print(n = Inf) 

res_odds %>% select(outcome, exposure, pt, outliers_removed, b, se, qval, lo_ci, up_ci, or, or_lci95, or_uci95, out) %>% print(n = Inf)

mr_senseitivy <- function(x){
  senesetivy_p <- select(x, Egger_MR.pval, WME_MR.pval, WMBE_MR.pval)
  y <- which(senesetivy_p <= 0.05)
  y <- str_replace(y, "1", 'MR-Egger')
  y <- str_replace(y, "2", 'Weighted median')
  y <- str_replace(y, "3", 'Weighted mode')
  
  sensetivity_out <- if(length(y) == 1){
    paste0(y,  " sensitivity analysis.")
  } else if(length(y) == 2){
    paste0(y[1], ' and ', y[2], " sensitivity analyses.")
  } else if(length(y) == 3){
    paste0(y[1], ', ', y[2], ' and ', y[3], " sensitivity analyses.")
  }
  
  with(x, if(MRPRESSO.pval > 0.05 & Egger.pval > 0.05){
    "There was no evidence of heterogeneity or directional pleiotropy."
  } else if(MRPRESSO.pval < 0.05 & Egger.pval < 0.05){
    paste0("There was evidence of heterogeneity and directional pleiotropy, however, the associations were consistent in the ", 
           sensetivity_out)
  } else if(MRPRESSO.pval < 0.05 & Egger.pval > 0.05){
    paste0("There was evidence of heterogeneity, but not of directional pleiotropy, however, the associations were consistent in the ", 
           sensetivity_out)
  } else if(MRPRESSO.pval > 0.05 & Egger.pval < 0.05){
    paste0("There was evidence of directional pleiotropy, but not of heterogeneity, however, the associations were consistent in the ", 
           sensetivity_out)
  })
}


written_res <- lapply(1:nrow(res_odds), function(x){
  exposure_out <- res_odds %>% slice(x)
  if(exposure_out$outcome == 'Lambert2013load' | exposure_out$outcome == 'Kunkle2019load'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(or < 1, 'lower odds', 'increased odds'), 
                              " of Alzheimer's disease ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(OR [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Beecham2014npany'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(or < 1, 'lower odds', 'increased odds'), 
                              " of Neuritic Plaques ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(OR [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Beecham2014braak4'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(or < 1, 'lower odds', 'increased odds'), 
                              " of Neurofibilary Tangles ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(OR [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Beecham2014vbiany'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(or < 1, 'lower odds', 'increased odds'), 
                              " of vascurlar brain injury ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(OR [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Huang2017aaos'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(or < 1, 'later', 'earlier'), 
                              " Alzheimer's age of onset ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(HR [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Hilbar2017hipv'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(b < 0, 'reduced', 'increased'), 
                              " hippocampal volume ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(β [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Deming2017ab42'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(b < 0, 'reduced', 'increased'), 
                              " Aβ42 ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(β [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Deming2017ptau'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(b < 0, 'reduced', 'increased'), 
                              " Ptau181 ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(β [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  } else if(exposure_out$outcome == 'Deming2017tau'){
    with(exposure_out, paste0("Genetically predicted ", exposure.name, " was associated with significantly ", 
                              ifelse(b < 0, 'reduced', 'increased'), 
                              " Deming2017tau ", 
                              ifelse(outliers_removed == TRUE, 'after outlier removal ', ""), 
                              '(β [CI]: ', out, "). ", mr_senseitivy(exposure_out)))
  }
  
}) %>% unlist()
written_res
