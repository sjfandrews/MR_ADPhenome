mr_scatter_plot2 <- function(mr_results, dat) 
{
  requireNamespace("ggplot2", quietly = TRUE)
  requireNamespace("ggiraph", quietly = TRUE)
  requireNamespace("plyr", quietly = TRUE)
  mrres <- plyr::dlply(dat, c("id.exposure", "id.outcome"), 
                       function(d) {
                         d <- plyr::mutate(d)
                         if (nrow(d) < 2 | sum(d$mr_keep) == 0) {
                           return(blank_plot("Insufficient number of SNPs"))
                         }
                         d <- subset(d, mr_keep)
                         index <- d$beta.exposure < 0
                         d$beta.exposure[index] <- d$beta.exposure[index] * -1
                         d$beta.outcome[index] <- d$beta.outcome[index] *  -1
                         mrres <- subset(mr_results, id.exposure == d$id.exposure[1] & id.outcome == d$id.outcome[1])
                         mrres$a <- 0
                         if ("MR Egger" %in% mrres$method) {
                           temp <- mr_egger_regression(d$beta.exposure, 
                                                       d$beta.outcome, d$se.exposure, d$se.outcome, 
                                                       default_parameters())
                           mrres$a[mrres$method == "MR Egger"] <- temp$b_i
                         }
                         if ("MR Egger (bootstrap)" %in% mrres$method) {
                           temp <- mr_egger_regression_bootstrap(d$beta.exposure, 
                                                                 d$beta.outcome, d$se.exposure, d$se.outcome, 
                                                                 default_parameters())
                           mrres$a[mrres$method == "MR Egger (bootstrap)"] <- temp$b_i
                         }
                         ggplot2::ggplot(data = d, ggplot2::aes(x = beta.exposure, y = beta.outcome)) + 
                           ggplot2::geom_errorbar(ggplot2::aes(ymin = beta.outcome - se.outcome, 
                                                               ymax = beta.outcome + se.outcome), 
                                                  colour = "grey", width = 0) + 
                           ggplot2::geom_errorbarh(ggplot2::aes(xmin = beta.exposure - se.exposure, 
                                                                xmax = beta.exposure + se.exposure),
                                                   colour = "grey", height = 0) + 
                           #ggplot2::geom_point(ggplot2::aes(text = paste("SNP:", SNP))) + 
                           ggiraph::geom_point_interactive(aes(tooltip = tooltip, onclick = onclick), size = 1) +
                           ggplot2::geom_abline(data = mrres, ggplot2::aes(intercept = a, slope = b, colour = method), show.legend = TRUE) + 
                           ggplot2::theme_bw() +
                           ggplot2::scale_colour_discrete() + 
                           ggplot2::labs(colour = "MR Test", 
                                         x = paste("SNP effect on", d$exposure[1]), 
                                         y = paste("SNP effect on", d$outcome[1])) + 
                           ggplot2::theme(legend.position = "bottom", legend.direction = "vertical", 
                                          text = element_text(family="Times", size=12)) + 
                           ggplot2::guides(colour = ggplot2::guide_legend(ncol = 2)) 
                       })
  
  mrres
}


dat <- read_tsv('~/Dropbox/Research/PostDoc-MSSM/2_MR/Shiny/MR_mrpresso_MRdat.txt.gz', col_types = list(pt = col_character()))

input_exposure <- 'mvpa'
input_outcome <- 'load'
input_pt <- '5e-8'

mrdat <- dat %>% 
  filter(exposure == input_exposure) %>% 
  filter(outcome == input_outcome) %>% 
  filter(pt == input_pt) %>% 
  mutate(tooltip = paste0(SNP, ' <br>β<sub>exposure</sub> = ', beta.exposure, ' <br>β<sub>outcome</sub> = ', beta.outcome))
mrdat$onclick <- sprintf("window.open(\"%s%s\")", "https://www.ncbi.nlm.nih.gov/snp/", as.character(mrdat$SNP))

res <-  mr(mrdat, method_list = c("mr_ivw_fe", "mr_weighted_median", "mr_weighted_mode", "mr_egger_regression"))

test <- mr_scatter_plot2(res, mrdat)
ggiraph(code = print(test))
