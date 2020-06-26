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

### Outcome: Depression

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Depression

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE           Z
    ## 1  rs115141604     3  47251391   A   G 0.0426 -0.0125 0.0092 -1.35870000
    ## 2   rs62313278     4  61743347   A   G 0.0791 -0.0001 0.0065 -0.01538460
    ## 3   rs13115400     4 181885905   G   A 0.3516  0.0002 0.0037  0.05405405
    ## 4   rs12153566     5  26951397   T   A 0.8202 -0.0037 0.0047 -0.78723404
    ## 5  rs141162384     5  65091178   G   T 0.0414  0.0013 0.0090  0.14444444
    ## 6     rs316341     6   2838248   G   A 0.6980 -0.0005 0.0038 -0.13157895
    ## 7   rs17207326     7  37739901   G   A 0.0818 -0.0087 0.0065 -1.33846154
    ## 8   rs61957926    13  71694685   T   C 0.6026 -0.0141 0.0036 -3.91667000
    ## 9   rs76881547    14  96632992   C   T 0.0985 -0.0004 0.0059 -0.06779661
    ## 10    rs769449    19  45410002   G   A 0.1217  0.0016 0.0054  0.29629630
    ## 11   rs7247764    19  45675873   T   C 0.1720 -0.0035 0.0047 -0.74468100
    ## 12   rs2664588    20  46580634   C   T 0.4502  0.0033 0.0035  0.94285714
    ##            P      N      TRAIT
    ## 1  0.1728000 807553 Depression
    ## 2  0.9878000 807553 Depression
    ## 3  0.9572000 807553 Depression
    ## 4  0.4347000 807553 Depression
    ## 5  0.8847000 807553 Depression
    ## 6  0.8961000 807553 Depression
    ## 7  0.1841000 807553 Depression
    ## 8  0.0001016 807553 Depression
    ## 9  0.9464000 807553 Depression
    ## 10 0.7687000 807553 Depression
    ## 11 0.4599000 807553 Depression
    ## 12 0.3494000 807553 Depression

<br>

**Table 3:** Proxy SNPs for Depression

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

**Table 4:** Harmonized CSF Ab42 and Depression datasets

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
    ## 1                      G                    A       0.05535      -0.0125
    ## 2                      A                    T       0.02566      -0.0037
    ## 3                      A                    G       0.01924       0.0002
    ## 4                      T                    G       0.05123       0.0013
    ## 5                      A                    G       0.03666      -0.0087
    ## 6                      T                    C       0.01913       0.0033
    ## 7                      A                    G       0.02460      -0.0005
    ## 8                      C                    T      -0.01874      -0.0141
    ## 9                      G                    A       0.03407      -0.0001
    ## 10                     C                    T      -0.02570      -0.0035
    ## 11                     T                    C      -0.03289      -0.0004
    ## 12                     A                    G      -0.10060       0.0016
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0206672      0.0426  FALSE       FALSE     FALSE     bzQwhL
    ## 2     0.8418080      0.8202  FALSE        TRUE     FALSE     bzQwhL
    ## 3     0.3287940      0.3516  FALSE       FALSE     FALSE     bzQwhL
    ## 4     0.0335875      0.0414  FALSE       FALSE     FALSE     bzQwhL
    ## 5     0.0884058      0.0818  FALSE       FALSE     FALSE     bzQwhL
    ## 6     0.4395210      0.4502  FALSE       FALSE     FALSE     bzQwhL
    ## 7     0.7082420      0.6980  FALSE       FALSE     FALSE     bzQwhL
    ## 8     0.5949710      0.6026  FALSE       FALSE     FALSE     bzQwhL
    ## 9     0.0746187      0.0791  FALSE       FALSE     FALSE     bzQwhL
    ## 10    0.2297890      0.1720  FALSE       FALSE     FALSE     bzQwhL
    ## 11    0.0718443      0.0985  FALSE       FALSE     FALSE     bzQwhL
    ## 12    0.0998545      0.1217  FALSE       FALSE     FALSE     bzQwhL
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            3    47251391     0.0092 -1.35870000    0.1728000
    ## 2            5    26951397     0.0047 -0.78723404    0.4347000
    ## 3            4   181885905     0.0037  0.05405405    0.9572000
    ## 4            5    65091178     0.0090  0.14444444    0.8847000
    ## 5            7    37739901     0.0065 -1.33846154    0.1841000
    ## 6           20    46580634     0.0035  0.94285714    0.3494000
    ## 7            6     2838248     0.0038 -0.13157895    0.8961000
    ## 8           13    71694685     0.0036 -3.91667000    0.0001016
    ## 9            4    61743347     0.0065 -0.01538460    0.9878000
    ## 10          19    45675873     0.0047 -0.74468100    0.4599000
    ## 11          14    96632992     0.0059 -0.06779661    0.9464000
    ## 12          19    45410002     0.0054  0.29629630    0.7687000
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              807553 Howard2019dep23andMe            TRUE
    ## 2              807553 Howard2019dep23andMe            TRUE
    ## 3              807553 Howard2019dep23andMe            TRUE
    ## 4              807553 Howard2019dep23andMe            TRUE
    ## 5              807553 Howard2019dep23andMe            TRUE
    ## 6              807553 Howard2019dep23andMe            TRUE
    ## 7              807553 Howard2019dep23andMe            TRUE
    ## 8              807553 Howard2019dep23andMe            TRUE
    ## 9              807553 Howard2019dep23andMe            TRUE
    ## 10             807553 Howard2019dep23andMe            TRUE
    ## 11             807553 Howard2019dep23andMe            TRUE
    ## 12             807553 Howard2019dep23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            3     47251391    0.012030   4.600998
    ## 2             reported            5     26951397    0.005300   4.841510
    ## 3             reported            4    181885905    0.004122   4.667637
    ## 4             reported            5     65091178    0.010240   5.002930
    ## 5             reported            7     37739901    0.008001   4.581927
    ## 6             reported           20     46580634    0.004026   4.751615
    ## 7             reported            6      2838248    0.004352   5.652570
    ## 8             reported           13     71694685    0.004053  -4.623740
    ## 9             reported            4     61743347    0.007360   4.629076
    ## 10            reported           19     45675873    0.005569  -4.614832
    ## 11            reported           14     96632992    0.007169  -4.587809
    ## 12            reported           19     45410002    0.004723 -21.300021
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      4.401e-06                3146 Deming2017ab42             TRUE
    ## 2      1.351e-06                3146 Deming2017ab42             TRUE
    ## 3      3.184e-06                3146 Deming2017ab42             TRUE
    ## 4      6.013e-07                3146 Deming2017ab42             TRUE
    ## 5      4.825e-06                3146 Deming2017ab42             TRUE
    ## 6      2.105e-06                3146 Deming2017ab42             TRUE
    ## 7      1.724e-08                3146 Deming2017ab42             TRUE
    ## 8      3.908e-06                3146 Deming2017ab42             TRUE
    ## 9      3.825e-06                3146 Deming2017ab42             TRUE
    ## 10     4.121e-06                3146 Deming2017ab42             TRUE
    ## 11     4.647e-06                3146 Deming2017ab42             TRUE
    ## 12     4.775e-94                3146 Deming2017ab42             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 2              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 3              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 4              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 5              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 6              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 7              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 8              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 9              reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 10             reported      mx9UYC      2    TRUE          FALSE 5e-06
    ## 11             reported      mx9UYC      2    TRUE           TRUE 5e-06
    ## 12             reported      mx9UYC      2    TRUE          FALSE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     2.350385e-04          0.81          TRUE
    ## 2     2.147237e-05             1          TRUE
    ## 3     3.503256e-08             1          TRUE
    ## 4     1.209067e-07             1          TRUE
    ## 5     1.095143e-04             1          TRUE
    ## 6     1.048772e-05             1          TRUE
    ## 7     1.263784e-06             1          TRUE
    ## 8     2.259933e-04         <0.01         FALSE
    ## 9     6.881375e-07             1          TRUE
    ## 10              NA          <NA>            NA
    ## 11    6.761940e-08             1          TRUE
    ## 12              NA          <NA>            NA

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Depression
GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06       0.4599
    ## 2  rs769449          19    45410002     4.775e-94       0.7687

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

    ##   outliers_removed pve.exposure        F Alpha        NCP     Power
    ## 1            FALSE    0.0715741 24.16831  0.05 0.08676816 0.0599980
    ## 2             TRUE    0.0643645 23.97029  0.05 0.63351703 0.1251332

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
Ab42 on Depression. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Depression

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 2      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 3      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 4      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##                                      method nsnp             b         se
    ## 1 Inverse variance weighted (fixed effects)   10  0.0192872578 0.05637191
    ## 2                           Weighted median   10 -0.0025749214 0.07340674
    ## 3                             Weighted mode   10 -0.0002424774 0.10762771
    ## 4                                  MR Egger   10 -0.4333174771 0.21199143
    ##         pval
    ## 1 0.73224322
    ## 2 0.97201798
    ## 3 0.99825157
    ## 4 0.07520161

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Depression and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 2      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 12.44674    8 0.13235652
    ## 2 Inverse variance weighted 20.41540    9 0.01551492

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Howard2019dep23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Howard2019dep23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##   egger_intercept         se       pval
    ## 1      0.01273541 0.00562734 0.05346053

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome       exposure    pt
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 24.74471 0.017

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 2      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 3      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 4      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    9 -0.049790430 0.05896795
    ## 2                           Weighted median    9 -0.006521521 0.07575957
    ## 3                             Weighted mode    9  0.005123874 0.11895960
    ## 4                                  MR Egger    9 -0.252956113 0.17985151
    ##        pval
    ## 1 0.3984659
    ## 2 0.9314014
    ## 3 0.9666995
    ## 4 0.2023921

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ## 2      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 3.049469    7 0.8803885
    ## 2 Inverse variance weighted 4.479231    8 0.8115073

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mx9UYC     bzQwhL Howard2019dep23andMe Deming2017ab42
    ##   egger_intercept          se      pval
    ## 1     0.006000213 0.005018048 0.2707327

<br>
