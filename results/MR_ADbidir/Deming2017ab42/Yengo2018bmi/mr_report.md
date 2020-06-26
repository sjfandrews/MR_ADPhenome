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

### Outcome: BMI

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in BMI

    ##            SNP CHROM       POS  REF  ALT      AF    BETA     SE          Z
    ## 1  rs115141604    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 2   rs62313278    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 3   rs13115400     4 181885905    G    A 0.34660 -0.0003 0.0018 -0.1666667
    ## 4   rs12153566    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 5  rs141162384    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 6     rs316341    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 7   rs17207326     7  37739901    G    A 0.07764 -0.0043 0.0030 -1.4333333
    ## 8   rs61957926    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 9   rs76881547    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 10    rs769449    19  45410002    G    A 0.11610 -0.0254 0.0027 -9.4074074
    ## 11   rs7247764    19  45675873    T    C 0.18290  0.0031 0.0023  1.3478300
    ## 12   rs2664588    20  46580634    C    T 0.44550 -0.0012 0.0017 -0.7058824
    ##          P      N TRAIT
    ## 1       NA     NA  <NA>
    ## 2       NA     NA  <NA>
    ## 3  8.7e-01 689335   BMI
    ## 4       NA     NA  <NA>
    ## 5       NA     NA  <NA>
    ## 6       NA     NA  <NA>
    ## 7  1.6e-01 777531   BMI
    ## 8       NA     NA  <NA>
    ## 9       NA     NA  <NA>
    ## 10 2.3e-20 566857   BMI
    ## 11 1.8e-01 677044   BMI
    ## 12 4.9e-01 683749   BMI

<br>

**Table 3:** Proxy SNPs for BMI

    ##    target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1  rs62313278 rs17090295 1.000000 1.000000 GT/AG  NA     4 61738470
    ## 2  rs12153566 rs12153281 1.000000 1.000000 TC/AT  NA     5 26952016
    ## 3 rs141162384  rs6860508 0.901272 0.965541 TT/GC  NA     5 65118738
    ## 4    rs316341   rs316339 0.980728 1.000000 GA/AG  NA     6  2838046
    ## 5  rs61957926  rs9317985 0.987506 0.995809 TA/CC  NA    13 71693128
    ## 6 rs115141604       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 7  rs76881547       <NA>       NA       NA  <NA>  NA    NA       NA
    ##   REF.proxy ALT.proxy      AF    BETA     SE          Z       P      N
    ## 1         G         T 0.07881  0.0050 0.0032  1.5625000 1.2e-01 689177
    ## 2         C         T 0.82380  0.0008 0.0023  0.3478261 7.2e-01 685199
    ## 3         C         T 0.04554  0.0005 0.0043  0.1162791 9.1e-01 679995
    ## 4         A         G 0.70020 -0.0012 0.0019 -0.6315790 5.2e-01 680125
    ## 5         A         C 0.60840 -0.0076 0.0018 -4.2222200 1.5e-05 691761
    ## 6      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 7      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ##   TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1   BMI    G         T    A         G    G    A          TRUE
    ## 2   BMI    T         C    A         T    A    T          TRUE
    ## 3   BMI    T         T    G         C    T    G          TRUE
    ## 4   BMI    G         A    A         G    A    G          TRUE
    ## 5   BMI    T         A    C         C    C    T          TRUE
    ## 6  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 7  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ab42 and BMI datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs12153566                      A                     T
    ## 2   rs13115400                      A                     G
    ## 3  rs141162384                      T                     G
    ## 4   rs17207326                      A                     G
    ## 5    rs2664588                      T                     C
    ## 6     rs316341                      A                     G
    ## 7   rs61957926                      C                     T
    ## 8   rs62313278                      G                     A
    ## 9    rs7247764                      C                     T
    ## 10    rs769449                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    T       0.02566       0.0008
    ## 2                      A                    G       0.01924      -0.0003
    ## 3                      T                    G       0.05123       0.0005
    ## 4                      A                    G       0.03666      -0.0043
    ## 5                      T                    C       0.01913      -0.0012
    ## 6                      A                    G       0.02460      -0.0012
    ## 7                      C                    T      -0.01874      -0.0076
    ## 8                      G                    A       0.03407       0.0050
    ## 9                      C                    T      -0.02570       0.0031
    ## 10                     A                    G      -0.10060      -0.0254
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.8418080     0.82380  FALSE        TRUE     FALSE     O43gCO
    ## 2     0.3287940     0.34660  FALSE       FALSE     FALSE     O43gCO
    ## 3     0.0335875     0.04554  FALSE       FALSE     FALSE     O43gCO
    ## 4     0.0884058     0.07764  FALSE       FALSE     FALSE     O43gCO
    ## 5     0.4395210     0.44550  FALSE       FALSE     FALSE     O43gCO
    ## 6     0.7082420     0.70020  FALSE       FALSE     FALSE     O43gCO
    ## 7     0.5949710     0.60840  FALSE       FALSE     FALSE     O43gCO
    ## 8     0.0746187     0.07881  FALSE       FALSE     FALSE     O43gCO
    ## 9     0.2297890     0.18290  FALSE       FALSE     FALSE     O43gCO
    ## 10    0.0998545     0.11610  FALSE       FALSE     FALSE     O43gCO
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5    26952016     0.0023  0.3478261      7.2e-01
    ## 2            4   181885905     0.0018 -0.1666667      8.7e-01
    ## 3            5    65118738     0.0043  0.1162791      9.1e-01
    ## 4            7    37739901     0.0030 -1.4333333      1.6e-01
    ## 5           20    46580634     0.0017 -0.7058824      4.9e-01
    ## 6            6     2838046     0.0019 -0.6315790      5.2e-01
    ## 7           13    71693128     0.0018 -4.2222200      1.5e-05
    ## 8            4    61738470     0.0032  1.5625000      1.2e-01
    ## 9           19    45675873     0.0023  1.3478300      1.8e-01
    ## 10          19    45410002     0.0027 -9.4074074      2.3e-20
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1              685199 Yengo2018bmi            TRUE            reported
    ## 2              689335 Yengo2018bmi            TRUE            reported
    ## 3              679995 Yengo2018bmi            TRUE            reported
    ## 4              777531 Yengo2018bmi            TRUE            reported
    ## 5              683749 Yengo2018bmi            TRUE            reported
    ## 6              680125 Yengo2018bmi            TRUE            reported
    ## 7              691761 Yengo2018bmi            TRUE            reported
    ## 8              689177 Yengo2018bmi            TRUE            reported
    ## 9              677044 Yengo2018bmi            TRUE            reported
    ## 10             566857 Yengo2018bmi            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1           TRUE         rs12153566        rs12153281                 A
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3           TRUE        rs141162384         rs6860508                 T
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6           TRUE           rs316341          rs316339                 A
    ## 7           TRUE         rs61957926         rs9317985                 C
    ## 8           TRUE         rs62313278        rs17090295                 G
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                  T                T                C            5
    ## 2               <NA>             <NA>             <NA>            4
    ## 3                  G                T                C            5
    ## 4               <NA>             <NA>             <NA>            7
    ## 5               <NA>             <NA>             <NA>           20
    ## 6                  G                G                A            6
    ## 7                  T                C                A           13
    ## 8                  A                T                G            4
    ## 9               <NA>             <NA>             <NA>           19
    ## 10              <NA>             <NA>             <NA>           19
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      26951397    0.005300   4.841510     1.351e-06                3146
    ## 2     181885905    0.004122   4.667637     3.184e-06                3146
    ## 3      65091178    0.010240   5.002930     6.013e-07                3146
    ## 4      37739901    0.008001   4.581927     4.825e-06                3146
    ## 5      46580634    0.004026   4.751615     2.105e-06                3146
    ## 6       2838248    0.004352   5.652570     1.724e-08                3146
    ## 7      71694685    0.004053  -4.623740     3.908e-06                3146
    ## 8      61743347    0.007360   4.629076     3.825e-06                3146
    ## 9      45675873    0.005569  -4.614832     4.121e-06                3146
    ## 10     45410002    0.004723 -21.300021     4.775e-94                3146
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 2  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 3  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 4  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 5  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 6  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 7  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 8  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 9  Deming2017ab42             TRUE             reported      G63zJq      2
    ## 10 Deming2017ab42             TRUE             reported      G63zJq      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    3.647019e-09         1.000
    ## 2     TRUE           TRUE 5e-06    9.319963e-07         1.000
    ## 3     TRUE           TRUE 5e-06    1.314600e-06         1.000
    ## 4     TRUE           TRUE 5e-06    3.919664e-05         0.344
    ## 5     TRUE           TRUE 5e-06    3.994856e-06         1.000
    ## 6     TRUE           TRUE 5e-06    5.205698e-06         1.000
    ## 7     TRUE           TRUE 5e-06    6.193909e-05         0.008
    ## 8     TRUE           TRUE 5e-06    2.021078e-05         1.000
    ## 9     TRUE          FALSE 5e-06              NA            NA
    ## 10    TRUE          FALSE 5e-06              NA            NA
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7          FALSE
    ## 8           TRUE
    ## 9             NA
    ## 10            NA

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the BMI GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06      1.8e-01
    ## 2  rs769449          19    45410002     4.775e-94      2.3e-20

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
    ## 1            FALSE   0.05805769 24.16907  0.05 1.09471476 0.18176554
    ## 2             TRUE   0.05084808 24.01562  0.05 0.08517862 0.05981382

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
Ab42 on BMI. <br>

**Table 6** MR causaul estimates for CSF Ab42 on BMI

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 2      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 3      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 4      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    8  0.02910349 0.03091960
    ## 2                           Weighted median    8 -0.01548535 0.04360791
    ## 3                             Weighted mode    8 -0.02771573 0.05213695
    ## 4                                  MR Egger    8 -0.10627425 0.19333512
    ##        pval
    ## 1 0.3465699
    ## 2 0.7225115
    ## 3 0.6114524
    ## 4 0.6023767

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in BMI and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 2      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 20.64645    6 0.002123071
    ## 2 Inverse variance weighted 22.49648    7 0.002084942

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Yengo2018bmi/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Yengo2018bmi/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42     0.003524463
    ##            se    pval
    ## 1 0.004806745 0.49106

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome       exposure    pt
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 28.62966 0.002

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 2      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 3      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 4      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.01441510 0.03265795
    ## 2                           Weighted median    7 -0.02247795 0.04180758
    ## 3                             Weighted mode    7 -0.02630557 0.06223729
    ## 4                                  MR Egger    7  0.03242586 0.11178666
    ##        pval
    ## 1 0.6589262
    ## 2 0.5908170
    ## 3 0.6872677
    ## 4 0.7834082

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ## 2      G63zJq     O43gCO Yengo2018bmi Deming2017ab42
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 5.161694    5 0.3964675
    ## 2 Inverse variance weighted 5.360463    6 0.4984793

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      G63zJq     O43gCO Yengo2018bmi Deming2017ab42    -0.001276929
    ##            se     pval
    ## 1 0.002910064 0.679121

<br>
