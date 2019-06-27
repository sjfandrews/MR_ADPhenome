library(tidyverse)
library(ggiraph)
library(TwoSampleMR)
source('~/Dropbox/Research/PostDoc-MSSM/2_MR/3_Scripts/PowerFunctions.R', chdir = TRUE)

## if value is less then 0.001, use scientific notation
round_sci <- function(x){
  ifelse(x < 0.001, formatC(x, format = "e", digits = 2), round(x, 3))
  }

## Read in Harmonized datasets 
MRdat <- '~/Dropbox/Research/PostDoc-MSSM/2_MR/Drafts/Manuscript/TableS1.csv' %>% 
  read_csv(., guess_max = 108793)

## -------------------------------------------------------------------------------- ##
## Standardization of SNP effect and its standard error using z-statistic, allele 
## frequency and sample size. Based on gsmr::std_effect. 
## http://cnsgenomics.com/software/gsmr/#Tutorial
std.MRdat <- MRdat %>% 
  filter(mr_keep == TRUE) %>%
  #filter(mrpresso_keep == TRUE) %>% 
  group_by(exposure, outcome, pt) %>%
  ## Standardize continous outcomes
  mutate(st_beta.outcome = ifelse(logistic.outcome == FALSE,
                                  z.outcome/sqrt(2 * eaf.outcome * (1 - eaf.outcome) * (samplesize.outcome + z.outcome^2)), beta.outcome),
         st_se.outcome = ifelse(logistic.outcome == FALSE,
                                1/sqrt(2 * eaf.outcome * (1 - eaf.outcome) * (samplesize.outcome + z.outcome^2)), se.outcome)) %>%
  ## Standardize all exposures
  mutate(st_beta.exposure = z.exposure/sqrt(2 * eaf.outcome * (1 - eaf.exposure) * (samplesize.exposure + z.exposure^2)), 
         st_se.exposure = 1/sqrt(2 * eaf.exposure * (1 - eaf.exposure) * (samplesize.exposure + z.exposure^2))) %>%
  ungroup() %>%
  mutate(beta.outcome = st_beta.outcome, 
         se.outcome = st_se.outcome, 
         beta.exposure = st_beta.exposure, 
         se.exposure = st_se.exposure) 

## Rerun IVW MR analysis using standardized beta estimates 
std.res <- mr(std.MRdat, method_list = c("mr_ivw_fe")) %>% 
  as_tibble(.) %>% 
  mutate(outliers_removed = FALSE) %>%
  left_join(select(samplesize, code, logistic), by = c('outcome' = 'code')) %>% 
  mutate(or = ifelse(logistic == TRUE, exp(b), NA)) %>%
  mutate(beta = ifelse(logistic == FALSE, b, NA))

## Join std MR results with summary data for power analysis
mrdat.power <- MRdat %>% 
  filter(mr_keep == TRUE) %>%
  #filter(mrpresso_keep == TRUE) %>%
  group_by(exposure, outcome, pt) %>% 
  mutate(pve.exposure = snp.pve(eaf.exposure, beta.exposure, se.exposure, samplesize.exposure)) %>% 
  summarise(pve.exposure = sum(pve.exposure), 
            samplesize.exposure = max(samplesize.exposure), 
            samplesize.outcome = max(samplesize.outcome), nsnps = n(), 
            k.outcome = max(ncase.outcome)/max(samplesize.outcome)) %>% 
  ungroup(.) %>% 
  arrange(-pve.exposure) %>%
  left_join(std.res, by = c('exposure', 'outcome', 'nsnps' = 'nsnp'))

## -------------------------------------------------------------------------------- ##
## Models in which outliers are removed 
outlier_models <- MRdat %>% 
  filter(mr_keep == TRUE) %>%
  group_by(exposure, outcome, pt) %>% 
  summarize(n = sum(!mrpresso_keep)) %>% 
  ungroup() %>%
  filter(n > 0)

std.res_wo_outliers <- std.MRdat %>% 
  filter(mr_keep == TRUE) %>%
  filter(mrpresso_keep == TRUE) %>% 
  semi_join(outlier_models) %>% 
  mr(., method_list = c("mr_ivw_fe")) %>% 
  as_tibble(.) %>% 
  mutate(outliers_removed = TRUE) %>%
  left_join(select(samplesize, code, logistic), by = c('outcome' = 'code')) %>% 
  mutate(or = ifelse(logistic == TRUE, exp(b), NA)) %>%
  mutate(beta = ifelse(logistic == FALSE, b, NA))

## Join std MR results with summary data for power analysis
mrdat.power_wo_outliers <- MRdat %>% 
  filter(mr_keep == TRUE) %>%
  filter(mrpresso_keep == TRUE) %>%
  semi_join(outlier_models) %>% 
  group_by(exposure, outcome, pt) %>% 
  mutate(pve.exposure = snp.pve(eaf.exposure, beta.exposure, se.exposure, samplesize.exposure)) %>% 
  summarise(pve.exposure = sum(pve.exposure), 
            samplesize.exposure = max(samplesize.exposure), 
            samplesize.outcome = max(samplesize.outcome), nsnps = n(), 
            k.outcome = max(ncase.outcome)/max(samplesize.outcome)) %>% 
  ungroup(.) %>% 
  arrange(-pve.exposure) %>%
  left_join(std.res_wo_outliers, by = c('exposure', 'outcome', 'nsnps' = 'nsnp'))

## -------------------------------------------------------------------------------- ##
##                        Power to detect observed effect                           ##

observed_power.df <- mrdat.power %>% 
  bind_rows(mrdat.power_wo_outliers) %>%
  #mutate(beta = ifelse(sign(beta) == 1, beta, beta * -1)) %>% 
  #mutate(or = ifelse(or > 1, or, 1 / or)) %>%
  split(., as.factor(1:nrow(.))) %>% 
  map(., function(dat){
    message('Processing: ', dat$exposure, ' - ', dat$outcome, ' - ', dat$pt)
    if(dat$logistic == TRUE){
      results_binary(dat)
    } else {
      results_beta_based(dat)
    }
  }) %>% 
  bind_rows() %>% 
  mutate(model = paste0(exposure, ' - ', outcome, ' - ', pt)) %>%
  mutate(Beta = ifelse(!is.na(or), log(or), beta)) %>% 
  select(-id.outcome, -id.exposure)

observed_power.df %>% filter(is.na(Power))

write_csv(observed_power.df, "4_Output/MR_ADphenome/All/power.csv")

sm.obs <- arrange(observed_power.df, -Power) %>% 
  select(exposure, outcome, b, se, pval, pve.exposure, Power) %>% 
  mutate(pval = round_sci(pval)) 
#View(sm.obs)

ggplot(observed_power.df, aes(x = pval, y = Power, colour = logistic)) + geom_point() + 
  geom_hline(yintercept = 0.8, linetype = 2, colour = 'red') + 
  geom_vline(xintercept = 0.05, linetype = 2, colour = 'red') + 
  theme_bw()

# g1 <- ggplot(observed_power.df, aes(x = pval, y = Power, colour = logistic)) + geom_point_interactive(aes(tooltip = model), size = 2) 
# girafe(code = print(g1))

## -------------------------------------------------------------------------------- ##
##                    Find estimate that gives 80% Power
power_80.df <- mrdat.power  %>% 
  bind_rows(mrdat.power_wo_outliers) %>%  
  split(., as.factor(1:nrow(.))) %>% 
  map(., function(dat){
    if(dat$logistic == TRUE){
      message('Processing Binary: ', dat$exposure, ' - ', dat$outcome, ' - ', dat$pt)
      find_power_binary(dat, verbose = FALSE)
    } else {
      message('Processing Continous: ', dat$exposure, ' - ', dat$outcome, ' - ', dat$pt)
      find_power_cont(dat, verbose = FALSE)
    }
  }) %>% bind_rows() %>% 
  mutate(Beta = ifelse(!is.na(OR), log(OR), byx)) 

sm.80 <- arrange(power_80.df, -pve.exposure) %>% 
  select(exposure, outcome, b, or, pval, pve.exposure, byx, OR, Power) %>% 
  mutate(pval = round_sci(pval)) 
#View(sm.80)

power_80.df %>% 
  mutate(Beta = ifelse(!is.na(OR), log(OR), byx)) %>% 
  ggplot(., aes(x = b, y = Beta, colour = logistic)) + geom_point()

power_80.df %>% 
  #filter(exposure == 'Wray2018mdd', outcome == 'Hilbar2017hipv' ) %>% 
  filter(outcome == 'Kunkle2019load') %>% 
  ggplot(., aes(x = Beta, y = Power, colour = exposure)) + geom_smooth()


