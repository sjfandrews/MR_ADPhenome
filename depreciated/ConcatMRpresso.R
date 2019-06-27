#!/usr/bin/Rscript
library(tidyverse)

args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
output = args[1]
input = args[2:length(args)] # Outcome Summary statistics

#print(mrpresso_global_files)
mrpresso_global_files = str_subset(input, 'mrpresso_global.txt')
#print(mrpresso_global_wo_outliers_files)
mrpresso_global_wo_outliers_files = str_subset(input, 'mrpresso_global_wo_outliers.txt')

## MR-PRESSO Global w/ Outliers Retained
mrpresso_global <- mrpresso_global_files %>%
  map(., function(x){
    datin <- read_tsv(x, col_types = list(pval = col_character(),
    									  RSSobs = col_character()))
  }) %>%
  bind_rows() %>%
  mutate(RSSobs = as.numeric(RSSobs)) %>%
  mutate(violated = pval < 0.05)

## MR-PRESSO Global results w/o outliers
mrpresso_global_wo_outliers <- mrpresso_global_wo_outliers_files %>%
  map(., function(x){
    datin <- read_tsv(x, col_types = list(pval = col_character(),
                                          RSSobs = col_character()))
  }) %>%
  bind_rows() %>%
  mutate(RSSobs = as.numeric(RSSobs)) %>%
  mutate(violated = pval < 0.05)

mrpresso_global_comb <- bind_rows(mrpresso_global, mrpresso_global_wo_outliers)
write_tsv(mrpresso_global_comb, output)
