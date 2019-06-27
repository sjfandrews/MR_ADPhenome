library(tidyverse)
library(dotwhisker)
library(Hmisc)

myspread <- function(df, key, value) {
  # quote key
  keyq <- rlang::enquo(key)
  # break value vector into quotes
  valueq <- rlang::enquo(value)
  s <- rlang::quos(!!valueq)
  df %>% gather(variable, value, !!!s) %>%
    unite(temp, !!keyq, variable) %>%
    spread(temp, value)
}

path <- '~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/'
filenames <- list.files(path, pattern="*_MR_Results.csv", recursive = T)
filenames <- filenames[grepl('OldReports', filenames) == F]
files.gws <- paste0(path, grep('5e-8', filenames, value = T))
files.gns <- paste0(path, grep('5e-6', filenames, value = T))

## Genome Nominal significance results 
res.gns <- map(files.gns, read_csv) %>%
  bind_rows() %>% 
  mutate(z = b/se) %>% 
  filter(exposure %nin% c( "load", "aaos", "ab42", "ptau", "tau")) %>% 
  filter(outcome %in% c( "load", "aaos", "ab42", "ptau", "tau", "hipv", "hipv2015")) %>% 
  mutate(p = '5e-6') %>%
  mutate(exposure = str_replace_all(exposure, c("alcd" = "Alcohol Dependence",
                                                "alcc" = "Alcohol Consumption", 
                                                "audit" = "AUDIT", 
                                                'bmi' = 'BMI',
                                                "cpd" = 'Cigarettes per day',
                                                "dbp" = 'Diastolyic Blood Pressure',
                                                "dep" = 'Depressive Symptoms',
                                                'diab' = 'Type 2 Diabetes', 
                                                'educ' = 'Educational Attainment',
                                                'fish' = 'Oily Fish Intake',
                                                'hdl' = 'HDL Cholesterol',
                                                'hear' = 'Hearing Problems',
                                                'ldl' = 'LDL Cholesterol',
                                                'tc' = 'Total Cholesterol',
                                                'trig' = 'Triglycerides',
                                                'insom' = 'Insomnia',
                                                'sleep' = 'Sleep Duration',
                                                'mdd' = 'Major Depression Disorder',
                                                'mvpa' = 'Moderate to Vigorous PA',
                                                'smkukbb' = 'Smoking Status',
                                                'sociso' = 'Social Isolation',
                                                'sbp' = 'Systolic Blood Pressure',
                                                'pp' = 'Pulse Pressure')))
 


## Genome Wide significant results 
res.gws <- map(files.gws, read_csv) %>%
  bind_rows() %>% 
  mutate(z = b/se) %>% 
  filter(exposure %nin% c( "load", "aaos", "ab42", "ptau", "tau")) %>% 
  filter(outcome %in% c( "load", "aaos", "ab42", "ptau", "tau", "hipv", "hipv2015")) %>% 
  mutate(p = '5e-8') %>%
  mutate(exposure = str_replace_all(exposure, c("alcd" = "Alcohol Dependence",
                                                "alcc" = "Alcohol Consumption", 
                                                "audit" = "AUDIT", 
                                                'bmi' = 'BMI',
                                                "cpd" = 'Cigarettes per day',
                                                "dbp" = 'Diastolyic Blood Pressure',
                                                "dep" = 'Depressive Symptoms',
                                                'diab' = 'Type 2 Diabetes', 
                                                'educ' = 'Educational Attainment',
                                                'fish' = 'Oily Fish Intake',
                                                'hdl' = 'HDL Cholesterol',
                                                'hear' = 'Hearing Problems',
                                                'ldl' = 'LDL Cholesterol',
                                                'tc' = 'Total Cholesterol',
                                                'trig' = 'Triglycerides',
                                                'insom' = 'Insomnia',
                                                'sleep' = 'Sleep Duration',
                                                'mdd' = 'Major Depression Disorder',
                                                'mvpa' = 'Moderate to Vigorous PA',
                                                'smkukbb' = 'Smoking Status',
                                                'sociso' = 'Social Isolation',
                                                'sbp' = 'Systolic Blood Pressure',
                                                'pp' = 'Pulse Pressure')))


## Join Results
res.all <- bind_rows(res.gns, res.gws) %>% 
  mutate(method = str_replace(method, "Inverse variance weighted \\(fixed effects\\)", 'IVW')) 

## =========== Write Out Results =========== ##
all_gws_mr <- res.all %>% 
  filter(p == '5e-8') %>%
  mutate(b = round(b, 2)) %>% 
  mutate(se = round(se, 2)) %>% 
  mutate(pval = round(pval, 4)) %>% 
  mutate(b.se = paste0(b, ' (', se, ')')) %>%
  select(-Signif, -z, -p, -b, -se) %>% 
  myspread(method, c(nsnp, pval, b.se)) %>% 
  select(exposure, outcome, IVW_nsnp, IVW_b.se, IVW_pval, `MR Egger_b.se`, `MR Egger_pval`, `Weighted median_b.se`, `Weighted median_pval`) %>% 
  arrange(outcome, exposure) %>% 
  write_csv('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/all_gws_mr.csv')

all_gns_mr <- res.all %>% 
  filter(p == '5e-6') %>%
  mutate(b = round(b, 2)) %>% 
  mutate(se = round(se, 2)) %>% 
  mutate(pval = round(pval, 4)) %>% 
  mutate(b.se = paste0(b, ' (', se, ')')) %>%
  select(-Signif, -z, -p, -b, -se) %>% 
  myspread(method, c(nsnp, pval, b.se)) %>% 
  select(exposure, outcome, IVW_nsnp, IVW_b.se, IVW_pval, `MR Egger_b.se`, `MR Egger_pval`, `Weighted median_b.se`, `Weighted median_pval`) %>% 
  arrange(outcome, exposure) %>% 
  write_csv('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/all_gns_mr.csv')

test <- bind_rows(all_gws_mr, all_gns_mr) %>% 
  filter(IVW_pval < 0.05) %>% 
  arrange(exposure) %>% 
  group_by(exposure, outcome) %>% 
  slice(which.min(IVW_pval)) %>%
  print(n = Inf)

write_csv(test, '~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/all_sig_mr.csv')

## =========== DW Plots - p models =========== ##
## Plot LOAD results - IVW, all 
res.all %>% 
  filter(outcome == c("load"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/load.png', width = 8.5, height = 5.5, units = 'in')

## Plot AAOS results - IVW, all 
res.all %>% 
  filter(outcome == c("aaos"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/aaos.png', width = 8.5, height = 5.5, units = 'in')
  
## Plot AB42 results - IVW, all 
res.all %>% 
  filter(outcome == c("ab42"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ab42.png', width = 8.5, height = 5.5, units = 'in')

## Plot Ptau results - IVW, all 
res.all %>% 
  filter(outcome == c("ptau"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ptau.png', width = 8.5, height = 5.5, units = 'in')

## Plot Tau results - IVW, all 
res.all %>% 
  filter(outcome == c("tau"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/tau.png', width = 8.5, height = 5.5, units = 'in')

## Plot HV results - IVW, all 
res.all %>% 
  filter(outcome == c("hipv"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/hipv.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("hipv2015"), method == 'IVW') %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = p) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1")
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/hipv.png', width = 8.5, height = 5.5, units = 'in')

## =========== DW Plots - method models =========== ##
## Plot load results with MR models 
res.all %>% 
  filter(outcome == c("load")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/load_all.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("aaos")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/aaos_all.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("ab42")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ab42_all.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("ptau")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ptau_all.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("tau")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/tau_all.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(outcome == c("hipv")) %>% 
  rename(term = exposure, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/hipv_all.png', width = 8.5, height = 5.5, units = 'in')

## =========== DW Plots - Heat Maps =========== ##
ggplot(filter(res.all, method == 'IVW', p == '5e-6'), aes(x = exposure, y = outcome, size = -log10(pval), label = Signif)) + 
  geom_tile(fill = 'white', alpha = 0.5) + 
  geom_point(aes(color = z), shape = 15) +
  geom_text(size = 8) + 
  coord_equal() + 
  scale_color_gradient2(low="blue", high="red", mid = "white") + 
  geom_vline(xintercept=seq(0.5, 15.5, 1),color="#DEEBF7") +
  geom_hline(yintercept=seq(0.5, 5.5, 1),color="#DEEBF7") +
  theme_classic() + 
  scale_size(range = c(1, 15)) + 
  theme(legend.position = 'none', axis.text.x = element_text(angle = 45, hjust = 1))
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/gns.png', width = 8.5, height = 5.5, units = 'in')

ggplot(filter(res.all, method == 'IVW', p == '5e-8'), aes(x = exposure, y = outcome, size = -log10(pval), label = Signif)) + 
  geom_tile(fill = 'white', alpha = 0.5) + 
  geom_point(aes(color = z), shape = 15) +
  geom_text(size = 8) + 
  coord_equal() + 
  scale_color_gradient2(low="blue", high="red", mid = "white") + 
  geom_vline(xintercept=seq(0.5, 15.5, 1),color="#DEEBF7") +
  geom_hline(yintercept=seq(0.5, 5.5, 1),color="#DEEBF7") +
  theme_classic() + 
  scale_size(range = c(1, 15)) + 
  theme(legend.position = 'none', axis.text.x = element_text(angle = 45, hjust = 1))
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/gws.png', width = 8.5, height = 5.5, units = 'in')


## ====================== BMR Results ====================== ##

path <- '/Users/sheaandrews/Dropbox/Research/PostDoc-MSSM/2_MR/2_DerivedData/'
filenames <- list.files(path, pattern="*_bmr_Results.csv", recursive = T)
files.gws <- paste0(path, grep('5e-8', filenames, value = T))
files.gns <- paste0(path, grep('5e-6', filenames, value = T))


## Genome Nominal significance results 
res.gns <- map(files.gns, read_csv) %>%
  bind_rows() %>% 
  mutate(z = b/se) %>% 
  filter(exposure %in% c( "LOAD", "AAOS", "AB42", "Ptau", "Tau", 'HV')) %>% 
  mutate(p = '5e-6') %>%
  mutate(outcome = str_replace_all(outcome, c("alcd" = "Alcohol Dependence",
                                                "alcc" = "Alcohol Consumption", 
                                                "audit" = "AUDIT", 
                                                "dep" = 'Depressive Symptoms',
                                                "cpd" = 'Cigarettes per day',
                                                'diab' = 'Type 2 Diabetes', 
                                                'fish' = 'Oily Fish Intake', 
                                                'hdl' = 'HDL Cholesterol', 
                                                'ldl' = 'LDL Cholesterol', 
                                                'tc' = 'Total Cholesterol', 
                                                'trig' = 'Triglycerides', 
                                                'insom' = 'Insomnia', 
                                                'sleep' = 'Sleep Duration', 
                                                'mdd' = 'Major Depression Disorder', 
                                                'mvpa' = 'Moderate to Vigorous PA', 
                                                'smkukbb' = 'Smoking Status', 
                                                'sociso' = 'Social Isolation', 
                                                'bmi' = 'BMI',
                                                'educ' = 'Educational Attainment')))



## Genome Wide significant results 
res.gws <- map(files.gws, read_csv) %>%
  bind_rows() %>% 
  mutate(z = b/se) %>% 
  filter(exposure %in% c( "LOAD", "AAOS", "AB42", "Ptau", "Tau", 'HV')) %>% 
  mutate(p = '5e-8') %>%
  mutate(outcome = str_replace_all(outcome, c("alcd" = "Alcohol Dependence",
                                                "alcc" = "Alcohol Consumption", 
                                                "audit" = "AUDIT", 
                                                "dep" = 'Depressive Symptoms',
                                                "cpd" = 'Cigarettes per day',
                                                'diab' = 'Type 2 Diabetes', 
                                                'fish' = 'Oily Fish Intake', 
                                                'hdl' = 'HDL Cholesterol', 
                                                'ldl' = 'LDL Cholesterol', 
                                                'tc' = 'Total Cholesterol', 
                                                'trig' = 'Triglycerides', 
                                                'insom' = 'Insomnia', 
                                                'sleep' = 'Sleep Duration', 
                                                'mdd' = 'Major Depression Disorder', 
                                                'mvpa' = 'Moderate to Vigorous PA', 
                                                'smkukbb' = 'Smoking Status', 
                                                'sociso' = 'Social Isolation', 
                                                'bmi' = 'BMI',
                                                'educ' = 'Educational Attainment')))


## Join Results
res.all <- bind_rows(res.gns, res.gws)



## =========== DW Plots - method models =========== ##
## Plot load results with MR models 
res.all %>% 
  filter(exposure == c("LOAD")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/load_bmr.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(exposure == c("AAOS")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/aaos_bmr.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(exposure == c("AB42")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ab42_bmr.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(exposure == c("Ptau")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/ptau_bmr.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(exposure == c("Tau")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/tau_bmr.png', width = 8.5, height = 5.5, units = 'in')

res.all %>% 
  filter(exposure == c("HV")) %>% 
  rename(term = outcome, estimate = b, std.error = se, p.value = pval, model = method) %>% 
  dwplot(.) + theme_bw() + geom_vline(xintercept = 0, colour = 'grey', linetype = 2) + facet_grid(. ~ p) + 
  theme(legend.position="bottom") + scale_colour_brewer(palette="Set1") 
ggsave('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/plots/MR/hv_bmr.png', width = 8.5, height = 5.5, units = 'in')





































