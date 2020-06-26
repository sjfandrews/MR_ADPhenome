Instrumental Variables
----------------------

**SNP Inclusion:** SNPS associated with at a p-value threshold of p \<
5e-6 were included in this analysis. <br>

**LD Clumping:** For standard two sample MR it is important to ensure
that the instruments for the exposure are independent. LD clumping was
performed in PLINK using the EUR samples from the 1000 Genomes Project
to estimate LD between SNPs, and, amongst SNPs that have an LD above a
given threshold, retain only the SNP with the lowest p-value. A clumping
window of 10\^{4}, r2 of 0.001 and significance level of 1 was used for
the index and secondary SNPs. <br>

**Proxy SNPs:** Where SNPs were not available in the outcome GWAS, the
EUR thousand genomes was queried to identify potential proxy SNPs that
are in linkage disequilibrium (r2 \> 0.8) of the missing SNP. <br>

### Exposure: Neurofibrillary Tangles

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Neurofibrillary Tangles

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1   rs11675119     2   3476422   C   A 0.2699 -0.2541 0.0488 -5.206967
    ## 2   rs34487851     2 106642554   A   G 0.2686 -0.2523 0.0550 -4.587270
    ## 3   rs10166461     2 127859413   G   A 0.1733 -0.2636 0.0570 -4.624561
    ## 4  rs116351076     3 118356759   C   T 0.0358 -0.6753 0.1461 -4.622177
    ## 5  rs114498064     5 161442770   C   T 0.0131 -1.5100 0.3137 -4.813516
    ## 6  rs117530689     7 102030935   C   A 0.0178 -4.0337 0.8423 -4.788911
    ## 7   rs12595161    15  52922890   G   A 0.0511 -0.4178 0.0914 -4.571116
    ## 8   rs75680843    17  26640212   C   T 0.0721 -0.3709 0.0809 -4.584672
    ## 9   rs11654699    17  30903310   C   T 0.5243  0.2055 0.0449  4.576837
    ## 10      rs6857    19  45392254   C   T 0.3219  0.7871 0.0565 13.930973
    ##            P    N                   TRAIT
    ## 1  1.931e-07 4735 Neurofibrillary_Tangles
    ## 2  4.459e-06 4735 Neurofibrillary_Tangles
    ## 3  3.816e-06 4735 Neurofibrillary_Tangles
    ## 4  3.826e-06 4735 Neurofibrillary_Tangles
    ## 5  1.480e-06 4735 Neurofibrillary_Tangles
    ## 6  1.678e-06 4735 Neurofibrillary_Tangles
    ## 7  4.883e-06 4735 Neurofibrillary_Tangles
    ## 8  4.590e-06 4735 Neurofibrillary_Tangles
    ## 9  4.628e-06 4735 Neurofibrillary_Tangles
    ## 10 4.830e-44 4735 Neurofibrillary_Tangles

<br>

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Systolic Blood Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1   rs11675119     2   3476422    C    A 0.2559  0.0115 0.0347  0.3314121
    ## 2   rs34487851     2 106642554    A    G 0.2839  0.0451 0.0345  1.3072500
    ## 3   rs10166461     2 127859413    G    A 0.1912 -0.0789 0.0382 -2.0654450
    ## 4  rs116351076     3 118356759    C    T 0.0323 -0.0213 0.0920 -0.2315217
    ## 5  rs114498064    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 6  rs117530689    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 7   rs12595161    15  52922890    G    A 0.0403  0.0489 0.0771  0.6342412
    ## 8   rs75680843    17  26640212    C    T 0.0648  0.1896 0.0613  3.0929853
    ## 9   rs11654699    17  30903310    C    T 0.5053  0.0070 0.0306  0.2287582
    ## 10      rs6857    19  45392254    C    T 0.1681  0.1564 0.0412  3.7961165
    ##            P      N                   TRAIT
    ## 1  0.7409000 738169 Systolic_Blood_Pressure
    ## 2  0.1906000 736049 Systolic_Blood_Pressure
    ## 3  0.0389900 738167 Systolic_Blood_Pressure
    ## 4  0.8165000 738166 Systolic_Blood_Pressure
    ## 5         NA     NA                    <NA>
    ## 6         NA     NA                    <NA>
    ## 7  0.5259000 745819 Systolic_Blood_Pressure
    ## 8  0.0019840 745818 Systolic_Blood_Pressure
    ## 9  0.8201000 745818 Systolic_Blood_Pressure
    ## 10 0.0001471 740416 Systolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs114498064        NA    NA     NA        NA        NA
    ## 2            NA rs117530689        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA
    ## 2    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Neurofibrillary Tangles and Systolic Blood
Pressure datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10166461                      A                     G
    ## 2 rs116351076                      T                     C
    ## 3  rs11654699                      T                     C
    ## 4  rs11675119                      A                     C
    ## 5  rs12595161                      A                     G
    ## 6  rs34487851                      G                     A
    ## 7      rs6857                      T                     C
    ## 8  rs75680843                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.2636      -0.0789
    ## 2                     T                    C       -0.6753      -0.0213
    ## 3                     T                    C        0.2055       0.0070
    ## 4                     A                    C       -0.2541       0.0115
    ## 5                     A                    G       -0.4178       0.0489
    ## 6                     G                    A       -0.2523       0.0451
    ## 7                     T                    C        0.7871       0.1564
    ## 8                     T                    C       -0.3709       0.1896
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733      0.1912  FALSE       FALSE     FALSE     AnGdzT
    ## 2       0.0358      0.0323  FALSE       FALSE     FALSE     AnGdzT
    ## 3       0.5243      0.5053  FALSE       FALSE     FALSE     AnGdzT
    ## 4       0.2699      0.2559  FALSE       FALSE     FALSE     AnGdzT
    ## 5       0.0511      0.0403  FALSE       FALSE     FALSE     AnGdzT
    ## 6       0.2686      0.2839  FALSE       FALSE     FALSE     AnGdzT
    ## 7       0.3219      0.1681  FALSE       FALSE     FALSE     AnGdzT
    ## 8       0.0721      0.0648  FALSE       FALSE     FALSE     AnGdzT
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2   127859413     0.0382 -2.0654450    0.0389900
    ## 2           3   118356759     0.0920 -0.2315217    0.8165000
    ## 3          17    30903310     0.0306  0.2287582    0.8201000
    ## 4           2     3476422     0.0347  0.3314121    0.7409000
    ## 5          15    52922890     0.0771  0.6342412    0.5259000
    ## 6           2   106642554     0.0345  1.3072500    0.1906000
    ## 7          19    45392254     0.0412  3.7961165    0.0001471
    ## 8          17    26640212     0.0613  3.0929853    0.0019840
    ##   samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1             738167 Evangelou2018sbp            TRUE            reported
    ## 2             738166 Evangelou2018sbp            TRUE            reported
    ## 3             745818 Evangelou2018sbp            TRUE            reported
    ## 4             738169 Evangelou2018sbp            TRUE            reported
    ## 5             745819 Evangelou2018sbp            TRUE            reported
    ## 6             736049 Evangelou2018sbp            TRUE            reported
    ## 7             740416 Evangelou2018sbp            TRUE            reported
    ## 8             745818 Evangelou2018sbp            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            2    127859413      0.0570  -4.624561     3.816e-06
    ## 2            3    118356759      0.1461  -4.622177     3.826e-06
    ## 3           17     30903310      0.0449   4.576837     4.628e-06
    ## 4            2      3476422      0.0488  -5.206967     1.931e-07
    ## 5           15     52922890      0.0914  -4.571116     4.883e-06
    ## 6            2    106642554      0.0550  -4.587270     4.459e-06
    ## 7           19     45392254      0.0565  13.930973     4.830e-44
    ## 8           17     26640212      0.0809  -4.584672     4.590e-06
    ##   samplesize.exposure          exposure mr_keep.exposure
    ## 1                4735 Beecham2014braak4             TRUE
    ## 2                4735 Beecham2014braak4             TRUE
    ## 3                4735 Beecham2014braak4             TRUE
    ## 4                4735 Beecham2014braak4             TRUE
    ## 5                4735 Beecham2014braak4             TRUE
    ## 6                4735 Beecham2014braak4             TRUE
    ## 7                4735 Beecham2014braak4             TRUE
    ## 8                4735 Beecham2014braak4             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 2             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 3             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 4             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 5             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 6             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ## 7             reported      wV5gR5      2    TRUE          FALSE 5e-06
    ## 8             reported      wV5gR5      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    1.184652e-02         0.042         FALSE
    ## 2    4.613013e-03         1.000          TRUE
    ## 3    4.248123e-04         1.000          TRUE
    ## 4    4.342815e-06         1.000          TRUE
    ## 5    8.930986e-04         1.000          TRUE
    ## 6    1.473046e-03         1.000          TRUE
    ## 7              NA            NA            NA
    ## 8    3.698132e-02         0.028         FALSE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44    0.0001471

<br>

Instrument Strength
-------------------

To ensure that the first assumption of MR is not violated (Non-zero
effect assumption), the genetic variants selected should be robustly
associated with the exposure. Weak instruments, where the variance in
the exposure explained by the the instruments is a small portion of the
total variance, may result in poor precission and accuracy of the causal
effect estiamte. The strength of an instrument can be evaluated using
the F statistic, if F is less than 10, this is an indication of weak
instrument.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   exposure = col_character(),
    ##   outcome = col_character(),
    ##   k.outcome = col_logical(),
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE   0.03321139 23.19760  0.05 1.0325838 0.1740948
    ## 2             TRUE   0.02397548 23.23303  0.05 0.7163737 0.1352360

MR Results
----------

To obtain an overall estimate of causal effect, the SNP-exposure and
SNP-outcome coefficients were combined in 1) a fixed-effects
meta-analysis using an inverse-variance weighted approach (IVW); 2) a
Weighted Median approach; 3) Weighted Mode approach and 4) Egger
Regression.

[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a
weighted regression of the SNP-outcome coefficients on the SNP-exposure
coefficients with the intercept constrained to zero. This method assumes
that all variants are valid instrumental variables based on the
Mendelian randomization assumptions. The causal estimate of the IVW
analysis expresses the causal increase in the outcome (or log odds of
the outcome for a binary outcome) per unit change in the exposure.
[**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for
50% of the instrumental variables to be invalid. [**MR-Egger
regression**](https://doi.org/10.1093/ije/dyw220) allows all the
instrumental variables to be subject to direct effects (i.e. horizontal
pleiotropy), with the intercept representing bias in the causal estimate
due to pleiotropy and the slope representing the causal estimate.
[**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent
estimates as the sample size increases if a plurality (or weighted
plurality) of the genetic variants are valid instruments. <br>

Table 6 presents the MR causal estimates of genetically predicted
Neurofibrillary Tangles on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Systolic
Blood Pressure

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 2      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 3      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 4      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.052083341 0.05593017
    ## 2                           Weighted median    7 -0.020173430 0.07727070
    ## 3                             Weighted mode    7 -0.005164735 0.11052767
    ## 4                                  MR Egger    7 -0.172800129 0.31029810
    ##        pval
    ## 1 0.3517394
    ## 2 0.7940348
    ## 3 0.9642465
    ## 4 0.6016120

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Systolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
<p class="caption">
Fig. 1: Scatterplot of SNP effects for the association of the Exposure
on the Outcome
</p>
:::

<br>

Pleiotropy
----------

A Cochrans Q heterogeneity test can be used to formaly assesse for the
presence of heterogenity (Table 7), with excessive heterogeneity
indicating that there is a meaningful violation of at least one of the
MR assumptions. these assumptions.. <br>

**Table 7:** Heterogenity Tests

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 2      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 14.79683    5 0.01126665
    ## 2 Inverse variance weighted 15.29237    6 0.01810064

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">
Fig. 2: Funnel plot of the MR causal estimates against their precession
</p>
:::

<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR)
can be used to visualize influential data points with large
contributions to Cochran's Q Statistic that may bias causal effect
estimates.

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##   egger_intercept        se      pval
    ## 1      0.03600202 0.0879807 0.6993293

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome          exposure    pt
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          2 20.34993 0.018

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 2      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 3      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 4      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.051765348 0.06517077
    ## 2                           Weighted median    5 -0.030594600 0.08001138
    ## 3                             Weighted mode    5  0.005034872 0.10409685
    ## 4                                  MR Egger    5 -0.007951939 0.18964337
    ##        pval
    ## 1 0.4270190
    ## 2 0.7021809
    ## 3 0.9637423
    ## 4 0.9691883

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ## 2      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 1.635482    3 0.6513716
    ## 2 Inverse variance weighted 1.696004    4 0.7914434

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      wV5gR5     AnGdzT Evangelou2018sbp Beecham2014braak4
    ##   egger_intercept         se      pval
    ## 1     -0.01301609 0.05290809 0.8215434

<br>
