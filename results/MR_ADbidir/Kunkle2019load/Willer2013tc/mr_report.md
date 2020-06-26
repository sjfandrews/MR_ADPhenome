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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1     rs679515     1 207750568   T   C 0.8126 -0.1508 0.0183 -8.240440
    ## 2    rs6733839     2 127892810   C   T 0.4067  0.1693 0.0154 10.993506
    ## 3   rs34665982     6  32560306   T   C 0.5213 -0.0967 0.0166 -5.825300
    ## 4  rs114812713     6  41034000   G   C 0.0301  0.2980 0.0431  6.914153
    ## 5    rs1385742     6  47595155   A   T 0.6344 -0.0876 0.0157 -5.579620
    ## 6   rs11767557     7 143109139   T   C 0.1968 -0.1028 0.0182 -5.648350
    ## 7   rs73223431     8  27219987   C   T 0.3669  0.0936 0.0153  6.117647
    ## 8     rs867230     8  27468503   C   A 0.6029  0.1333 0.0158  8.436709
    ## 9   rs12416487    10  11721057   A   T 0.6519  0.0850 0.0154  5.519480
    ## 10   rs3740688    11  47380340   G   T 0.5524  0.0935 0.0144  6.493056
    ## 11   rs1582763    11  60021948   G   A 0.3729 -0.1232 0.0149 -8.268456
    ## 12   rs3851179    11  85868640   T   C 0.6410  0.1198 0.0148  8.094590
    ## 13  rs11218343    11 121435587   T   C 0.0401 -0.2053 0.0369 -5.563690
    ## 14  rs12590654    14  92938855   G   A 0.3353 -0.0906 0.0157 -5.770701
    ## 15  rs12151021    19   1050874   A   G 0.6753 -0.1071 0.0169 -6.337280
    ## 16 rs111358663    19  45196958   T   A 0.0111 -0.5369 0.0795 -6.753459
    ## 17   rs4803765    19  45358448   C   T 0.0243  0.7165 0.0610 11.745902
    ## 18  rs12972156    19  45387459   C   G 0.2027  0.9653 0.0189 51.074100
    ## 19 rs117310449    19  45393516   C   T 0.0130  0.9879 0.0691 14.296671
    ## 20  rs73033507    19  45431403   C   T 0.0239 -0.3620 0.0657 -5.509893
    ## 21 rs114533385    19  45436753   C   T 0.0210  0.8281 0.0661 12.527988
    ## 22 rs139995984    19  45574482   G   C 0.0155 -0.5343 0.0879 -6.078498
    ##                P     N TRAIT
    ## 1   1.555000e-16 63926  LOAD
    ## 2   4.022000e-28 63926  LOAD
    ## 3   5.798000e-09 63926  LOAD
    ## 4   4.467000e-12 63926  LOAD
    ## 5   2.232000e-08 63926  LOAD
    ## 6   1.561000e-08 63926  LOAD
    ## 7   8.342000e-10 63926  LOAD
    ## 8   3.492000e-17 63926  LOAD
    ## 9   3.417000e-08 63926  LOAD
    ## 10  9.702000e-11 63926  LOAD
    ## 11  1.186000e-16 63926  LOAD
    ## 12  5.809000e-16 63926  LOAD
    ## 13  2.633000e-08 63926  LOAD
    ## 14  8.729000e-09 63926  LOAD
    ## 15  2.562000e-10 63926  LOAD
    ## 16  1.436000e-11 63926  LOAD
    ## 17  7.131000e-32 63926  LOAD
    ## 18 2.225074e-308 63926  LOAD
    ## 19  2.275000e-46 63926  LOAD
    ## 20  3.646000e-08 63926  LOAD
    ## 21  5.434000e-36 63926  LOAD
    ## 22  1.192000e-09 63926  LOAD

<br>

### Outcome: Total cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Total cholesterol

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1     rs679515    NA        NA <NA> <NA>        NA      NA     NA
    ## 2    rs6733839    NA        NA <NA> <NA>        NA      NA     NA
    ## 3   rs34665982    NA        NA <NA> <NA>        NA      NA     NA
    ## 4  rs114812713    NA        NA <NA> <NA>        NA      NA     NA
    ## 5    rs1385742    NA        NA <NA> <NA>        NA      NA     NA
    ## 6   rs11767557     7 143109139    T    C 0.2031590 -0.0035 0.0068
    ## 7   rs73223431    NA        NA <NA> <NA>        NA      NA     NA
    ## 8     rs867230    NA        NA <NA> <NA>        NA      NA     NA
    ## 9   rs12416487    NA        NA <NA> <NA>        NA      NA     NA
    ## 10   rs3740688    NA        NA <NA> <NA>        NA      NA     NA
    ## 11   rs1582763    11  60021948    G    A 0.3276300 -0.0076 0.0053
    ## 12   rs3851179    11  85868640    T    C 0.6671510  0.0009 0.0052
    ## 13  rs11218343    11 121435587    T    C 0.0344953  0.0200 0.0182
    ## 14  rs12590654    NA        NA <NA> <NA>        NA      NA     NA
    ## 15  rs12151021    NA        NA <NA> <NA>        NA      NA     NA
    ## 16 rs111358663    NA        NA <NA> <NA>        NA      NA     NA
    ## 17   rs4803765    NA        NA <NA> <NA>        NA      NA     NA
    ## 18  rs12972156    NA        NA <NA> <NA>        NA      NA     NA
    ## 19 rs117310449    NA        NA <NA> <NA>        NA      NA     NA
    ## 20  rs73033507    NA        NA <NA> <NA>        NA      NA     NA
    ## 21 rs114533385    NA        NA <NA> <NA>        NA      NA     NA
    ## 22 rs139995984    NA        NA <NA> <NA>        NA      NA     NA
    ##             Z      P     N             TRAIT
    ## 1          NA     NA    NA              <NA>
    ## 2          NA     NA    NA              <NA>
    ## 3          NA     NA    NA              <NA>
    ## 4          NA     NA    NA              <NA>
    ## 5          NA     NA    NA              <NA>
    ## 6  -0.5147060 0.7429 94552 Total_Cholesterol
    ## 7          NA     NA    NA              <NA>
    ## 8          NA     NA    NA              <NA>
    ## 9          NA     NA    NA              <NA>
    ## 10         NA     NA    NA              <NA>
    ## 11 -1.4339600 0.1851 94426 Total_Cholesterol
    ## 12  0.1730769 0.6909 94595 Total_Cholesterol
    ## 13  1.0989011 0.3763 86514 Total_Cholesterol
    ## 14         NA     NA    NA              <NA>
    ## 15         NA     NA    NA              <NA>
    ## 16         NA     NA    NA              <NA>
    ## 17         NA     NA    NA              <NA>
    ## 18         NA     NA    NA              <NA>
    ## 19         NA     NA    NA              <NA>
    ## 20         NA     NA    NA              <NA>
    ## 21         NA     NA    NA              <NA>
    ## 22         NA     NA    NA              <NA>

<br>

**Table 3:** Proxy SNPs for Total cholesterol

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1     rs679515  rs4844610 0.944727 0.971971 TA/CC  NA     1 207802552
    ## 2   rs73223431  rs2322599 0.995619 1.000000 TA/CG  NA     8  27211910
    ## 3     rs867230 rs11136000 0.894555 0.973765 CT/AC  NA     8  27464519
    ## 4   rs12972156  rs2075650 0.915702 0.973544 GG/CA  NA    19  45395619
    ## 5    rs6733839       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 6   rs34665982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 7  rs114812713       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 8    rs1385742       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 9   rs12416487       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 10   rs3740688       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 11  rs12590654       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 12  rs12151021       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 13 rs111358663       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14   rs4803765       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15 rs117310449       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16  rs73033507       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17 rs114533385       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18 rs139995984       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy       AF    BETA     SE          Z          P
    ## 1          A         C 0.780138  0.0045 0.0065  0.6923077  9.208e-01
    ## 2          G         A 0.295488  0.0025 0.0052  0.4807692  7.002e-01
    ## 3          T         C 0.615076 -0.0023 0.0057 -0.4035090  9.688e-01
    ## 4          A         G 0.155592  0.1432 0.0052 27.5384615 8.930e-158
    ## 5       <NA>      <NA>       NA      NA     NA         NA         NA
    ## 6       <NA>      <NA>       NA      NA     NA         NA         NA
    ## 7       <NA>      <NA>       NA      NA     NA         NA         NA
    ## 8       <NA>      <NA>       NA      NA     NA         NA         NA
    ## 9       <NA>      <NA>       NA      NA     NA         NA         NA
    ## 10      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 11      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 12      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 13      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 14      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 15      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 16      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 17      <NA>      <NA>       NA      NA     NA         NA         NA
    ## 18      <NA>      <NA>       NA      NA     NA         NA         NA
    ##           N             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1   94595.0 Total_Cholesterol    T         A    C         C    C    T
    ## 2   94595.0 Total_Cholesterol    T         A    C         G    T    C
    ## 3   86749.0 Total_Cholesterol    C         T    A         C    A    C
    ## 4  175566.1 Total_Cholesterol    G         G    C         A    G    C
    ## 5        NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 6        NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 7        NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 8        NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 9        NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 10       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 11       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 12       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 13       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 14       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 15       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 16       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 17       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 18       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ##    proxy.outcome
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5             NA
    ## 6             NA
    ## 7             NA
    ## 8             NA
    ## 9             NA
    ## 10            NA
    ## 11            NA
    ## 12            NA
    ## 13            NA
    ## 14            NA
    ## 15            NA
    ## 16            NA
    ## 17            NA
    ## 18            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Total cholesterol datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11218343                      C                     T
    ## 2 rs11767557                      C                     T
    ## 3 rs12972156                      G                     C
    ## 4  rs1582763                      A                     G
    ## 5  rs3851179                      C                     T
    ## 6   rs679515                      C                     T
    ## 7 rs73223431                      T                     C
    ## 8   rs867230                      A                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     C                    T       -0.2053       0.0200
    ## 2                     C                    T       -0.1028      -0.0035
    ## 3                     G                    C        0.9653       0.1432
    ## 4                     A                    G       -0.1232      -0.0076
    ## 5                     C                    T        0.1198       0.0009
    ## 6                     C                    T       -0.1508       0.0045
    ## 7                     T                    C        0.0936       0.0025
    ## 8                     A                    C        0.1333      -0.0023
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0401   0.0344953  FALSE       FALSE     FALSE     FLnJSF
    ## 2       0.1968   0.2031590  FALSE       FALSE     FALSE     FLnJSF
    ## 3       0.2027   0.1555920  FALSE        TRUE     FALSE     FLnJSF
    ## 4       0.3729   0.3276300  FALSE       FALSE     FALSE     FLnJSF
    ## 5       0.6410   0.6671510  FALSE       FALSE     FALSE     FLnJSF
    ## 6       0.8126   0.7801380  FALSE       FALSE     FALSE     FLnJSF
    ## 7       0.3669   0.2954880  FALSE       FALSE     FALSE     FLnJSF
    ## 8       0.6029   0.6150760  FALSE       FALSE     FALSE     FLnJSF
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1          11   121435587     0.0182  1.0989011    3.763e-01
    ## 2           7   143109139     0.0068 -0.5147060    7.429e-01
    ## 3          19    45395619     0.0052 27.5384615   8.930e-158
    ## 4          11    60021948     0.0053 -1.4339600    1.851e-01
    ## 5          11    85868640     0.0052  0.1730769    6.909e-01
    ## 6           1   207802552     0.0065  0.6923077    9.208e-01
    ## 7           8    27211910     0.0052  0.4807692    7.002e-01
    ## 8           8    27464519     0.0057 -0.4035090    9.688e-01
    ##   samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1            86514.0 Willer2013tc            TRUE            reported
    ## 2            94552.0 Willer2013tc            TRUE            reported
    ## 3           175566.1 Willer2013tc            TRUE            reported
    ## 4            94426.0 Willer2013tc            TRUE            reported
    ## 5            94595.0 Willer2013tc            TRUE            reported
    ## 6            94595.0 Willer2013tc            TRUE            reported
    ## 7            94595.0 Willer2013tc            TRUE            reported
    ## 8            86749.0 Willer2013tc            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1            NA               <NA>              <NA>              <NA>
    ## 2            NA               <NA>              <NA>              <NA>
    ## 3          TRUE         rs12972156         rs2075650                 G
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6          TRUE           rs679515         rs4844610                 C
    ## 7          TRUE         rs73223431         rs2322599                 T
    ## 8          TRUE           rs867230        rs11136000                 A
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1              <NA>             <NA>             <NA>           11
    ## 2              <NA>             <NA>             <NA>            7
    ## 3                 C                G                A           19
    ## 4              <NA>             <NA>             <NA>           11
    ## 5              <NA>             <NA>             <NA>           11
    ## 6                 T                C                A            1
    ## 7                 C                A                G            8
    ## 8                 C                C                T            8
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1    121435587      0.0369  -5.563690     2.633e-08               63926
    ## 2    143109139      0.0182  -5.648350     1.561e-08               63926
    ## 3     45387459      0.0189  51.074100    1.000e-200               63926
    ## 4     60021948      0.0149  -8.268456     1.186e-16               63926
    ## 5     85868640      0.0148   8.094590     5.809e-16               63926
    ## 6    207750568      0.0183  -8.240440     1.555e-16               63926
    ## 7     27219987      0.0153   6.117647     8.342e-10               63926
    ## 8     27468503      0.0158   8.436709     3.492e-17               63926
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 2 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 3 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 4 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 5 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 6 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 7 Kunkle2019load             TRUE             reported      8yt6VC      2
    ## 8 Kunkle2019load             TRUE             reported      8yt6VC      2
    ##   mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 2    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 3    TRUE          FALSE 5e-08              NA            NA          TRUE
    ## 4    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 5    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 6    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 7    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 8    TRUE           TRUE 5e-08              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Total
cholesterol GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs12972156          19    45395619        1e-200    8.93e-158

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
    ## 1            FALSE  0.005835716 53.59955  0.05 0.03354203 0.05385118

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

Table 6 presents the MR causal estimates of genetically predicted LOAD
on Total cholesterol. <br>

**Table 6** MR causaul estimates for LOAD on Total cholesterol

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ## 2      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ## 3      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ## 4      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    7  0.005592807 0.01877775
    ## 2                           Weighted median    7  0.004535712 0.02393877
    ## 3                             Weighted mode    7 -0.006300364 0.03094563
    ## 4                                  MR Egger    7 -0.151285608 0.11024553
    ##        pval
    ## 1 0.7658236
    ## 2 0.8497233
    ## 3 0.8453998
    ## 4 0.2283437

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Total cholesterol and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tc/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ## 2      8yt6VC     FLnJSF Willer2013tc Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 2.257844    5 0.8124382
    ## 2 Inverse variance weighted 4.343247    6 0.6303321

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tc/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tc/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load      0.01951983
    ##           se      pval
    ## 1 0.01351702 0.2083186

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
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 5.948589 0.623

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method nsnp  b se
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tc/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method  Q Q_df
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure   method
    ## 1      8yt6VC     FLnJSF Willer2013tc Kunkle2019load mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
