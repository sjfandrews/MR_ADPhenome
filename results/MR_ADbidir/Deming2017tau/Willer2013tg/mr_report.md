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

### Outcome: Triglycerides

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Triglycerides

    ##          SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1 rs10800664    NA        NA <NA> <NA>        NA      NA     NA
    ## 2  rs4674842     2 224880514    T    G 0.3079300 -0.0094 0.0054
    ## 3 rs35055419    NA        NA <NA> <NA>        NA      NA     NA
    ## 4  rs7737716     5 118217474    C    T 0.1334780  0.0003 0.0071
    ## 5 rs13255475    NA        NA <NA> <NA>        NA      NA     NA
    ## 6   rs624290     9   3928115    C    T 0.8932200 -0.0028 0.0081
    ## 7   rs769449    19  45410002    G    A 0.0998545  0.0423 0.0069
    ## 8  rs1513737    21  24166144    T    C 0.5373410  0.0094 0.0053
    ##             Z         P        N         TRAIT
    ## 1          NA        NA       NA          <NA>
    ## 2 -1.74074000 6.273e-02 91013.00 Triglycerides
    ## 3          NA        NA       NA          <NA>
    ## 4  0.04225352 5.731e-01 91013.00 Triglycerides
    ## 5          NA        NA       NA          <NA>
    ## 6 -0.34567900 9.776e-01 90263.00 Triglycerides
    ## 7  6.13043478 3.150e-09 87395.76 Triglycerides
    ## 8  1.77358491 9.146e-02 89485.00 Triglycerides

<br>

**Table 3:** Proxy SNPs for Triglycerides

    ##   target_snp proxy_snp    ld.r2 Dprime PHASE X12 CHROM       POS REF.proxy
    ## 1 rs10800664 rs4915403 0.988119      1 TA/CG  NA     1 199966562         G
    ## 2 rs35055419 rs2088882 1.000000      1 CG/TA  NA     3 190656524         A
    ## 3 rs13255475 rs4870731 1.000000      1 TA/CT  NA     8 121475490         A
    ##   ALT.proxy       AF   BETA     SE         Z      P     N         TRAIT
    ## 1         A 0.422045 0.0029 0.0047 0.6170213 0.8985 90982 Triglycerides
    ## 2         G 0.347834 0.0026 0.0048 0.5416667 0.7000 91013 Triglycerides
    ## 3         T 0.663395 0.0042 0.0050 0.8400000 0.5426 91013 Triglycerides
    ##   ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1   T         A   C         G   T   C          TRUE
    ## 2   C         G   T         A   C   T          TRUE
    ## 3   T         A   C         T   C   T          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Tau and Triglycerides datasets

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
    ## 1                     T                    C      -0.02591       0.0029
    ## 2                     C                    T       0.02793       0.0042
    ## 3                     C                    T      -0.02597       0.0094
    ## 4                     C                    T       0.04004       0.0026
    ## 5                     G                    T      -0.03081      -0.0094
    ## 6                     T                    C       0.04421      -0.0028
    ## 7                     A                    G       0.07821       0.0423
    ## 8                     T                    C       0.04066       0.0003
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820   0.4220450  FALSE       FALSE     FALSE     N8Y7js
    ## 2    0.6631540   0.6633950  FALSE       FALSE     FALSE     N8Y7js
    ## 3    0.5373410   0.5373410  FALSE       FALSE     FALSE     N8Y7js
    ## 4    0.3498150   0.3478340  FALSE       FALSE     FALSE     N8Y7js
    ## 5    0.3079300   0.3079300  FALSE       FALSE     FALSE     N8Y7js
    ## 6    0.8932200   0.8932200  FALSE       FALSE     FALSE     N8Y7js
    ## 7    0.0998545   0.0998545  FALSE       FALSE     FALSE     N8Y7js
    ## 8    0.1334780   0.1334780  FALSE       FALSE     FALSE     N8Y7js
    ##   chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           1   199966562     0.0047  0.61702128    8.985e-01
    ## 2           8   121475490     0.0050  0.84000000    5.426e-01
    ## 3          21    24166144     0.0053  1.77358491    9.146e-02
    ## 4           3   190656524     0.0048  0.54166667    7.000e-01
    ## 5           2   224880514     0.0054 -1.74074000    6.273e-02
    ## 6           9     3928115     0.0081 -0.34567900    9.776e-01
    ## 7          19    45410002     0.0069  6.13043478    3.150e-09
    ## 8           5   118217474     0.0071  0.04225352    5.731e-01
    ##   samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1           90982.00 Willer2013tg            TRUE            reported
    ## 2           91013.00 Willer2013tg            TRUE            reported
    ## 3           89485.00 Willer2013tg            TRUE            reported
    ## 4           91013.00 Willer2013tg            TRUE            reported
    ## 5           91013.00 Willer2013tg            TRUE            reported
    ## 6           90263.00 Willer2013tg            TRUE            reported
    ## 7           87395.76 Willer2013tg            TRUE            reported
    ## 8           91013.00 Willer2013tg            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1          TRUE         rs10800664         rs4915403                 T
    ## 2          TRUE         rs13255475         rs4870731                 C
    ## 3            NA               <NA>              <NA>              <NA>
    ## 4          TRUE         rs35055419         rs2088882                 C
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6            NA               <NA>              <NA>              <NA>
    ## 7            NA               <NA>              <NA>              <NA>
    ## 8            NA               <NA>              <NA>              <NA>
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 C                A                G            1
    ## 2                 T                T                A            8
    ## 3              <NA>             <NA>             <NA>           21
    ## 4                 T                G                A            3
    ## 5              <NA>             <NA>             <NA>            2
    ## 6              <NA>             <NA>             <NA>            9
    ## 7              <NA>             <NA>             <NA>           19
    ## 8              <NA>             <NA>             <NA>            5
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1    199959856    0.005653  -4.583407     4.770e-06                3146
    ## 2    121468076    0.006049   4.617290     4.032e-06                3146
    ## 3     24166144    0.005620  -4.621000     3.986e-06                3146
    ## 4    190663557    0.006006   6.666667     3.071e-11                3146
    ## 5    224880514    0.006491  -4.746572     2.158e-06                3146
    ## 6      3928115    0.009094   4.861450     1.223e-06                3146
    ## 7     45410002    0.006911  11.316741     4.054e-29                3146
    ## 8    118217474    0.008535   4.763913     1.984e-06                3146
    ##        exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 2 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 3 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 4 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 5 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 6 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 7 Deming2017tau             TRUE             reported      1xe5vc      2
    ## 8 Deming2017tau             TRUE             reported      1xe5vc      2
    ##   mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 2    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 3    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 4    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 5    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 6    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 7    TRUE          FALSE 5e-06              NA            NA          TRUE
    ## 8    TRUE           TRUE 5e-06              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Triglycerides
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29     3.15e-09

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

    ##   outliers_removed pve.exposure       F Alpha        NCP      Power
    ## 1            FALSE   0.05553337 26.3586  0.05 0.05872476 0.05675408

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
Tau on Triglycerides. <br>

**Table 6** MR causaul estimates for CSF Tau on Triglycerides

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ## 2      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ## 3      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ## 4      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)    7 0.02159470 0.06320429
    ## 2                           Weighted median    7 0.03426359 0.08205032
    ## 3                             Weighted mode    7 0.03201102 0.11164221
    ## 4                                  MR Egger    7 0.21290981 0.37401604
    ##        pval
    ## 1 0.7326029
    ## 2 0.6762451
    ## 3 0.7839640
    ## 4 0.5938031

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Triglycerides and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tg/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ## 2      1xe5vc     N8Y7js Willer2013tg Deming2017tau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 7.168883    5 0.2083802
    ## 2 Inverse variance weighted 7.560044    6 0.2721387

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tg/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tg/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome      exposure egger_intercept
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau    -0.006394449
    ##           se      pval
    ## 1 0.01224238 0.6237544

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome      exposure    pt outliers_removed
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          0 9.692014 0.293

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome      exposure   method nsnp  b se
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tg/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome      exposure   method  Q Q_df
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome      exposure   method
    ## 1      1xe5vc     N8Y7js Willer2013tg Deming2017tau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
