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

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Diastolic Blood
Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1  rs115141604     3  47251391    A    G 0.0445 -0.1087 0.0442 -2.4592800
    ## 2   rs62313278     4  61743347    A    G 0.0812  0.0199 0.0321  0.6199380
    ## 3   rs13115400     4 181885905    G    A 0.3511 -0.0051 0.0183 -0.2786885
    ## 4   rs12153566    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 5  rs141162384     5  65091178    G    T 0.0420  0.0780 0.0437  1.7848970
    ## 6     rs316341    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 7   rs17207326     7  37739901    G    A 0.0814  0.0492 0.0320  1.5375000
    ## 8   rs61957926    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 9   rs76881547    14  96632992    C    T 0.1011 -0.0393 0.0292 -1.3458904
    ## 10    rs769449    19  45410002    G    A 0.1261 -0.0539 0.0268 -2.0111940
    ## 11   rs7247764    19  45675873    T    C 0.1791 -0.0055 0.0232 -0.2370690
    ## 12   rs2664588    20  46580634    C    T 0.4474  0.0014 0.0175  0.0800000
    ##          P      N                    TRAIT
    ## 1  0.01394 754259 Diastolic_Blood_Pressure
    ## 2  0.53450 757598 Diastolic_Blood_Pressure
    ## 3  0.78210 746320 Diastolic_Blood_Pressure
    ## 4       NA     NA                     <NA>
    ## 5  0.07432 757598 Diastolic_Blood_Pressure
    ## 6       NA     NA                     <NA>
    ## 7  0.12440 755481 Diastolic_Blood_Pressure
    ## 8       NA     NA                     <NA>
    ## 9  0.17880 757598 Diastolic_Blood_Pressure
    ## 10 0.04401 748982 Diastolic_Blood_Pressure
    ## 11 0.81320 753381 Diastolic_Blood_Pressure
    ## 12 0.93530 755482 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

    ##   target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1 rs12153566 rs12153281 1.000000 1.000000 TC/AT  NA     5 26952016
    ## 2   rs316341   rs316339 0.980728 1.000000 GA/AG  NA     6  2838046
    ## 3 rs61957926  rs2209577 0.987506 0.995809 TA/CG  NA    13 71686172
    ##   REF.proxy ALT.proxy     AF   BETA     SE         Z      P      N
    ## 1         C         T 0.8279 0.0081 0.0230 0.3521739 0.7243 757599
    ## 2         A         G 0.6962 0.0005 0.0190 0.0263158 0.9801 749339
    ## 3         A         G 0.6123 0.0161 0.0177 0.9096050 0.3649 757600
    ##                      TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1 Diastolic_Blood_Pressure   T         C   A         T   A   T
    ## 2 Diastolic_Blood_Pressure   G         A   A         G   A   G
    ## 3 Diastolic_Blood_Pressure   T         A   C         G   C   T
    ##   proxy.outcome
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ab42 and Diastolic Blood Pressure datasets

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
    ## 1                      G                    A       0.05535      -0.1087
    ## 2                      A                    T       0.02566       0.0081
    ## 3                      A                    G       0.01924      -0.0051
    ## 4                      T                    G       0.05123       0.0780
    ## 5                      A                    G       0.03666       0.0492
    ## 6                      T                    C       0.01913       0.0014
    ## 7                      A                    G       0.02460       0.0005
    ## 8                      C                    T      -0.01874       0.0161
    ## 9                      G                    A       0.03407       0.0199
    ## 10                     C                    T      -0.02570      -0.0055
    ## 11                     T                    C      -0.03289      -0.0393
    ## 12                     A                    G      -0.10060      -0.0539
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0206672      0.0445  FALSE       FALSE     FALSE     XhgUw1
    ## 2     0.8418080      0.8279  FALSE        TRUE     FALSE     XhgUw1
    ## 3     0.3287940      0.3511  FALSE       FALSE     FALSE     XhgUw1
    ## 4     0.0335875      0.0420  FALSE       FALSE     FALSE     XhgUw1
    ## 5     0.0884058      0.0814  FALSE       FALSE     FALSE     XhgUw1
    ## 6     0.4395210      0.4474  FALSE       FALSE     FALSE     XhgUw1
    ## 7     0.7082420      0.6962  FALSE       FALSE     FALSE     XhgUw1
    ## 8     0.5949710      0.6123  FALSE       FALSE     FALSE     XhgUw1
    ## 9     0.0746187      0.0812  FALSE       FALSE     FALSE     XhgUw1
    ## 10    0.2297890      0.1791  FALSE       FALSE     FALSE     XhgUw1
    ## 11    0.0718443      0.1011  FALSE       FALSE     FALSE     XhgUw1
    ## 12    0.0998545      0.1261  FALSE       FALSE     FALSE     XhgUw1
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            3    47251391     0.0442 -2.4592800      0.01394
    ## 2            5    26952016     0.0230  0.3521739      0.72430
    ## 3            4   181885905     0.0183 -0.2786885      0.78210
    ## 4            5    65091178     0.0437  1.7848970      0.07432
    ## 5            7    37739901     0.0320  1.5375000      0.12440
    ## 6           20    46580634     0.0175  0.0800000      0.93530
    ## 7            6     2838046     0.0190  0.0263158      0.98010
    ## 8           13    71686172     0.0177  0.9096050      0.36490
    ## 9            4    61743347     0.0321  0.6199380      0.53450
    ## 10          19    45675873     0.0232 -0.2370690      0.81320
    ## 11          14    96632992     0.0292 -1.3458904      0.17880
    ## 12          19    45410002     0.0268 -2.0111940      0.04401
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              754259 Evangelou2018dbp            TRUE            reported
    ## 2              757599 Evangelou2018dbp            TRUE            reported
    ## 3              746320 Evangelou2018dbp            TRUE            reported
    ## 4              757598 Evangelou2018dbp            TRUE            reported
    ## 5              755481 Evangelou2018dbp            TRUE            reported
    ## 6              755482 Evangelou2018dbp            TRUE            reported
    ## 7              749339 Evangelou2018dbp            TRUE            reported
    ## 8              757600 Evangelou2018dbp            TRUE            reported
    ## 9              757598 Evangelou2018dbp            TRUE            reported
    ## 10             753381 Evangelou2018dbp            TRUE            reported
    ## 11             757598 Evangelou2018dbp            TRUE            reported
    ## 12             748982 Evangelou2018dbp            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2           TRUE         rs12153566        rs12153281                 A
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7           TRUE           rs316341          rs316339                 A
    ## 8           TRUE         rs61957926         rs2209577                 C
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            3
    ## 2                  T                T                C            5
    ## 3               <NA>             <NA>             <NA>            4
    ## 4               <NA>             <NA>             <NA>            5
    ## 5               <NA>             <NA>             <NA>            7
    ## 6               <NA>             <NA>             <NA>           20
    ## 7                  G                G                A            6
    ## 8                  T                G                A           13
    ## 9               <NA>             <NA>             <NA>            4
    ## 10              <NA>             <NA>             <NA>           19
    ## 11              <NA>             <NA>             <NA>           14
    ## 12              <NA>             <NA>             <NA>           19
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      47251391    0.012030   4.600998     4.401e-06                3146
    ## 2      26951397    0.005300   4.841510     1.351e-06                3146
    ## 3     181885905    0.004122   4.667637     3.184e-06                3146
    ## 4      65091178    0.010240   5.002930     6.013e-07                3146
    ## 5      37739901    0.008001   4.581927     4.825e-06                3146
    ## 6      46580634    0.004026   4.751615     2.105e-06                3146
    ## 7       2838248    0.004352   5.652570     1.724e-08                3146
    ## 8      71694685    0.004053  -4.623740     3.908e-06                3146
    ## 9      61743347    0.007360   4.629076     3.825e-06                3146
    ## 10     45675873    0.005569  -4.614832     4.121e-06                3146
    ## 11     96632992    0.007169  -4.587809     4.647e-06                3146
    ## 12     45410002    0.004723 -21.300021     4.775e-94                3146
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 2  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 3  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 4  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 5  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 6  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 7  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 8  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 9  Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 10 Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 11 Deming2017ab42             TRUE             reported      KgwNjR      2
    ## 12 Deming2017ab42             TRUE             reported      KgwNjR      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06              NA            NA
    ## 2     TRUE           TRUE 5e-06              NA            NA
    ## 3     TRUE           TRUE 5e-06              NA            NA
    ## 4     TRUE           TRUE 5e-06              NA            NA
    ## 5     TRUE           TRUE 5e-06              NA            NA
    ## 6     TRUE           TRUE 5e-06              NA            NA
    ## 7     TRUE           TRUE 5e-06              NA            NA
    ## 8     TRUE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06              NA            NA
    ## 10    TRUE          FALSE 5e-06              NA            NA
    ## 11    TRUE           TRUE 5e-06              NA            NA
    ## 12    TRUE          FALSE 5e-06              NA            NA
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06      0.81320
    ## 2  rs769449          19    45410002     4.775e-94      0.04401

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

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE    0.0715741 24.16831  0.05 0.1654523 0.0691602

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
Ab42 on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Diastolic Blood
Pressure

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ## 2      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ## 3      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ## 4      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ##                                      method nsnp         b        se
    ## 1 Inverse variance weighted (fixed effects)   10 0.1698308 0.2774305
    ## 2                           Weighted median   10 0.1564199 0.3829055
    ## 3                             Weighted mode   10 0.2325926 0.6839408
    ## 4                                  MR Egger   10 0.5955909 1.1028798
    ##        pval
    ## 1 0.5404344
    ## 2 0.6829009
    ## 3 0.7416010
    ## 4 0.6038781

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Diastolic Blood Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ## 2      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 14.15797    8 0.07773973
    ## 2 Inverse variance weighted 14.45498    9 0.10703633

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42     -0.01205205
    ##           se      pval
    ## 1 0.02941942 0.6928029

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome       exposure    pt
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 18.24586 0.104

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure   method nsnp  b
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42 mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure   method  Q Q_df
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure   method
    ## 1      KgwNjR     XhgUw1 Evangelou2018dbp Deming2017ab42 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
