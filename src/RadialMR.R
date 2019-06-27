library(RadialMR)
library(TwoSampleMR)
library(tidyverse)
## For testing 
exposure.code <- 'mvpa'
outcome.code <- 'load'
p.threshold <- '5e-8'

traits <- '~/LOAD_minerva/dummy/shea/Projects/2_MR/1_RawData/MRTraits.csv'

harmonized.dat <- paste0('~/Dropbox/Research/PostDoc-MSSM/2_MR/2_DerivedData/', 
                         exposure.code, '/', outcome.code, '/', 
                         exposure.code, '_', p.threshold, '_', outcome.code, '_mrpresso_MRdat.csv')

mrdat.raw <- read_csv(harmonized.dat)
mrdat <- mrdat.raw %>% filter(mr_keep == TRUE) 
res.mr <- mr(mrdat, method_list = c('mr_ivw', "mr_ivw_fe", 'mr_weighted_median', "mr_egger_regression"))

dat <- with(mrdat, format_radial(beta.exposure, beta.outcome, se.exposure, se.outcome, SNP))
res.ivw <- ivw_radial(dat, alpha = 0.05/nrow(dat), weights = 1)
res.ivw$data <- res.ivw$data %>% 
  left_join(select(mrdat, SNP, mrpresso_keep)) %>% 
  mutate(mrpresso_keep = ifelse(mrpresso_keep == TRUE, 'Variant', 'Outlier')) %>% 
  select(-Outliers) %>% 
  rename(Outliers = mrpresso_keep)
p1 <- plot_radial(res.ivw, radial_scale = F)

p1 + geom_point(aes(res.ivw$data, x=Wj,y=BetaWj,shape = Outliers))

ggplot(res.ivw$data, aes(x = sqrt(Wj), y = BetaWj*sqrt(Wj), colour = Outliers)) + geom_point() 

ggplot(res.ivw$data,aes(x=Wj,y=BetaWj)) + labs(title="IVW Radial") + geom_point(aes(colour = Outliers)) +
   theme_bw() + theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank(),axis.line = element_line(colour = "black")) + ylab(expression(hat(beta)[j]~sqrt(W[j]))) + xlab(expression(sqrt(W[j]))) +
  coord_fixed()+theme(legend.title=element_blank())+scale_colour_manual(breaks=c("Outlier","IVW"),values=c("#56B4E9","#E69F00","white"))



scatter_plot <- mr_scatter_plot(res.mr, mrdat)
scatter_plot[[1]] + theme_bw() 

mrdat <- mrdat.raw %>% filter(mr_keep == TRUE)
mrdat <- mrdat.raw %>% filter(mr_keep == TRUE) %>% filter(mrpresso_keep == TRUE)


res.ivw <- ivw_radial(dat, alpha = 0.05, weights = 1)
res.ivw <- ivw_radial(dat, alpha = 0.05/nrow(dat), weights = 1)
res.ivw$coef
count(res.ivw$data, Outliers); count(mrdat, mrpresso_keep)
plot_radial(res.ivw, radial_scale = T)
p1 <- plot_radial(res.ivw, radial_scale = F, )
p1 + geom_abline(slope = 0.4401768, intercept = 0)
funnel_radial(res.ivw)

res.mr.plei <- mr(filter(mrdat, SNP %nin% res.ivw$outliers$SNP), 
             method_list = c("mr_ivw_fe", "mr_weighted_median", 
                             "mr_weighted_mode", "mr_egger_regression"))


res.egger <- egger_radial(dat, alpha = 0.05/nrow(dat), weights = 1)
res.egger$coef
plot_radial(res.egger)
plot_radial(res.egger, radial_scale = T)
funnel_radial(res.egger)


plot_radial(c(res.ivw, res.egger), radial_scale = F)
