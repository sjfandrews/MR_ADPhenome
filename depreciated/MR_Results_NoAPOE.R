## Running analysis excluding 250kb around APOE.

library(tidyverse)
library(TwoSampleMR)


outcomes = c('load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')
exposures = c("alccliu", "alcd", "audit", "bmi", "dbp", "dep", "diab", "educ", "hdl", "hear", "insom", "ldl", "mdd", "mvpa", "oilfish", "pp", "sbp", "sleepdoherty", "smkcpd", "smki", "sociso", "tc", "trig")

MRdat <- read_tsv('~/Dropbox/Research/PostDoc-MSSM/2_MR/2_DerivedData/Results/MR_mrpresso_MRdat.txt.gz') %>% 
  filter(outcome %in% outcomes) %>% 
  filter(exposure %in% exposures)
hrc_kg <- read_tsv('~/Dropbox/Research/Data/Summary_Statisitics/hrc_kg.snps.txt.gz')

apoe_snps <- distinct(MRdat, SNP) %>% 
  left_join(hrc_kg, by = c('SNP' = 'ID')) %>% 
  filter(c(CHROM == 19 & between(POS, 45160844, 45660844)))

MRdat <- MRdat %>% 
  mutate(apoe_rm = ifelse(SNP %in% apoe_snps$SNP, TRUE, FALSE))

##-------------------------------------------------##
# pt < 5e-8; APOE region excluded; Outliers removed
mrdat_pt8_noApoe_noOutliers <- MRdat %>% 
  filter(pt == 5e-8) %>% 
  filter(apoe_rm == FALSE) %>% 
  filter(mrpresso_keep == TRUE) 

res.mrdat_pt8_noApoe_noOutliers <- mr(mrdat_pt8_noApoe_noOutliers, method_list=c("mr_ivw_fe", "mr_egger_regression", "mr_weighted_median", 'mr_weighted_mode'))
het.mrdat_pt8_noApoe_noOutliers <- mr_heterogeneity(mrdat_pt8_noApoe_noOutliers, method_list=c("mr_ivw")) %>% 
  mutate(pt = 5e-8, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))
plei.mrdat_pt8_noApoe_noOutliers <- mr_pleiotropy_test(mrdat_pt8_noApoe_noOutliers) %>% 
  mutate(pt = 5e-8, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

out.res.mrdat_pt8_noApoe_noOutliers <- res.mrdat_pt8_noApoe_noOutliers %>% 
  mutate(pt = 5e-8, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

##-------------------------------------------------##
# pt < 5e-6; APOE region excluded; Outliers removed
mrdat_pt6_noApoe_noOutliers <- MRdat %>% 
  filter(pt == 5e-6) %>% 
  filter(apoe_rm == FALSE) %>% 
  filter(mrpresso_keep == TRUE) 

res.mrdat_pt6_noApoe_noOutliers <- mr(mrdat_pt6_noApoe_noOutliers, method_list=c("mr_ivw_fe", "mr_egger_regression", "mr_weighted_median", 'mr_weighted_mode'))
het.mrdat_pt6_noApoe_noOutliers <- mr_heterogeneity(mrdat_pt6_noApoe_noOutliers, method_list=c("mr_ivw")) %>% 
  mutate(pt = 5e-6, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))
plei.mrdat_pt6_noApoe_noOutliers <- mr_pleiotropy_test(mrdat_pt6_noApoe_noOutliers) %>% 
  mutate(pt = 5e-6, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

out.res.mrdat_pt6_noApoe_noOutliers <- res.mrdat_pt6_noApoe_noOutliers %>% 
  mutate(pt = 5e-6, MR_PRESSO = TRUE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

##-------------------------------------------------##
# pt < 5e-8; APOE region excluded; Outliers retained
mrdat_pt8_noApoe_Outliers <- MRdat %>% 
  filter(pt == 5e-8) %>% 
  filter(apoe_rm == FALSE) 

res.mrdat_pt8_noApoe_Outliers <- mr(mrdat_pt8_noApoe_Outliers, method_list=c("mr_ivw_fe", "mr_egger_regression", "mr_weighted_median", 'mr_weighted_mode'))
het.mrdat_pt8_noApoe_Outliers <- mr_heterogeneity(mrdat_pt8_noApoe_Outliers, method_list=c("mr_ivw")) %>% 
  mutate(pt = 5e-8, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))
plei.mrdat_pt8_noApoe_Outliers <- mr_pleiotropy_test(mrdat_pt8_noApoe_Outliers) %>% 
  mutate(pt = 5e-8, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

out.res.mrdat_pt8_noApoe_Outliers <- res.mrdat_pt8_noApoe_Outliers %>% 
  mutate(pt = 5e-8, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

##-------------------------------------------------##
# pt < 5e-6; APOE region excluded; Outliers retained
mrdat_pt6_noApoe_Outliers <- MRdat %>% 
  filter(pt == 5e-6) %>% 
  filter(apoe_rm == FALSE) 

res.mrdat_pt6_noApoe_Outliers <- mr(mrdat_pt6_noApoe_Outliers, method_list=c("mr_ivw_fe", "mr_egger_regression", "mr_weighted_median", 'mr_weighted_mode'))
het.mrdat_pt6_noApoe_Outliers <- mr_heterogeneity(mrdat_pt6_noApoe_Outliers, method_list=c("mr_ivw")) %>% 
  mutate(pt = 5e-6, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))
plei.mrdat_pt6_noApoe_Outliers <- mr_pleiotropy_test(mrdat_pt6_noApoe_Outliers) %>% 
  mutate(pt = 5e-6, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

out.res.mrdat_pt6_noApoe_Outliers <- res.mrdat_pt6_noApoe_Outliers %>% 
  mutate(pt = 5e-6, MR_PRESSO = FALSE) %>% 
  as_tibble() %>% 
  mutate(outcome = as.character(outcome), exposure = as.character(exposure))

##-------------------------------------------------##
# Combine datasets

res.mrdat.apoe <- out.res.mrdat_pt8_noApoe_noOutliers %>% 
  bind_rows(out.res.mrdat_pt6_noApoe_noOutliers) %>% 
  bind_rows(out.res.mrdat_pt8_noApoe_Outliers) %>% 
  bind_rows(out.res.mrdat_pt6_noApoe_Outliers) 

het.apoe <- het.mrdat_pt8_noApoe_noOutliers %>% 
  bind_rows(het.mrdat_pt6_noApoe_noOutliers) %>% 
  bind_rows(het.mrdat_pt8_noApoe_Outliers) %>% 
  bind_rows(het.mrdat_pt6_noApoe_Outliers) %>%
  mutate(method = str_replace(method, "Inverse variance weighted", 'IVW'))

plei.apoe <- plei.mrdat_pt8_noApoe_noOutliers %>% 
  bind_rows(plei.mrdat_pt6_noApoe_noOutliers) %>% 
  bind_rows(plei.mrdat_pt8_noApoe_Outliers) %>% 
  bind_rows(plei.mrdat_pt6_noApoe_Outliers) %>% 
  rename(egger_se = se, Egger.pval = pval)


write_csv(res.mrdat.apoe, '~/Dropbox/Research/PostDoc-MSSM/2_MR/2_DerivedData/Results/MRresults_NoApoe.csv')
res.mrdat.apoe <- read_csv('~/Dropbox/Research/PostDoc-MSSM/2_MR/2_DerivedData/Results/MRresults_NoApoe.csv')


##-------------------------------------------------##
# Out datasets

MRsummary <- res.mrdat.apoe  %>% 
  mutate(method = str_replace(method, "Inverse variance weighted \\(fixed effects\\)", 'IVW')) %>%
  mutate(method = str_replace(method, "MR Egger", 'MR_Egger')) %>%
  mutate(method = str_replace(method, "Weighted median", 'Weighted_median')) %>%
  mutate(method = str_replace(method, "Weighted mode", 'Weighted_mode')) %>%
  rename(MR.pval = pval)  %>% 
  left_join(select(het.apoe, outcome, exposure, pt, MR_PRESSO, Q,  Q_df, Q_pval), 
            by = c('outcome', 'exposure', 'pt', 'MR_PRESSO')) %>% 
  left_join(select(plei.apoe, outcome, exposure, pt, MR_PRESSO, egger_intercept, egger_se, Egger.pval), 
            by = c('outcome', 'exposure', 'pt', 'MR_PRESSO' )) %>% 
  select(outcome, exposure, pt, method, MR_PRESSO, nsnp, b, se, MR.pval, 
         Q,  Q_df, Q_pval, egger_intercept, egger_se, Egger.pval) %>% 
  arrange(outcome, exposure, pt, method, MR_PRESSO) 

mrresults.methods <- MRsummary %>% 
  mutate(b = signif(b, 2), se = signif(se, 2), MR.pval = signif(MR.pval, 2), Q = round(Q, 1), egger_intercept = signif(egger_intercept, 3), egger_se = signif(egger_se, 2), Egger.pval = signif(Egger.pval, 2)) %>%
  myspread(method, c(b, se, MR.pval)) %>% 
  mutate(IVW_Signif = as.character(signif.num(IVW_MR.pval))) %>% 
  mutate(MR_Egger_Signif = as.character(signif.num(MR_Egger_MR.pval))) %>% 
  mutate(Weighted_median_Signif = as.character(signif.num(Weighted_median_MR.pval))) %>%
  mutate(Weighted_mode_Signif = as.character(signif.num(Weighted_mode_MR.pval)))



mr_best <- MRsummary %>% 
  filter(method == 'IVW') %>% 
  #filter(outcome %nin% c('npany', 'nft4', 'vbiany')) %>% 
  group_by(outcome, exposure) %>% 
  filter(MR_PRESSO == ifelse(TRUE %in% MR_PRESSO, TRUE, FALSE)) %>% 
  ungroup()

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

dat.plot <- mr_best %>%
  mutate(z = b/se) %>% 
  mutate(outcome = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepdoherty", "mvpa", "dep", 'mdd', "sociso")) %>% 
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
                               "Sleep Duration" = "sleepdoherty",
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

frames <- mr_best %>% 
  select(outcome, exposure, pt, MR_PRESSO, qval) %>%
  left_join(mrresults.methods, by = c('outcome', 'exposure', 'pt', 'MR_PRESSO')) %>% 
  mutate(outcome = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepdoherty", "mvpa", "dep", 'mdd', "sociso")) %>%
  select(outcome, exposure, pt, MR_PRESSO, qval, Q_pval, Egger.pval, IVW_b, IVW_MR.pval, MR_Egger_b, MR_Egger_MR.pval, Weighted_median_b, Weighted_median_MR.pval, Weighted_mode_b, Weighted_mode_MR.pval) %>% 
  mutate(pass = ifelse(qval > 0.05, FALSE,
                       ifelse(Q_pval > 0.05 & Egger.pval > 0.05, TRUE,
                              ifelse(MR_Egger_MR.pval < 0.05 | Weighted_median_MR.pval < 0.05 | Weighted_mode_MR.pval < 0.05, TRUE, FALSE)))) %>%
  mutate(pass_0.1 = ifelse(qval > 0.1 | qval < 0.05, FALSE,
                           ifelse(Q_pval > 0.05 & Egger.pval > 0.05, TRUE,
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


p2 <- ggplot(dat.plot) + 
  geom_raster(aes(x = exposure, y = outcome, fill = z)) + 
  geom_text(data = dat.plot, size = 6, aes(label = Signif, x = exposure, y = outcome)) +
  scale_fill_gradient2(low="steelblue", high="firebrick", mid = "white") + 
  coord_equal() + theme_classic() +
  geom_vline(xintercept=seq(0.5, 23.5, 1),color="white") +
  geom_hline(yintercept=seq(0.5, 11.5, 1),color="white") +
  geom_rect(data=filter(frames, pass_0.1 == TRUE), size=0.5, fill=NA, colour="orange",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
  geom_rect(data=filter(frames, pass == TRUE), size=0.5, fill=NA, colour="red",
            aes(xmin=exposure1 - 0.5, xmax=exposure1 + 0.5, ymin=outcome1 - 0.5, ymax=outcome1 + 0.5)) + 
   theme(legend.position = 'none', axis.text.x = element_text(angle = 45, hjust = 1)) 
p2 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Figures/wo_apoe_heatmap.pdf', plot = p2, width = 190, height =  120, units = 'mm')





























