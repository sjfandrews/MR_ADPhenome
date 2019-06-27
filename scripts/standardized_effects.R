library(tidyverse)
library(TwoSampleMR)
library(Hmisc)
library(qvalue)
library(cowplot)
#setwd("C:/Users/Shea/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/strict_clump/0_Summary/")
#setwd("/Users/sheaandrews/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/strict_clump/0_Summary")

## Outcomes to include the results 
outcomes = c('load', 'loadKunkle', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv', 'hipv2015')
## Exposures to include in the results
exposures = c("alccliu", "alcd", "audit", "bmi", "dbp", "dep", "diab", "educ", "hdl", "hear", "insom", "ldl", "mdd", "mvpa", "oilfish", "pp", "sbp", "sleepDashti", "smkcpd", "smki", "sociso", "tc", "trig")

## Standardize SNP effects of hippocampal volume
hipv.dat <- MRdat %>%
  filter(outcome == 'hipv2015') %>% 
  filter(mr_keep == TRUE) %>%
  filter(!is.na(eaf.outcome)) %>%
  unite(model, exposure, outcome, pt, remove = F) %>% 
  split(., .$model) %>%
  map(., function(x){
  # std_zx = with(x, gsmr::std_effect(eaf.exposure, beta.exposure, se.exposure, samplesize.exposure)) %>% 
  #   bind_cols(.) %>% 
  #   rename(bx = b, sex = se)
  std_zy = with(x, gsmr::std_effect(eaf.outcome, beta.outcome, se.outcome, samplesize.outcome)) %>% 
    bind_cols(.) %>% 
    rename(by = b, sey = se)
  mrdat <- x %>% 
    #bind_cols(std_zx)  %>% 
    bind_cols(std_zy) 
  mrdat
}) %>% 
  bind_rows(.) %>%
  select(-beta.outcome, -se.outcome) %>%
  rename(beta.outcome = by, se.outcome = sey)

## Rerun hipv models
res_5e8 <- hipv.dat %>% 
  filter(pt == 5e-8) %>%
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression")) %>% 
  as_tibble(.) %>% 
  mutate(MR_PRESSO = FALSE) %>% 
  mutate(pt = 5e-8)

res_5e8_presso <- hipv.dat %>% 
  filter(pt == 5e-8) %>%
  filter(mrpresso_keep == TRUE) %>%
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression")) %>% 
  as_tibble(.) %>% 
  mutate(MR_PRESSO = TRUE) %>% 
  mutate(pt = 5e-8) %>% 
  anti_join(res_5e8, by = c('outcome', 'exposure', 'method', 'nsnp'))

res_5e6 <- hipv.dat %>% 
  filter(pt == 5e-6) %>%
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression")) %>% 
  as_tibble(.) %>% 
  mutate(MR_PRESSO = FALSE) %>% 
  mutate(pt = 5e-6)

res_5e6_presso <- hipv.dat %>% 
  filter(pt == 5e-6) %>%
  filter(mrpresso_keep == TRUE) %>%
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression")) %>% 
  as_tibble(.) %>% 
  mutate(MR_PRESSO = TRUE) %>% 
  mutate(pt = 5e-6) %>% 
  anti_join(res_5e6, by = c('outcome', 'exposure', 'method', 'nsnp'))

std_hipv <- res_5e6 %>% 
  bind_rows(res_5e6_presso) %>% 
  bind_rows(res_5e8) %>% 
  bind_rows(res_5e8_presso) 

MRsummary <- MR_results  %>% 
  filter(outcome != 'hipv2015') %>% 
  bind_rows(filter(std_hipv, outcome == 'hipv2015')) %>% 
  mutate(method = str_replace(method, "Inverse variance weighted \\(fixed effects\\)", 'IVW')) %>%
  mutate(method = str_replace(method, "MR Egger", 'MR_Egger')) %>%
  mutate(method = str_replace(method, "Weighted median", 'Weighted_median')) %>%
  mutate(method = str_replace(method, "Weighted mode", 'Weighted_mode')) %>%
  rename(MR.pval = pval) %>%
  left_join(select(mrpresso_global_comb, outcome, exposure, pt, n_outliers, RSSobs, pval, outliers_removed), 
            by = c('outcome', 'exposure', 'pt', 'MR_PRESSO' = 'outliers_removed')) %>% 
  rename(MRPRESSO.pval = pval) %>% 
  left_join(select(egger_comb, outcome, exposure, pt, egger_intercept, egger_se, pval, outliers_removed), 
            by = c('outcome', 'exposure', 'pt', 'MR_PRESSO' = 'outliers_removed')) %>% 
  rename(Egger.pval = pval) %>% 
  select(outcome, exposure, pt, method, MR_PRESSO, nsnp, n_outliers, b, se, MR.pval, 
         RSSobs, MRPRESSO.pval, egger_intercept, egger_se, Egger.pval) %>% 
  arrange(outcome, exposure, pt, method, MR_PRESSO) %>% 
  ## Remove associations between Kunkle 2019 (LOAD) and alcohol consumption, education (as per CHARGE usage)
  ## Instead use the assocations with Lambert 2013
  filter(!(outcome == 'loadKunkle' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
  filter(!(outcome == 'load' & exposure %nin% c("alccliu", "alcd", "audit",  "educ"))) %>% 
  ## Remove associations between Hilbar 2017 (Hippocampual volume) and alcohol consumption, education (as per CHARGE usage)
  ## Instead use the assocations with Hilbar 2015
  filter(!(outcome == 'hipv' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
  filter(!(outcome == 'hipv2015' & exposure %nin% c("alccliu", "alcd", "audit",  "educ"))) 

# MRsummary <- MR_results  %>% 
#   mutate(method = str_replace(method, "Inverse variance weighted \\(fixed effects\\)", 'IVW')) %>%
#   mutate(method = str_replace(method, "MR Egger", 'MR_Egger')) %>%
#   mutate(method = str_replace(method, "Weighted median", 'Weighted_median')) %>%
#   mutate(method = str_replace(method, "Weighted mode", 'Weighted_mode')) %>%
#   rename(MR.pval = pval) %>%
#   left_join(select(mrpresso_global_comb, outcome, exposure, pt, n_outliers, RSSobs, pval, outliers_removed),
#             by = c('outcome', 'exposure', 'pt', 'MR_PRESSO' = 'outliers_removed')) %>%
#   rename(MRPRESSO.pval = pval) %>%
#   left_join(select(egger_comb, outcome, exposure, pt, egger_intercept, egger_se, pval, outliers_removed),
#             by = c('outcome', 'exposure', 'pt', 'MR_PRESSO' = 'outliers_removed')) %>%
#   rename(Egger.pval = pval) %>%
#   select(outcome, exposure, pt, method, MR_PRESSO, nsnp, n_outliers, b, se, MR.pval,
#          RSSobs, MRPRESSO.pval, egger_intercept, egger_se, Egger.pval) %>%
#   arrange(outcome, exposure, pt, method, MR_PRESSO) %>%
#   # Remove associations between Kunkle 2019 (LOAD) and alcohol consumption, education (as per CHARGE usage)
#   # Instead use the assocations with Lambert 2013
#   filter(!(outcome == 'loadKunkle' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
#   filter(!(outcome == 'load' & exposure %nin% c("alccliu", "alcd", "audit",  "educ"))) %>% 
#   ## Remove associations between Hilbar 2017 (Hippocampual volume) and alcohol consumption, education (as per CHARGE usage)
#   ## Instead use the assocations with Hilbar 2015
#   filter(!(outcome == 'hipv' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
#   filter(!(outcome == 'hipv2015' & exposure %nin% c("alccliu", "alcd", "audit",  "educ")))

mr_best <- MRsummary %>% 
  filter(method == 'IVW') %>% 
  #filter(outcome %nin% c('npany', 'nft4', 'vbiany')) %>% 
  group_by(outcome, exposure) %>% 
  filter(MR_PRESSO == ifelse(TRUE %in% MR_PRESSO, TRUE, FALSE)) %>% 
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

## Spread Methods
mrresults.methods <- MRsummary %>% 
  mutate(b = signif(b, 2), se = signif(se, 2), MR.pval = signif(MR.pval, 2), RSSobs = round(RSSobs, 1), egger_intercept = signif(egger_intercept, 3), egger_se = signif(egger_se, 2), Egger.pval = signif(Egger.pval, 2)) %>%
  myspread(method, c(b, se, MR.pval)) %>% 
  mutate(IVW_Signif = as.character(signif.num(IVW_MR.pval))) %>% 
  mutate(MR_Egger_Signif = as.character(signif.num(MR_Egger_MR.pval))) %>% 
  mutate(Weighted_median_Signif = as.character(signif.num(Weighted_median_MR.pval))) %>%
  mutate(Weighted_mode_Signif = as.character(signif.num(Weighted_mode_MR.pval)))

dat.plot <- mr_best %>%
  mutate(z = b/se) %>% 
  ## Merge Lambert 2013 + Kunkle 2019; Hilbar 2015 + Hilbar 2017
  mutate(outcome = str_replace(outcome, 'loadKunkle', 'load')) %>% 
  mutate(outcome = str_replace(outcome, 'hipv2015', 'hipv')) %>% 
  ## Relevel Outcomes and Exposures
  mutate(outcome = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepDashti", "mvpa", "dep", 'mdd', "sociso")) %>% 
  mutate(exposure = fct_recode(exposure, 
                               "Alcohol Consumption" = "alccliu", 
                               "Alcohol Dependence" = "alcd", 
                               "AUDIT" = "audit", 
                               "Smoking Initiation" = "smki", 
                               "Cigarettes per Day" = "smkcpd", 
                               "Diastolic Blood Pressure" = "dbp", 
                               "Depressive Symptoms" = "dep", 
                               'BMI' = "bmi", 
                               "Type 2 Diabetes" = "diab", 
                               "Educational Attainment" = "educ", 
                               "Oily Fish Intake" = "oilfish",
                               "High-density lipoproteins" = "hdl", 
                               "Hearing Problems" = "hear", 
                               "Insomnia Symptoms" = "insom", 
                               "Low-density lipoproteins" = "ldl", 
                               "Major Depressive Disorder" = "mdd", 
                               "Moderate-to-vigorous PA" = "mvpa",
                               "Pulse Pressure" = "pp", 
                               "Systolic Blood Pressure" = "sbp", 
                               "Social Isolation" = "sociso", 
                               "Sleep Duration" = "sleepDashti",
                               "Total Cholesterol" = "tc", 
                               "Triglycerides" = "trig")) %>% 
  mutate(outcome = fct_recode(outcome, 
                              "LOAD" = "load", 
                              "AAOS" = "aaos", 
                              "CSF Ab42" = "ab42", 
                              "CSF Tau" = "tau", 
                              "CSF Ptau" = "ptau", 
                              "Hippocampul Volume" = "hipv",
                              "Neuritic Plaques" = "npany",
                              "Neurofibrillary Tangles" = "nft4",
                              "Vascular Brain Injury" = "vbiany")) 

## Generate Frames for plot to indicate robust associations
frames <- mr_best %>% 
  select(outcome, exposure, pt, MR_PRESSO, qval) %>%
  left_join(mrresults.methods, by = c('outcome', 'exposure', 'pt', 'MR_PRESSO')) %>% 
  mutate(outcome = str_replace(outcome, 'loadKunkle', 'load')) %>% 
  mutate(outcome = str_replace(outcome, 'hipv2015', 'hipv')) %>% 
  mutate(outcome = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepDashti", "mvpa", "dep", 'mdd', "sociso")) %>% 
  mutate(MRPRESSO.pval = as.numeric(str_replace(MRPRESSO.pval, '<', ""))) %>% 
  select(outcome, exposure, pt, MR_PRESSO, qval, MRPRESSO.pval, Egger.pval, IVW_b, IVW_MR.pval, MR_Egger_b, MR_Egger_MR.pval, Weighted_median_b, Weighted_median_MR.pval, Weighted_mode_b, Weighted_mode_MR.pval) %>% 
  mutate(pass = ifelse(qval > 0.05, FALSE,
                       ifelse(MRPRESSO.pval > 0.05 & Egger.pval > 0.05, TRUE,
                              ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE)))) %>%
  mutate(pass_0.1 = ifelse(qval > 0.1 | qval < 0.05, FALSE,
                           ifelse(MRPRESSO.pval > 0.05 & Egger.pval > 0.05, TRUE,
                                  ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE)))) %>%
  mutate(outcome1 = as.integer(outcome)) %>% 
  mutate(exposure1 = as.integer(exposure))

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


dat.plot2 <- dat.plot %>%  mutate(out = ifelse(qval < 0.1, paste0(round(b, 3), '\n', '(', round_sci(qval), ')'), " ")) 

p2 <- ggplot(dat.plot2) + 
  geom_raster(aes(x = exposure, y = outcome, fill = b)) + 
  geom_text(data = dat.plot2, size = 4, aes(label = out, x = exposure, y = outcome)) +
  scale_fill_gradient2(low="steelblue", high="firebrick", mid = "white", na.value = "grey50") + 
  coord_equal() + theme_classic() +
  geom_vline(xintercept=seq(0.5, 23.5, 1),color="white") +
  geom_hline(yintercept=seq(0.5, 11.5, 1),color="white") +
  geom_rect(data=filter(frames, pass_0.1 == TRUE), size=0.5, fill=NA, colour="red",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  geom_rect(data=filter(frames, pass == TRUE), size=0.5, fill=NA, colour="red",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  theme(legend.position = 'right', legend.key.height = unit(8, "line"), axis.text.x = element_text(angle = 45, hjust = 0), 
        legend.title = element_blank(), legend.text = element_text(hjust = 1.5), text = element_text(size=20), 
        axis.title.x = element_blank(), axis.title.y = element_blank()) +
  scale_x_discrete(position = "top") 

p2

ggsave(file.path('/Users/sheaandrews/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Posters', 'MR_w_apoe_heatmap5.png'), plot = p2, width = 24, height = 10.5, units = 'in')




















