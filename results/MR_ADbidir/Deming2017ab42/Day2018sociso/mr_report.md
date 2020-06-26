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

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Social Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1  rs115141604     3  47251391    A    G 0.046261 -0.00470713 0.00487616
    ## 2   rs62313278     4  61743347    A    G 0.079675 -0.00214531 0.00378241
    ## 3   rs13115400     4 181885905    G    A 0.348643 -0.00294013 0.00214932
    ## 4   rs12153566    NA        NA <NA> <NA>       NA          NA         NA
    ## 5  rs141162384     5  65091178    G    T 0.042291 -0.00135910 0.00508932
    ## 6     rs316341    NA        NA <NA> <NA>       NA          NA         NA
    ## 7   rs17207326     7  37739901    G    A 0.081589 -0.00058426 0.00374167
    ## 8   rs61957926    NA        NA <NA> <NA>       NA          NA         NA
    ## 9   rs76881547    14  96632992    C    T 0.102966 -0.00214458 0.00337015
    ## 10    rs769449    19  45410002    G    A 0.126119  0.00080492 0.00308520
    ## 11   rs7247764    19  45675873    T    C 0.167960 -0.00484116 0.00273984
    ## 12   rs2664588    20  46580634    C    T 0.448861 -0.00066338 0.00205927
    ##            Z          P      N            TRAIT
    ## 1  -0.965335 0.33437688 452302 Social_Isolation
    ## 2  -0.567181 0.57059132 452302 Social_Isolation
    ## 3  -1.367940 0.17133134 452302 Social_Isolation
    ## 4         NA         NA     NA             <NA>
    ## 5  -0.267049 0.78943114 452302 Social_Isolation
    ## 6         NA         NA     NA             <NA>
    ## 7  -0.156150 0.87591448 452302 Social_Isolation
    ## 8         NA         NA     NA             <NA>
    ## 9  -0.636347 0.52455012 452302 Social_Isolation
    ## 10  0.260897 0.79417215 452302 Social_Isolation
    ## 11 -1.766950 0.07723686 452302 Social_Isolation
    ## 12 -0.322145 0.74734309 452302 Social_Isolation

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##   target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1 rs12153566 rs12153281 1.000000 1.000000 TC/AT  NA     5 26952016
    ## 2   rs316341   rs316339 0.980728 1.000000 GA/AG  NA     6  2838046
    ## 3 rs61957926  rs2209577 0.987506 0.995809 TA/CG  NA    13 71686172
    ##   REF.proxy ALT.proxy       AF        BETA         SE          Z
    ## 1         C         T 0.831113  0.00024417 0.00273383  0.0893131
    ## 2         A         G 0.695329 -0.00003365 0.00222531 -0.0151210
    ## 3         A         G 0.612129 -0.00489724 0.00210201 -2.3297900
    ##            P      N            TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1 0.92883310 452302 Social_Isolation   T         C   A         T   A   T
    ## 2 0.98793561 452302 Social_Isolation   G         A   A         G   A   G
    ## 3 0.01981749 452302 Social_Isolation   T         A   C         G   C   T
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

**Table 4:** Harmonized CSF Ab42 and Social Isolation datasets

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
    ## 1                      G                    A       0.05535  -0.00470713
    ## 2                      A                    T       0.02566   0.00024417
    ## 3                      A                    G       0.01924  -0.00294013
    ## 4                      T                    G       0.05123  -0.00135910
    ## 5                      A                    G       0.03666  -0.00058426
    ## 6                      T                    C       0.01913  -0.00066338
    ## 7                      A                    G       0.02460  -0.00003365
    ## 8                      C                    T      -0.01874  -0.00489724
    ## 9                      G                    A       0.03407  -0.00214531
    ## 10                     C                    T      -0.02570  -0.00484116
    ## 11                     T                    C      -0.03289  -0.00214458
    ## 12                     A                    G      -0.10060   0.00080492
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0206672    0.046261  FALSE       FALSE     FALSE     LT9Y0S
    ## 2     0.8418080    0.831113  FALSE        TRUE     FALSE     LT9Y0S
    ## 3     0.3287940    0.348643  FALSE       FALSE     FALSE     LT9Y0S
    ## 4     0.0335875    0.042291  FALSE       FALSE     FALSE     LT9Y0S
    ## 5     0.0884058    0.081589  FALSE       FALSE     FALSE     LT9Y0S
    ## 6     0.4395210    0.448861  FALSE       FALSE     FALSE     LT9Y0S
    ## 7     0.7082420    0.695329  FALSE       FALSE     FALSE     LT9Y0S
    ## 8     0.5949710    0.612129  FALSE       FALSE     FALSE     LT9Y0S
    ## 9     0.0746187    0.079675  FALSE       FALSE     FALSE     LT9Y0S
    ## 10    0.2297890    0.167960  FALSE       FALSE     FALSE     LT9Y0S
    ## 11    0.0718443    0.102966  FALSE       FALSE     FALSE     LT9Y0S
    ## 12    0.0998545    0.126119  FALSE       FALSE     FALSE     LT9Y0S
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            3    47251391 0.00487616 -0.9653350   0.33437688
    ## 2            5    26952016 0.00273383  0.0893131   0.92883310
    ## 3            4   181885905 0.00214932 -1.3679400   0.17133134
    ## 4            5    65091178 0.00508932 -0.2670490   0.78943114
    ## 5            7    37739901 0.00374167 -0.1561500   0.87591448
    ## 6           20    46580634 0.00205927 -0.3221450   0.74734309
    ## 7            6     2838046 0.00222531 -0.0151210   0.98793561
    ## 8           13    71686172 0.00210201 -2.3297900   0.01981749
    ## 9            4    61743347 0.00378241 -0.5671810   0.57059132
    ## 10          19    45675873 0.00273984 -1.7669500   0.07723686
    ## 11          14    96632992 0.00337015 -0.6363470   0.52455012
    ## 12          19    45410002 0.00308520  0.2608970   0.79417215
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1              452302 Day2018sociso            TRUE            reported
    ## 2              452302 Day2018sociso            TRUE            reported
    ## 3              452302 Day2018sociso            TRUE            reported
    ## 4              452302 Day2018sociso            TRUE            reported
    ## 5              452302 Day2018sociso            TRUE            reported
    ## 6              452302 Day2018sociso            TRUE            reported
    ## 7              452302 Day2018sociso            TRUE            reported
    ## 8              452302 Day2018sociso            TRUE            reported
    ## 9              452302 Day2018sociso            TRUE            reported
    ## 10             452302 Day2018sociso            TRUE            reported
    ## 11             452302 Day2018sociso            TRUE            reported
    ## 12             452302 Day2018sociso            TRUE            reported
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
    ## 1  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 2  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 3  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 4  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 5  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 6  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 7  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 8  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 9  Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 10 Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 11 Deming2017ab42             TRUE             reported      6yzdLH      2
    ## 12 Deming2017ab42             TRUE             reported      6yzdLH      2
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

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06   0.07723686
    ## 2  rs769449          19    45410002     4.775e-94   0.79417215

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
    ## 1            FALSE    0.0715741 24.16831  0.05 0.07551069 0.05869439

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
Ab42 on Social Isolation. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Social Isolation

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ## 2      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ## 3      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ## 4      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   10 -0.008208921 0.03229562
    ## 2                           Weighted median   10 -0.021153720 0.04294766
    ## 3                             Weighted mode   10 -0.018788535 0.06117241
    ## 4                                  MR Egger   10 -0.091486459 0.09657101
    ##        pval
    ## 1 0.7993560
    ## 2 0.6223331
    ## 3 0.7657243
    ## 4 0.3711941

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Social Isolation and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ## 2      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 8.235593    8 0.4108018
    ## 2 Inverse variance weighted 9.100738    9 0.4280277

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42      0.00238198
    ##            se      pval
    ## 1 0.002598341 0.3860848

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome       exposure    pt
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs pval
    ## 1            FALSE          0 10.96256 0.46

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome       exposure   method nsnp  b se
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42 mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome       exposure   method  Q Q_df
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42 mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome       exposure   method
    ## 1      6yzdLH     LT9Y0S Day2018sociso Deming2017ab42 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
