#!/usr/bin/Rscript

suppressMessages(library(tidyverse))
suppressMessages(library(haploR))

### ===== Command Line Arguments ===== ##
args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
outcome.summary = args[1] # Outcome Summary statistics
out = args[2]

file.name <- last(str_split(outcome.summary, '/')[[1]])

message(paste0("READING IN ", file.name, " \n"))
outcome.dat <- read_tsv(outcome.summary)
miss.outcome <- filter(outcome.dat, is.na(CHR))

# If snps are missing, find proxy snp
if(nrow(miss.outcome) >= 1){
  message("\n SEARCHING FOR PROXY SNPS \n")
  ProxySnps <- queryHaploreg(query = miss.outcome$SNP, ldThresh = 0.8,
                             ldPop = "EUR", timeout = 1000, encoding = "UTF-8",
                             verbose = TRUE) %>%
    select(query_snp_rsid, rsID, chr, pos_hg38, r2, `D'`, is_query_snp, ref, alt) %>%
    rename(ld.r2 = r2, Dprime = `D'`) %>%
    filter(nchar(ref) == 1) %>%
    filter(nchar(alt) == 1)
  write_tsv(ProxySnps, paste0(out, '_Proxys.txt'))
} else {
  tibble(query_snp_rsid = NA, rsID = NA, chr = NA, ld.r2 = NA, Dprime = NA,
         is_query_snp = NA, ref = NA, alt = NA) %>%
    write_tsv(paste0(out, '_Proxys.txt'))
}
