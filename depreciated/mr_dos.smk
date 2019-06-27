'''Snakefile for Mendelian Randomization - two traits only'''
# snakemake -s mr_dos.smk --configfile 3_Scripts/mr_config.yaml
# snakemake -s mr_dos.smk --dag | dot -Tsvg > dag_mr.svg

import os
RWD = os.getcwd()

## Configfile - different for each gwas
DataIn = config['DataIn']
DataOut = config['DataOut']
Pthreshold = config['Pthreshold']
Pleitropy = config['Pleitropy']

TraitName_1 = config['TraitName_1']
TraitCode_1 = config['TraitCode_1']
TraitBlurb_1 = config['TraitBlurb_1']
TraitClump_1 = config['TraitClump_1']

TraitName_2 = config['TraitName_2']
TraitCode_2 = config['TraitCode_2']
TraitBlurb_2 = config['TraitBlurb_2']
TraitClump_2 = config['TraitClump_2']

rule all:
    input:
        expand("4_Output/{TraitCode_1}_{TraitCode_2}_{Pthreshold}_MR_Analaysis.html", TraitCode_1=TraitCode_1, TraitCode_2=TraitCode_2, Pthreshold=Pthreshold),

rule html_Report:
    input:
        script = '3_Scripts/mr_RunFile.Rmd',
        trait1_summary = DataIn + '{TraitCode_1}_GWAS.Processed.gz',
        trait2_summary = DataIn + '{TraitCode_2}_GWAS.Processed.gz',
    output:
        "4_Output/{TraitCode_1}_{TraitCode_2}_{Pthreshold}_MR_Analaysis.html"
    params:
        rwd = RWD,
        output_dir = "4_Output/",
        TraitBlurb_1 = TraitBlurb_1,
        TraitName_1 = TraitName_1,
        TraitCode_1 = TraitCode_1,
        TraitClump_1 = TraitClump_1,
        TraitBlurb_2 = TraitBlurb_2,
        TraitName_2 = TraitName_2,
        TraitCode_2 = TraitCode_2,
        TraitClump_2 = TraitClump_2,
        out_path = DataOut,
        trait1_trait2_path = "2_DerivedData/{TraitCode_1}/{TraitCode_1}_{TraitCode_2}_{Pthreshold}_MRdat.csv",
        trait2_trait1_path = "2_DerivedData/{TraitCode_2}/{TraitCode_2}_{TraitCode_1}_{Pthreshold}_MRdat.csv",
        Pthreshold = '{Pthreshold}',
        Pleitropy = Pleitropy,
    shell:
        "R -e 'rmarkdown::render("
        """"{input.script}", output_file = "{output}", output_dir = "{params.output_dir}", \
params = list(rwd = "{params.rwd}",  out.path = "{params.out_path}", p.threshold = "{params.Pthreshold}", pleitropy = "{params.Pleitropy}",\
trait1.summary = "{input.trait1_summary}", trait2.summary = "{input.trait2_summary}", \
trait1.name = "{params.TraitName_1}", trait1.code = "{params.TraitCode_1}", trait1.blurb = "{params.TraitBlurb_1}", trait1.clump = "{params.TraitClump_1}", \
trait2.name = "{params.TraitName_2}", trait2.code = "{params.TraitCode_2}", trait2.blurb = "{params.TraitBlurb_2}", trait2.clump = "{params.TraitClump_2}", \
trait1_exp.path = "{params.trait1_trait2_path}", trait2_exp.path = "{params.trait2_trait1_path}" \
))' --slave
        """
