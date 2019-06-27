#!/usr/bin/Rscript
library(tidyverse)

args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
output = args[1]
input = args[2:length(args)] # Outcome Summary statistics

mr <- input %>%
  map(., function(x){
     datin <- read_tsv(x) 
  }) %>%
  bind_rows() %>%
  mutate(violated = pval < 0.05)

mr %>%
  write_tsv(output)
