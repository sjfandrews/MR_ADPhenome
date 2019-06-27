# Mendelian Randomziation in Alzheimer's Disease
Estimating causal Association of environmental and lifestyle risk factors on risk of Alzheimer's disease and Alzheimer's endophenotypes.

---

**mr.smk** is a snakemake/R pipeline for estimating the causal association of a given exposure with an outcome using the [TwoSampleMR](https://mrcieu.github.io/TwoSampleMR) R package. The steps in the pipeline include:

1. Clump GWAS summary statistics using clumping window of 250kb, r2 of 0.1 and significance level of 1 was used for the index and secondary SNPs.
2. Plot a Manhattan plot
3. Obstain genetic variants (Instruments) below a given P<sub>T</sub> from the exposure GWAS.
4. Extract SNP effects from the outcome GWAS, and if exposure instrument is not avaliable in the outcome GWAS.
5. For Exposure instruments missing in the Outcome GWAS, look for LD proxies in the 1000 genomes EUR samples.
6. Harmonize exposure and outcome effects using ```TwoSampleMR::harmonise_data```
7. Perform a Global Test of Pelietropy and idenfity outliers using ```MR-PRESSO```
8. Run MR analysis, senstivity analysis and write a Rmarkdown html report.

<img align="center" src=dag_mr.svg alt="DAG">


## Getting Started
### Installation
Be sure to download and install the latest versions of the following software packages:
1. [Python 3](https://www.python.org/downloads/)
2. [Snakemake](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)
3. [R](https://cran.r-project.org/)
4. [Rstudio](https://www.rstudio.com/products/rstudio/download/)
5. [PLINK](https://www.cog-genomics.org/plink2)

Plink should be located within the the /usr/local/bin/ directory. The following code can be used to move the executibles: ```cp </path/to/executible> /usr/local/bin/```

The following R packages are also required:
1. [tidyverse](https://www.tidyverse.org/packages/)
2. [rmarkdown](https://cran.r-project.org/web/packages/rmarkdown/index.html)
3. [TwoSampleMR](https://github.com/MRCIEU/TwoSampleMR)
4. [MR-PRESSO](https://github.com/rondolab/MR-PRESSO)

```r
## Install tidyverse, rmarkdown, and devtools
install.packages(c("tidyverse", "Hmisc", "rmarkdown", "devtools", "haploR"))

## Install TwoSampleMR and ggforce
devtools::install_github(c("MRCIEU/TwoSampleMR", '"rondolab/MR-PRESSO"'))
```

Once all the prerequiste software is isntalled, MitoImpute can be installed on a git-enabled machine by typeing:

```bash
git clone https://github.com/marcoralab/MendelianRandomization.git
```

### Formatting GWAS Summary Statistics
Summary statisitcs do not need to be in a specific format. However it is recomended to use the [Summary Statistic Munger pipeline](https://github.com/marcoralab/sumstats_munger) to standardize all the files.


#### Further Reading on formating summary statistics
1. [Tips for Formatting A Lot of GWAS Summary Association Statistics Data](http://huwenboshi.github.io/data%20management/2017/11/23/tips-for-formatting-gwas-summary-stats.html)
2. [Across-cohort QC analyses of GWAS summary statistics from complex traits](https://doi.org/10.1038/ejhg.2016.106)

### Config File
The config.yaml file should contain the following information:
```
DataOut: path/to/dir/ for intermediate output files
DataOutput: path/to/dir/ for final output files

REF: path/to/population reference plink files (eg 1000 Geneomes)
clumpr2: r2 value for LD clumping - recomended 0.001
clumpkb: LD clumping window - recomended 1000
Pthreshold: pvalue theshold for selecting intrusments

## Forbidden wildcard combinations
missing: [
   {"ExposureCode" : CODE, "OutcomeCode" : CODE, "Pthreshold" : PVALUE}
 ]

## LOAD as outcome
EXPOSURES:
  -
    CODE: code to use
    NAME: trait name
    FILE: path/to/gwas/summary/statistics
    COLUMNS:
      SNP: marker name
      CHROM: chromsome
      POS: POS
      REF: REF
      ALT: ALT
      AF: AF
      BETA: BETA
      SE: SE
      P: P
      Z: Z
      N: N
      TRAIT: TRAIT


OUTCOMES:
  -
    CODE: Kunkle2019load
    NAME: 'Late Onset Alzheimers Disease'
    FILE: 1_RawData/GWAS/Kunkle2019load.chrall.CPRA_b37.tsv.gz
    COLUMNS:
      SNP: DBSNP_ID
      CHROM: CHROM
      POS: POS
      REF: REF
      ALT: ALT
      AF: AF
      BETA: BETA
      SE: SE
      P: P
      Z: Z
      N: N
      TRAIT: TRAIT

```
