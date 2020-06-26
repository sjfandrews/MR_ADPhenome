Instrumental Variables
----------------------

**SNP Inclusion:** SNPS associated with at a p-value threshold of p \<
5e-8 were included in this analysis. <br>

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

### Exposure: Cortical Surface Area

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Surface Area

    ##           SNP CHROM       POS REF ALT     AF       BETA       SE
    ## 1  rs12630663     3  28007315   T   C 0.4117   632.8110 111.2125
    ## 2  rs34464850     3 141721762   G   C 0.1534  1233.1854 152.7201
    ## 3   rs2301718     4 106009763   G   A 0.2269   737.2212 132.3556
    ## 4    rs386424     5  81092787   T   G 0.3008   656.5430 120.0422
    ## 5   rs7715167     5 170778824   T   C 0.6143   662.7540 119.1375
    ## 6   rs2802295     6 108926496   A   G 0.6207   714.5850 112.9897
    ## 7  rs11759026     6 126792095   A   G 0.2376  1301.5200 134.6156
    ## 8  rs12357321    10  21790476   G   A 0.3206  -698.7452 119.6461
    ## 9   rs1628768    10 105012994   T   C 0.2386   972.9780 132.0048
    ## 10 rs10876864    12  56401085   G   A 0.5774  -628.5901 112.6859
    ## 11 rs10878349    12  66327632   A   G 0.5100 -1039.9900 110.4866
    ## 12 rs79600142    17  43897722   T   C 0.2198 -1696.8300 143.2730
    ##             Z         P     N                 TRAIT
    ## 1    5.690110 1.270e-08 32176 Cortical_Surface_Area
    ## 2    8.074807 6.758e-16 31984 Cortical_Surface_Area
    ## 3    5.570004 2.547e-08 32176 Cortical_Surface_Area
    ## 4    5.469270 4.519e-08 32176 Cortical_Surface_Area
    ## 5    5.562930 2.653e-08 32068 Cortical_Surface_Area
    ## 6    6.324340 2.543e-10 32176 Cortical_Surface_Area
    ## 7    9.668420 4.106e-22 31907 Cortical_Surface_Area
    ## 8   -5.840100 5.217e-09 32176 Cortical_Surface_Area
    ## 9    7.370780 1.696e-13 32176 Cortical_Surface_Area
    ## 10  -5.578250 2.430e-08 31319 Cortical_Surface_Area
    ## 11  -9.412850 4.829e-21 32176 Cortical_Surface_Area
    ## 12 -11.843300 2.331e-32 29435 Cortical_Surface_Area

<br>

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Sleep Duration

    ##           SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1  rs12630663     3  28007315   T   C 0.413080 -0.000750442 0.00230334
    ## 2  rs34464850     3 141721762   G   C 0.151142  0.007937530 0.00315764
    ## 3   rs2301718     4 106009763   G   A 0.210395  0.004695140 0.00279916
    ## 4    rs386424     5  81092787   T   G 0.287705 -0.004967460 0.00250896
    ## 5   rs7715167     5 170778824   T   C 0.610586  0.008166710 0.00231788
    ## 6   rs2802295     6 108926496   A   G 0.627090  0.002789730 0.00234265
    ## 7  rs11759026     6 126792095   A   G 0.227197  0.002481190 0.00271359
    ## 8  rs12357321    10  21790476   G   A 0.312104 -0.012185900 0.00246534
    ## 9   rs1628768    10 105012994   T   C 0.235016  0.008291520 0.00267582
    ## 10 rs10876864    12  56401085   G   A 0.574191 -0.004263100 0.00228839
    ## 11 rs10878349    12  66327632   A   G 0.510499 -0.000954922 0.00227154
    ## 12 rs79600142    17  43897722   T   C 0.224592 -0.015779900 0.00271094
    ##            Z       P      N          TRAIT
    ## 1  -0.325806 7.5e-01 446118 Sleep_Duration
    ## 2   2.513750 1.2e-02 446118 Sleep_Duration
    ## 3   1.677340 9.5e-02 446118 Sleep_Duration
    ## 4  -1.979890 4.7e-02 446118 Sleep_Duration
    ## 5   3.523350 5.9e-04 446118 Sleep_Duration
    ## 6   1.190840 2.3e-01 446118 Sleep_Duration
    ## 7   0.914357 3.6e-01 446118 Sleep_Duration
    ## 8  -4.942890 7.9e-07 446118 Sleep_Duration
    ## 9   3.098680 1.9e-03 446118 Sleep_Duration
    ## 10 -1.862930 5.8e-02 446118 Sleep_Duration
    ## 11 -0.420385 6.3e-01 446118 Sleep_Duration
    ## 12 -5.820820 5.2e-09 446118 Sleep_Duration

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

**Table 4:** Harmonized Cortical Surface Area and Sleep Duration
datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10876864                      A                     G
    ## 2  rs10878349                      G                     A
    ## 3  rs11759026                      G                     A
    ## 4  rs12357321                      A                     G
    ## 5  rs12630663                      C                     T
    ## 6   rs1628768                      C                     T
    ## 7   rs2301718                      A                     G
    ## 8   rs2802295                      G                     A
    ## 9  rs34464850                      C                     G
    ## 10   rs386424                      G                     T
    ## 11  rs7715167                      C                     T
    ## 12 rs79600142                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    G     -628.5901 -0.004263100
    ## 2                      G                    A    -1039.9900 -0.000954922
    ## 3                      G                    A     1301.5200  0.002481190
    ## 4                      A                    G     -698.7452 -0.012185900
    ## 5                      C                    T      632.8110 -0.000750442
    ## 6                      C                    T      972.9780  0.008291520
    ## 7                      A                    G      737.2212  0.004695140
    ## 8                      G                    A      714.5850  0.002789730
    ## 9                      C                    G     1233.1854  0.007937530
    ## 10                     G                    T      656.5430 -0.004967460
    ## 11                     C                    T      662.7540  0.008166710
    ## 12                     C                    T    -1696.8300 -0.015779900
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774    0.574191  FALSE       FALSE     FALSE     LNTVn3
    ## 2        0.5100    0.510499  FALSE       FALSE     FALSE     LNTVn3
    ## 3        0.2376    0.227197  FALSE       FALSE     FALSE     LNTVn3
    ## 4        0.3206    0.312104  FALSE       FALSE     FALSE     LNTVn3
    ## 5        0.4117    0.413080  FALSE       FALSE     FALSE     LNTVn3
    ## 6        0.2386    0.235016  FALSE       FALSE     FALSE     LNTVn3
    ## 7        0.2269    0.210395  FALSE       FALSE     FALSE     LNTVn3
    ## 8        0.6207    0.627090  FALSE       FALSE     FALSE     LNTVn3
    ## 9        0.1534    0.151142  FALSE        TRUE     FALSE     LNTVn3
    ## 10       0.3008    0.287705  FALSE       FALSE     FALSE     LNTVn3
    ## 11       0.6143    0.610586  FALSE       FALSE     FALSE     LNTVn3
    ## 12       0.2198    0.224592  FALSE       FALSE     FALSE     LNTVn3
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           12    56401085 0.00228839 -1.862930      5.8e-02
    ## 2           12    66327632 0.00227154 -0.420385      6.3e-01
    ## 3            6   126792095 0.00271359  0.914357      3.6e-01
    ## 4           10    21790476 0.00246534 -4.942890      7.9e-07
    ## 5            3    28007315 0.00230334 -0.325806      7.5e-01
    ## 6           10   105012994 0.00267582  3.098680      1.9e-03
    ## 7            4   106009763 0.00279916  1.677340      9.5e-02
    ## 8            6   108926496 0.00234265  1.190840      2.3e-01
    ## 9            3   141721762 0.00315764  2.513750      1.2e-02
    ## 10           5    81092787 0.00250896 -1.979890      4.7e-02
    ## 11           5   170778824 0.00231788  3.523350      5.9e-04
    ## 12          17    43897722 0.00271094 -5.820820      5.2e-09
    ##    samplesize.outcome           outcome mr_keep.outcome
    ## 1              446118 Dashti2019slepdur            TRUE
    ## 2              446118 Dashti2019slepdur            TRUE
    ## 3              446118 Dashti2019slepdur            TRUE
    ## 4              446118 Dashti2019slepdur            TRUE
    ## 5              446118 Dashti2019slepdur            TRUE
    ## 6              446118 Dashti2019slepdur            TRUE
    ## 7              446118 Dashti2019slepdur            TRUE
    ## 8              446118 Dashti2019slepdur            TRUE
    ## 9              446118 Dashti2019slepdur            TRUE
    ## 10             446118 Dashti2019slepdur            TRUE
    ## 11             446118 Dashti2019slepdur            TRUE
    ## 12             446118 Dashti2019slepdur            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           12     56401085    112.6859  -5.578250
    ## 2             reported           12     66327632    110.4866  -9.412850
    ## 3             reported            6    126792095    134.6156   9.668420
    ## 4             reported           10     21790476    119.6461  -5.840100
    ## 5             reported            3     28007315    111.2125   5.690110
    ## 6             reported           10    105012994    132.0048   7.370780
    ## 7             reported            4    106009763    132.3556   5.570004
    ## 8             reported            6    108926496    112.9897   6.324340
    ## 9             reported            3    141721762    152.7201   8.074807
    ## 10            reported            5     81092787    120.0422   5.469270
    ## 11            reported            5    170778824    119.1375   5.562930
    ## 12            reported           17     43897722    143.2730 -11.843300
    ##    pval.exposure samplesize.exposure           exposure mr_keep.exposure
    ## 1      2.430e-08               31319 Grasby2020surfarea             TRUE
    ## 2      4.829e-21               32176 Grasby2020surfarea             TRUE
    ## 3      4.106e-22               31907 Grasby2020surfarea             TRUE
    ## 4      5.217e-09               32176 Grasby2020surfarea             TRUE
    ## 5      1.270e-08               32176 Grasby2020surfarea             TRUE
    ## 6      1.696e-13               32176 Grasby2020surfarea             TRUE
    ## 7      2.547e-08               32176 Grasby2020surfarea             TRUE
    ## 8      2.543e-10               32176 Grasby2020surfarea             TRUE
    ## 9      6.758e-16               31984 Grasby2020surfarea             TRUE
    ## 10     4.519e-08               32176 Grasby2020surfarea             TRUE
    ## 11     2.653e-08               32068 Grasby2020surfarea             TRUE
    ## 12     2.331e-32               29435 Grasby2020surfarea             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 2              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 3              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 4              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 5              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 6              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 7              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 8              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 9              reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 10             reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 11             reported      EuGXCJ      2    TRUE           TRUE 5e-08
    ## 12             reported      EuGXCJ      2    TRUE          FALSE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     2.091880e-06             1          TRUE
    ## 2     2.124786e-05         0.693          TRUE
    ## 3     1.858599e-05             1          TRUE
    ## 4     9.148795e-05        <0.011         FALSE
    ## 5     1.525020e-05             1          TRUE
    ## 6     1.798090e-05             1          TRUE
    ## 7     1.864171e-06             1          TRUE
    ## 8     3.031550e-07             1          TRUE
    ## 9     6.498847e-06             1          TRUE
    ## 10    7.150211e-05        <0.011         FALSE
    ## 11    2.978931e-05         0.209          TRUE
    ## 12              NA          <NA>            NA

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs79600142          17    43897722     2.331e-32      5.2e-09

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

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.01563054 48.64234  0.05 26.92494 0.9993788
    ## 2             TRUE   0.01372647 52.11180  0.05 21.95506 0.9967913

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
Cortical Surface Area on Sleep Duration. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Sleep
Duration

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 2      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 3      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 4      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   11 4.617971e-06 8.879494e-07
    ## 2                           Weighted median   11 3.370200e-06 1.373801e-06
    ## 3                             Weighted mode   11 3.323055e-06 1.792423e-06
    ## 4                                  MR Egger   11 1.650862e-06 6.852852e-06
    ##           pval
    ## 1 1.985247e-07
    ## 2 1.415938e-02
    ## 3 9.343863e-02
    ## 4 8.150298e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Sleep Duration and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 2      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 37.61778    9 2.040951e-05
    ## 2 Inverse variance weighted 38.46048   10 3.154731e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Dashti2019slepdur/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##   egger_intercept         se      pval
    ## 1     0.002605898 0.00580358 0.6640372

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome           exposure    pt
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 45.32816 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 2      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 3      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 4      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)    9 4.443189e-06 9.451233e-07
    ## 2                           Weighted median    9 3.456540e-06 1.374615e-06
    ## 3                             Weighted mode    9 1.796328e-06 1.867744e-06
    ## 4                                  MR Egger    9 9.569728e-07 4.959439e-06
    ##           pval
    ## 1 2.586696e-06
    ## 2 1.191843e-02
    ## 3 3.643330e-01
    ## 4 8.524695e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ## 2      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 13.98992    7 0.05136086
    ## 2 Inverse variance weighted 15.05477    8 0.05808927

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome           exposure
    ## 1      EuGXCJ     LNTVn3 Dashti2019slepdur Grasby2020surfarea
    ##   egger_intercept          se      pval
    ## 1     0.003186372 0.004365282 0.4891311

<br>
