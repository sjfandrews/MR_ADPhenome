#!/usr/bin/Rscript
message("Begining Harmonization \n")
### ===== Command Line Arguments ===== ##
args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
exposure.summary = args[1] # Exposure summary statistics
outcome.summary = args[2] # Outcome Summary statistics
proxy.snps = args[3]
pt = args[4]
ExposureCode = args[5]
OutcomeCode = args[6]
out.harmonized = args[7] # SPECIFY THE OUTPUT FILE

### ===== Load packages ===== ###
message("Loading packages  \n")
suppressMessages(library(plyr))
suppressMessages(library(tidyverse))  ## For data wrangling
suppressMessages(library(TwoSampleMR)) ## For conducting MR https://mrcieu.github.io/TwoSampleMR/

### ===== Read In Data ===== ###
message("READING IN EXPOSURE \n")
exposure.dat <- read_tsv(exposure.summary)

message("READING IN OUTCOME \n")
outcome.dat <- read_tsv(outcome.summary)

message("READING IN PROXY SNPs \n")
proxy.dat <- read_csv(proxy.snps) %>%
  filter(proxy.outcome == TRUE) %>%
  select(proxy.outcome, target_snp, proxy_snp, ALT, REF, ALT.proxy, REF.proxy) %>%
  mutate(SNP = target_snp) %>%
  rename(target_snp.outcome = target_snp, proxy_snp.outcome = proxy_snp, target_a1.outcome = ALT, target_a2.outcome = REF, proxy_a1.outcome = ALT.proxy, proxy_a2.outcome = REF.proxy)


### ===== Harmonization ===== ###
message("Harmonizing Exposure and Outcome \n")
mr_exposure.dat <- format_data(exposure.dat, type = 'exposure',
                            snp_col = 'SNP',
                            beta_col = "BETA",
                            se_col = "SE",
                            eaf_col = "AF",
                            effect_allele_col = "ALT",
                            other_allele_col = "REF",
                            pval_col = "P",
                            z_col = "Z",
                            samplesize_col = "N",
                            phenotype_col = 'TRAIT')
mr_exposure.dat$exposure =  ExposureCode

# Format LOAD
mr_outcome.dat <- format_data(outcome.dat, type = 'outcome',
                                 snp_col = 'SNP',
                                 beta_col = "BETA",
                                 se_col = "SE",
                                 eaf_col = "AF",
                                 effect_allele_col = "ALT",
                                 other_allele_col = "REF",
                                 pval_col = "P",
                                z_col = "Z",
                                samplesize_col = "N",
                                phenotype_col = 'TRAIT')
mr_outcome.dat$outcome =  OutcomeCode

if(empty(proxy.dat) == FALSE){
  mr_outcome.dat <- left_join(mr_outcome.dat, proxy.dat, by = 'SNP')
}


# harmonize LOAD
harmonized.MRdat <- harmonise_data(mr_exposure.dat, mr_outcome.dat) %>%
  as_tibble() %>%
  mutate(pt = pt)

## Write out Harmonized data
write_csv(harmonized.MRdat, out.harmonized)
