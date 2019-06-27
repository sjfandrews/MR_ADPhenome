'''Snakefile for Mendelian Randomization'''
# snakemake -s mr.smk --configfile 3_Scripts/mr_config.yaml
# snakemake -s mr.smk --dag | dot -Tsvg > dag_mr.svg

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
        expand("4_Output/{TraitCode}_AD_MR_{Pthreshold}_Analaysis.html", TraitCode=TraitCode, Pthreshold=Pthreshold),

rule html_Report:
    input:
        script = '3_Scripts/mr_alzheimers.Rmd',
        load_summary = DataIn + 'load_GWAS.Processed.gz',
        aaos_summary = DataIn + 'aaos_GWAS.Processed.gz',
        ab42_summary = DataIn + 'ab42_GWAS.Processed.gz',
        ptau_summary = DataIn + 'ptau_GWAS.Processed.gz',
        tau_summary = DataIn + 'tau_GWAS.Processed.gz',
        hipv_summary = DataIn + 'hipv_GWAS.Processed.gz',
        trait_summary = DataIn + '{TraitCode}_GWAS.Processed.gz'
    output:
        "4_Output/{TraitCode}_AD_MR_{Pthreshold}_Analaysis.html"
    params:
        rwd = RWD,
        output_dir = "4_Output/",
        TraitBlurb = TraitBlurb,
        TraitName = TraitName,
        TraitCode = TraitCode,
        TraitClump = TraitClump,
        out_path = DataOut,
        trait_load_path = "2_DerivedData/{TraitCode}/{TraitCode}_load_{Pthreshold}_MRdat.csv",
        trait_aaos_path = "2_DerivedData/{TraitCode}/{TraitCode}_aaos_{Pthreshold}_MRdat.csv",
        trait_ab42_path = "2_DerivedData/{TraitCode}/{TraitCode}_ab42_{Pthreshold}_MRdat.csv",
        trait_ptau_path = "2_DerivedData/{TraitCode}/{TraitCode}_ptau_{Pthreshold}_MRdat.csv",
        trait_tau_path = "2_DerivedData/{TraitCode}/{TraitCode}_tau_{Pthreshold}_MRdat.csv",
        trait_hipv_path = "2_DerivedData/{TraitCode}/{TraitCode}_hipv_{Pthreshold}_MRdat.csv",
        Pthreshold = '{Pthreshold}',
    shell:
        "R -e 'rmarkdown::render("
        """"{input.script}", output_file = "{output}", output_dir = "{params.output_dir}", \
params = list(rwd = "{params.rwd}", trait.name = "{params.TraitName}", trait.code = "{params.TraitCode}", \
load.summary = "{input.load_summary}", aaos.summary = "{input.aaos_summary}", ab42.summary = "{input.ab42_summary}", \
ptau.summary = "{input.ptau_summary}", tau.summary = "{input.tau_summary}", trait.summary = "{input.trait_summary}", \
hipv.summary = "{input.hipv_summary}", trait_hipv.path = "{params.trait_hipv_path}", \
trait_load.path = "{params.trait_load_path}", trait_aaos.path = "{params.trait_aaos_path}", \
trait_ab42.path = "{params.trait_ab42_path}", trait_ptau.path = "{params.trait_ptau_path}", \
trait_tau.path = "{params.trait_tau_path}", out.path = "{params.out_path}", \
p.threshold = "{params.Pthreshold}", \
trait.blurb = "{params.TraitBlurb}", trait.clump = "{params.TraitClump}"))' --slave
        """
