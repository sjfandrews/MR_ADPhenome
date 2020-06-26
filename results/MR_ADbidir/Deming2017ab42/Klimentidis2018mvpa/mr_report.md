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

### Outcome: Moderate-Vigours Physical Activity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in Moderate-Vigours
Physical Activity

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1  rs115141604     3  47251391    A    G 0.045891  0.000639444 0.00527919
    ## 2   rs62313278     4  61743347    A    G 0.079386 -0.002300620 0.00409916
    ## 3   rs13115400     4 181885905    G    A 0.349548 -0.000618692 0.00231373
    ## 4   rs12153566    NA        NA <NA> <NA>       NA           NA         NA
    ## 5  rs141162384     5  65091178    G    T 0.042366 -0.000727446 0.00549323
    ## 6     rs316341    NA        NA <NA> <NA>       NA           NA         NA
    ## 7   rs17207326     7  37739901    G    A 0.081707 -0.000113196 0.00401736
    ## 8   rs61957926    NA        NA <NA> <NA>       NA           NA         NA
    ## 9   rs76881547    14  96632992    C    T 0.102240  0.001773900 0.00367062
    ## 10    rs769449    19  45410002    G    A 0.125197  0.020178600 0.00333005
    ## 11   rs7247764    19  45675873    T    C 0.168067 -0.002364450 0.00295455
    ## 12   rs2664588    20  46580634    C    T 0.448956 -0.000407499 0.00222825
    ##             Z       P      N TRAIT
    ## 1   0.1211250 9.0e-01 377234  MVPA
    ## 2  -0.5612420 5.7e-01 377234  MVPA
    ## 3  -0.2674000 7.9e-01 377234  MVPA
    ## 4          NA      NA     NA  <NA>
    ## 5  -0.1324260 8.9e-01 377234  MVPA
    ## 6          NA      NA     NA  <NA>
    ## 7  -0.0281767 9.8e-01 377234  MVPA
    ## 8          NA      NA     NA  <NA>
    ## 9   0.4832700 6.3e-01 377234  MVPA
    ## 10  6.0595500 1.4e-09 377234  MVPA
    ## 11 -0.8002740 4.2e-01 377234  MVPA
    ## 12 -0.1828780 8.5e-01 377234  MVPA

<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity

    ##   target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1 rs12153566 rs12153281 1.000000 1.000000 TC/AT  NA     5 26952016
    ## 2   rs316341   rs316339 0.980728 1.000000 GA/AG  NA     6  2838046
    ## 3 rs61957926  rs2209577 0.987506 0.995809 TA/CG  NA    13 71686172
    ##   REF.proxy ALT.proxy       AF        BETA         SE         Z     P
    ## 1         C         T 0.831326 -0.00491437 0.00294805 -1.666990 0.096
    ## 2         A         G 0.696388  0.00169459 0.00240650  0.704172 0.480
    ## 3         A         G 0.610853  0.00311895 0.00226111  1.379390 0.170
    ##        N TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 377234  MVPA   T         C   A         T   A   T          TRUE
    ## 2 377234  MVPA   G         A   A         G   A   G          TRUE
    ## 3 377234  MVPA   T         A   C         G   C   T          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ab42 and Moderate-Vigours Physical Activity
datasets

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
    ## 1                      G                    A       0.05535  0.000639444
    ## 2                      A                    T       0.02566 -0.004914370
    ## 3                      A                    G       0.01924 -0.000618692
    ## 4                      T                    G       0.05123 -0.000727446
    ## 5                      A                    G       0.03666 -0.000113196
    ## 6                      T                    C       0.01913 -0.000407499
    ## 7                      A                    G       0.02460  0.001694590
    ## 8                      C                    T      -0.01874  0.003118950
    ## 9                      G                    A       0.03407 -0.002300620
    ## 10                     C                    T      -0.02570 -0.002364450
    ## 11                     T                    C      -0.03289  0.001773900
    ## 12                     A                    G      -0.10060  0.020178600
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0206672    0.045891  FALSE       FALSE     FALSE     0GYsUq
    ## 2     0.8418080    0.831326  FALSE        TRUE     FALSE     0GYsUq
    ## 3     0.3287940    0.349548  FALSE       FALSE     FALSE     0GYsUq
    ## 4     0.0335875    0.042366  FALSE       FALSE     FALSE     0GYsUq
    ## 5     0.0884058    0.081707  FALSE       FALSE     FALSE     0GYsUq
    ## 6     0.4395210    0.448956  FALSE       FALSE     FALSE     0GYsUq
    ## 7     0.7082420    0.696388  FALSE       FALSE     FALSE     0GYsUq
    ## 8     0.5949710    0.610853  FALSE       FALSE     FALSE     0GYsUq
    ## 9     0.0746187    0.079386  FALSE       FALSE     FALSE     0GYsUq
    ## 10    0.2297890    0.168067  FALSE       FALSE     FALSE     0GYsUq
    ## 11    0.0718443    0.102240  FALSE       FALSE     FALSE     0GYsUq
    ## 12    0.0998545    0.125197  FALSE       FALSE     FALSE     0GYsUq
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            3    47251391 0.00527919  0.1211250      9.0e-01
    ## 2            5    26952016 0.00294805 -1.6669900      9.6e-02
    ## 3            4   181885905 0.00231373 -0.2674000      7.9e-01
    ## 4            5    65091178 0.00549323 -0.1324260      8.9e-01
    ## 5            7    37739901 0.00401736 -0.0281767      9.8e-01
    ## 6           20    46580634 0.00222825 -0.1828780      8.5e-01
    ## 7            6     2838046 0.00240650  0.7041720      4.8e-01
    ## 8           13    71686172 0.00226111  1.3793900      1.7e-01
    ## 9            4    61743347 0.00409916 -0.5612420      5.7e-01
    ## 10          19    45675873 0.00295455 -0.8002740      4.2e-01
    ## 11          14    96632992 0.00367062  0.4832700      6.3e-01
    ## 12          19    45410002 0.00333005  6.0595500      1.4e-09
    ##    samplesize.outcome             outcome mr_keep.outcome
    ## 1              377234 Klimentidis2018mvpa            TRUE
    ## 2              377234 Klimentidis2018mvpa            TRUE
    ## 3              377234 Klimentidis2018mvpa            TRUE
    ## 4              377234 Klimentidis2018mvpa            TRUE
    ## 5              377234 Klimentidis2018mvpa            TRUE
    ## 6              377234 Klimentidis2018mvpa            TRUE
    ## 7              377234 Klimentidis2018mvpa            TRUE
    ## 8              377234 Klimentidis2018mvpa            TRUE
    ## 9              377234 Klimentidis2018mvpa            TRUE
    ## 10             377234 Klimentidis2018mvpa            TRUE
    ## 11             377234 Klimentidis2018mvpa            TRUE
    ## 12             377234 Klimentidis2018mvpa            TRUE
    ##    pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1             reported            NA               <NA>              <NA>
    ## 2             reported          TRUE         rs12153566        rs12153281
    ## 3             reported            NA               <NA>              <NA>
    ## 4             reported            NA               <NA>              <NA>
    ## 5             reported            NA               <NA>              <NA>
    ## 6             reported            NA               <NA>              <NA>
    ## 7             reported          TRUE           rs316341          rs316339
    ## 8             reported          TRUE         rs61957926         rs2209577
    ## 9             reported            NA               <NA>              <NA>
    ## 10            reported            NA               <NA>              <NA>
    ## 11            reported            NA               <NA>              <NA>
    ## 12            reported            NA               <NA>              <NA>
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>              <NA>             <NA>             <NA>
    ## 2                  A                 T                T                C
    ## 3               <NA>              <NA>             <NA>             <NA>
    ## 4               <NA>              <NA>             <NA>             <NA>
    ## 5               <NA>              <NA>             <NA>             <NA>
    ## 6               <NA>              <NA>             <NA>             <NA>
    ## 7                  A                 G                G                A
    ## 8                  C                 T                G                A
    ## 9               <NA>              <NA>             <NA>             <NA>
    ## 10              <NA>              <NA>             <NA>             <NA>
    ## 11              <NA>              <NA>             <NA>             <NA>
    ## 12              <NA>              <NA>             <NA>             <NA>
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
    ## 1              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 2              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 3              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 4              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 5              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 6              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 7              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 8              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 9              reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 10             reported      oqDVIo      2    TRUE          FALSE 5e-06
    ## 11             reported      oqDVIo      2    TRUE           TRUE 5e-06
    ## 12             reported      oqDVIo      2    TRUE          FALSE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA          TRUE
    ## 2               NA            NA          TRUE
    ## 3               NA            NA          TRUE
    ## 4               NA            NA          TRUE
    ## 5               NA            NA          TRUE
    ## 6               NA            NA          TRUE
    ## 7               NA            NA          TRUE
    ## 8               NA            NA          TRUE
    ## 9               NA            NA          TRUE
    ## 10              NA            NA          TRUE
    ## 11              NA            NA          TRUE
    ## 12              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the
Moderate-Vigours Physical Activity GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs7247764          19    45675873     4.121e-06      4.2e-01
    ## 2  rs769449          19    45410002     4.775e-94      1.4e-09

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
    ## 1            FALSE    0.0715741 24.16831  0.05 1.000644 0.1701545

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
Ab42 on Moderate-Vigours Physical Activity. <br>

**Table 6** MR causaul estimates for CSF Ab42 on Moderate-Vigours
Physical Activity

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ## 2      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ## 3      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ## 4      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   10 -0.03866163 0.03489295
    ## 2                           Weighted median   10 -0.01972128 0.04622858
    ## 3                             Weighted mode   10 -0.01673584 0.06614076
    ## 4                                  MR Egger   10  0.02719854 0.10282796
    ##        pval
    ## 1 0.2678589
    ## 2 0.6696680
    ## 3 0.8059270
    ## 4 0.7980774

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus
the association in Moderate-Vigours Physical Activity and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ## 2      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 4.172631    8 0.8412218
    ## 2 Inverse variance weighted 4.636240    9 0.8647962

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Klimentidis2018mvpa/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Klimentidis2018mvpa/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42
    ##   egger_intercept          se      pval
    ## 1    -0.001882403 0.002764627 0.5151624

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome             outcome       exposure    pt
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 5.757288 0.868

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome             outcome       exposure   method nsnp
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42 mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome             outcome       exposure   method  Q
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42 mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome             outcome       exposure   method
    ## 1      oqDVIo     0GYsUq Klimentidis2018mvpa Deming2017ab42 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
