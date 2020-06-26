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

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Diastolic Blood Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1   rs11675119     2   3476422    C    A 0.2553 -0.0190 0.0199 -0.9547739
    ## 2   rs34487851     2 106642554    A    G 0.2836  0.0155 0.0197  0.7868020
    ## 3   rs10166461     2 127859413    G    A 0.1910 -0.0460 0.0220 -2.0909091
    ## 4  rs116351076     3 118356759    C    T 0.0323 -0.0451 0.0526 -0.8574144
    ## 5  rs114498064     5 161442770    C    T 0.0129 -0.0140 0.0857 -0.1633606
    ## 6  rs117530689    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 7   rs12595161    15  52922890    G    A 0.0404  0.0391 0.0445  0.8786517
    ## 8   rs75680843    17  26640212    C    T 0.0646  0.1268 0.0354  3.5819209
    ## 9   rs11654699    17  30903310    C    T 0.5052 -0.0100 0.0177 -0.5649718
    ## 10      rs6857    19  45392254    C    T 0.1686 -0.0122 0.0237 -0.5147679
    ##            P      N                    TRAIT
    ## 1  0.3409000 757600 Diastolic_Blood_Pressure
    ## 2  0.4323000 755480 Diastolic_Blood_Pressure
    ## 3  0.0361000 757599 Diastolic_Blood_Pressure
    ## 4  0.3915000 757598 Diastolic_Blood_Pressure
    ## 5  0.8698000 723255 Diastolic_Blood_Pressure
    ## 6         NA     NA                     <NA>
    ## 7  0.3792000 757600 Diastolic_Blood_Pressure
    ## 8  0.0003412 757600 Diastolic_Blood_Pressure
    ## 9  0.5696000 757599 Diastolic_Blood_Pressure
    ## 10 0.6061000 748982 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs117530689        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Neurofibrillary Tangles and Diastolic Blood
Pressure datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10166461                      A                     G
    ## 2 rs114498064                      T                     C
    ## 3 rs116351076                      T                     C
    ## 4  rs11654699                      T                     C
    ## 5  rs11675119                      A                     C
    ## 6  rs12595161                      A                     G
    ## 7  rs34487851                      G                     A
    ## 8      rs6857                      T                     C
    ## 9  rs75680843                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.2636      -0.0460
    ## 2                     T                    C       -1.5100      -0.0140
    ## 3                     T                    C       -0.6753      -0.0451
    ## 4                     T                    C        0.2055      -0.0100
    ## 5                     A                    C       -0.2541      -0.0190
    ## 6                     A                    G       -0.4178       0.0391
    ## 7                     G                    A       -0.2523       0.0155
    ## 8                     T                    C        0.7871      -0.0122
    ## 9                     T                    C       -0.3709       0.1268
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733      0.1910  FALSE       FALSE     FALSE     gCxO2i
    ## 2       0.0131      0.0129  FALSE       FALSE     FALSE     gCxO2i
    ## 3       0.0358      0.0323  FALSE       FALSE     FALSE     gCxO2i
    ## 4       0.5243      0.5052  FALSE       FALSE     FALSE     gCxO2i
    ## 5       0.2699      0.2553  FALSE       FALSE     FALSE     gCxO2i
    ## 6       0.0511      0.0404  FALSE       FALSE     FALSE     gCxO2i
    ## 7       0.2686      0.2836  FALSE       FALSE     FALSE     gCxO2i
    ## 8       0.3219      0.1686  FALSE       FALSE     FALSE     gCxO2i
    ## 9       0.0721      0.0646  FALSE       FALSE     FALSE     gCxO2i
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2   127859413     0.0220 -2.0909091    0.0361000
    ## 2           5   161442770     0.0857 -0.1633606    0.8698000
    ## 3           3   118356759     0.0526 -0.8574144    0.3915000
    ## 4          17    30903310     0.0177 -0.5649718    0.5696000
    ## 5           2     3476422     0.0199 -0.9547739    0.3409000
    ## 6          15    52922890     0.0445  0.8786517    0.3792000
    ## 7           2   106642554     0.0197  0.7868020    0.4323000
    ## 8          19    45392254     0.0237 -0.5147679    0.6061000
    ## 9          17    26640212     0.0354  3.5819209    0.0003412
    ##   samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1             757599 Evangelou2018dbp            TRUE            reported
    ## 2             723255 Evangelou2018dbp            TRUE            reported
    ## 3             757598 Evangelou2018dbp            TRUE            reported
    ## 4             757599 Evangelou2018dbp            TRUE            reported
    ## 5             757600 Evangelou2018dbp            TRUE            reported
    ## 6             757600 Evangelou2018dbp            TRUE            reported
    ## 7             755480 Evangelou2018dbp            TRUE            reported
    ## 8             748982 Evangelou2018dbp            TRUE            reported
    ## 9             757600 Evangelou2018dbp            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            2    127859413      0.0570  -4.624561     3.816e-06
    ## 2            5    161442770      0.3137  -4.813516     1.480e-06
    ## 3            3    118356759      0.1461  -4.622177     3.826e-06
    ## 4           17     30903310      0.0449   4.576837     4.628e-06
    ## 5            2      3476422      0.0488  -5.206967     1.931e-07
    ## 6           15     52922890      0.0914  -4.571116     4.883e-06
    ## 7            2    106642554      0.0550  -4.587270     4.459e-06
    ## 8           19     45392254      0.0565  13.930973     4.830e-44
    ## 9           17     26640212      0.0809  -4.584672     4.590e-06
    ##   samplesize.exposure          exposure mr_keep.exposure
    ## 1                4735 Beecham2014braak4             TRUE
    ## 2                4735 Beecham2014braak4             TRUE
    ## 3                4735 Beecham2014braak4             TRUE
    ## 4                4735 Beecham2014braak4             TRUE
    ## 5                4735 Beecham2014braak4             TRUE
    ## 6                4735 Beecham2014braak4             TRUE
    ## 7                4735 Beecham2014braak4             TRUE
    ## 8                4735 Beecham2014braak4             TRUE
    ## 9                4735 Beecham2014braak4             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 2             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 3             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 4             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 5             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 6             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 7             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ## 8             reported      cXfcUa      2    TRUE          FALSE 5e-06
    ## 9             reported      cXfcUa      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    0.0029635766          0.12          TRUE
    ## 2    0.0013023872             1          TRUE
    ## 3    0.0034358103             1          TRUE
    ## 4    0.0000837431             1          TRUE
    ## 5    0.0005927831             1          TRUE
    ## 6    0.0014466542             1          TRUE
    ## 7    0.0002318504             1          TRUE
    ## 8              NA          <NA>            NA
    ## 9    0.0182595898        <0.008         FALSE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44       0.6061

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.03816053 23.43773  0.05 0.2254649 0.07620446
    ## 2             TRUE   0.03361027 23.48590  0.05 0.6508019 0.12723719

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
Neurofibrillary Tangles on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on
Diastolic Blood Pressure

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 2      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 3      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 4      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    8 -0.008825353 0.02796587
    ## 2                           Weighted median    8  0.008093719 0.03998535
    ## 3                             Weighted mode    8  0.007366659 0.04879483
    ## 4                                  MR Egger    8 -0.007765508 0.10660425
    ##        pval
    ## 1 0.7523245
    ## 2 0.8395907
    ## 3 0.8842563
    ## 4 0.9442977

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Diastolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 2      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 20.48575    6 0.00226842
    ## 2 Inverse variance weighted 20.48619    7 0.00460992

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##   egger_intercept         se      pval
    ## 1   -0.0003929144 0.03456767 0.9912995

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
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 25.20522 0.007

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 2      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 3      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 4      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    7 0.022453625 0.02924965
    ## 2                           Weighted median    7 0.016520004 0.03809755
    ## 3                             Weighted mode    7 0.007459949 0.05051405
    ## 4                                  MR Egger    7 0.023560663 0.06982757
    ##        pval
    ## 1 0.4426926
    ## 2 0.6645617
    ## 3 0.8874326
    ## 4 0.7495099

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ## 2      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 7.165845    5 0.2085955
    ## 2 Inverse variance weighted 7.166326    6 0.3057391

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      cXfcUa     gCxO2i Evangelou2018dbp Beecham2014braak4
    ##   egger_intercept        se      pval
    ## 1   -0.0004103924 0.0223959 0.9860888

<br>
