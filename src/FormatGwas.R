#!/usr/bin/Rscript

args = commandArgs(trailingOnly = TRUE) # Set arguments from the command line
infile_gwas = args[1]
outfile = args[2]
snp_col = args[3]
chrom_col = args[4]
pos_col = args[5]
ref_col = args[6]
alt_col = args[7]
af_col = args[8]
beta_col = args[9]
se_col = args[10]
p_col = args[11]
z_col = args[12]
n_col = args[13]
trait_col = args[14]

suppressMessages(library(tidyverse))
message('\n', 'Columns names are: ', 'SNP: ', snp_col, ', CHROM: ', chrom_col, ', POS: ', pos_col, ', REF: ', ref_col, ', ALT: ', alt_col, ', AF: ', af_col, ', BETA: ', beta_col, ', SE: ', se_col, ', P: ', p_col, ', Z: ', z_col, ', N: ', n_col, ', TRAIT: ', trait_col, '\n')

trait.gwas <- suppressMessages(read_tsv(infile_gwas, comment = '#', guess_max = 11000000))

out <- trait.gwas %>%
  rename(SNP = snp_col, CHROM = chrom_col, POS = pos_col, REF = ref_col, ALT = alt_col, AF = af_col, BETA = beta_col, SE = se_col, Z = z_col, P = p_col, N = n_col, TRAIT = trait_col) %>%
  filter(nchar(REF) == 1) %>%
  filter(nchar(ALT) == 1) %>%
  select(SNP, CHROM, POS, REF, ALT, AF, BETA, SE, Z, P, N, TRAIT) %>%
  drop_na %>%
  write_tsv(gzfile(outfile))

message('\n', 'SNPs in orginal file: ', nrow(trait.gwas), '; SNPs in formated file: ', pos_col, ', REF: ', nrow(out), '\n')
