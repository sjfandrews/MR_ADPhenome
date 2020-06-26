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

### Outcome: Somking Initiation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Somking
Initiation

    ##          SNP CHROM       POS REF ALT        AF          BETA           SE
    ## 1 rs10800664     1 199959856   C   T 0.4182820 -5.684961e-04 0.0009009447
    ## 2  rs4674842     2 224880514   T   G 0.3079300  2.631880e-04 0.0009013288
    ## 3 rs35055419     3 190663557   T   C 0.3498150  1.694820e-04 0.0009015018
    ## 4  rs7737716     5 118217474   C   T 0.1334780 -1.674948e-03 0.0009000257
    ## 5 rs13255475     8 121468076   T   C 0.6631540 -1.207410e-03 0.0009003796
    ## 6   rs624290     9   3928115   C   T 0.8932200  7.218680e-06 0.0009023349
    ## 7   rs769449    19  45410002   G   A 0.0998545 -1.869961e-03 0.0008998848
    ## 8  rs1513737    21  24166144   T   C 0.5373410 -1.916680e-03 0.0008998519
    ##        Z       P       N              TRAIT
    ## 1 -0.631 0.52800 1232091 Smoking_Initiation
    ## 2  0.292 0.77010 1232091 Smoking_Initiation
    ## 3  0.188 0.85090 1232091 Smoking_Initiation
    ## 4 -1.861 0.06272 1232091 Smoking_Initiation
    ## 5 -1.341 0.18010 1232091 Smoking_Initiation
    ## 6  0.008 0.99360 1232091 Smoking_Initiation
    ## 7 -2.078 0.03768 1232091 Smoking_Initiation
    ## 8 -2.130 0.03320 1232091 Smoking_Initiation

<br>

**Table 3:** Proxy SNPs for Somking Initiation

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

**Table 4:** Harmonized CSF Tau and Somking Initiation datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10800664                      T                     C
    ## 2 rs13255475                      C                     T
    ## 3  rs1513737                      C                     T
    ## 4 rs35055419                      C                     T
    ## 5  rs4674842                      G                     T
    ## 6   rs624290                      T                     C
    ## 7   rs769449                      A                     G
    ## 8  rs7737716                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                     T                    C      -0.02591 -5.684961e-04
    ## 2                     C                    T       0.02793 -1.207410e-03
    ## 3                     C                    T      -0.02597 -1.916680e-03
    ## 4                     C                    T       0.04004  1.694820e-04
    ## 5                     G                    T      -0.03081  2.631880e-04
    ## 6                     T                    C       0.04421  7.218680e-06
    ## 7                     A                    G       0.07821 -1.869961e-03
    ## 8                     T                    C       0.04066 -1.674948e-03
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820   0.4182820  FALSE       FALSE     FALSE     MjLtNe
    ## 2    0.6631540   0.6631540  FALSE       FALSE     FALSE     MjLtNe
    ## 3    0.5373410   0.5373410  FALSE       FALSE     FALSE     MjLtNe
    ## 4    0.3498150   0.3498150  FALSE       FALSE     FALSE     MjLtNe
    ## 5    0.3079300   0.3079300  FALSE       FALSE     FALSE     MjLtNe
    ## 6    0.8932200   0.8932200  FALSE       FALSE     FALSE     MjLtNe
    ## 7    0.0998545   0.0998545  FALSE       FALSE     FALSE     MjLtNe
    ## 8    0.1334780   0.1334780  FALSE       FALSE     FALSE     MjLtNe
    ##   chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1           1   199959856 0.0009009447    -0.631      0.52800
    ## 2           8   121468076 0.0009003796    -1.341      0.18010
    ## 3          21    24166144 0.0008998519    -2.130      0.03320
    ## 4           3   190663557 0.0009015018     0.188      0.85090
    ## 5           2   224880514 0.0009013288     0.292      0.77010
    ## 6           9     3928115 0.0009023349     0.008      0.99360
    ## 7          19    45410002 0.0008998848    -2.078      0.03768
    ## 8           5   118217474 0.0009000257    -1.861      0.06272
    ##   samplesize.outcome              outcome mr_keep.outcome
    ## 1            1232091 Liu2019smkint23andMe            TRUE
    ## 2            1232091 Liu2019smkint23andMe            TRUE
    ## 3            1232091 Liu2019smkint23andMe            TRUE
    ## 4            1232091 Liu2019smkint23andMe            TRUE
    ## 5            1232091 Liu2019smkint23andMe            TRUE
    ## 6            1232091 Liu2019smkint23andMe            TRUE
    ## 7            1232091 Liu2019smkint23andMe            TRUE
    ## 8            1232091 Liu2019smkint23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            1    199959856    0.005653  -4.583407
    ## 2            reported            8    121468076    0.006049   4.617290
    ## 3            reported           21     24166144    0.005620  -4.621000
    ## 4            reported            3    190663557    0.006006   6.666667
    ## 5            reported            2    224880514    0.006491  -4.746572
    ## 6            reported            9      3928115    0.009094   4.861450
    ## 7            reported           19     45410002    0.006911  11.316741
    ## 8            reported            5    118217474    0.008535   4.763913
    ##   pval.exposure samplesize.exposure      exposure mr_keep.exposure
    ## 1     4.770e-06                3146 Deming2017tau             TRUE
    ## 2     4.032e-06                3146 Deming2017tau             TRUE
    ## 3     3.986e-06                3146 Deming2017tau             TRUE
    ## 4     3.071e-11                3146 Deming2017tau             TRUE
    ## 5     2.158e-06                3146 Deming2017tau             TRUE
    ## 6     1.223e-06                3146 Deming2017tau             TRUE
    ## 7     4.054e-29                3146 Deming2017tau             TRUE
    ## 8     1.984e-06                3146 Deming2017tau             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 2             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 3             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 4             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 5             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 6             reported      Igg7MS      2    TRUE           TRUE 5e-06
    ## 7             reported      Igg7MS      2    TRUE          FALSE 5e-06
    ## 8             reported      Igg7MS      2    TRUE           TRUE 5e-06
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

**Table 5:** SNPs that were genome-wide significant in the Somking
Initiation GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29      0.03768

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

    ##   outliers_removed pve.exposure       F Alpha        NCP      Power
    ## 1            FALSE   0.05553337 26.3586  0.05 0.01631296 0.05187078

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
Tau on Somking Initiation. <br>

**Table 6** MR causaul estimates for CSF Tau on Somking Initiation

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ## 2      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ## 3      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ## 4      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.0046342907 0.009899141
    ## 2                           Weighted median    7 -0.0006974150 0.013717009
    ## 3                             Weighted mode    7 -0.0005910992 0.018040535
    ## 4                                  MR Egger    7 -0.0612300445 0.062215299
    ##        pval
    ## 1 0.6396767
    ## 2 0.9594506
    ## 3 0.9749247
    ## 4 0.3702304

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Somking Initiation and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ## 2      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger  8.608497    5 0.1257363
    ## 2 Inverse variance weighted 10.098151    6 0.1205791

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019smkint23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019smkint23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau
    ##   egger_intercept          se     pval
    ## 1     0.001990652 0.002140087 0.394975

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome      exposure    pt
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 13.13285 0.138

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome      exposure   method nsnp
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome      exposure   method  Q
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome      exposure   method
    ## 1      Igg7MS     MjLtNe Liu2019smkint23andMe Deming2017tau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
