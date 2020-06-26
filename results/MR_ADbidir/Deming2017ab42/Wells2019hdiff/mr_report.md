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

### Exposure: CSF Ab42

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Ab42

    ##            SNP CHROM       POS REF ALT        AF     BETA       SE
    ## 1  rs115141604     3  47251391   A   G 0.0206672  0.05535 0.012030
    ## 2   rs62313278     4  61743347   A   G 0.0746187  0.03407 0.007360
    ## 3   rs13115400     4 181885905   G   A 0.3287940  0.01924 0.004122
    ## 4   rs12153566     5  26951397   T   A 0.8418080  0.02566 0.005300
    ## 5  rs141162384     5  65091178   G   T 0.0335875  0.05123 0.010240
    ## 6     rs316341     6   2838248   G   A 0.7082420  0.02460 0.004352
    ## 7   rs17207326     7  37739901   G   A 0.0884058  0.03666 0.008001
    ## 8   rs61957926    13  71694685   T   C 0.5949710 -0.01874 0.004053
    ## 9   rs76881547    14  96632992   C   T 0.0718443 -0.03289 0.007169
    ## 10    rs769449    19  45410002   G   A 0.0998545 -0.10060 0.004723
    ## 11   rs7247764    19  45675873   T   C 0.2297890 -0.02570 0.005569
    ## 12   rs2664588    20  46580634   C   T 0.4395210  0.01913 0.004026
    ##             Z         P    N    TRAIT
    ## 1    4.600998 4.401e-06 3146 CSF_Ab42
    ## 2    4.629076 3.825e-06 3146 CSF_Ab42
    ## 3    4.667637 3.184e-06 3146 CSF_Ab42
    ## 4    4.841510 1.351e-06 3146 CSF_Ab42
    ## 5    5.002930 6.013e-07 3146 CSF_Ab42
    ## 6    5.652570 1.724e-08 3146 CSF_Ab42
    ## 7    4.581927 4.825e-06 3146 CSF_Ab42
    ## 8   -4.623740 3.908e-06 3146 CSF_Ab42
    ## 9   -4.587809 4.647e-06 3146 CSF_Ab42
    ## 10 -21.300021 4.775e-94 3146 CSF_Ab42
    ## 11  -4.614832 4.121e-06 3146 CSF_Ab42
    ## 12   4.751615 2.105e-06 3146 CSF_Ab42

<br>

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Hearing
Difficulty

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1  rs115141604     3  47251391   A   G 0.046573 -0.007547160 0.00313888
    ## 2   rs62313278     4  61743347   A   G 0.079399  0.003193070 0.00245235
    ## 3   rs13115400     4 181885905   G   A 0.348921 -0.003174880 0.00138601
    ## 4   rs12153566     5  26951397   T   A 0.831198  0.000727092 0.00176681
    ## 5  rs141162384     5  65091178   G   T 0.042304 -0.003720730 0.00328898
    ## 6     rs316341     6   2838248   G   A 0.691959 -0.000331490 0.00143651
    ## 7   rs17207326     7  37739901   G   A 0.081403  0.001270940 0.00241122
    ## 8   rs61957926    13  71694685   T   C 0.612897 -0.001989670 0.00136046
    ## 9   rs76881547    14  96632992   C   T 0.103958  0.002875800 0.00218415
    ## 10    rs769449    19  45410002   G   A 0.126696  0.003379480 0.00198591
    ## 11   rs7247764    19  45675873   T   C 0.168309 -0.001821090 0.00176700
    ## 12   rs2664588    20  46580634   C   T 0.448368  0.001522380 0.00133531
    ##            Z     P      N              TRAIT
    ## 1  -2.404410 0.016 250389 Hearing_Difficulty
    ## 2   1.302040 0.190 250389 Hearing_Difficulty
    ## 3  -2.290660 0.022 250389 Hearing_Difficulty
    ## 4   0.411528 0.680 250389 Hearing_Difficulty
    ## 5  -1.131270 0.260 250389 Hearing_Difficulty
    ## 6  -0.230761 0.820 250389 Hearing_Difficulty
    ## 7   0.527094 0.600 250389 Hearing_Difficulty
    ## 8  -1.462500 0.140 250389 Hearing_Difficulty
    ## 9   1.316670 0.190 250389 Hearing_Difficulty
    ## 10  1.701730 0.089 250389 Hearing_Difficulty
    ## 11 -1.030610 0.300 250389 Hearing_Difficulty
    ## 12  1.140090 0.250 250389 Hearing_Difficulty

<br>

**Table 3:** Proxy SNPs for Hearing Difficulty

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

**Table 4:** Harmonized CSF Ab42 and Hearing Difficulty datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1  rs115141604                      G                     A
    ## 2   rs12153566                      A                     T
    ## 3   rs13115400                      A                     G
    ## 4  rs141162384                      T                     G
    ## 5   rs17207326                      A                     G
    ## 6    rs2664588                      T                     C
    ## 7     rs316341                      A                     G
    ## 8   rs61957926                      C                     T
    ## 9   rs62313278                      G                     A
    ## 10   rs7247764                      C                     T
    ## 11  rs76881547                      T                     C
    ## 12    rs769449                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    A       0.05535 -0.007547160
    ## 2                      A                    T       0.02566  0.000727092
    ## 3                      A                    G       0.01924 -0.003174880
    ## 4                      T                    G       0.05123 -0.003720730
    ## 5                      A                    G       0.03666  0.001270940
    ## 6                      T                    C       0.01913  0.001522380
    ## 7                      A                    G       0.02460 -0.000331490
    ## 8                      C                    T      -0.01874 -0.001989670
    ## 9                      G                    A       0.03407  0.003193070
    ## 10                     C                    T      -0.02570 -0.001821090
    ## 11                     T                    C      -0.03289  0.002875800
    ## 12                     A                    G      -0.10060  0.003379480
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0206672    0.046573  FALSE       FALSE     FALSE     0DZU9Y
    ## 2     0.8418080    0.831198  FALSE        TRUE     FALSE     0DZU9Y
    ## 3     0.3287940    0.348921  FALSE       FALSE     FALSE     0DZU9Y
    ## 4     0.0335875    0.042304  FALSE       FALSE     FALSE     0DZU9Y
    ## 5     0.0884058    0.081403  FALSE       FALSE     FALSE     0DZU9Y
    ## 6     0.4395210    0.448368  FALSE       FALSE     FALSE     0DZU9Y
    ## 7     0.7082420    0.691959  FALSE       FALSE     FALSE     0DZU9Y
    ## 8     0.5949710    0.612897  FALSE       FALSE     FALSE     0DZU9Y
    ## 9     0.0746187    0.079399  FALSE       FALSE     FALSE     0DZU9Y
    ## 10    0.2297890    0.168309  FALSE       FALSE     FALSE     0DZU9Y
    ## 11    0.0718443    0.103958  FALSE       FALSE     FALSE     0DZU9Y
    ## 12    0.0998545    0.126696  FALSE       FALSE     FALSE     0DZU9Y
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1            3    47251391 0.00313888 -2.404410        0.016
    ## 2            5    26951397 0.00176681  0.411528        0.680
    ## 3            4   181885905 0.00138601 -2.290660        0.022
    ## 4            5    65091178 0.00328898 -1.131270        0.260
    ## 5            7    37739901 0.00241122  0.527094        0.600
    ## 6           20    46580634 0.00133531  1.140090        0.250
    ## 7            6     2838248 0.00143651 -0.230761        0.820
    ## 8           13    71694685 0.00136046 -1.462500        0.140
    ## 9            4    61743347 0.00245235  1.302040        0.190
    ## 10          19    45675873 0.00176700 -1.030610        0.300
    ## 11          14    96632992 0.00218415  1.316670        0.190
    ## 12          19    45410002 0.00198591  1.701730        0.089
    ##    samplesize.outcome        outcome mr_keep.outcome pval_origin.outcome
    ## 1              250389 Wells2019hdiff            TRUE            reported
    ## 2              250389 Wells2019hdiff            TRUE            reported
    ## 3              250389 Wells2019hdiff            TRUE            reported
    ## 4              250389 Wells2019hdiff            TRUE            reported
    ## 5              250389 Wells2019hdiff            TRUE            reported
    ## 6              250389 Wells2019hdiff            TRUE            reported
    ## 7              250389 Wells2019hdiff            TRUE            reported
    ## 8              250389 Wells2019hdiff            TRUE            reported
    ## 9              250389 Wells2019hdiff            TRUE            reported
    ## 10             250389 Wells2019hdiff            TRUE            reported
    ## 11             250389 Wells2019hdiff            TRUE            reported
    ## 12             250389 Wells2019hdiff            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             3     47251391    0.012030   4.600998     4.401e-06
    ## 2             5     26951397    0.005300   4.841510     1.351e-06
    ## 3             4    181885905    0.004122   4.667637     3.184e-06
    ## 4             5     65091178    0.010240   5.002930     6.013e-07
    ## 5             7     37739901    0.008001   4.581927     4.825e-06
    ## 6            20     46580634    0.004026   4.751615     2.105e-06
    ## 7             6      2838248    0.004352   5.652570     1.724e-08
    ## 8            13     71694685    0.004053  -4.623740     3.908e-06
    ## 9             4     61743347    0.007360   4.629076     3.825e-06
    ## 10           19     45675873    0.005569  -4.614832     4.121e-06
    ## 11           14     96632992    0.007169  -4.587809     4.647e-06
    ## 12           19     45410002    0.004723 -21.300021     4.775e-94
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                 3146 Deming2017ab42             TRUE
    ## 2                 3146 Deming2017ab42             TRUE
    ## 3                 3146 Deming2017ab42             TRUE
    ## 4                 3146 Deming2017ab42             TRUE
    ## 5                 3146 Deming2017ab42             TRUE
    ## 6                 3146 Deming2017ab42             TRUE
    ## 7                 3146 Deming2017ab42             TRUE
    ## 8                 3146 Deming2017ab42             TRUE
    ## 9                 3146 Deming2017ab42             TRUE
    ## 10                3146 Deming2017ab42             TRUE
    ## 11                3146 Deming2017ab42             TRUE
    ## 12                3146 Deming2017ab42             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 2              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 3              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 4              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 5              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 6              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 7              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 8              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 9              reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 10             reported      YcWZlo      2    TRUE          FALSE 5e-06
    ## 11             reported      YcWZlo      2    TRUE           TRUE 5e-06
    ## 12             reported      YcWZlo      2    TRUE          FALSE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     5.502417e-05          0.16          TRUE
    ## 2     1.902753e-06          1.00          TRUE
    ## 3     9.214246e-06          0.36          TRUE
    ## 4     8.921792e-06          1.00          TRUE
    ## 5     5.054300e-06          1.00          TRUE
    ## 6     4.418871e-06          1.00          TRUE
    ## 7     3.906439e-08          1.00          TRUE
    ## 8     6.694210e-06          0.65          TRUE
    ## 9     1.804542e-05          0.92          TRUE
    ## 10              NA            NA            NA
    ## 11    5.970052e-06          1.00          TRUE
    ## 12              NA            NA            NA

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06        0.300
    ## 2  rs769449          19    45410002     4.775e-94        0.089

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
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha      NCP    Power
    ## 1            FALSE    0.0715741 24.16831  0.05 1.134771 0.186714

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
Ab42 on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Hearing Difficulty

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ## 2      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ## 3      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ## 4      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   10 -0.020483592 0.02086794
    ## 2                           Weighted median   10 -0.001560336 0.03317601
    ## 3                             Weighted mode   10  0.034933795 0.05784417
    ## 4                                  MR Egger   10 -0.118810276 0.08640133
    ##        pval
    ## 1 0.3263058
    ## 2 0.9624877
    ## 3 0.5608028
    ## 4 0.2063775

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Hearing Difficulty and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ## 2      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 15.81808    8 0.04505923
    ## 2 Inverse variance weighted 18.71269    9 0.02774977

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome       exposure egger_intercept
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42     0.002814357
    ##            se      pval
    ## 1 0.002326035 0.2608385

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome       exposure    pt
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 23.05095 0.033

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome       exposure   method nsnp  b se
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42 mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome       exposure   method  Q Q_df
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome       exposure   method
    ## 1      YcWZlo     0DZU9Y Wells2019hdiff Deming2017ab42 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
