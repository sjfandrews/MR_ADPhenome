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

### Outcome: Pulse Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Pulse Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1   rs11675119     2   3476422    C    A 0.2555  0.0201 0.0235  0.8553191
    ## 2   rs34487851     2 106642554    A    G 0.2835  0.0268 0.0234  1.1453000
    ## 3   rs10166461     2 127859413    G    A 0.1911 -0.0353 0.0260 -1.3576923
    ## 4  rs116351076     3 118356759    C    T 0.0324  0.0247 0.0622  0.3971061
    ## 5  rs114498064    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 6  rs117530689    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 7   rs12595161    15  52922890    G    A 0.0402  0.0152 0.0526  0.2889734
    ## 8   rs75680843    17  26640212    C    T 0.0649  0.0881 0.0417  2.1127098
    ## 9   rs11654699    17  30903310    C    T 0.5058  0.0127 0.0208  0.6105769
    ## 10      rs6857    19  45392254    C    T 0.1681  0.1745 0.0281  6.2099644
    ##            P      N          TRAIT
    ## 1  3.935e-01 738169 Pulse_Pressure
    ## 2  2.509e-01 736049 Pulse_Pressure
    ## 3  1.741e-01 738167 Pulse_Pressure
    ## 4  6.919e-01 738166 Pulse_Pressure
    ## 5         NA     NA           <NA>
    ## 6         NA     NA           <NA>
    ## 7  7.732e-01 745819 Pulse_Pressure
    ## 8  3.465e-02 745818 Pulse_Pressure
    ## 9  5.417e-01 745818 Pulse_Pressure
    ## 10 5.289e-10 740416 Pulse_Pressure

<br>

**Table 3:** Proxy SNPs for Pulse Pressure

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

**Table 4:** Harmonized Neurofibrillary Tangles and Pulse Pressure
datasets

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
    ## 1                     A                    G       -0.2636      -0.0353
    ## 2                     T                    C       -0.6753       0.0247
    ## 3                     T                    C        0.2055       0.0127
    ## 4                     A                    C       -0.2541       0.0201
    ## 5                     A                    G       -0.4178       0.0152
    ## 6                     G                    A       -0.2523       0.0268
    ## 7                     T                    C        0.7871       0.1745
    ## 8                     T                    C       -0.3709       0.0881
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733      0.1911  FALSE       FALSE     FALSE     AzeoPc
    ## 2       0.0358      0.0324  FALSE       FALSE     FALSE     AzeoPc
    ## 3       0.5243      0.5058  FALSE       FALSE     FALSE     AzeoPc
    ## 4       0.2699      0.2555  FALSE       FALSE     FALSE     AzeoPc
    ## 5       0.0511      0.0402  FALSE       FALSE     FALSE     AzeoPc
    ## 6       0.2686      0.2835  FALSE       FALSE     FALSE     AzeoPc
    ## 7       0.3219      0.1681  FALSE       FALSE     FALSE     AzeoPc
    ## 8       0.0721      0.0649  FALSE       FALSE     FALSE     AzeoPc
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2   127859413     0.0260 -1.3576923    1.741e-01
    ## 2           3   118356759     0.0622  0.3971061    6.919e-01
    ## 3          17    30903310     0.0208  0.6105769    5.417e-01
    ## 4           2     3476422     0.0235  0.8553191    3.935e-01
    ## 5          15    52922890     0.0526  0.2889734    7.732e-01
    ## 6           2   106642554     0.0234  1.1453000    2.509e-01
    ## 7          19    45392254     0.0281  6.2099644    5.289e-10
    ## 8          17    26640212     0.0417  2.1127098    3.465e-02
    ##   samplesize.outcome         outcome mr_keep.outcome pval_origin.outcome
    ## 1             738167 Evangelou2018pp            TRUE            reported
    ## 2             738166 Evangelou2018pp            TRUE            reported
    ## 3             745818 Evangelou2018pp            TRUE            reported
    ## 4             738169 Evangelou2018pp            TRUE            reported
    ## 5             745819 Evangelou2018pp            TRUE            reported
    ## 6             736049 Evangelou2018pp            TRUE            reported
    ## 7             740416 Evangelou2018pp            TRUE            reported
    ## 8             745818 Evangelou2018pp            TRUE            reported
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
    ## 1             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 2             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 3             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 4             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 5             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 6             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ## 7             reported      8VBZt4      2    TRUE          FALSE 5e-06
    ## 8             reported      8VBZt4      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1              NA            NA          TRUE
    ## 2              NA            NA          TRUE
    ## 3              NA            NA          TRUE
    ## 4              NA            NA          TRUE
    ## 5              NA            NA          TRUE
    ## 6              NA            NA          TRUE
    ## 7              NA            NA          TRUE
    ## 8              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Pulse
Pressure GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44    5.289e-10

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

    ##   outliers_removed pve.exposure       F Alpha      NCP     Power
    ## 1            FALSE   0.03321139 23.1976  0.05 1.150088 0.1886066

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
Neurofibrillary Tangles on Pulse Pressure. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Pulse
Pressure

    ##   id.exposure id.outcome         outcome          exposure
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ## 2      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ## 3      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ## 4      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.03921019 0.03796926
    ## 2                           Weighted median    7 -0.04305233 0.05268836
    ## 3                             Weighted mode    7 -0.06133856 0.07540340
    ## 4                                  MR Egger    7 -0.13929386 0.14624683
    ##        pval
    ## 1 0.3017524
    ## 2 0.4138641
    ## 3 0.4470188
    ## 4 0.3846048

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Pulse Pressure and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome         outcome          exposure
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ## 2      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 7.155893    5 0.2093022
    ## 2 Inverse variance weighted 7.897722    6 0.2456927

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018pp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">
Fig. 2: Funnel plot of the MR causal estimates against their precession
</p>
:::

<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR)
can be used to visualize influential data points with large
contributions to Cochran's Q Statistic that may bias causal effect
estimates.

    ## [1] "No significant Outliers"

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018pp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome         outcome          exposure egger_intercept
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4      0.02986325
    ##           se     pval
    ## 1 0.04147936 0.503792

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome         outcome          exposure    pt
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 10.58343 0.263

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome         outcome          exposure   method nsnp
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4 mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome         outcome          exposure   method  Q
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4 mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome         outcome          exposure   method
    ## 1      8VBZt4     AzeoPc Evangelou2018pp Beecham2014braak4 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
