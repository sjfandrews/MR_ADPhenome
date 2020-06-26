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

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Systolic Blood
Pressure

    ##          SNP CHROM       POS REF ALT     AF    BETA     SE           Z
    ## 1 rs10800664     1 199959856   C   T 0.4905  0.0016 0.0302  0.05298013
    ## 2  rs4674842     2 224880514   T   G 0.2395 -0.0474 0.0352 -1.34659000
    ## 3 rs35055419     3 190663557   T   C 0.3768  0.0494 0.0314  1.57325000
    ## 4  rs7737716     5 118217474   C   T 0.1276 -0.0186 0.0456 -0.40789474
    ## 5 rs13255475     8 121468076   T   C 0.6826 -0.0186 0.0325 -0.57230800
    ## 6   rs624290     9   3928115   C   T 0.9038  0.0686 0.0510  1.34509804
    ## 7   rs769449    19  45410002   G   A 0.1260  0.1018 0.0465  2.18924731
    ## 8  rs1513737    21  24166144   T   C 0.5307 -0.0354 0.0308 -1.14935000
    ##         P      N                   TRAIT
    ## 1 0.95860 738169 Systolic_Blood_Pressure
    ## 2 0.17850 738168 Systolic_Blood_Pressure
    ## 3 0.11590 738170 Systolic_Blood_Pressure
    ## 4 0.68270 738168 Systolic_Blood_Pressure
    ## 5 0.56690 729449 Systolic_Blood_Pressure
    ## 6 0.17900 745820 Systolic_Blood_Pressure
    ## 7 0.02839 740415 Systolic_Blood_Pressure
    ## 8 0.25020 744813 Systolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA         NA        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized CSF Tau and Systolic Blood Pressure datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10800664                      T                     C
    ## 2 rs13255475                      C                     T
    ## 3  rs1513737                      C                     T
    ## 4 rs35055419                      C                     T
    ## 5  rs4674842                      G                     T
    ## 6   rs624290                      T                     C
    ## 7   rs769449                      A                     G
    ## 8  rs7737716                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C      -0.02591       0.0016
    ## 2                     C                    T       0.02793      -0.0186
    ## 3                     C                    T      -0.02597      -0.0354
    ## 4                     C                    T       0.04004       0.0494
    ## 5                     G                    T      -0.03081      -0.0474
    ## 6                     T                    C       0.04421       0.0686
    ## 7                     A                    G       0.07821       0.1018
    ## 8                     T                    C       0.04066      -0.0186
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820      0.4905  FALSE       FALSE     FALSE     Q3lkfo
    ## 2    0.6631540      0.6826  FALSE       FALSE     FALSE     Q3lkfo
    ## 3    0.5373410      0.5307  FALSE       FALSE     FALSE     Q3lkfo
    ## 4    0.3498150      0.3768  FALSE       FALSE     FALSE     Q3lkfo
    ## 5    0.3079300      0.2395  FALSE       FALSE     FALSE     Q3lkfo
    ## 6    0.8932200      0.9038  FALSE       FALSE     FALSE     Q3lkfo
    ## 7    0.0998545      0.1260  FALSE       FALSE     FALSE     Q3lkfo
    ## 8    0.1334780      0.1276  FALSE       FALSE     FALSE     Q3lkfo
    ##   chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           1   199959856     0.0302  0.05298013      0.95860
    ## 2           8   121468076     0.0325 -0.57230800      0.56690
    ## 3          21    24166144     0.0308 -1.14935000      0.25020
    ## 4           3   190663557     0.0314  1.57325000      0.11590
    ## 5           2   224880514     0.0352 -1.34659000      0.17850
    ## 6           9     3928115     0.0510  1.34509804      0.17900
    ## 7          19    45410002     0.0465  2.18924731      0.02839
    ## 8           5   118217474     0.0456 -0.40789474      0.68270
    ##   samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1             738169 Evangelou2018sbp            TRUE            reported
    ## 2             729449 Evangelou2018sbp            TRUE            reported
    ## 3             744813 Evangelou2018sbp            TRUE            reported
    ## 4             738170 Evangelou2018sbp            TRUE            reported
    ## 5             738168 Evangelou2018sbp            TRUE            reported
    ## 6             745820 Evangelou2018sbp            TRUE            reported
    ## 7             740415 Evangelou2018sbp            TRUE            reported
    ## 8             738168 Evangelou2018sbp            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            1    199959856    0.005653  -4.583407     4.770e-06
    ## 2            8    121468076    0.006049   4.617290     4.032e-06
    ## 3           21     24166144    0.005620  -4.621000     3.986e-06
    ## 4            3    190663557    0.006006   6.666667     3.071e-11
    ## 5            2    224880514    0.006491  -4.746572     2.158e-06
    ## 6            9      3928115    0.009094   4.861450     1.223e-06
    ## 7           19     45410002    0.006911  11.316741     4.054e-29
    ## 8            5    118217474    0.008535   4.763913     1.984e-06
    ##   samplesize.exposure      exposure mr_keep.exposure pval_origin.exposure
    ## 1                3146 Deming2017tau             TRUE             reported
    ## 2                3146 Deming2017tau             TRUE             reported
    ## 3                3146 Deming2017tau             TRUE             reported
    ## 4                3146 Deming2017tau             TRUE             reported
    ## 5                3146 Deming2017tau             TRUE             reported
    ## 6                3146 Deming2017tau             TRUE             reported
    ## 7                3146 Deming2017tau             TRUE             reported
    ## 8                3146 Deming2017tau             TRUE             reported
    ##   id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 2      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 3      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 4      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 5      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 6      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ## 7      wWgl4L      2    TRUE          FALSE 5e-06              NA
    ## 8      wWgl4L      2    TRUE           TRUE 5e-06              NA
    ##   mrpresso_pval mrpresso_keep
    ## 1            NA          TRUE
    ## 2            NA          TRUE
    ## 3            NA          TRUE
    ## 4            NA          TRUE
    ## 5            NA          TRUE
    ## 6            NA          TRUE
    ## 7            NA          TRUE
    ## 8            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29      0.02839

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
    ## 1            FALSE   0.05553337 26.3586  0.05 3.242855 0.4368518

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
Tau on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for CSF Tau on Systolic Blood Pressure

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ## 2      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ## 3      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ## 4      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ##                                      method nsnp         b        se
    ## 1 Inverse variance weighted (fixed effects)    7 0.7215463 0.4040859
    ## 2                           Weighted median    7 1.1335839 0.5209944
    ## 3                             Weighted mode    7 1.3725188 0.7938797
    ## 4                                  MR Egger    7 1.8733852 1.9816684
    ##         pval
    ## 1 0.07415985
    ## 2 0.02956961
    ## 3 0.13456399
    ## 4 0.38788475

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Systolic Blood Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ## 2      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 4.374469    5 0.4968526
    ## 2 Inverse variance weighted 4.726974    6 0.5792767

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome      exposure egger_intercept
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau     -0.03828466
    ##           se      pval
    ## 1 0.06448251 0.5785377

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome      exposure    pt
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 6.387577 0.577

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome      exposure   method nsnp  b
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome      exposure   method  Q Q_df
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome      exposure   method
    ## 1      wWgl4L     Q3lkfo Evangelou2018sbp Deming2017tau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
