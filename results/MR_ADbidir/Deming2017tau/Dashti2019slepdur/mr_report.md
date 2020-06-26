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

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Sleep Duration

    ##          SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1 rs10800664     1 199959856   C   T 0.491638 -0.002227830 0.00227194
    ## 2  rs4674842     2 224880514   T   G 0.237373  0.003491530 0.00266216
    ## 3 rs35055419     3 190663557   T   C 0.380780  0.004909840 0.00233692
    ## 4  rs7737716     5 118217474   C   T 0.128199  0.000775043 0.00339458
    ## 5 rs13255475     8 121468076   T   C 0.687402 -0.002877270 0.00243804
    ## 6   rs624290     9   3928115   C   T 0.906397 -0.010441700 0.00388435
    ## 7   rs769449    19  45410002   G   A 0.126176 -0.006869160 0.00340978
    ## 8  rs1513737    21  24166144   T   C 0.530175 -0.000469495 0.00228927
    ##           Z      P      N          TRAIT
    ## 1 -0.980585 0.3200 446118 Sleep_Duration
    ## 2  1.311540 0.1900 446118 Sleep_Duration
    ## 3  2.100990 0.0370 446118 Sleep_Duration
    ## 4  0.228318 0.8100 446118 Sleep_Duration
    ## 5 -1.180160 0.2400 446118 Sleep_Duration
    ## 6 -2.688150 0.0073 446118 Sleep_Duration
    ## 7 -2.014550 0.0480 446118 Sleep_Duration
    ## 8 -0.205085 0.8300 446118 Sleep_Duration

<br>

**Table 3:** Proxy SNPs for Sleep Duration

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

**Table 4:** Harmonized CSF Tau and Sleep Duration datasets

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
    ## 1                     T                    C      -0.02591 -0.002227830
    ## 2                     C                    T       0.02793 -0.002877270
    ## 3                     C                    T      -0.02597 -0.000469495
    ## 4                     C                    T       0.04004  0.004909840
    ## 5                     G                    T      -0.03081  0.003491530
    ## 6                     T                    C       0.04421 -0.010441700
    ## 7                     A                    G       0.07821 -0.006869160
    ## 8                     T                    C       0.04066  0.000775043
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820    0.491638  FALSE       FALSE     FALSE     XwQ8zp
    ## 2    0.6631540    0.687402  FALSE       FALSE     FALSE     XwQ8zp
    ## 3    0.5373410    0.530175  FALSE       FALSE     FALSE     XwQ8zp
    ## 4    0.3498150    0.380780  FALSE       FALSE     FALSE     XwQ8zp
    ## 5    0.3079300    0.237373  FALSE       FALSE     FALSE     XwQ8zp
    ## 6    0.8932200    0.906397  FALSE       FALSE     FALSE     XwQ8zp
    ## 7    0.0998545    0.126176  FALSE       FALSE     FALSE     XwQ8zp
    ## 8    0.1334780    0.128199  FALSE       FALSE     FALSE     XwQ8zp
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           1   199959856 0.00227194 -0.980585       0.3200
    ## 2           8   121468076 0.00243804 -1.180160       0.2400
    ## 3          21    24166144 0.00228927 -0.205085       0.8300
    ## 4           3   190663557 0.00233692  2.100990       0.0370
    ## 5           2   224880514 0.00266216  1.311540       0.1900
    ## 6           9     3928115 0.00388435 -2.688150       0.0073
    ## 7          19    45410002 0.00340978 -2.014550       0.0480
    ## 8           5   118217474 0.00339458  0.228318       0.8100
    ##   samplesize.outcome           outcome mr_keep.outcome pval_origin.outcome
    ## 1             446118 Dashti2019slepdur            TRUE            reported
    ## 2             446118 Dashti2019slepdur            TRUE            reported
    ## 3             446118 Dashti2019slepdur            TRUE            reported
    ## 4             446118 Dashti2019slepdur            TRUE            reported
    ## 5             446118 Dashti2019slepdur            TRUE            reported
    ## 6             446118 Dashti2019slepdur            TRUE            reported
    ## 7             446118 Dashti2019slepdur            TRUE            reported
    ## 8             446118 Dashti2019slepdur            TRUE            reported
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
    ## 1      gmpPfR      2    TRUE           TRUE 5e-06    7.397088e-06
    ## 2      gmpPfR      2    TRUE           TRUE 5e-06    9.397798e-06
    ## 3      gmpPfR      2    TRUE           TRUE 5e-06    5.223373e-07
    ## 4      gmpPfR      2    TRUE           TRUE 5e-06    5.002379e-05
    ## 5      gmpPfR      2    TRUE           TRUE 5e-06    1.408715e-05
    ## 6      gmpPfR      2    TRUE           TRUE 5e-06    1.328216e-04
    ## 7      gmpPfR      2    TRUE          FALSE 5e-06              NA
    ## 8      gmpPfR      2    TRUE           TRUE 5e-06    1.428585e-06
    ##   mrpresso_pval mrpresso_keep
    ## 1         1.000          TRUE
    ## 2         1.000          TRUE
    ## 3         1.000          TRUE
    ## 4         0.133          TRUE
    ## 5         1.000          TRUE
    ## 6         0.021         FALSE
    ## 7            NA            NA
    ## 8         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29        0.048

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

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.05553337 26.35860  0.05 0.04114365 0.05472642
    ## 2             TRUE   0.04829607 26.54911  0.05 0.63750500 0.12561848

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
Tau on Sleep Duration. <br>

**Table 6** MR causaul estimates for CSF Tau on Sleep Duration

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 2      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 3      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 4      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.006466848 0.03028213
    ## 2                           Weighted median    7  0.018757928 0.04479644
    ## 3                             Weighted mode    7  0.066316072 0.06829418
    ## 4                                  MR Egger    7 -0.028199482 0.26358224
    ##        pval
    ## 1 0.8308955
    ## 2 0.6754083
    ## 3 0.3690318
    ## 4 0.9189606

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Sleep Duration and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 2      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 15.74099    5 0.007623822
    ## 2 Inverse variance weighted 15.76332    6 0.015082323

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Dashti2019slepdur/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome           outcome      exposure egger_intercept
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau     0.000722291
    ##            se    pval
    ## 1 0.008576301 0.93615

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome      exposure    pt
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 23.18837 0.011

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 2      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 3      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 4      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)    6 0.02449958 0.03225868
    ## 2                           Weighted median    6 0.02289857 0.04907014
    ## 3                             Weighted mode    6 0.07563874 0.07023780
    ## 4                                  MR Egger    6 0.22338910 0.21853431
    ##        pval
    ## 1 0.4475699
    ## 2 0.6407505
    ## 3 0.3307196
    ## 4 0.3644690

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ## 2      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 6.590464    4 0.1591789
    ## 2 Inverse variance weighted 8.005994    5 0.1559056

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome      exposure egger_intercept
    ## 1      gmpPfR     XwQ8zp Dashti2019slepdur Deming2017tau     -0.00639612
    ##            se      pval
    ## 1 0.006900573 0.4064433

<br>
