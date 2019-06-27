## -------------------------------------------------------------------------------- ##

## Generate Frames for plot to indicate robust associations
frames <- mr_best %>% 
  mutate(pass_0.1 = ifelse(qval > 0.1 | qval < 0.05, FALSE,
                           ifelse(MRPRESSO.pval > 0.05 & Egger.pval > 0.05, TRUE,
                                  ifelse(Egger_MR.pval < 0.05 | WME_MR.pval < 0.05 | WMBE_MR.pval < 0.05, TRUE, FALSE)))) %>% 
  split(., 1:nrow(.)) %>% 
  map(., function(x){
    x %>% 
      mutate(pass_0.1 = ifelse(pass_0.1 == FALSE, FALSE, passfunc(IVW_MR.pval, IVW_b, 
                                                                  Egger_MR.pval, Egger_b, 
                                                                  WME_MR.pval, WME_b, 
                                                                  WMBE_MR.pval, WMBE_b)))
  }) %>% bind_rows(.) %>%
  mutate(outcome1 = as.integer(outcome.name)) %>% 
  mutate(exposure1 = as.integer(exposure.name))

dat.plot <- mr_best %>%
  mutate(q_signif = as.character(signif.num(qval))) %>%
  mutate(z = IVW_b/IVW_se) %>% 
  mutate(out = ifelse(qval < 0.1, paste0(round(IVW_b, 3), '\n', '(', round_sci(qval), ')'), " ")) %>% 
  select(exposure.name, outcome.name, z, q_signif, out)

p1 <- ggplot(dat.plot) + 
  geom_raster(aes(x = exposure.name, y = outcome.name, fill = z)) + 
  geom_text(data = dat.plot, size = 4, aes(label = q_signif, x = exposure.name, y = outcome.name)) +
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

p1
ggsave('results/MR_ADphenome/All/MR_heatmap.pdf', plot = p1, width = 190, height =  120, units = 'mm')
ggsave('results/MR_ADphenome/All/MR_heatmap.png', plot = p1, width = 190, height =  120, units = 'mm')

p2 <- ggplot(dat.plot) + 
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
ggsave('results/MR_ADphenome/All/MR_heatmaplabels.png', plot = p2, width = 190, height =  120, units = 'mm')

