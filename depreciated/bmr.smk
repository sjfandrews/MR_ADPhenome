'''Snakefile for bidirectional Mendelian Randomization'''

# snakemake -s bmr.smk --configfile 3_Scripts/load_config/mr_config.yaml

import os
RWD = os.getcwd()

## Configfile - different for each gwas
DataIn = config['DataIn']
DataOut = config['DataOut']

TraitName = config['TraitName']
TraitCode = config['TraitCode']
TraitBlurb = config['TraitBlurb']
TraitClump = config['TraitClump']

Pthreshold = config['Pthreshold']

rule all:
    input:
        expand("4_Output/{TraitCode}_AD_BMR_{Pthreshold}_Analaysis.html", TraitCode=TraitCode, Pthreshold=Pthreshold),

rule html_Report:
    input:
        script = '3_Scripts/bmr_alzheimers.Rmd',
        load_summary = DataIn + 'load_GWAS.Processed.gz',
        aaos_summary = DataIn + 'aaos_GWAS.Processed.gz',
        ab42_summary = DataIn + 'ab42_GWAS.Processed.gz',
        ptau_summary = DataIn + 'ptau_GWAS.Processed.gz',
        tau_summary = DataIn + 'tau_GWAS.Processed.gz',
        hipv_summary = DataIn + 'hipv_GWAS.Processed.gz',
        load_clump = DataIn + 'clumped/load.clumped.gz',
        aaos_clump = DataIn + 'clumped/aaos.clumped.gz',
        ab42_clump = DataIn + 'clumped/ab42.clumped.gz',
        ptau_clump = DataIn + 'clumped/ptau.clumped.gz',
        tau_clump = DataIn + 'clumped/tau.clumped.gz',
        hipv_clump = DataIn + 'clumped/hipv.clumped.gz',
        trait_summary = DataIn + '{TraitCode}_GWAS.Processed.gz'
    output:
        "4_Output/{TraitCode}_AD_BMR_{Pthreshold}_Analaysis.html"
    params:
        rwd = RWD,
        output_dir = "4_Output/",
        TraitBlurb = TraitBlurb,
        TraitName = TraitName,
        TraitCode = TraitCode,
        TraitClump = TraitClump,
        out_path = DataOut,
        trait_load_path = "2_DerivedData/{TraitCode}/load_{TraitCode}_{Pthreshold}_BMRdat.csv",
        trait_aaos_path = "2_DerivedData/{TraitCode}/aaos_{TraitCode}_{Pthreshold}_BMRdat.csv",
        trait_ab42_path = "2_DerivedData/{TraitCode}/ab42_{TraitCode}_{Pthreshold}_BMRdat.csv",
        trait_ptau_path = "2_DerivedData/{TraitCode}/ptau_{TraitCode}_{Pthreshold}_BMRdat.csv",
        trait_tau_path = "2_DerivedData/{TraitCode}/tau_{TraitCode}_{Pthreshold}_BMRdat.csv",
        trait_hipv_path = "2_DerivedData/{TraitCode}/hipv_{TraitCode}_{Pthreshold}_BMRdat.csv",
        Pthreshold = '{Pthreshold}',
    shell:
        "R -e 'rmarkdown::render("
        """"{input.script}", output_file = "{output}", output_dir = "{params.output_dir}", \
params = list(rwd = "{params.rwd}", trait.name = "{params.TraitName}", trait.code = "{params.TraitCode}", \
load.summary = "{input.load_summary}", aaos.summary = "{input.aaos_summary}", ab42.summary = "{input.ab42_summary}", \
ptau.summary = "{input.ptau_summary}", tau.summary = "{input.tau_summary}", hipv.summary = "{input.hipv_summary}", \
trait.summary = "{input.trait_summary}", \
load.clump = "{input.load_clump}", aaos.clump = "{input.aaos_clump}", ab42.clump = "{input.ab42_clump}", \
ptau.clump = "{input.ptau_clump}", tau.clump = "{input.tau_clump}", hipv.clump = "{input.hipv_clump}", \
trait_load.path = "{params.trait_load_path}", trait_aaos.path = "{params.trait_aaos_path}", \
trait_ab42.path = "{params.trait_ab42_path}", trait_ptau.path = "{params.trait_ptau_path}", \
trait_tau.path = "{params.trait_tau_path}", trait_hipv.path = "{params.trait_hipv_path}", \
out.path = "{params.out_path}", \
p.threshold = "{params.Pthreshold}", \
trait.blurb = "{params.TraitBlurb}"))' --slave
        """
