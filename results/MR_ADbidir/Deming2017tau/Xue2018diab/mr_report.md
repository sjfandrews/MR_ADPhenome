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

### Exposure: CSF Tau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Tau

    ##          SNP CHROM       POS REF ALT        AF     BETA       SE         Z
    ## 1 rs10800664     1 199959856   C   T 0.4182820 -0.02591 0.005653 -4.583407
    ## 2  rs4674842     2 224880514   T   G 0.3079300 -0.03081 0.006491 -4.746572
    ## 3 rs35055419     3 190663557   T   C 0.3498150  0.04004 0.006006  6.666667
    ## 4  rs7737716     5 118217474   C   T 0.1334780  0.04066 0.008535  4.763913
    ## 5 rs13255475     8 121468076   T   C 0.6631540  0.02793 0.006049  4.617290
    ## 6   rs624290     9   3928115   C   T 0.8932200  0.04421 0.009094  4.861450
    ## 7   rs769449    19  45410002   G   A 0.0998545  0.07821 0.006911 11.316741
    ## 8  rs1513737    21  24166144   T   C 0.5373410 -0.02597 0.005620 -4.621000
    ##           P    N   TRAIT
    ## 1 4.770e-06 3146 CSF_tau
    ## 2 2.158e-06 3146 CSF_tau
    ## 3 3.071e-11 3146 CSF_tau
    ## 4 1.984e-06 3146 CSF_tau
    ## 5 4.032e-06 3146 CSF_tau
    ## 6 1.223e-06 3146 CSF_tau
    ## 7 4.054e-29 3146 CSF_tau
    ## 8 3.986e-06 3146 CSF_tau

<br>

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Diabetes

    ##          SNP CHROM       POS  REF  ALT       AF    BETA     SE          Z
    ## 1 rs10800664     1 199959856    C    T 0.492766 -0.0328 0.0079 -4.1518987
    ## 2  rs4674842     2 224880514    T    G 0.237768  0.0088 0.0092  0.9565217
    ## 3 rs35055419     3 190663557    T    C 0.378476  0.0202 0.0081  2.4938272
    ## 4  rs7737716     5 118217474    C    T 0.126496 -0.0134 0.0119 -1.1260504
    ## 5 rs13255475     8 121468076    T    C 0.686711  0.0025 0.0084  0.2976190
    ## 6   rs624290     9   3928115    C    T 0.907185 -0.0239 0.0135 -1.7703700
    ## 7   rs769449    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 8  rs1513737    NA        NA <NA> <NA>       NA      NA     NA         NA
    ##           P      N           TRAIT
    ## 1 2.965e-05 565271 Type_2_Diabetes
    ## 2 3.385e-01 572983 Type_2_Diabetes
    ## 3 1.238e-02 569270 Type_2_Diabetes
    ## 4 2.590e-01 571512 Type_2_Diabetes
    ## 5 7.640e-01 572914 Type_2_Diabetes
    ## 6 7.569e-02 573704 Type_2_Diabetes
    ## 7        NA     NA            <NA>
    ## 8        NA     NA            <NA>

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##   target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1   rs769449        NA    NA     NA    NA  NA    NA  NA        NA
    ## 2  rs1513737        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 2        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA
    ## 2            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Tau and Diabetes datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10800664                      T                     C
    ## 2 rs13255475                      C                     T
    ## 3 rs35055419                      C                     T
    ## 4  rs4674842                      G                     T
    ## 5   rs624290                      T                     C
    ## 6  rs7737716                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C      -0.02591      -0.0328
    ## 2                     C                    T       0.02793       0.0025
    ## 3                     C                    T       0.04004       0.0202
    ## 4                     G                    T      -0.03081       0.0088
    ## 5                     T                    C       0.04421      -0.0239
    ## 6                     T                    C       0.04066      -0.0134
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.418282    0.492766  FALSE       FALSE     FALSE     ZnD5Bz
    ## 2     0.663154    0.686711  FALSE       FALSE     FALSE     ZnD5Bz
    ## 3     0.349815    0.378476  FALSE       FALSE     FALSE     ZnD5Bz
    ## 4     0.307930    0.237768  FALSE       FALSE     FALSE     ZnD5Bz
    ## 5     0.893220    0.907185  FALSE       FALSE     FALSE     ZnD5Bz
    ## 6     0.133478    0.126496  FALSE       FALSE     FALSE     ZnD5Bz
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           1   199959856     0.0079 -4.1518987    2.965e-05
    ## 2           8   121468076     0.0084  0.2976190    7.640e-01
    ## 3           3   190663557     0.0081  2.4938272    1.238e-02
    ## 4           2   224880514     0.0092  0.9565217    3.385e-01
    ## 5           9     3928115     0.0135 -1.7703700    7.569e-02
    ## 6           5   118217474     0.0119 -1.1260504    2.590e-01
    ##   samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1             565271 Xue2018diab            TRUE            reported
    ## 2             572914 Xue2018diab            TRUE            reported
    ## 3             569270 Xue2018diab            TRUE            reported
    ## 4             572983 Xue2018diab            TRUE            reported
    ## 5             573704 Xue2018diab            TRUE            reported
    ## 6             571512 Xue2018diab            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            1    199959856    0.005653  -4.583407     4.770e-06
    ## 2            8    121468076    0.006049   4.617290     4.032e-06
    ## 3            3    190663557    0.006006   6.666667     3.071e-11
    ## 4            2    224880514    0.006491  -4.746572     2.158e-06
    ## 5            9      3928115    0.009094   4.861450     1.223e-06
    ## 6            5    118217474    0.008535   4.763913     1.984e-06
    ##   samplesize.exposure      exposure mr_keep.exposure pval_origin.exposure
    ## 1                3146 Deming2017tau             TRUE             reported
    ## 2                3146 Deming2017tau             TRUE             reported
    ## 3                3146 Deming2017tau             TRUE             reported
    ## 4                3146 Deming2017tau             TRUE             reported
    ## 5                3146 Deming2017tau             TRUE             reported
    ## 6                3146 Deming2017tau             TRUE             reported
    ##   id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1      HpFHLp      2    TRUE           TRUE 5e-06    1.064344e-03
    ## 2      HpFHLp      2    TRUE           TRUE 5e-06    7.930193e-06
    ## 3      HpFHLp      2    TRUE           TRUE 5e-06    3.583371e-04
    ## 4      HpFHLp      2    TRUE           TRUE 5e-06    2.742241e-04
    ## 5      HpFHLp      2    TRUE           TRUE 5e-06    1.340621e-03
    ## 6      HpFHLp      2    TRUE           TRUE 5e-06    5.805024e-04
    ##   mrpresso_pval mrpresso_keep
    ## 1        <0.006         FALSE
    ## 2             1          TRUE
    ## 3         0.342          TRUE
    ## 4         0.426          TRUE
    ## 5         0.048         FALSE
    ## 6         0.342          TRUE

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

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.04832568 26.56621  0.05 4.917971 0.6016901
    ## 2             TRUE   0.03400572 27.64301  0.05 1.302865 0.2074895

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

Table 6 presents the MR causal estimates of genetically predicted CSF
Tau on Diabetes. <br>

**Table 6** MR causaul estimates for CSF Tau on Diabetes

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 2      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 3      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 4      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    6  0.17637739 0.1119000
    ## 2                           Weighted median    6  0.02134708 0.1971234
    ## 3                             Weighted mode    6 -0.24787831 0.3390465
    ## 4                                  MR Egger    6 -1.23062071 1.2742589
    ##        pval
    ## 1 0.1149786
    ## 2 0.9137633
    ## 3 0.4975229
    ## 4 0.3888565

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Diabetes and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 2      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 20.02880    4 4.929036e-04
    ## 2 Inverse variance weighted 26.37873    5 7.534103e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome      exposure egger_intercept
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau      0.04853841
    ##           se      pval
    ## 1 0.04310212 0.3231024

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome      exposure    pt outliers_removed
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau 5e-06            FALSE
    ##   n_outliers   RSSobs   pval
    ## 1          2 37.32321 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 2      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 3      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 4      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    4  0.10733489 0.1308776
    ## 2                           Weighted median    4  0.08264696 0.2068859
    ## 3                             Weighted mode    4 -0.26068737 0.3867006
    ## 4                                  MR Egger    4  0.86271106 1.5170563
    ##        pval
    ## 1 0.4121496
    ## 2 0.6895390
    ## 3 0.5485232
    ## 4 0.6269195

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ## 2      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 6.935551    2 0.03118632
    ## 2 Inverse variance weighted 7.818083    3 0.04992487

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome      exposure egger_intercept
    ## 1      HpFHLp     ZnD5Bz Xue2018diab Deming2017tau     -0.02661008
    ##           se      pval
    ## 1 0.05274806 0.6640188

<br>
