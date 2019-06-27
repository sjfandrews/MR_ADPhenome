library(RadialMR)
library(MRPRESSO)
library(tidyverse)
library(ggiraph)
library(patchwork)
library(cowplot)

##-------------------- Read in R datasets -------------------## 

## Outcomes to include the results 
oldoutcomes = c('load', 'loadKunkle', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv', 'hipv2015')
## Exposures to include in the results
oldexposures = c("alccliu", "alcd", "audit", "bmi", "dbp", "dep", "diab", "educ", "hdl", "hear", "insom", "ldl", "mdd", "mvpa", "oilfish", "pp", "sbp", "sleepDashti", "smkcpd", "smki", "sociso", "tc", "trig")

samplesize <- tibble(trait = c('alccliu', 'smki', 'smkcpd', 'audit', 'alcd', 'oilfish', 'hear', 'diab', 'bmi', 'tc', 'ldl', 'hdl', 'trig', 'dbp', 'sbp', 'pp', 'dep', 'mdd', 'insom', 'sleepDashti', 'sociso', 'educ', 'aaos', 'ab42', 'hipv', 'hipv2015', 'load', 'loadKunkle', 'nft4', 'npany', 'ptau', 'tau', 'vbiany', 'mvpa'),
                     categorical = c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE),
                     samplesize = c(537349, 262990, 263954, 121600, 46568, 359340, 346635, 659316, 690495, 188577, 188577, 188577, 188577, 757601, 757601, 757601, 322580, 480359, 386533, 446118, 452302, 766345, 40255, 3146, 13688, 26814, 54162, 63926, 4914, 4914, 3146, 3146, 4914, 377234), 
                     ncase = c(NA, NA, NA, NA, 11569, NA, 255838, 62892, NA, NA, NA, NA, NA, NA, NA, NA,  113769, 135458, 109402, NA, NA, NA, 14406, NA, NA, NA, 17008, 21982, NA, 3426, NA, NA, 992, NA), 
                     ncontrol = c(NA, NA, NA, NA, 34999, NA, 90797, 596424, NA, NA, NA, NA, NA, NA, NA, NA,  208811, 344901, 277131, NA, NA, NA, 25849, NA, NA, NA, 37154, 41944, NA, 620, NA, NA, 1772, NA)) 

oldMRdat <- read_tsv('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/strict_clump/0_Summary/MR_mrpresso_MRdat.txt.gz', guess_max = 100000) %>% 
  filter(outcome %in% oldoutcomes) %>% 
  filter(exposure %in% oldexposures) %>% 
  left_join(select(samplesize, trait, samplesize), by = c('exposure' = 'trait')) %>%
  filter(!(outcome == 'loadKunkle' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
  filter(!(outcome == 'load' & exposure %nin% c("alccliu", "alcd", "audit",  "educ"))) %>% 
  filter(!(outcome == 'hipv' & exposure %in% c("alccliu", "alcd", "audit",  "educ"))) %>%
  filter(!(outcome == 'hipv2015' & exposure %nin% c("alccliu", "alcd", "audit",  "educ"))) %>% 
  ## Merge Lambert 2013 + Kunkle 2019; Hilbar 2015 + Hilbar 2017
  mutate(outcome = str_replace(outcome, 'loadKunkle', 'load')) %>% 
  mutate(outcome = str_replace(outcome, 'hipv2015', 'hipv')) %>% 
  mutate(outcome.name = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure.name = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepDashti", "mvpa", "dep", 'mdd', "sociso")) %>% 
  mutate(exposure = fct_recode(exposure, 
                               "Liu2019drnkwk" = "alccliu", 
                               "Walters2018alcdep" = "alcd", 
                               "SanchezRoige2018auditt" = "audit", 
                               "Liu2019smkint" = "smki", 
                               "Liu2019smkcpd" = "smkcpd", 
                               "Evangelou2018dbp" = "dbp", 
                               "Howard2018dep" = "dep", 
                               "Yengo2018bmi" = 'bmi', 
                               "Xu2018diab" = "diab", 
                               "Lee2018educ" = "educ", 
                               "NealeLab2018oilfish" = "oilfish",
                               "Willer2013hdl" = "hdl", 
                               "NealeLab2018hear" = "hear", 
                               "Jansen2018insom" = "insom", 
                               "Willer2013ldl" = "ldl", 
                               "Wray2018mdd" = "mdd", 
                               "Klimentidis2018mvpa" = "mvpa",
                               "Evangelou2018pp" = "pp", 
                               "Evangelou2018sbp" = "sbp", 
                               "Day2018sociso" = "sociso", 
                               "Dashti2019slepdur" = "sleepDashti",
                               "Willer2013tc" = "tc", 
                               "Willer2013tg" = "trig")) %>% 
  mutate(outcome = fct_recode(outcome, 
                              "Lambert2013load" = "load", 
                              "Kunkle2019load" = "loadKunkle",
                              "Huang2017aaos" = "aaos", 
                              "Deming2017ab42" = "ab42", 
                              "Deming2017tau" = "tau", 
                              "Deming2017ptau" = "ptau", 
                              "Hilbar2017hipv" = "hipv",
                              "Hilbar2015hipv" = "hipv2015",
                              "Beecham2014npany" = "npany",
                              "Beecham2014braak4" = "nft4",
                              "Beecham2014vbiany" = "vbiany"))

oldMR_results <- read_tsv('~/Dropbox/Research/PostDoc-MSSM/2_MR/4_Output/strict_clump/0_Summary/MR_results.txt.gz') %>% 
  filter(outcome %in% oldoutcomes) %>% 
  filter(exposure %in% oldexposures) %>% 
  rename(outliers_removed = MR_PRESSO) %>%
  mutate(outcome.name = fct_relevel(outcome, 'load', 'aaos', 'ab42', 'ptau', 'tau', 'npany', 'nft4', 'vbiany', 'hipv')) %>% 
  mutate(exposure.name = fct_relevel(exposure, 'alccliu', 'alcd', 'audit', 'smki', 'smkcpd', 'dbp', 'sbp', 'pp', "hdl", "ldl", "tc", "trig", 'educ', 'bmi', 'diab', "oilfish", "hear", "insom", "sleepDashti", "mvpa", "dep", 'mdd', "sociso")) %>% 
  mutate(exposure = fct_recode(exposure, 
                               "Liu2019drnkwk" = "alccliu", 
                               "Walters2018alcdep" = "alcd", 
                               "SanchezRoige2018auditt" = "audit", 
                               "Liu2019smkint" = "smki", 
                               "Liu2019smkcpd" = "smkcpd", 
                               "Evangelou2018dbp" = "dbp", 
                               "Howard2018dep" = "dep", 
                               "Yengo2018bmi" = 'bmi', 
                               "Xu2018diab" = "diab", 
                               "Lee2018educ" = "educ", 
                               "NealeLab2018oilfish" = "oilfish",
                               "Willer2013hdl" = "hdl", 
                               "NealeLab2018hear" = "hear", 
                               "Jansen2018insom" = "insom", 
                               "Willer2013ldl" = "ldl", 
                               "Wray2018mdd" = "mdd", 
                               "Klimentidis2018mvpa" = "mvpa",
                               "Evangelou2018pp" = "pp", 
                               "Evangelou2018sbp" = "sbp", 
                               "Day2018sociso" = "sociso", 
                               "Dashti2019slepdur" = "sleepDashti",
                               "Willer2013tc" = "tc", 
                               "Willer2013tg" = "trig")) %>% 
  mutate(outcome = fct_recode(outcome, 
                              "Lambert2013load" = "load", 
                              "Kunkle2019load" = "loadKunkle",
                              "Huang2017aaos" = "aaos", 
                              "Deming2017ab42" = "ab42", 
                              "Deming2017tau" = "tau", 
                              "Deming2017ptau" = "ptau", 
                              "Hilbar2017hipv" = "hipv",
                              "Hilbar2015hipv" = "hipv2015",
                              "Beecham2014npany" = "npany",
                              "Beecham2014braak4" = "nft4",
                              "Beecham2014vbiany" = "vbiany"))

### ===================== MR Datasets ================================= ## 
exposure1 = 'Evangelou2018sbp'
exposure1 = 'Willer2013tc'
#outcome1 = 'Beecham2014vbiany'
outcome1 = 'Beecham2014braak4'
pt1 = 5e-6

## extract exposure and outcome 
dat <- MRdat %>% filter(exposure == exposure1 & outcome == outcome1 & pt == pt1) %>% 
  filter(SNP != "rs11687782") %>%
  mutate(model = 'new') %>% 
  mutate(std_b.exposure = gsmr::std_effect(eaf.exposure, beta.exposure, se.exposure, samplesize.exposure)$b) %>%
  mutate(std_se.exposure = gsmr::std_effect(eaf.exposure, beta.exposure, se.exposure, samplesize.exposure)$se)

olddat <- oldMRdat %>% filter(exposure == exposure1 & outcome == outcome1 & pt == pt1) %>% 
  filter(SNP != "rs11687782") %>%
  mutate(model = 'old')  %>% 
  mutate(std_b.exposure = gsmr::std_effect(eaf.exposure, beta.exposure, se.exposure, samplesize)$b) %>%
  mutate(std_se.exposure = gsmr::std_effect(eaf.exposure, beta.exposure, se.exposure, samplesize)$se)

anti_join(olddat, dat, by = 'SNP') %>% pull(SNP)

### ===================== MR Analysis ================================= ## 

# unstandardized exposure
## New data
mr(dat, method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression"))
ressingle <-  mr_singlesnp(dat, all_method = c("mr_ivw_fe"),single_method="mr_meta_fixed")

rad.dat <- dat_to_RadialMR(dat)[[1]]
letsee <- ivw_radial(rad.dat, alpha = 0.5/nrow(rad.dat))
plot_radial(letsee, radial_scale = F)

## Old data
mr(olddat, method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression"))
oldressingle <- mr_singlesnp(olddat, all_method = c("mr_ivw_fe"),single_method="mr_meta_fixed")

oldrad.dat <- dat_to_RadialMR(olddat)[[1]]
oldletsee <- ivw_radial(oldrad.dat, alpha = 0.5/nrow(oldrad.dat))
plot_radial(oldletsee, radial_scale = F)

# Standardized exposure
## New data
dat %>% 
  mutate(beta.exposure = std_b.exposure, se.exposure = std_se.exposure) %>% 
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression"))

## Old data
olddat %>% 
  mutate(beta.exposure = std_b.exposure, se.exposure = std_se.exposure) %>% 
  mr(., method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression"))

### ===================== Plot Z new against Z old ================================= ## 

dat %>% select(SNP, beta.exposure, beta.outcome, se.exposure, se.outcome, effect_allele.exposure, other_allele.exposure, effect_allele.outcome, other_allele.outcome) %>% 
  left_join(select(olddat, SNP, beta.exposure, beta.outcome, se.exposure, se.outcome, effect_allele.exposure, other_allele.exposure, effect_allele.outcome, other_allele.outcome), by = 'SNP', suffix = c('.new', '.old')) %>% 
  mutate(z.exposure.old = beta.exposure.old/se.exposure.old, z.exposure.new = beta.exposure.new/se.exposure.new) %>%
  mutate(z.outcome.old = beta.outcome.old/se.outcome.old, z.outcome.new = beta.outcome.new/se.outcome.new) %>%
  #ggplot(., aes(x = beta.exposure.x, y = beta.exposure.y)) + geom_point() + coord_equal()
  ggplot(., aes(x = z.outcome.old, y = z.outcome.new)) + geom_point() + coord_equal()

ressingle %>% 
  select(SNP, b, se, p) %>% 
  full_join(select(oldressingle, SNP, b, se, p), by = 'SNP', suffix = c('.new', '.old')) %>%
  #mutate(dif = round(abs(b.new) - abs(b.old), 2)) %>% filter(dif < 0)
  #ggplot(., aes(x = b.new, y = b.old)) + geom_point() + coord_equal()
  ggplot(., aes(x = p.new, y = p.old)) + geom_point() + coord_equal()

mr_leaveoneout(dat) %>% as_tibble() %>% arrange(p)

pold <- mr_forest_plot(ressingle)
pnew <- mr_forest_plot(oldressingle)

## Scatter plots - effect 

bind_rows(dat, olddat) %>% 
  ggplot(., aes(x = beta.exposure, beta.outcome)) + geom_point() + coord_equal() + facet_grid(. ~ model)

gg1 <- ggplot(dat, aes(x = beta.exposure, y = beta.outcome)) + 
  geom_point_interactive(aes(tooltip = SNP, data_id = SNP), size = 0.5) + 
  #ylim(-1, 0.5) + xlim(-1.5, 1.5) + coord_equal() + 
  geom_smooth(method = lm, formula = y ~ -1 + x, se = FALSE, size = 0.5) + 
  labs(title = "New")

gg2 <- ggplot(olddat, aes(x = beta.exposure, y = beta.outcome)) + 
  geom_point_interactive(aes(tooltip = SNP, data_id = SNP ), size = 0.5) + 
  #ylim(-1, 0.5) + xlim(-1.5, 1.5) + coord_equal() + 
  geom_smooth(method = lm, formula = y ~ -1 + x, se = FALSE, size = 0.5) + 
  labs(title = "Old")
x <- girafe( code = print(gg1 + gg2))
girafe_options(x, opts_hover(css = "fill:orange;r:2pt;") )
  

gg1 <- ggplot(dat, aes(x = std_b.exposure, y = beta.outcome)) + 
  geom_point_interactive(aes(tooltip = SNP, data_id = SNP), size = 0.5) + 
  ylim(-0.75, 0.5) + xlim(-0.1, 0.1) + 
  geom_smooth(method = lm, formula = y ~ -1 + x, se = FALSE, size = 0.5) + 
  labs(title = "New")

gg2 <- ggplot(olddat, aes(x = std_b.exposure, y = beta.outcome)) + 
  geom_point_interactive(aes(tooltip = SNP, data_id = SNP ), size = 0.5) + 
  ylim(-0.75, 0.5) + xlim(-0.1, 0.1)  + 
  geom_smooth(method = lm, formula = y ~ -1 + x, se = FALSE, size = 0.5) + 
  labs(title = "Old")
x <- girafe( code = print(gg1 + gg2))
girafe_options(x, opts_hover(css = "fill:orange;r:2pt;") )


dat %>% select(SNP, beta.exposure, beta.outcome, se.exposure, se.outcome) %>% 
  left_join(select(olddat, SNP, beta.exposure, beta.outcome, se.exposure, se.outcome), by = 'SNP', suffix = c('.new', '.old')) %>% 
  mutate(z.exposure.old = beta.exposure.old/se.exposure.old, z.exposure.new = beta.exposure.new/se.exposure.new) %>%
  mutate(z.outcome.old = beta.outcome.old/se.outcome.old, z.outcome.new = beta.outcome.new/se.outcome.new) %>%
  #mutate(dif = round(abs(beta.exposure.old) - abs(beta.exposure.new), 2)) %>% 
  mutate(dif = round(abs(se.outcome.old) - abs(se.outcome.new), 2)) %>% 
  arrange(-dif)

res_comb <- MR_results %>% 
  mutate(outcome = as_factor(outcome), exposure = as_factor(exposure)) %>%
  full_join(oldMR_results, by = c('outcome', 'exposure', 'method', 'pt', "outliers_removed"), suffix = c('.new', '.old')) %>% 
  select(-id.exposure.new, -id.outcome.new, -id.exposure.old, -id.outcome.old, -date) %>% 
  mutate(out = paste0(outcome, '\n', exposure, '\n', pt, '\n', outliers_removed))

ggplot(res_comb, aes(x = b.new, y = b.old)) + geom_point()
ggplot(res_comb, aes(x = b.new/se.new, y = b.old/se.old)) + geom_point()
ggplot(res_comb, aes(x = pval.new, y = pval.old)) + geom_point()

sig.f <- function(new, old){
  if(is.na(new) | is.na(old)){
    return(NA)
  } else if(new < 0.05 & old < 0.05){
  return('Both Sig')
} else if(new < 0.05 & old > 0.05){
  return('New Sig') 
} else if(new > 0.05 & old < 0.05){
  return("Old Sig")
} else {
  return('Non Sig')
}}

dat.p <- filter(res_comb, method == 'Inverse variance weighted (fixed effects)') 
dat.p$sig <- sapply(1:nrow(dat.p), function(x){sig.f(dat.p$pval.new[x], dat.p$pval.old[x])})

ggplot(dat.p, aes(x = b.new, y = b.old)) + geom_point()
ggplot(dat.p, aes(x = b.new/se.new, y = b.old/se.old, colour = sig)) + geom_point() + coord_equal()
dat.p %>% 
  filter(outcome %in% c('Beecham2014npany', 'Beecham2014braak4', 'Beecham2014vbiany')) %>%
  # filter(outcome %in% c('Deming2017ab42', 'Deming2017ptau', 'Deming2017tau')) %>%
   # filter(outcome %in% c('Lambert2013load', 'Kunkle2019load', 'Huang2017aaos', 'Hilbar2017hipv', 'Hilbar2015hipv')) %>%
  ggplot(., aes(x = pval.new, y = pval.old, colour = sig, shape = outcome)) + geom_point() + coord_equal()

my_gg <- ggplot(dat.p, aes(x = pval.new, y = pval.old, colour = sig)) + geom_point_interactive(aes(tooltip = out))
girafe(code = print(my_gg))

dat %>% select(SNP, beta.exposure, se.exposure, effect_allele.exposure, other_allele.exposure)   
olddat %>% select(SNP, beta.exposure, se.exposure, effect_allele.exposure, other_allele.exposure)    
   
audit.raw %>% filter(rsid %in% dat$SNP)   
audit_t  %>% filter(SNP %in% dat$SNP)
test  %>% filter(SNP %in% dat$SNP)
test2  %>% filter(DBSNP_ID %in% dat$SNP)  
test <- read_tsv('/Users/sheaandrews/LOAD_minerva/dummy/shea/data/sumstats_munger/gwas/SanchezRoige2018/AUDIT_UKB_2018_AJP.txt')   
test2 <- read_tsv('/Users/sheaandrews/LOAD_minerva/dummy/shea/data/sumstats_munger/output/SanchezRoige2018auditt.chrall.CPRA_b37.tsv.gz', comment = "##")   
   
   
   
   
   
   
   
   
   
   
   
   
