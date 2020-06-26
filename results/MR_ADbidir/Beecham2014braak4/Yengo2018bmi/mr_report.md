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

### Outcome: BMI

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
BMI

    ##            SNP CHROM      POS  REF  ALT      AF    BETA     SE           Z
    ## 1   rs11675119    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 2   rs34487851    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 3   rs10166461    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 4  rs116351076    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 5  rs114498064    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 6  rs117530689    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 7   rs12595161    15 52922890    G    A 0.03882 -0.0007 0.0041  -0.1707317
    ## 8   rs75680843    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 9   rs11654699    NA       NA <NA> <NA>      NA      NA     NA          NA
    ## 10      rs6857    19 45392254    C    T 0.16010 -0.0244 0.0023 -10.6086957
    ##          P      N TRAIT
    ## 1       NA     NA  <NA>
    ## 2       NA     NA  <NA>
    ## 3       NA     NA  <NA>
    ## 4       NA     NA  <NA>
    ## 5       NA     NA  <NA>
    ## 6       NA     NA  <NA>
    ## 7  8.6e-01 788605   BMI
    ## 8       NA     NA  <NA>
    ## 9       NA     NA  <NA>
    ## 10 2.6e-25 687471   BMI

<br>

**Table 3:** Proxy SNPs for BMI

    ##    target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1  rs11675119 rs6739269 0.975745 0.990206 AT/CC  NA     2   3470995
    ## 2  rs10166461 rs6743470 0.908096 0.993262 AT/GG  NA     2 127868435
    ## 3  rs75680843 rs6505075 1.000000 1.000000 TA/CG  NA    17  26617654
    ## 4  rs11654699 rs4794929 0.814981 0.924563 TC/CG  NA    17  30922073
    ## 5  rs34487851      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 6 rs116351076      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 7 rs114498064      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 8 rs117530689      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy      AF    BETA     SE          Z    P      N TRAIT
    ## 1         C         T 0.24800  0.0021 0.0020  1.0500000 0.29 687952   BMI
    ## 2         G         T 0.20490 -0.0006 0.0021 -0.2857143 0.78 690799   BMI
    ## 3         G         A 0.06729 -0.0051 0.0035 -1.4571429 0.15 691501   BMI
    ## 4         G         C 0.51980 -0.0009 0.0017 -0.5294118 0.59 688446   BMI
    ## 5      <NA>      <NA>      NA      NA     NA         NA   NA     NA  <NA>
    ## 6      <NA>      <NA>      NA      NA     NA         NA   NA     NA  <NA>
    ## 7      <NA>      <NA>      NA      NA     NA         NA   NA     NA  <NA>
    ## 8      <NA>      <NA>      NA      NA     NA         NA   NA     NA  <NA>
    ##    ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1    A         T    C         C    A    C          TRUE
    ## 2    A         T    G         G    A    G          TRUE
    ## 3    T         A    C         G    T    C          TRUE
    ## 4    T         C    C         G    T    C          TRUE
    ## 5 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 7 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 8 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Neurofibrillary Tangles and BMI datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10166461                      A                     G
    ## 2 rs11654699                      T                     C
    ## 3 rs11675119                      A                     C
    ## 4 rs12595161                      A                     G
    ## 5     rs6857                      T                     C
    ## 6 rs75680843                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.2636      -0.0006
    ## 2                     T                    C        0.2055      -0.0009
    ## 3                     A                    C       -0.2541       0.0021
    ## 4                     A                    G       -0.4178      -0.0007
    ## 5                     T                    C        0.7871      -0.0244
    ## 6                     T                    C       -0.3709      -0.0051
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733     0.20490  FALSE       FALSE     FALSE     Z27wlS
    ## 2       0.5243     0.51980  FALSE       FALSE     FALSE     Z27wlS
    ## 3       0.2699     0.24800  FALSE       FALSE     FALSE     Z27wlS
    ## 4       0.0511     0.03882  FALSE       FALSE     FALSE     Z27wlS
    ## 5       0.3219     0.16010  FALSE       FALSE     FALSE     Z27wlS
    ## 6       0.0721     0.06729  FALSE       FALSE     FALSE     Z27wlS
    ##   chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           2   127868435     0.0021  -0.2857143      7.8e-01
    ## 2          17    30922073     0.0017  -0.5294118      5.9e-01
    ## 3           2     3470995     0.0020   1.0500000      2.9e-01
    ## 4          15    52922890     0.0041  -0.1707317      8.6e-01
    ## 5          19    45392254     0.0023 -10.6086957      2.6e-25
    ## 6          17    26617654     0.0035  -1.4571429      1.5e-01
    ##   samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1             690799 Yengo2018bmi            TRUE            reported
    ## 2             688446 Yengo2018bmi            TRUE            reported
    ## 3             687952 Yengo2018bmi            TRUE            reported
    ## 4             788605 Yengo2018bmi            TRUE            reported
    ## 5             687471 Yengo2018bmi            TRUE            reported
    ## 6             691501 Yengo2018bmi            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1          TRUE         rs10166461         rs6743470                 A
    ## 2          TRUE         rs11654699         rs4794929                 T
    ## 3          TRUE         rs11675119         rs6739269                 A
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6          TRUE         rs75680843         rs6505075                 T
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 G                T                G            2
    ## 2                 C                C                G           17
    ## 3                 C                T                C            2
    ## 4              <NA>             <NA>             <NA>           15
    ## 5              <NA>             <NA>             <NA>           19
    ## 6                 C                A                G           17
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1    127859413      0.0570  -4.624561     3.816e-06                4735
    ## 2     30903310      0.0449   4.576837     4.628e-06                4735
    ## 3      3476422      0.0488  -5.206967     1.931e-07                4735
    ## 4     52922890      0.0914  -4.571116     4.883e-06                4735
    ## 5     45392254      0.0565  13.930973     4.830e-44                4735
    ## 6     26640212      0.0809  -4.584672     4.590e-06                4735
    ##            exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1 Beecham2014braak4             TRUE             reported      Kglwsg
    ## 2 Beecham2014braak4             TRUE             reported      Kglwsg
    ## 3 Beecham2014braak4             TRUE             reported      Kglwsg
    ## 4 Beecham2014braak4             TRUE             reported      Kglwsg
    ## 5 Beecham2014braak4             TRUE             reported      Kglwsg
    ## 6 Beecham2014braak4             TRUE             reported      Kglwsg
    ##   action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1      2    TRUE           TRUE 5e-06              NA            NA
    ## 2      2    TRUE           TRUE 5e-06              NA            NA
    ## 3      2    TRUE           TRUE 5e-06              NA            NA
    ## 4      2    TRUE           TRUE 5e-06              NA            NA
    ## 5      2    TRUE          FALSE 5e-06              NA            NA
    ## 6      2    TRUE           TRUE 5e-06              NA            NA
    ##   mrpresso_keep
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE
    ## 4          TRUE
    ## 5          TRUE
    ## 6          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the BMI GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44      2.6e-25

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

    ##   outliers_removed pve.exposure        F Alpha         NCP      Power
    ## 1            FALSE   0.02397969 23.23721  0.05 0.006811828 0.05078067

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
Neurofibrillary Tangles on BMI. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on BMI

    ##   id.exposure id.outcome      outcome          exposure
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ## 2      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ## 3      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ## 4      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)    5  0.0001508766 0.003831319
    ## 2                           Weighted median    5  0.0006899452 0.004891113
    ## 3                             Weighted mode    5 -0.0019157732 0.006561619
    ## 4                                  MR Egger    5  0.0207267065 0.016846616
    ##        pval
    ## 1 0.9685876
    ## 2 0.8878218
    ## 3 0.7848288
    ## 4 0.3062525

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in BMI and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome          exposure
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ## 2      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 2.042184    3 0.5636976
    ## 2 Inverse variance weighted 3.615273    4 0.4605685

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Yengo2018bmi/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Yengo2018bmi/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome          exposure egger_intercept
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4    -0.005617271
    ##            se      pval
    ## 1 0.004478665 0.2985886

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome          exposure    pt
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 5.581124 0.466

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome          exposure   method nsnp  b
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4 mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome          exposure   method  Q Q_df
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome          exposure   method
    ## 1      Kglwsg     Z27wlS Yengo2018bmi Beecham2014braak4 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
