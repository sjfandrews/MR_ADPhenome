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

### Outcome: BMI

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in BMI

    ##           SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1  rs12630663     3  28007315    T    C 0.4115  0.0035 0.0018  1.9444400
    ## 2  rs34464850    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 3   rs2301718     4 106009763    G    A 0.2281 -0.0006 0.0021 -0.2857143
    ## 4    rs386424     5  81092787    T    G 0.2943 -0.0003 0.0019 -0.1578950
    ## 5   rs7715167     5 170778824    T    C 0.6101 -0.0032 0.0018 -1.7777800
    ## 6   rs2802295    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 7  rs11759026    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 8  rs12357321    10  21790476    G    A 0.3233  0.0178 0.0019  9.3684211
    ## 9   rs1628768    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 10 rs10876864    12  56401085    G    A 0.5938  0.0114 0.0017  6.7058824
    ## 11 rs10878349    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 12 rs79600142    NA        NA <NA> <NA>     NA      NA     NA         NA
    ##          P      N TRAIT
    ## 1  4.3e-02 687710   BMI
    ## 2       NA     NA  <NA>
    ## 3  8.0e-01 668982   BMI
    ## 4  8.7e-01 688749   BMI
    ## 5  7.0e-02 692347   BMI
    ## 6       NA     NA  <NA>
    ## 7       NA     NA  <NA>
    ## 8  1.0e-20 665895   BMI
    ## 9       NA     NA  <NA>
    ## 10 3.8e-11 692582   BMI
    ## 11      NA     NA  <NA>
    ## 12      NA     NA  <NA>

<br>

**Table 3:** Proxy SNPs for BMI

    ##   target_snp  proxy_snp    ld.r2 Dprime PHASE X12 CHROM       POS
    ## 1 rs34464850  rs2271386 1.000000      1 CA/GG  NA     3 141712708
    ## 2  rs2802295  rs2253310 1.000000      1 AC/GG  NA     6 108888593
    ## 3 rs10878349  rs1038196 0.996002      1 AG/GC  NA    12  66343400
    ## 4 rs79600142 rs17426174 1.000000      1 CC/TG  NA    17  43830938
    ## 5 rs11759026       <NA>       NA     NA  <NA>  NA    NA        NA
    ## 6  rs1628768       <NA>       NA     NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy     AF    BETA     SE         Z       P      N TRAIT
    ## 1         G         A 0.1510 -0.0118 0.0024 -4.916667 6.5e-07 692522   BMI
    ## 2         C         G 0.6251  0.0161 0.0018  8.944440 9.8e-20 690343   BMI
    ## 3         G         C 0.5132 -0.0061 0.0017 -3.588235 4.1e-04 690959   BMI
    ## 4         G         C 0.2205  0.0034 0.0021  1.619048 1.0e-01 692397   BMI
    ## 5      <NA>      <NA>     NA      NA     NA        NA      NA     NA  <NA>
    ## 6      <NA>      <NA>     NA      NA     NA        NA      NA     NA  <NA>
    ##    ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1    C         A    G         G    C    G          TRUE
    ## 2    A         C    G         G    G    A          TRUE
    ## 3    A         G    G         C    G    A          TRUE
    ## 4    C         C    T         G    C    T          TRUE
    ## 5 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6 <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and BMI datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10876864                      A                     G
    ## 2  rs10878349                      G                     A
    ## 3  rs12357321                      A                     G
    ## 4  rs12630663                      C                     T
    ## 5   rs2301718                      A                     G
    ## 6   rs2802295                      G                     A
    ## 7  rs34464850                      C                     G
    ## 8    rs386424                      G                     T
    ## 9   rs7715167                      C                     T
    ## 10 rs79600142                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    G     -628.5901       0.0114
    ## 2                      G                    A    -1039.9900      -0.0061
    ## 3                      A                    G     -698.7452       0.0178
    ## 4                      C                    T      632.8110       0.0035
    ## 5                      A                    G      737.2212      -0.0006
    ## 6                      G                    A      714.5850       0.0161
    ## 7                      C                    G     1233.1854      -0.0118
    ## 8                      G                    T      656.5430      -0.0003
    ## 9                      C                    T      662.7540      -0.0032
    ## 10                     C                    T    -1696.8300       0.0034
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774      0.5938  FALSE       FALSE     FALSE     GJeQ15
    ## 2        0.5100      0.5132  FALSE       FALSE     FALSE     GJeQ15
    ## 3        0.3206      0.3233  FALSE       FALSE     FALSE     GJeQ15
    ## 4        0.4117      0.4115  FALSE       FALSE     FALSE     GJeQ15
    ## 5        0.2269      0.2281  FALSE       FALSE     FALSE     GJeQ15
    ## 6        0.6207      0.6251  FALSE       FALSE     FALSE     GJeQ15
    ## 7        0.1534      0.1510  FALSE        TRUE     FALSE     GJeQ15
    ## 8        0.3008      0.2943  FALSE       FALSE     FALSE     GJeQ15
    ## 9        0.6143      0.6101  FALSE       FALSE     FALSE     GJeQ15
    ## 10       0.2198      0.2205  FALSE       FALSE     FALSE     GJeQ15
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           12    56401085     0.0017  6.7058824      3.8e-11
    ## 2           12    66343400     0.0017 -3.5882353      4.1e-04
    ## 3           10    21790476     0.0019  9.3684211      1.0e-20
    ## 4            3    28007315     0.0018  1.9444400      4.3e-02
    ## 5            4   106009763     0.0021 -0.2857143      8.0e-01
    ## 6            6   108888593     0.0018  8.9444400      9.8e-20
    ## 7            3   141712708     0.0024 -4.9166667      6.5e-07
    ## 8            5    81092787     0.0019 -0.1578950      8.7e-01
    ## 9            5   170778824     0.0018 -1.7777800      7.0e-02
    ## 10          17    43830938     0.0021  1.6190476      1.0e-01
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1              692582 Yengo2018bmi            TRUE            reported
    ## 2              690959 Yengo2018bmi            TRUE            reported
    ## 3              665895 Yengo2018bmi            TRUE            reported
    ## 4              687710 Yengo2018bmi            TRUE            reported
    ## 5              668982 Yengo2018bmi            TRUE            reported
    ## 6              690343 Yengo2018bmi            TRUE            reported
    ## 7              692522 Yengo2018bmi            TRUE            reported
    ## 8              688749 Yengo2018bmi            TRUE            reported
    ## 9              692347 Yengo2018bmi            TRUE            reported
    ## 10             692397 Yengo2018bmi            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2           TRUE         rs10878349         rs1038196                 G
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6           TRUE          rs2802295         rs2253310                 G
    ## 7           TRUE         rs34464850         rs2271386                 C
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10          TRUE         rs79600142        rs17426174                 C
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>           12
    ## 2                  A                C                G           12
    ## 3               <NA>             <NA>             <NA>           10
    ## 4               <NA>             <NA>             <NA>            3
    ## 5               <NA>             <NA>             <NA>            4
    ## 6                  A                G                C            6
    ## 7                  G                A                G            3
    ## 8               <NA>             <NA>             <NA>            5
    ## 9               <NA>             <NA>             <NA>            5
    ## 10                 T                C                G           17
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      56401085    112.6859  -5.578250     2.430e-08               31319
    ## 2      66327632    110.4866  -9.412850     4.829e-21               32176
    ## 3      21790476    119.6461  -5.840100     5.217e-09               32176
    ## 4      28007315    111.2125   5.690110     1.270e-08               32176
    ## 5     106009763    132.3556   5.570004     2.547e-08               32176
    ## 6     108926496    112.9897   6.324340     2.543e-10               32176
    ## 7     141721762    152.7201   8.074807     6.758e-16               31984
    ## 8      81092787    120.0422   5.469270     4.519e-08               32176
    ## 9     170778824    119.1375   5.562930     2.653e-08               32068
    ## 10     43897722    143.2730 -11.843300     2.331e-32               29435
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 2  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 3  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 4  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 5  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 6  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 7  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 8  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 9  Grasby2020surfarea             TRUE             reported      PJNmy8
    ## 10 Grasby2020surfarea             TRUE             reported      PJNmy8
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE          FALSE 5e-08              NA          <NA>
    ## 2       2    TRUE           TRUE 5e-08    8.105677e-05        <0.007
    ## 3       2    TRUE          FALSE 5e-08              NA          <NA>
    ## 4       2    TRUE           TRUE 5e-08    1.960969e-05         0.098
    ## 5       2    TRUE           TRUE 5e-08    1.825414e-08             1
    ## 6       2    TRUE          FALSE 5e-08              NA          <NA>
    ## 7       2    TRUE           TRUE 5e-08    1.541038e-04        <0.007
    ## 8       2    TRUE           TRUE 5e-08    1.377185e-07             1
    ## 9       2    TRUE           TRUE 5e-08    7.594820e-06         0.973
    ## 10      2    TRUE           TRUE 5e-08    7.397249e-06             1
    ##    mrpresso_keep
    ## 1             NA
    ## 2          FALSE
    ## 3             NA
    ## 4           TRUE
    ## 5           TRUE
    ## 6             NA
    ## 7          FALSE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the BMI GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs10876864          12    56401085     2.430e-08      3.8e-11
    ## 2 rs12357321          10    21790476     5.217e-09      1.0e-20
    ## 3  rs2802295           6   108888593     2.543e-10      9.8e-20

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
    ## 1            FALSE  0.012558141 61.22920  0.05 1.666224 0.2522782
    ## 2             TRUE  0.007938896 53.94116  0.05 1.606485 0.2449387

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
Cortical Surface Area on BMI. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on BMI

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 2      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 3      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 4      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)    7 -9.845364e-07
    ## 2                           Weighted median    7 -1.436640e-06
    ## 3                             Weighted mode    7 -1.747643e-06
    ## 4                                  MR Egger    7 -4.325766e-06
    ##             se      pval
    ## 1 7.468170e-07 0.1873999
    ## 2 1.129139e-06 0.2032551
    ## 3 1.408665e-06 0.2610488
    ## 4 6.024968e-06 0.5049118

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in BMI and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 2      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 42.01311    5 5.854529e-08
    ## 2 Inverse variance weighted 44.98034    6 4.722503e-08

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Yengo2018bmi/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Yengo2018bmi/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome           exposure egger_intercept
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea     0.003508208
    ##            se      pval
    ## 1 0.005903607 0.5782118

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome           exposure    pt
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 64.91758 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 2      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 3      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 4      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)    5 -1.241933e-06
    ## 2                           Weighted median    5 -1.645623e-06
    ## 3                             Weighted mode    5 -1.760223e-06
    ## 4                                  MR Egger    5 -3.376360e-06
    ##             se      pval
    ## 1 9.306063e-07 0.1820265
    ## 2 1.134396e-06 0.1468747
    ## 3 1.231404e-06 0.2260916
    ## 4 3.351681e-06 0.3879687

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ## 2      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 6.778608    3 0.07929925
    ## 2 Inverse variance weighted 7.888236    4 0.09575912

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome           exposure egger_intercept
    ## 1      PJNmy8     GJeQ15 Yengo2018bmi Grasby2020surfarea     0.002174011
    ##            se      pval
    ## 1 0.003102293 0.5339058

<br>
