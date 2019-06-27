## ================================================================================ ##


## Packages & Functions
library(tidyverse)
library(TwoSampleMR)
library(gridExtra)
library(qvalue)
source('scripts/miscfunctions.R', chdir = TRUE)

## -------------------------------------------------------------------------------- ##
##  Read in R datasets
## Outcomes to include the results 

## Files
MR_results <- read_tsv("4_Output/MR_ADphenome/All/MRresults.txt") %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures) 

mrpresso_global_comb <- read_tsv("4_Output/MR_ADphenome/All/global_mrpresso.txt") %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures) 

MRdat.raw <- "4_Output/MR_ADphenome/All/mrpresso_MRdat.csv" %>% 
  read_csv(., guess_max = 100000) %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures)

egger_comb <- read_tsv("4_Output/MR_ADphenome/All/pleiotropy.txt") %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures) %>% 
  rename(egger_se = se)

power <- read_csv("4_Output/MR_ADphenome/All/power.csv") %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures) %>% 
  select(exposure, outcome, pt, outliers_removed, pve.exposure, F, Power) %>% 
  mutate(pve.exposure = round(pve.exposure*100, 2), 
         F = round(F, 2), 
         Power = round(Power, 2))

## -------------------------------------------------------------------------------- ##
## Table S1 - Harmonozied datasets 

MRdat <- MRdat.raw  %>% 
  filter(!(outcome == 'Kunkle2019load' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Lambert2013load' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>% 
  filter(!(outcome == 'Hilbar2017hipv' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Hilbar2015hipv' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>% 
  ## Merge Sample Size infor
  select(-samplesize.outcome, -samplesize.exposure) %>% 
  left_join(samplesize, by = c('exposure' = 'code')) %>% 
  rename(samplesize.exposure = samplesize, ncase.exposure = ncase, 
         ncontrol.exposure = ncontrol, logistic.exposure = logistic, 
         exposure.name = trait) %>% 
  left_join(samplesize, by = c('outcome' = 'code')) %>% 
  rename(samplesize.outcome = samplesize, ncase.outcome = ncase, 
         ncontrol.outcome = ncontrol, logistic.outcome = logistic, 
         outcome.name = trait) %>% 
  ## Arrange traits
  mutate(outcome.name = fct_relevel(outcome.name, 
                                    'LOAD', 'AAOS', 'AB42', 'Ptau181', 'Tau',
                                    'Neuritic Plaques', 'Neurofibrillary Tangles',
                                    'Vascular Brain Injury', 'Hippocampal Volume')) %>% 
  mutate(exposure.name = fct_relevel(exposure.name, 
                                     'Alcohol Consumption', 'Alcohol Dependence',
                                     'AUDIT', 'Smoking Initiation', 
                                     'Cigarettes per Day', 'Diastolic Blood Pressure',
                                     'Systolic Blood Pressure', 'Pulse Pressure', 
                                     "High-density lipoproteins", 
                                     "Low-density lipoproteins", "Total Cholesterol",
                                     "Triglycerides", 'Educational Attainment', 
                                     'BMI', 'Type 2 Diabetes', "Oily Fish Intake",
                                     "Hearing Problems", "Insomnia Symptoms", 
                                     "Sleep Duration", "Moderate-to-vigorous PA",
                                     "Depressive Symptoms", 
                                     'Major Depressive Disorder', "Social Isolation"))

write_csv(MRdat, '~/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Manuscript/TableS1.csv')

## -------------------------------------------------------------------------------- ##
##                              Shiny datasets                                      ## 

mrpresso_global_comb %>% 
  filter(!(outcome == 'Kunkle2019load' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Lambert2013load' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>% 
  filter(!(outcome == 'Hilbar2017hipv' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Hilbar2015hipv' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  write_tsv('Shiny/mrpresso_global.txt')

MRdat %>% 
  write_csv('Shiny/HarmonizedMRdat.csv')

## -------------------------------------------------------------------------------- ##
##                               Merege datasets                                    ## 

MRsummary <- MR_results  %>% 
  mutate(method = str_replace(method, "Inverse variance weighted \\(fixed effects\\)", 'IVW')) %>%
  mutate(method = str_replace(method, "MR Egger", 'MR_Egger')) %>%
  mutate(method = str_replace(method, "Weighted median", 'Weighted_median')) %>%
  mutate(method = str_replace(method, "Weighted mode", 'Weighted_mode')) %>%
  rename(MR.pval = pval) %>%
  left_join(select(mrpresso_global_comb, outcome, exposure, pt, RSSobs, pval, outliers_removed), 
            by = c('outcome', 'exposure', 'pt', 'outliers_removed')) %>% 
  rename(MRPRESSO.pval = pval) %>% 
  left_join(select(egger_comb, outcome, exposure, pt, egger_intercept, egger_se, pval, outliers_removed), 
            by = c('outcome', 'exposure', 'pt', 'outliers_removed')) %>% 
  rename(Egger.pval = pval) %>% 
  select(outcome, exposure, pt, method, outliers_removed, nsnp, n_outliers, b, se, MR.pval, 
         RSSobs, MRPRESSO.pval, egger_intercept, egger_se, Egger.pval) %>% 
  arrange(outcome, exposure, pt, method, outliers_removed) %>% 
  ## Remove associations between Kunkle 2019 (Lambert2013load) and alcohol consumption, education (as per CHARGE usage)
  ## Instead use the assocations with Lambert 2013
  filter(!(outcome == 'Kunkle2019load' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Lambert2013load' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>% 
  ## Remove associations between Hilbar 2017 (Hippocampual volume) and alcohol consumption, education (as per CHARGE usage)
  ## Instead use the assocations with Hilbar 2015
  filter(!(outcome == 'Hilbar2017hipv' & exposure %in% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  filter(!(outcome == 'Hilbar2015hipv' & exposure %nin% c("Liu2019drnkwk", "Walters2018alcdep", "SanchezRoige2018auditt",  "Lee2018educ"))) %>%
  ## Merge Sample Size infor
  left_join(select(samplesize, code, trait), by = c('exposure' = 'code')) %>% 
  rename(exposure.name = trait) %>% 
  left_join(select(samplesize, code, trait), by = c('outcome' = 'code')) %>% 
  rename(outcome.name = trait) %>% 
  ## Arrange traits
  mutate(outcome.name = fct_relevel(
    outcome.name, 'LOAD', 'AAOS', 'AB42', 'Ptau181', 'Tau', 'Neuritic Plaques', 
    'Neurofibrillary Tangles', 'Vascular Brain Injury', 'Hippocampal Volume')) %>% 
  mutate(exposure.name = fct_relevel(
    exposure.name, 'Alcohol Consumption', 'Alcohol Dependence', 'AUDIT', 
    'Smoking Initiation', 'Cigarettes per Day', 'Diastolic Blood Pressure', 
    'Systolic Blood Pressure', 'Pulse Pressure', "High-density lipoproteins", 
    "Low-density lipoproteins", "Total Cholesterol", "Triglycerides", 
    'Educational Attainment', 'BMI', 'Type 2 Diabetes', "Oily Fish Intake", 
    "Hearing Problems", "Insomnia Symptoms", "Sleep Duration", "Moderate-to-vigorous PA",
    "Depressive Symptoms", 'Major Depressive Disorder', "Social Isolation"))
  
## -------------------------------------------------------------------------------- ##
##                      Filter results for MR-PRESSO and best PT                    ## 
mr_best <- MRsummary %>% 
  filter(method == 'IVW') %>% 
  #filter(outcome %nin% c('Beecham2014npany', 'Beecham2014braak4', 'Beecham2014vbiany')) %>% 
  group_by(outcome, exposure) %>% 
  filter(outliers_removed == ifelse(TRUE %in% outliers_removed, TRUE, FALSE)) %>% 
  ungroup()

## Generate FDR values
qobj <- qvalue(p = mr_best$MR.pval, fdr.level = 0.1)
qvales.df <- tibble(pvalues = qobj$pvalues, lfdr = qobj$lfdr, qval = qobj$qvalues, significant = qobj$significant)

mr_best <- mr_best %>% 
  bind_cols(select(qvales.df, qval)) %>% 
  group_by(outcome, exposure) %>% 
  arrange(MR.pval) %>% 
  slice(1) %>% 
  ungroup() %>%
  mutate(Signif = symnum(qval, corr = FALSE, na = FALSE,
                         cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1),
                         symbols = c("***", "**", "*", ".", " "))) %>% 
  mutate(Signif = as.character(Signif)) 

## -------------------------------------------------------------------------------- ##
##---------------------- Spread Results -----------------## 
## Spread Methods
mrresults.methods <- MRsummary %>% 
  mutate(b = signif(b, 2), 
         se = signif(se, 2), 
         MR.pval = signif(MR.pval, 2), 
         RSSobs = round(RSSobs, 1), 
         egger_intercept = signif(egger_intercept, 3), 
         egger_se = signif(egger_se, 2), 
         Egger.pval = signif(Egger.pval, 2)) %>%
  myspread(method, c(b, se, MR.pval)) %>% 
  mutate(IVW_Signif = as.character(signif.num(IVW_MR.pval)), 
         MR_Egger_Signif = as.character(signif.num(MR_Egger_MR.pval)),
         Weighted_median_Signif = as.character(signif.num(Weighted_median_MR.pval)), 
         Weighted_mode_Signif = as.character(signif.num(Weighted_mode_MR.pval))) 

## Spread MR-PRESSO
## For supplemntary Table 2
mrresults.methods_presso <- mrresults.methods %>% 
  left_join(power) %>% 
  myspread(outliers_removed, 
           c(nsnp, n_outliers, pve.exposure, F, Power, RSSobs, MRPRESSO.pval, egger_intercept, 
             egger_se, Egger.pval, IVW_b, IVW_MR.pval, IVW_se, MR_Egger_b, MR_Egger_MR.pval, 
             MR_Egger_se, Weighted_median_b, Weighted_median_MR.pval, Weighted_median_se, 
             Weighted_mode_b, Weighted_mode_MR.pval, Weighted_mode_se, IVW_Signif, 
             MR_Egger_Signif, Weighted_median_Signif, Weighted_mode_Signif)) %>% 
  arrange(pt, outcome, exposure) %>%
  arrange(outcome.name, exposure.name, pt) %>% 
  select(outcome, exposure, outcome.name, exposure.name, pt, FALSE_nsnp, FALSE_pve.exposure, FALSE_F, FALSE_n_outliers,
         FALSE_IVW_b, FALSE_IVW_se, FALSE_IVW_MR.pval, FALSE_IVW_Signif, FALSE_Power,
         FALSE_MR_Egger_b, FALSE_MR_Egger_se, FALSE_MR_Egger_MR.pval, FALSE_MR_Egger_Signif,  
         FALSE_Weighted_median_b, FALSE_Weighted_median_se, FALSE_Weighted_median_MR.pval, FALSE_Weighted_median_Signif, 
         FALSE_Weighted_mode_b, FALSE_Weighted_mode_se, FALSE_Weighted_mode_MR.pval, FALSE_Weighted_mode_Signif, 
         FALSE_RSSobs, FALSE_MRPRESSO.pval, FALSE_egger_intercept, FALSE_egger_se, FALSE_Egger.pval, 
         TRUE_IVW_b, TRUE_IVW_se, TRUE_IVW_MR.pval, TRUE_IVW_Signif, TRUE_Power,
         TRUE_MR_Egger_b, TRUE_MR_Egger_se, TRUE_MR_Egger_MR.pval, TRUE_MR_Egger_Signif, 
         TRUE_Weighted_median_b, TRUE_Weighted_median_se, TRUE_Weighted_median_MR.pval, TRUE_Weighted_median_Signif, 
         TRUE_Weighted_mode_b, TRUE_Weighted_mode_se, TRUE_Weighted_mode_MR.pval, TRUE_Weighted_mode_Signif,
         TRUE_RSSobs, TRUE_MRPRESSO.pval, TRUE_egger_intercept, TRUE_egger_se, TRUE_Egger.pval)

mrresults.methods_presso %>%
  write_csv('~/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Manuscript/TableS2.csv')

##------------------ Heat Maps of Best Results ---------------------## 
dat.plot <- mr_best %>%
  mutate(z = b/se) 


## Generate Frames for plot to indicate robust associations
frames <- mr_best %>% 
  select(outcome, exposure, pt, outliers_removed, qval) %>%
  left_join(mrresults.methods, by = c('outcome', 'exposure', 'pt', 'outliers_removed')) %>% 
  mutate(MRPRESSO.pval = as.numeric(str_replace(MRPRESSO.pval, '<', ""))) %>% 
  select(outcome, outcome.name, exposure, exposure.name, pt, outliers_removed, qval, MRPRESSO.pval, Egger.pval, IVW_b, IVW_MR.pval, MR_Egger_b, MR_Egger_MR.pval, Weighted_median_b, Weighted_median_MR.pval, Weighted_mode_b, Weighted_mode_MR.pval) %>% 
  mutate(pass = ifelse(qval > 0.05, FALSE,
                       ifelse(MRPRESSO.pval > 0.05 & Egger.pval > 0.05, TRUE,
                              ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE)))) %>%
  mutate(pass_0.1 = ifelse(qval > 0.1 | qval < 0.05, FALSE,
                           ifelse(MRPRESSO.pval > 0.05 & Egger.pval > 0.05, TRUE,
                                  ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE)))) %>%
  mutate(outcome1 = as.integer(outcome.name)) %>% 
  mutate(exposure1 = as.integer(exposure.name))

frames <- lapply(1:nrow(frames), function(x){
  slice(frames, x) %>%
    mutate(pass = ifelse(pass == FALSE, FALSE, passfunc(IVW_MR.pval, IVW_b, 
                                                        MR_Egger_MR.pval, MR_Egger_b, 
                                                        Weighted_median_MR.pval, Weighted_median_b, 
                                                        Weighted_mode_MR.pval, Weighted_mode_b))) %>% 
    mutate(pass_0.1 = ifelse(pass_0.1 == FALSE, FALSE, passfunc(IVW_MR.pval, IVW_b, 
                                                                MR_Egger_MR.pval, MR_Egger_b, 
                                                                Weighted_median_MR.pval, Weighted_median_b, 
                                                                Weighted_mode_MR.pval, Weighted_mode_b)))
}) %>% bind_rows(.) 


p1 <- ggplot(dat.plot) + 
  geom_raster(aes(x = exposure.name, y = outcome.name, fill = z)) + 
  geom_text(data = dat.plot, size = 4, aes(label = Signif, x = exposure.name, y = outcome.name)) +
  scale_fill_gradient2(low="steelblue", high="firebrick", mid = "white", na.value = "grey50") + 
  #scale_fill_gradient2(low="#2b83ba", high="#d7191c", mid = "#ffffbf", na.value = "grey50") + 
  #scale_fill_gradient2(low="#1a9641", high="#d7191c", mid = "#ffffbf", na.value = "grey50") + 
  coord_equal() + theme_classic() +
  geom_vline(xintercept=seq(0.5, 23.5, 1),color="white") +
  geom_hline(yintercept=seq(0.5, 11.5, 1),color="white") +
  geom_rect(data=filter(frames, pass_0.1 == TRUE), size=0.5, fill=NA, colour="orange",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  geom_rect(data=filter(frames, pass == TRUE), size=0.5, fill=NA, colour="red",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  theme(legend.position = 'right', legend.key.height = unit(2, "line"), axis.text.x = element_text(angle = 35, hjust = 0), 
        legend.title = element_blank(), legend.text = element_text(hjust = 1.5), text = element_text(size=10), 
        axis.title.x = element_blank(), axis.title.y = element_blank()) +
  scale_x_discrete(position = "top") 

p1
ggsave(file.path(dir, '4_Output/MR_ADphenome/All/MR_w_apoe_heatmap.pdf'), plot = p1, width = 190, height =  120, units = 'mm')
ggsave(file.path(dir, '4_Output/MR_ADphenome/All/MR_w_apoe_heatmap.png'), plot = p1, width = 190, height =  120, units = 'mm')

dat.plot2 <- dat.plot %>%  mutate(out = ifelse(qval < 0.1, paste0(round(b, 3), '\n', '(', round_sci(qval), ')'), " ")) 

p2 <- ggplot(dat.plot2) + 
  geom_raster(aes(x = exposure.name, y = outcome.name, fill = z)) + 
  geom_text(data = dat.plot2, size = 1, aes(label = out, x = exposure.name, y = outcome.name)) +
  scale_fill_gradient2(low="steelblue", high="firebrick", mid = "white", na.value = "grey50") + 
  coord_equal() + theme_classic() +
  geom_vline(xintercept=seq(0.5, 23.5, 1),color="white") +
  geom_hline(yintercept=seq(0.5, 11.5, 1),color="white") +
  geom_rect(data=filter(frames, pass_0.1 == TRUE), size=0.5, fill=NA, colour="orange",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  geom_rect(data=filter(frames, pass == TRUE), size=0.5, fill=NA, colour="red",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  theme(legend.position = 'right', legend.key.height = unit(2, "line"), axis.text.x = element_text(angle = 35, hjust = 0), 
        legend.title = element_blank(), legend.text = element_text(hjust = 1.5), text = element_text(size=10), 
        axis.title.x = element_blank(), axis.title.y = element_blank()) +
  scale_x_discrete(position = "top") 
ggsave(file.path(dir, '4_Output/MR_ADphenome/All/MR_w_apoe_labels.png'), plot = p2, width = 190, height =  120, units = 'mm')

##------------------------- Tabulated Results  --------------------##
## Formating Results for Table 2
# Filtering MR-PRESSO
out <- mr_best %>% 
  select(outcome, exposure, pt, outliers_removed, qval) %>%
  left_join(mrresults.methods, by = c('outcome', 'exposure', 'pt', 'outliers_removed')) %>%  
  mutate(MRPRESSO.pval_rm = as.numeric(str_replace(MRPRESSO.pval, '<', ""))) %>% 
  mutate(pass = ifelse(qval > 0.05, FALSE,
                       ifelse(MRPRESSO.pval_rm > 0.05 & Egger.pval > 0.05, TRUE,
                              ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE))))

out <- lapply(1:nrow(out), function(x){
  slice(out, x) %>%
    mutate(pass = ifelse(pass == FALSE, FALSE, passfunc(IVW_MR.pval, IVW_b, 
                                                        MR_Egger_MR.pval, MR_Egger_b, 
                                                        Weighted_median_MR.pval, Weighted_median_b, 
                                                        Weighted_mode_MR.pval, Weighted_mode_b)))
 }) %>% bind_rows(.) 

  
  
out.final <- out %>% 
  mutate(IVW = paste0(IVW_b, '\n(',IVW_se, ')')) %>% 
  mutate(`MR-Egger` = paste0(MR_Egger_b, '\n(', MR_Egger_se, ')', MR_Egger_Signif)) %>% 
  mutate(`Weighted median` = paste0(Weighted_median_b, '\n(',Weighted_median_se, ')', Weighted_median_Signif)) %>%
  mutate(`Weighted mode` = paste0(Weighted_mode_b, '\n(',Weighted_mode_se, ')', Weighted_mode_Signif)) %>%
  select(outcome, exposure, outcome.name, exposure.name, pt, nsnp, n_outliers, IVW, qval, `MR-Egger`, `Weighted median`, `Weighted mode`, MRPRESSO.pval, Egger.pval, pass) %>% 
  mutate(Egger.pval = round_sci(Egger.pval)) %>%
  mutate(qval = round_sci(qval)) %>%
  arrange(outcome.name, exposure.name) %>% 
  mutate(nsnp = nsnp + n_outliers) %>% 
  filter(as.numeric(qval) < 0.1) %>% 
  arrange(outcome.name, exposure.name)
  #filter(pass == TRUE) %>% arrange(outcome, exposure)

write_csv(out.final, '~/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Manuscript/Table_2.csv')

##--------------------- Writen Report  ------------------------##

## Summary of tests
message('We conducted a total of ', nrow(mrresults.methods_presso), ' tests') 
message('We observed ', nrow(filter(out.final, qval < 0.05)), ' tests that were significant at an FDR < 0.05') 
message('Of these ', nrow(filter(out.final, qval < 0.05)), ' significant tests, ', nrow(filter(out.final, qval < 0.05 & pass == TRUE)), ' exposure-outcome pairs showed either no evidence of horizontal pleiotropy, or in the presence of horizontal pleiotropy the additional MR sensitivity analysis was significant')

## Generate Odds ratios
res_odds <- mr_best %>% 
  left_join(select(out, outcome, exposure, pt, outliers_removed, pass, MR_Egger_MR.pval, Weighted_median_MR.pval, Weighted_mode_MR.pval)) %>% 
  mutate(MRPRESSO.pval = as.numeric(str_replace(MRPRESSO.pval, '<', ""))) %>% 
  rename(pval = MR.pval) %>%
  filter(qval < 0.05) %>% 
  filter(pass == TRUE) %>%
  select(-nsnp, -n_outliers, -Signif, -pass, -RSSobs, -egger_intercept, -egger_se) %>%
  generate_odds_ratios(.) %>% 
  mutate(out = ifelse(outcome %in% c('Lambert2013load', 'Kunkle2019load', 'Huang2017aaos', 'Beecham2014npany', 'Beecham2014braak4', 'Beecham2014vbiany'), 
                      paste0(round(or, 2), ' [', round(or_lci95, 2), ', ', round(or_uci95, 2), ']'),
                      paste0(round(b, 2), ' [', round(lo_ci, 2), ', ', round(up_ci, 2), ']'))) %>% 
  print(n = Inf) 

res_odds %>% select(outcome, exposure, pt, outliers_removed, b, se, qval, lo_ci, up_ci, or, or_lci95, or_uci95, out) %>% print(n = Inf)

mr_senseitivy <- function(x){
  senesetivy_p <- select(x, MR_Egger_MR.pval, Weighted_median_MR.pval, Weighted_mode_MR.pval)
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


















