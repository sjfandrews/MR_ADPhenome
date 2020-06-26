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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Diabetes

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1   rs11675119    NA        NA <NA> <NA>        NA      NA     NA
    ## 2   rs34487851    NA        NA <NA> <NA>        NA      NA     NA
    ## 3   rs10166461     2 127859413    G    A 0.1907560  0.0189 0.0099
    ## 4  rs116351076    NA        NA <NA> <NA>        NA      NA     NA
    ## 5  rs114498064    NA        NA <NA> <NA>        NA      NA     NA
    ## 6  rs117530689    NA        NA <NA> <NA>        NA      NA     NA
    ## 7   rs12595161    15  52922890    G    A 0.0394808 -0.0339 0.0180
    ## 8   rs75680843    17  26640212    C    T 0.0643920  0.0067 0.0160
    ## 9   rs11654699    NA        NA <NA> <NA>        NA      NA     NA
    ## 10      rs6857    NA        NA <NA> <NA>        NA      NA     NA
    ##            Z       P      N           TRAIT
    ## 1         NA      NA     NA            <NA>
    ## 2         NA      NA     NA            <NA>
    ## 3   1.909091 0.05631 571915 Type_2_Diabetes
    ## 4         NA      NA     NA            <NA>
    ## 5         NA      NA     NA            <NA>
    ## 6         NA      NA     NA            <NA>
    ## 7  -1.883333 0.05980 605019 Type_2_Diabetes
    ## 8   0.418750 0.67580 573264 Type_2_Diabetes
    ## 9         NA      NA     NA            <NA>
    ## 10        NA      NA     NA            <NA>

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##    target_snp proxy_snp    ld.r2  Dprime PHASE X12 CHROM      POS
    ## 1  rs11654699 rs7225208 0.829211 0.91424 TA/CG  NA    17 30922784
    ## 2  rs11675119      <NA>       NA      NA  <NA>  NA    NA       NA
    ## 3  rs34487851      <NA>       NA      NA  <NA>  NA    NA       NA
    ## 4 rs116351076      <NA>       NA      NA  <NA>  NA    NA       NA
    ## 5 rs114498064      <NA>       NA      NA  <NA>  NA    NA       NA
    ## 6 rs117530689      <NA>       NA      NA  <NA>  NA    NA       NA
    ## 7      rs6857      <NA>       NA      NA  <NA>  NA    NA       NA
    ##   REF.proxy ALT.proxy       AF   BETA     SE        Z      P      N
    ## 1         G         A 0.506253 0.0076 0.0079 0.962025 0.3353 570373
    ## 2      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ## 3      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ## 4      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ## 5      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ## 6      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ## 7      <NA>      <NA>       NA     NA     NA       NA     NA     NA
    ##             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Type_2_Diabetes TRUE         A    C         G TRUE    C          TRUE
    ## 2            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 3            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 4            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 5            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 6            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 7            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Neurofibrillary Tangles and Diabetes datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10166461                      A                     G
    ## 2 rs11654699                      T                     C
    ## 3 rs12595161                      A                     G
    ## 4 rs75680843                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.2636       0.0189
    ## 2                     T                    C        0.2055       0.0076
    ## 3                     A                    G       -0.4178      -0.0339
    ## 4                     T                    C       -0.3709       0.0067
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733   0.1907560  FALSE       FALSE     FALSE     FwURPy
    ## 2       0.5243   0.5062530  FALSE       FALSE     FALSE     FwURPy
    ## 3       0.0511   0.0394808  FALSE       FALSE     FALSE     FwURPy
    ## 4       0.0721   0.0643920  FALSE       FALSE     FALSE     FwURPy
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           2   127859413     0.0099  1.909091      0.05631
    ## 2          17    30922784     0.0079  0.962025      0.33530
    ## 3          15    52922890     0.0180 -1.883333      0.05980
    ## 4          17    26640212     0.0160  0.418750      0.67580
    ##   samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1             571915 Xue2018diab            TRUE            reported
    ## 2             570373 Xue2018diab            TRUE            reported
    ## 3             605019 Xue2018diab            TRUE            reported
    ## 4             573264 Xue2018diab            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1            NA               <NA>              <NA>                NA
    ## 2          TRUE         rs11654699         rs7225208              TRUE
    ## 3            NA               <NA>              <NA>                NA
    ## 4            NA               <NA>              <NA>                NA
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1              <NA>             <NA>             <NA>            2
    ## 2                 C                A                G           17
    ## 3              <NA>             <NA>             <NA>           15
    ## 4              <NA>             <NA>             <NA>           17
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1    127859413      0.0570  -4.624561     3.816e-06                4735
    ## 2     30903310      0.0449   4.576837     4.628e-06                4735
    ## 3     52922890      0.0914  -4.571116     4.883e-06                4735
    ## 4     26640212      0.0809  -4.584672     4.590e-06                4735
    ##            exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1 Beecham2014braak4             TRUE             reported      msmh95
    ## 2 Beecham2014braak4             TRUE             reported      msmh95
    ## 3 Beecham2014braak4             TRUE             reported      msmh95
    ## 4 Beecham2014braak4             TRUE             reported      msmh95
    ##   action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1      2    TRUE           TRUE 5e-06    7.716046e-04         0.080
    ## 2      2    TRUE           TRUE 5e-06    9.095221e-05         1.000
    ## 3      2    TRUE           TRUE 5e-06    1.731896e-03         0.116
    ## 4      2    TRUE           TRUE 5e-06    1.030507e-04         1.000
    ##   mrpresso_keep
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE
    ## 4          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

    ## [1] SNP           chr.outcome   pos.outcome   pval.exposure pval.outcome 
    ## <0 rows> (or 0-length row.names)

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
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.01796728 21.63503  0.05 0.07287327 0.05838925

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
Neurofibrillary Tangles on Diabetes. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Diabetes

    ##   id.exposure id.outcome     outcome          exposure
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ## 2      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ## 3      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ## 4      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    4 0.003330970 0.02015481
    ## 2                           Weighted median    4 0.005375849 0.02755088
    ## 3                             Weighted mode    4 0.020918206 0.05137183
    ## 4                                  MR Egger    4 0.036299914 0.15292107
    ##        pval
    ## 1 0.8687321
    ## 2 0.8452955
    ## 3 0.7111787
    ## 4 0.8344649

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Diabetes and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome          exposure
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ## 2      msmh95     FwURPy Xue2018diab Beecham2014braak4
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 8.063588    2 0.01774247
    ## 2 Inverse variance weighted 8.265103    3 0.04083907

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">
Fig. 2: Funnel plot of the MR causal estimates against their precession
</p>
:::

<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR)
can be used to visualize influential data points with large
contributions to Cochran's Q Statistic that may bias causal effect
estimates.

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome          exposure egger_intercept
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4    -0.009306821
    ##           se      pval
    ## 1 0.04162908 0.8438544

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome          exposure    pt
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 15.07795 0.046

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome          exposure   method nsnp  b se
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4 mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome          exposure   method  Q Q_df
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome          exposure   method
    ## 1      msmh95     FwURPy Xue2018diab Beecham2014braak4 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
