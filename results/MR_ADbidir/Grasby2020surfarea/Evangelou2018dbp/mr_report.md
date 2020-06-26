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

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Diastolic Blood Pressure

    ##           SNP CHROM       POS REF ALT     AF    BETA     SE           Z
    ## 1  rs12630663     3  28007315   T   C 0.4116 -0.0083 0.0176 -0.47159100
    ## 2  rs34464850     3 141721762   G   C 0.1516 -0.0420 0.0241 -1.74273859
    ## 3   rs2301718     4 106009763   G   A 0.2182  0.0003 0.0213  0.01408451
    ## 4    rs386424     5  81092787   T   G 0.2937  0.0242 0.0191  1.26702000
    ## 5   rs7715167     5 170778824   T   C 0.6094 -0.0815 0.0180 -4.52778000
    ## 6   rs2802295     6 108926496   A   G 0.6221 -0.0706 0.0178 -3.96629000
    ## 7  rs11759026     6 126792095   A   G 0.2326 -0.0862 0.0209 -4.12440000
    ## 8  rs12357321    10  21790476   G   A 0.3144  0.0681 0.0190  3.58421053
    ## 9   rs1628768    10 105012994   T   C 0.2393  0.0339 0.0205  1.65366000
    ## 10 rs10876864    12  56401085   G   A 0.5796  0.0842 0.0175  4.81142857
    ## 11 rs10878349    12  66327632   A   G 0.5114  0.0621 0.0173  3.58960000
    ## 12 rs79600142    17  43897722   T   C 0.2207 -0.1387 0.0216 -6.42130000
    ##            P      N                    TRAIT
    ## 1  6.395e-01 757601 Diastolic_Blood_Pressure
    ## 2  8.107e-02 757600 Diastolic_Blood_Pressure
    ## 3  9.902e-01 746319 Diastolic_Blood_Pressure
    ## 4  2.043e-01 757599 Diastolic_Blood_Pressure
    ## 5  5.606e-06 754582 Diastolic_Blood_Pressure
    ## 6  7.531e-05 757601 Diastolic_Blood_Pressure
    ## 7  3.818e-05 756595 Diastolic_Blood_Pressure
    ## 8  3.375e-04 756596 Diastolic_Blood_Pressure
    ## 9  9.824e-02 757601 Diastolic_Blood_Pressure
    ## 10 1.565e-06 752197 Diastolic_Blood_Pressure
    ## 11 3.331e-04 757601 Diastolic_Blood_Pressure
    ## 12 1.453e-10 751695 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

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

**Table 4:** Harmonized Cortical Surface Area and Diastolic Blood
Pressure datasets

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
    ## 1                      A                    G     -628.5901       0.0842
    ## 2                      G                    A    -1039.9900       0.0621
    ## 3                      G                    A     1301.5200      -0.0862
    ## 4                      A                    G     -698.7452       0.0681
    ## 5                      C                    T      632.8110      -0.0083
    ## 6                      C                    T      972.9780       0.0339
    ## 7                      A                    G      737.2212       0.0003
    ## 8                      G                    A      714.5850      -0.0706
    ## 9                      C                    G     1233.1854      -0.0420
    ## 10                     G                    T      656.5430       0.0242
    ## 11                     C                    T      662.7540      -0.0815
    ## 12                     C                    T    -1696.8300      -0.1387
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774      0.5796  FALSE       FALSE     FALSE     vKxMWo
    ## 2        0.5100      0.5114  FALSE       FALSE     FALSE     vKxMWo
    ## 3        0.2376      0.2326  FALSE       FALSE     FALSE     vKxMWo
    ## 4        0.3206      0.3144  FALSE       FALSE     FALSE     vKxMWo
    ## 5        0.4117      0.4116  FALSE       FALSE     FALSE     vKxMWo
    ## 6        0.2386      0.2393  FALSE       FALSE     FALSE     vKxMWo
    ## 7        0.2269      0.2182  FALSE       FALSE     FALSE     vKxMWo
    ## 8        0.6207      0.6221  FALSE       FALSE     FALSE     vKxMWo
    ## 9        0.1534      0.1516  FALSE        TRUE     FALSE     vKxMWo
    ## 10       0.3008      0.2937  FALSE       FALSE     FALSE     vKxMWo
    ## 11       0.6143      0.6094  FALSE       FALSE     FALSE     vKxMWo
    ## 12       0.2198      0.2207  FALSE       FALSE     FALSE     vKxMWo
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           12    56401085     0.0175  4.81142857    1.565e-06
    ## 2           12    66327632     0.0173  3.58960000    3.331e-04
    ## 3            6   126792095     0.0209 -4.12440000    3.818e-05
    ## 4           10    21790476     0.0190  3.58421053    3.375e-04
    ## 5            3    28007315     0.0176 -0.47159100    6.395e-01
    ## 6           10   105012994     0.0205  1.65366000    9.824e-02
    ## 7            4   106009763     0.0213  0.01408451    9.902e-01
    ## 8            6   108926496     0.0178 -3.96629000    7.531e-05
    ## 9            3   141721762     0.0241 -1.74273859    8.107e-02
    ## 10           5    81092787     0.0191  1.26702000    2.043e-01
    ## 11           5   170778824     0.0180 -4.52778000    5.606e-06
    ## 12          17    43897722     0.0216 -6.42130000    1.453e-10
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              752197 Evangelou2018dbp            TRUE            reported
    ## 2              757601 Evangelou2018dbp            TRUE            reported
    ## 3              756595 Evangelou2018dbp            TRUE            reported
    ## 4              756596 Evangelou2018dbp            TRUE            reported
    ## 5              757601 Evangelou2018dbp            TRUE            reported
    ## 6              757601 Evangelou2018dbp            TRUE            reported
    ## 7              746319 Evangelou2018dbp            TRUE            reported
    ## 8              757601 Evangelou2018dbp            TRUE            reported
    ## 9              757600 Evangelou2018dbp            TRUE            reported
    ## 10             757599 Evangelou2018dbp            TRUE            reported
    ## 11             754582 Evangelou2018dbp            TRUE            reported
    ## 12             751695 Evangelou2018dbp            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            12     56401085    112.6859  -5.578250     2.430e-08
    ## 2            12     66327632    110.4866  -9.412850     4.829e-21
    ## 3             6    126792095    134.6156   9.668420     4.106e-22
    ## 4            10     21790476    119.6461  -5.840100     5.217e-09
    ## 5             3     28007315    111.2125   5.690110     1.270e-08
    ## 6            10    105012994    132.0048   7.370780     1.696e-13
    ## 7             4    106009763    132.3556   5.570004     2.547e-08
    ## 8             6    108926496    112.9897   6.324340     2.543e-10
    ## 9             3    141721762    152.7201   8.074807     6.758e-16
    ## 10            5     81092787    120.0422   5.469270     4.519e-08
    ## 11            5    170778824    119.1375   5.562930     2.653e-08
    ## 12           17     43897722    143.2730 -11.843300     2.331e-32
    ##    samplesize.exposure           exposure mr_keep.exposure
    ## 1                31319 Grasby2020surfarea             TRUE
    ## 2                32176 Grasby2020surfarea             TRUE
    ## 3                31907 Grasby2020surfarea             TRUE
    ## 4                32176 Grasby2020surfarea             TRUE
    ## 5                32176 Grasby2020surfarea             TRUE
    ## 6                32176 Grasby2020surfarea             TRUE
    ## 7                32176 Grasby2020surfarea             TRUE
    ## 8                32176 Grasby2020surfarea             TRUE
    ## 9                31984 Grasby2020surfarea             TRUE
    ## 10               32176 Grasby2020surfarea             TRUE
    ## 11               32068 Grasby2020surfarea             TRUE
    ## 12               29435 Grasby2020surfarea             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 2              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 3              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 4              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 5              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 6              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 7              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 8              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 9              reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 10             reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 11             reported      gxoLXU      2    TRUE           TRUE 5e-08
    ## 12             reported      gxoLXU      2    TRUE          FALSE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     0.0031331684         0.033         FALSE
    ## 2     0.0001407097             1          TRUE
    ## 3     0.0006452130             1          TRUE
    ## 4     0.0012401772         0.814          TRUE
    ## 5     0.0006232393             1          TRUE
    ## 6     0.0085315738        <0.011         FALSE
    ## 7     0.0015604439         0.891          TRUE
    ## 8     0.0014072651         0.396          TRUE
    ## 9     0.0005134687             1          TRUE
    ## 10    0.0036561435         0.044         FALSE
    ## 11    0.0026465834         0.066          TRUE
    ## 12              NA          <NA>            NA

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs79600142          17    43897722     2.331e-32    1.453e-10

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

    ##   outliers_removed pve.exposure        F Alpha      NCP Power
    ## 1            FALSE   0.01563054 48.64234  0.05 54.05954     1
    ## 2             TRUE   0.01224327 52.21406  0.05 63.05407     1

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
Cortical Surface Area on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Diastolic
Blood Pressure

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 2      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 3      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 4      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   11 -5.021044e-05
    ## 2                           Weighted median   11 -5.393253e-05
    ## 3                             Weighted mode   11 -5.691961e-05
    ## 4                                  MR Egger   11 -1.971929e-05
    ##             se         pval
    ## 1 6.797042e-06 1.500644e-13
    ## 2 1.125922e-05 1.667181e-06
    ## 3 1.566976e-05 4.593892e-03
    ## 4 6.272168e-05 7.603880e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Diastolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 2      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 53.64041    9 2.209471e-08
    ## 2 Inverse variance weighted 55.15493   10 2.954445e-08

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##   egger_intercept         se      pval
    ## 1     -0.02677481 0.05311455 0.6263028

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome           exposure    pt
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 64.88217 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 2      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 3      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 4      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)    8 -6.122843e-05
    ## 2                           Weighted median    8 -6.097998e-05
    ## 3                             Weighted mode    8 -5.827577e-05
    ## 4                                  MR Egger    8 -3.771114e-05
    ##             se         pval
    ## 1 7.687607e-06 1.658092e-15
    ## 2 1.130361e-05 6.862477e-08
    ## 3 1.494317e-05 5.900196e-03
    ## 4 4.906653e-05 4.713064e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ## 2      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 18.05382    6 0.006099106
    ## 2 Inverse variance weighted 18.80017    7 0.008836908

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      gxoLXU     vKxMWo Evangelou2018dbp Grasby2020surfarea
    ##   egger_intercept         se      pval
    ## 1      -0.0215306 0.04323063 0.6361811

<br>
