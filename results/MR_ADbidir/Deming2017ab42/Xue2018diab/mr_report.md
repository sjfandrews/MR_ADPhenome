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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Diabetes

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1  rs115141604    NA        NA <NA> <NA>        NA      NA     NA
    ## 2   rs62313278     4  61743347    A    G 0.0780725 -0.0133 0.0146
    ## 3   rs13115400     4 181885905    G    A 0.3505920  0.0099 0.0088
    ## 4   rs12153566    NA        NA <NA> <NA>        NA      NA     NA
    ## 5  rs141162384     5  65091178    G    T 0.0415256 -0.0281 0.0198
    ## 6     rs316341    NA        NA <NA> <NA>        NA      NA     NA
    ## 7   rs17207326     7  37739901    G    A 0.0818974 -0.0099 0.0133
    ## 8   rs61957926    NA        NA <NA> <NA>        NA      NA     NA
    ## 9   rs76881547    NA        NA <NA> <NA>        NA      NA     NA
    ## 10    rs769449    NA        NA <NA> <NA>        NA      NA     NA
    ## 11   rs7247764    19  45675873    T    C 0.1712040 -0.0057 0.0104
    ## 12   rs2664588    20  46580634    C    T 0.4486610 -0.0010 0.0078
    ##             Z      P      N           TRAIT
    ## 1          NA     NA     NA            <NA>
    ## 2  -0.9109589 0.3628 570006 Type_2_Diabetes
    ## 3   1.1250000 0.2591 570645 Type_2_Diabetes
    ## 4          NA     NA     NA            <NA>
    ## 5  -1.4191919 0.1561 572490 Type_2_Diabetes
    ## 6          NA     NA     NA            <NA>
    ## 7  -0.7443609 0.4558 605014 Type_2_Diabetes
    ## 8          NA     NA     NA            <NA>
    ## 9          NA     NA     NA            <NA>
    ## 10         NA     NA     NA            <NA>
    ## 11 -0.5480769 0.5858 572806 Type_2_Diabetes
    ## 12 -0.1282051 0.8947 572204 Type_2_Diabetes

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##    target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1  rs12153566 rs12153281 1.000000 1.000000 TC/AT  NA     5 26952016
    ## 2  rs61957926  rs2209577 0.987506 0.995809 TA/CG  NA    13 71686172
    ## 3 rs115141604       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 4    rs316341       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 5  rs76881547       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 6    rs769449       <NA>       NA       NA  <NA>  NA    NA       NA
    ##   REF.proxy ALT.proxy       AF    BETA     SE        Z      P      N
    ## 1         C         T 0.829954  0.0222 0.0104  2.13462 0.0335 572358
    ## 2         A         G 0.610642 -0.0079 0.0080 -0.98750 0.3243 572706
    ## 3      <NA>      <NA>       NA      NA     NA       NA     NA     NA
    ## 4      <NA>      <NA>       NA      NA     NA       NA     NA     NA
    ## 5      <NA>      <NA>       NA      NA     NA       NA     NA     NA
    ## 6      <NA>      <NA>       NA      NA     NA       NA     NA     NA
    ##             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Type_2_Diabetes TRUE         C    A         T    A TRUE          TRUE
    ## 2 Type_2_Diabetes TRUE         A    C         G    C TRUE          TRUE
    ## 3            <NA>   NA      <NA> <NA>      <NA> <NA>   NA            NA
    ## 4            <NA>   NA      <NA> <NA>      <NA> <NA>   NA            NA
    ## 5            <NA>   NA      <NA> <NA>      <NA> <NA>   NA            NA
    ## 6            <NA>   NA      <NA> <NA>      <NA> <NA>   NA            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ab42 and Diabetes datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs12153566                      A                     T
    ## 2  rs13115400                      A                     G
    ## 3 rs141162384                      T                     G
    ## 4  rs17207326                      A                     G
    ## 5   rs2664588                      T                     C
    ## 6  rs61957926                      C                     T
    ## 7  rs62313278                      G                     A
    ## 8   rs7247764                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    T       0.02566       0.0222
    ## 2                     A                    G       0.01924       0.0099
    ## 3                     T                    G       0.05123      -0.0281
    ## 4                     A                    G       0.03666      -0.0099
    ## 5                     T                    C       0.01913      -0.0010
    ## 6                     C                    T      -0.01874      -0.0079
    ## 7                     G                    A       0.03407      -0.0133
    ## 8                     C                    T      -0.02570      -0.0057
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.8418080   0.8299540  FALSE        TRUE     FALSE     pr7x92
    ## 2    0.3287940   0.3505920  FALSE       FALSE     FALSE     pr7x92
    ## 3    0.0335875   0.0415256  FALSE       FALSE     FALSE     pr7x92
    ## 4    0.0884058   0.0818974  FALSE       FALSE     FALSE     pr7x92
    ## 5    0.4395210   0.4486610  FALSE       FALSE     FALSE     pr7x92
    ## 6    0.5949710   0.6106420  FALSE       FALSE     FALSE     pr7x92
    ## 7    0.0746187   0.0780725  FALSE       FALSE     FALSE     pr7x92
    ## 8    0.2297890   0.1712040  FALSE       FALSE     FALSE     pr7x92
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           5    26952016     0.0104  2.1346200       0.0335
    ## 2           4   181885905     0.0088  1.1250000       0.2591
    ## 3           5    65091178     0.0198 -1.4191919       0.1561
    ## 4           7    37739901     0.0133 -0.7443609       0.4558
    ## 5          20    46580634     0.0078 -0.1282051       0.8947
    ## 6          13    71686172     0.0080 -0.9875000       0.3243
    ## 7           4    61743347     0.0146 -0.9109589       0.3628
    ## 8          19    45675873     0.0104 -0.5480769       0.5858
    ##   samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1             572358 Xue2018diab            TRUE            reported
    ## 2             570645 Xue2018diab            TRUE            reported
    ## 3             572490 Xue2018diab            TRUE            reported
    ## 4             605014 Xue2018diab            TRUE            reported
    ## 5             572204 Xue2018diab            TRUE            reported
    ## 6             572706 Xue2018diab            TRUE            reported
    ## 7             570006 Xue2018diab            TRUE            reported
    ## 8             572806 Xue2018diab            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1          TRUE         rs12153566        rs12153281                 A
    ## 2            NA               <NA>              <NA>              <NA>
    ## 3            NA               <NA>              <NA>              <NA>
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6          TRUE         rs61957926         rs2209577                 C
    ## 7            NA               <NA>              <NA>              <NA>
    ## 8            NA               <NA>              <NA>              <NA>
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1              TRUE                T                C            5
    ## 2                NA             <NA>             <NA>            4
    ## 3                NA             <NA>             <NA>            5
    ## 4                NA             <NA>             <NA>            7
    ## 5                NA             <NA>             <NA>           20
    ## 6              TRUE                G                A           13
    ## 7                NA             <NA>             <NA>            4
    ## 8                NA             <NA>             <NA>           19
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     26951397    0.005300   4.841510     1.351e-06                3146
    ## 2    181885905    0.004122   4.667637     3.184e-06                3146
    ## 3     65091178    0.010240   5.002930     6.013e-07                3146
    ## 4     37739901    0.008001   4.581927     4.825e-06                3146
    ## 5     46580634    0.004026   4.751615     2.105e-06                3146
    ## 6     71694685    0.004053  -4.623740     3.908e-06                3146
    ## 7     61743347    0.007360   4.629076     3.825e-06                3146
    ## 8     45675873    0.005569  -4.614832     4.121e-06                3146
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 2 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 3 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 4 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 5 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 6 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 7 Deming2017ab42             TRUE             reported      kycJnI      2
    ## 8 Deming2017ab42             TRUE             reported      kycJnI      2
    ##   mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 2    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 3    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 4    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 5    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 6    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 7    TRUE           TRUE 5e-06              NA            NA          TRUE
    ## 8    TRUE          FALSE 5e-06              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06       0.5858

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

    ##   outliers_removed pve.exposure        F Alpha       NCP    Power
    ## 1            FALSE   0.04852233 22.86115  0.05 0.1559143 0.068045

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
Ab42 on Diabetes. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Diabetes

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ## 2      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ## 3      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ## 4      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    7  0.0445449 0.1541056
    ## 2                           Weighted median    7 -0.1168649 0.2152147
    ## 3                             Weighted mode    7 -0.2840367 0.3355646
    ## 4                                  MR Egger    7 -0.9191152 0.5021689
    ##        pval
    ## 1 0.7725397
    ## 2 0.5871193
    ## 3 0.4297654
    ## 4 0.1267202

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Diabetes and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ## 2      kycJnI     pr7x92 Xue2018diab Deming2017ab42
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger  5.557019    5 0.3517340
    ## 2 Inverse variance weighted 10.128273    6 0.1193531

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42      0.02550946
    ##           se       pval
    ## 1 0.01257823 0.09835359

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome       exposure    pt outliers_removed
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          0 13.86099 0.119

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome       exposure   method nsnp  b se
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42 mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome       exposure   method  Q Q_df
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome       exposure   method
    ## 1      kycJnI     pr7x92 Xue2018diab Deming2017ab42 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
