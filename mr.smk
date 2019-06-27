'''Snakefile for Mendelian Randomization'''

import os
from itertools import product
import pandas as pd
RWD = os.getcwd()

shell.prefix('module load plink/1.90 R/3.5.1; ')


REF = config['REF']
r2 = config['clumpr2']
kb = config['clumpkb']
EXPOSURES = pd.DataFrame.from_records(config["EXPOSURES"], index = "CODE")
OUTCOMES = pd.DataFrame.from_records(config["OUTCOMES"], index = "CODE")
Pthreshold = config['Pthreshold']
DataOut = config['DataOut']
DataOutput = config['DataOutput']

localrules: all, html_Report

# Filter forbidden wild card combinations
## https://stackoverflow.com/questions/41185567/how-to-use-expand-in-snakemake-when-some-particular-combinations-of-wildcards-ar
def filter_combinator(combinator, blacklist):
    def filtered_combinator(*args, **kwargs):
        for wc_comb in combinator(*args, **kwargs):
            # Use frozenset instead of tuple
            # in order to accomodate
            # unpredictable wildcard order
            if frozenset(wc_comb) not in blacklist:
                yield wc_comb
    return filtered_combinator

forbidden = {frozenset(wc_comb.items()) for wc_comb in config["missing"]}
filtered_product = filter_combinator(product, forbidden)

rule all:
    input:
        lambda wildcards: expand(DataOutput + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_Analaysis.html",
            filtered_product,
            ExposureCode=EXPOSURES.index.tolist(),
            OutcomeCode=OUTCOMES.index.tolist(),
            Pthreshold=Pthreshold),
        expand(DataOutput + 'plots/Manhattan/{ExposureCode}_ManhattanPlot.png',
            filtered_product,
            ExposureCode=EXPOSURES.index.tolist()),
        DataOutput + 'All/mrpresso_MRdat.csv',
        DataOutput + 'All/global_mrpresso.txt',
        DataOutput + 'All/heterogenity.txt',
        DataOutput + 'All/pleiotropy.txt',
        DataOutput + 'All/MRresults.txt',

## Read in Exposure summar statistics and format them to input required for pipeline
## Formated summary stats are a temp file that is delted as the end
rule FormatExposure:
    input:
        script = 'src/FormatGwas.R',
        ss = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['FILE'],
    output:
        formated_ss = temp(DataOut + "{ExposureCode}/{ExposureCode}_formated.txt.gz")
    params:
        snp_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['SNP'],
        chrom_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['CHROM'],
        pos_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['POS'],
        ref_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['REF'],
        alt_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['ALT'],
        af_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['AF'],
        beta_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['BETA'],
        se_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['SE'],
        p_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['P'],
        z_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['Z'],
        n_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['N'],
        trait_col = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['COLUMNS']['TRAIT']
    shell:
        'Rscript {input.script} {input.ss} {output.formated_ss} {params.snp_col} {params.chrom_col} \
        {params.pos_col} {params.ref_col} {params.alt_col} {params.af_col} {params.beta_col} \
        {params.se_col} {params.p_col} {params.z_col} {params.n_col} {params.trait_col}'

## Read in Outcome summary statistics and format them to input required for pipeline
## Formated summary stats are a temp file that is delted as the end
rule FormatOutcome:
    input:
        script = 'src/FormatGwas.R',
        ss = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['FILE'],
    output:
        formated_ss = temp(DataOut + "{OutcomeCode}/{OutcomeCode}_formated.txt.gz")
    params:
        snp_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['SNP'],
        chrom_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['CHROM'],
        pos_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['POS'],
        ref_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['REF'],
        alt_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['ALT'],
        af_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['AF'],
        beta_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['BETA'],
        se_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['SE'],
        p_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['P'],
        z_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['Z'],
        n_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['N'],
        trait_col = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['COLUMNS']['TRAIT']
    shell:
        'Rscript {input.script} {input.ss} {output.formated_ss} {params.snp_col} {params.chrom_col} \
        {params.pos_col} {params.ref_col} {params.alt_col} {params.af_col} {params.beta_col} \
        {params.se_col} {params.p_col} {params.z_col} {params.n_col} {params.trait_col}'

## Peform LD clumping on exposure summary statisitics
## user defines r2 and window in config file
rule clump:
    input:
        ss = DataOut + "{ExposureCode}/{ExposureCode}_formated.txt.gz"
    output:
        exp_clumped = temp(DataOut + '{ExposureCode}/{ExposureCode}.clumped'),
        exp_clumped_zipped = DataOut + '{ExposureCode}/{ExposureCode}.clumped.gz'
    params:
        ref = REF,
        out =  DataOut + '{ExposureCode}/{ExposureCode}',
        r2 = r2,
        kb = kb
    shell:
        """
        plink --bfile {params.ref} --keep-allele-order --allow-no-sex --clump {input.ss}  --clump-r2 {params.r2} --clump-kb {params.kb} --clump-p1 1 --clump-p2 1 --out {params.out};
        #gzip -k {output.exp_clumped} --keep not working now??
        gzip {output.exp_clumped};
        zcat {output.exp_clumped_zipped} > {output.exp_clumped}
        """

## Extract SNPs to be used as instruments in exposure
rule ExposureSnps:
    input:
        script = 'src/ExposureData.R',
        summary = DataOut + "{ExposureCode}/{ExposureCode}_formated.txt.gz",
        ExposureClump = DataOut + '{ExposureCode}/{ExposureCode}.clumped.gz'
    output:
        out = DataOut + "{ExposureCode}/{ExposureCode}_{Pthreshold}_SNPs.txt"
    params:
        Pthreshold = '{Pthreshold}'
    shell:
        'Rscript {input.script} {input.summary} {params.Pthreshold} {input.ExposureClump} {output.out}'

## Plot manhattan plot of exposure gwas highlight instruments
rule manhattan_plot:
    input:
        script = 'src/manhattan_plot.R',
        ingwas = DataOut + "{ExposureCode}/{ExposureCode}_formated.txt.gz",
        inclump = DataOut + '{ExposureCode}/{ExposureCode}.clumped.gz'
    params:
        PlotTitle = "{ExposureCode}"
    output:
        out = DataOutput + 'plots/Manhattan/{ExposureCode}_ManhattanPlot.png'
    shell:
        "Rscript {input.script} {input.ingwas} {input.inclump} {output.out} \"{params.PlotTitle}\""

## Extract exposure instruments from outcome gwas
rule OutcomeSnps:
    input:
        script = 'src/OutcomeData.R',
        ExposureSummary = DataOut + "{ExposureCode}/{ExposureCode}_{Pthreshold}_SNPs.txt",
        OutcomeSummary = DataOut + "{OutcomeCode}/{OutcomeCode}_formated.txt.gz"
    output:
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_SNPs.txt",
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MissingSNPs.txt",
    params:
        Outcome = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}",
    shell:
        'Rscript {input.script} {input.ExposureSummary} {input.OutcomeSummary} {params.Outcome}'

## Use plink to identify proxy snps instruments that were not avaliable in the outcome
rule FindProxySnps:
    input:
        MissingSNPs = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MissingSNPs.txt"
    output:
        ProxyList = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_Proxys.ld",
    params:
        Outcome = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_Proxys",
        ref = REF
    shell:
        """
        if [ $(wc -l < {input.MissingSNPs}) -eq 0 ]; then
            touch {output.ProxyList}
          else
           plink --bfile {params.ref} \
           --keep-allele-order \
           --r2 dprime in-phase with-freqs \
           --ld-snp-list {input.MissingSNPs} \
           --ld-window-r2 0.8 --ld-window-kb 500 --ld-window 1000 --out {params.Outcome}
          fi
"""

## Extract proxy SNPs from outcome gwas
rule ExtractProxySnps:
    input:
        script = 'src/ExtractProxySNPs.R',
        OutcomeSummary = DataOut + "{OutcomeCode}/{OutcomeCode}_formated.txt.gz",
        OutcomeSNPs = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_SNPs.txt",
        OutcomeProxys = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_Proxys.ld"
    output:
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_ProxySNPs.txt",
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MatchedProxys.csv",
    params:
        Outcome = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}",
    shell:
        'Rscript {input.script} {input.OutcomeSummary} {input.OutcomeProxys} {input.OutcomeSNPs} {params.Outcome}'

## Use TwoSampleMR to harmonize exposure and outcome datasets
rule Harmonize:
    input:
        script = 'src/DataHarmonization.R',
        ExposureSummary = DataOut + "{ExposureCode}/{ExposureCode}_{Pthreshold}_SNPs.txt",
        OutcomeSummary = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_ProxySNPs.txt",
        ProxySNPs = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MatchedProxys.csv"
    output:
        Harmonized = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MRdat.csv",
    params:
        Pthreshold = '{Pthreshold}',
        excposurecode = "{ExposureCode}",
        outcomecode = "{OutcomeCode}"
    shell:
        'Rscript {input.script} {input.ExposureSummary} {input.OutcomeSummary} {input.ProxySNPs} {params.Pthreshold} {params.excposurecode} {params.outcomecode} {output.Harmonized}'

## Use MR-PRESSO to conduct a global heterogenity test and
## outlier test to identify SNPs that are outliers
rule MrPresso:
    input:
        script = 'src/MRPRESSO.R',
        mrdat = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MRdat.csv",
    output:
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso.txt",
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global.txt",
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_MRdat.csv"
    params:
        out = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso"
    shell:
        'Rscript {input.script} {input.mrdat} {params.out}'

## Conduct a second MR-PRESSO test after removing outliers
rule MRPRESSO_wo_outliers:
    input:
        script = 'src/MRPRESSO_wo_outliers.R',
        mrdat = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_MRdat.csv",
    output:
        DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global_wo_outliers.txt",
    params:
        out = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso"
    shell:
        'Rscript {input.script} {input.mrdat} {params.out}'

## Conduct MR analysis
rule MR_analysis:
    input:
        script = 'src/MR_analysis.R',
        mrdat = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_MRdat.csv"
    output:
        DataOut + '{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_heterogenity.txt',
        DataOut + '{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_egger_plei.txt',
        DataOut + '{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_Results.txt'
    params:
        out = DataOut + '{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}'
    shell:
        'Rscript {input.script} {input.mrdat} {params.out}'

## define list of harmonized datasets so they can be merged into a single file
def mrpresso_MRdat_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_MRdat.csv",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)

rule merge_mrpresso_MRdat:
    input:
        dat = mrpresso_MRdat_input,
        script = 'src/ConcatMRdat.R'
    output:
        DataOutput + 'All/mrpresso_MRdat.csv'
    shell:
        'Rscript {input.script} {output} {input.dat}'
        #"awk 'FNR==1 && NR!=1{{next;}}{{print}}' {input.dat} > {output}"

## define list of global MR-PRESSO tests so they can be merged into a single file
def mrpresso_global_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global.txt",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)
def mrpresso_global_wo_outliers_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global_wo_outliers.txt",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)

rule merge_mrpresso_global:
    input:
        mrpresso_global = mrpresso_global_input,
        mrpresso_global_wo_outliers = mrpresso_global_wo_outliers_input,
        #script = 'src/ConcatMRpresso.R'
    output:
        DataOutput + 'All/global_mrpresso.txt'
    shell:
        #'Rscript {input.script} {output} {input.mrpresso_global} {input.mrpresso_global_wo_outliers}'
        "awk 'FNR==1 && NR!=1{{next;}}{{print}}' {input.mrpresso_global} {input.mrpresso_global_wo_outliers} > {output}"

## define list of Heterogenity tests so they can be merged into a single file
def MR_heterogenity_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_heterogenity.txt",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)

rule merge_heterogenity:
    input:
        mr_heterogenity = MR_heterogenity_input,
        #script = 'src/ConcatHeterogenity.R'
    output:
        DataOutput + 'All/heterogenity.txt'
    shell:
        #'Rscript {input.script} {output} {input.mr_heterogenity}'
        "awk 'FNR==1 && NR!=1{{next;}}{{print}}' {input.mr_heterogenity} > {output}"

## define list of MR Egger intercept tests so they can be merged into a single file
def MR_plei_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_egger_plei.txt",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)

rule merge_egger:
    input:
        mr_pleiotropy = MR_plei_input,
        #script = 'src/ConcatPleiotropy.R'
    output:
        DataOutput + 'All/pleiotropy.txt'
    shell:
        #'Rscript {input.script} {output} {input.mr_heterogenity}'
        "awk 'FNR==1 && NR!=1{{next;}}{{print}}' {input.mr_pleiotropy} > {output}"

## define list of MR results so they can be merged into a single file
def MR_Results_input(wildcards):
    return expand(DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_Results.txt",
        filtered_product,
        ExposureCode=EXPOSURES.index.tolist(),
        OutcomeCode=OUTCOMES.index.tolist(),
        Pthreshold=Pthreshold)

rule merge_mrresults:
    input:
        mr_results = MR_Results_input,
        #script = 'src/ConcatMRresults.R'
    output:
        DataOutput + 'All/MRresults.txt'
    shell:
        #'Rscript {input.script} {output} {input.mr_results}'
        "awk 'FNR==1 && NR!=1{{next;}}{{print}}' {input.mr_results} > {output}"

## Write a html Rmarkdown report
rule html_Report:
    input:
        script = 'src/mr_report.Rmd',
        ExposureSnps = DataOut + "{ExposureCode}/{ExposureCode}_{Pthreshold}_SNPs.txt",
        OutcomeSnps = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_SNPs.txt",
        ProxySnps = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MatchedProxys.csv",
        HarmonizedDat = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_MRdat.csv",
        mrpresso_global = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global.txt",
        mrpresso_global_wo_outliers = DataOut + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_mrpresso_global_wo_outliers.txt"
    output:
        DataOutput + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}_MR_Analaysis.html"
    params:
        rwd = RWD,
        output_dir = DataOutput + "{ExposureCode}/{OutcomeCode}/",
        output_name = DataOutput + "{ExposureCode}/{OutcomeCode}/{ExposureCode}_{Pthreshold}_{OutcomeCode}",
        ExposureCode = '{ExposureCode}',
        OutcomeCode = '{OutcomeCode}',
        Pthreshold = "{Pthreshold}",
        r2threshold = r2,
        kbthreshold = kb,
        Exposure = lambda wildcards: EXPOSURES.loc[wildcards.ExposureCode]['NAME'],
        Outcome = lambda wildcards: OUTCOMES.loc[wildcards.OutcomeCode]['NAME']
    shell:
        "R -e 'rmarkdown::render("
        """"{input.script}", clean = TRUE, intermediates_dir = "{params.output_dir}", output_file = "{output}", output_dir = "{params.output_dir}", \
params = list(rwd = "{params.rwd}", \
exposure.snps = "{input.ExposureSnps}", \
outcome.snps = "{input.OutcomeSnps}", \
proxy.snps = "{input.ProxySnps}", \
harmonized.dat = "{input.HarmonizedDat}", \
mrpresso_global = "{input.mrpresso_global}", \
outcome.code = "{params.OutcomeCode}", \
exposure.code = "{params.ExposureCode}", \
Outcome = "{params.Outcome}", \
Exposure = "{params.Exposure}", \
p.threshold = "{params.Pthreshold}", \
r2.threshold = "{params.r2threshold}", \
kb.threshold = "{params.kbthreshold}", \
out = "{params.output_name}"))' --slave
        """
