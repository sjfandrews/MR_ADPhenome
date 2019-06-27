#!/usr/bin/Rscript

### ===== Command Line Arguments ===== ##
## 180913
args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
outcome.summary = args[1] # Outcome Summary statistics
out = args[2]

suppressMessages(library(Hmisc))       ## Contains miscillaneous funtions
suppressMessages(library(tidyverse))
suppressMessages(library(haploR))

##  ---- Find Proxy SNPs - uses haploR ---- ##
FindProxys <-function(snplist, dat){
  ProxySnps <- queryHaploreg(query = snplist, ldThresh = 0.8,
                             ldPop = "EUR", timeout = 1000, encoding = "UTF-8", verbose = TRUE) %>% 
    select(query_snp_rsid, rsID, chr, pos_hg38, r2, `D'`, is_query_snp, ref, alt) %>% 
    rename(ld.r2 = r2, Dprime = `D'`)
  
  query_snps <- ProxySnps %>% filter(is_query_snp == 1) %>% select(query_snp_rsid, ref, alt)
  
  proxy.snps <- left_join(ProxySnps, dat, by = c('rsID' = 'SNP')) %>% 
    filter(!is.na(Effect_allele)) %>%                       ## remove snps with missing information
    filter(is_query_snp == 0) %>%                           ## remove query snps
    filter(nchar(ref) == 1) %>% filter(nchar(alt) == 1) %>% ## remove indels
    group_by(query_snp_rsid) %>%                            ## by query snp
    arrange(-ld.r2) %>%                                     ## arrange by ld
    slice(1) %>%                                            ## select top proxy snp
    ungroup() %>% 
    rename(Effect_allele.proxy = Effect_allele, Non_Effect_allele.proxy = Non_Effect_allele) %>% ## rename alleles
    select(-chr, -pos_hg38, -is_query_snp) %>%              ## remove uneeded columns
    ## Join proxy snps to query snps
    left_join(query_snps, by = 'query_snp_rsid', suffix = c('.proxy', "")) %>% 
    ## for each proxy snp, coded correlated allels
    mutate(Effect_allele = ifelse(Effect_allele.proxy == ref.proxy, ref, alt)) %>%
    mutate(Non_Effect_allele = ifelse(Non_Effect_allele.proxy == ref.proxy, ref, alt)) %>% 
    rename(SNP = query_snp_rsid) 
  
  proxy.snps
}

message("READING IN EXPOSURE AND OUTCOME \n")
outcome.dat <- read_tsv(outcome.summary)
miss.outcome <- filter(outcome.dat, is.na(CHR))

# If snps are missing, find proxy snp
if(nrow(miss.outcome) >= 1){
  message("\n SEARCHING FOR PROXY SNPS \n")
  # Search for Proxy SNPs
  proxy.outcome <- FindProxys(miss.outcome$SNP, outcome.dat)
  
  # Combine proxy snps with trait data
  if(nrow(proxy.outcome) >= 1){
    outcome.dat <- outcome.dat %>%
      filter(SNP %nin% miss.outcome$SNP) %>%
      bind_rows(select(proxy.outcome, SNP, CHR, POS, Effect_allele, Non_Effect_allele, EAF, Beta, SE, P, r2, N)) %>%
      arrange(CHR, POS)
  }
}

message("\n EXPORTING \n")
## Write out outcomes SNPs
write_tsv(outcome.dat, paste0(out, '_ProxySNPs.txt'))

## Write out Proxy SNPs
if(nrow(miss.outcome) >= 1){
  left_join(select(miss.outcome, SNP), proxy.outcome, by = 'SNP') %>% 
    write_csv(paste0(out, '_proxys.csv'))
}else{
  tibble(SNP = NA, rsID = NA, ld.r2 = NA, Dprime = NA, ref.proxy = NA, alt.proxy = NA, 
         CHR = NA, POS = NA, Effect_allele.proxy = NA, Non_Effect_allele.proxy = NA, 
         EAF = NA, Beta = NA, SE = NA, P = NA, r2 = NA, N = NA, ref = NA, alt = NA, 
         Effect_allele = NA, Non_Effect_allele = NA) %>% 
    write_csv(paste0(out, '_proxys.csv'))
}
