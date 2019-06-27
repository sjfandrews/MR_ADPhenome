#!/usr/bin/Rscript
library(tidyverse)

args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
output = args[1]
input = args[2:length(args)] # Outcome Summary statistics

mr <- input %>%
  map(., function(x){
     datin <- read_tsv(x, col_types = list(nsnp = col_character(), b = col_character(),
                                          se = col_character(), pval = col_character()))
  }) %>%
  bind_rows()

mr %>%
  write_csv(output)
