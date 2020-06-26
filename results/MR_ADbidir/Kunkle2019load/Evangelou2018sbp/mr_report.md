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

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Systolic Blood
Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1     rs679515     1 207750568    T    C 0.8188 -0.0207 0.0392 -0.5280610
    ## 2    rs6733839     2 127892810    C    T 0.3951  0.0721 0.0318  2.2672956
    ## 3   rs34665982    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 4  rs114812713     6  41034000    G    C 0.0264  0.1395 0.0983  1.4191251
    ## 5    rs1385742     6  47595155    A    T 0.6491  0.0159 0.0324  0.4907410
    ## 6   rs11767557     7 143109139    T    C 0.2089  0.0179 0.0376  0.4760640
    ## 7   rs73223431     8  27219987    C    T 0.3661 -0.0096 0.0312 -0.3076923
    ## 8     rs867230     8  27468503    C    A 0.5922  0.0303 0.0315  0.9619048
    ## 9   rs12416487    10  11721057    A    T 0.6502  0.0397 0.0320  1.2406200
    ## 10   rs3740688    11  47380340    G    T 0.5462  0.1198 0.0304  3.9407895
    ## 11   rs1582763    11  60021948    G    A 0.3749  0.0199 0.0312  0.6378205
    ## 12   rs3851179    11  85868640    T    C 0.6301 -0.0346 0.0311 -1.1125400
    ## 13  rs11218343    11 121435587    T    C 0.0387  0.0024 0.0788  0.0304569
    ## 14  rs12590654    14  92938855    G    A 0.3413  0.0155 0.0322  0.4813665
    ## 15  rs12151021    19   1050874    A    G 0.6785 -0.0039 0.0336 -0.1160710
    ## 16 rs111358663    19  45196958    T    A 0.0152 -0.2185 0.1361 -1.6054372
    ## 17   rs4803765    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 18  rs12972156    19  45387459    C    G 0.1479  0.1208 0.0437  2.7643000
    ## 19 rs117310449    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 20  rs73033507    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 21 rs114533385    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 22 rs139995984    NA        NA <NA> <NA>     NA      NA     NA         NA
    ##            P      N                   TRAIT
    ## 1  5.980e-01 738168 Systolic_Blood_Pressure
    ## 2  2.346e-02 736051 Systolic_Blood_Pressure
    ## 3         NA     NA                    <NA>
    ## 4  1.560e-01 730691 Systolic_Blood_Pressure
    ## 5  6.237e-01 736050 Systolic_Blood_Pressure
    ## 6  6.339e-01 729908 Systolic_Blood_Pressure
    ## 7  7.599e-01 738169 Systolic_Blood_Pressure
    ## 8  3.362e-01 736049 Systolic_Blood_Pressure
    ## 9  2.149e-01 737163 Systolic_Blood_Pressure
    ## 10 8.085e-05 738170 Systolic_Blood_Pressure
    ## 11 5.241e-01 738169 Systolic_Blood_Pressure
    ## 12 2.658e-01 738170 Systolic_Blood_Pressure
    ## 13 9.757e-01 738168 Systolic_Blood_Pressure
    ## 14 6.307e-01 744813 Systolic_Blood_Pressure
    ## 15 9.074e-01 718614 Systolic_Blood_Pressure
    ## 16 1.083e-01 718509 Systolic_Blood_Pressure
    ## 17        NA     NA                    <NA>
    ## 18 5.766e-03 730528 Systolic_Blood_Pressure
    ## 19        NA     NA                    <NA>
    ## 20        NA     NA                    <NA>
    ## 21        NA     NA                    <NA>
    ## 22        NA     NA                    <NA>

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

    ##    target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1  rs34665982        NA    NA     NA    NA  NA    NA  NA        NA
    ## 2   rs4803765        NA    NA     NA    NA  NA    NA  NA        NA
    ## 3 rs117310449        NA    NA     NA    NA  NA    NA  NA        NA
    ## 4  rs73033507        NA    NA     NA    NA  NA    NA  NA        NA
    ## 5 rs114533385        NA    NA     NA    NA  NA    NA  NA        NA
    ## 6 rs139995984        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 2        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 3        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 4        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 5        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 6        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA
    ## 2            NA
    ## 3            NA
    ## 4            NA
    ## 5            NA
    ## 6            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Systolic Blood Pressure datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1  rs111358663                      A                     T
    ## 2   rs11218343                      C                     T
    ## 3  rs114812713                      C                     G
    ## 4   rs11767557                      C                     T
    ## 5   rs12151021                      G                     A
    ## 6   rs12416487                      T                     A
    ## 7   rs12590654                      A                     G
    ## 8   rs12972156                      G                     C
    ## 9    rs1385742                      T                     A
    ## 10   rs1582763                      A                     G
    ## 11   rs3740688                      T                     G
    ## 12   rs3851179                      C                     T
    ## 13   rs6733839                      T                     C
    ## 14    rs679515                      C                     T
    ## 15  rs73223431                      T                     C
    ## 16    rs867230                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    T       -0.5369      -0.2185
    ## 2                      C                    T       -0.2053       0.0024
    ## 3                      C                    G        0.2980       0.1395
    ## 4                      C                    T       -0.1028       0.0179
    ## 5                      G                    A       -0.1071      -0.0039
    ## 6                      T                    A        0.0850       0.0397
    ## 7                      A                    G       -0.0906       0.0155
    ## 8                      G                    C        0.9653       0.1208
    ## 9                      T                    A       -0.0876       0.0159
    ## 10                     A                    G       -0.1232       0.0199
    ## 11                     T                    G        0.0935       0.1198
    ## 12                     C                    T        0.1198      -0.0346
    ## 13                     T                    C        0.1693       0.0721
    ## 14                     C                    T       -0.1508      -0.0207
    ## 15                     T                    C        0.0936      -0.0096
    ## 16                     A                    C        0.1333       0.0303
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0111      0.0152  FALSE        TRUE     FALSE     uhD9yP
    ## 2        0.0401      0.0387  FALSE       FALSE     FALSE     uhD9yP
    ## 3        0.0301      0.0264  FALSE        TRUE     FALSE     uhD9yP
    ## 4        0.1968      0.2089  FALSE       FALSE     FALSE     uhD9yP
    ## 5        0.6753      0.6785  FALSE       FALSE     FALSE     uhD9yP
    ## 6        0.6519      0.6502  FALSE        TRUE     FALSE     uhD9yP
    ## 7        0.3353      0.3413  FALSE       FALSE     FALSE     uhD9yP
    ## 8        0.2027      0.1479  FALSE        TRUE     FALSE     uhD9yP
    ## 9        0.6344      0.6491  FALSE        TRUE     FALSE     uhD9yP
    ## 10       0.3729      0.3749  FALSE       FALSE     FALSE     uhD9yP
    ## 11       0.5524      0.5462  FALSE       FALSE     FALSE     uhD9yP
    ## 12       0.6410      0.6301  FALSE       FALSE     FALSE     uhD9yP
    ## 13       0.4067      0.3951  FALSE       FALSE     FALSE     uhD9yP
    ## 14       0.8126      0.8188  FALSE       FALSE     FALSE     uhD9yP
    ## 15       0.3669      0.3661  FALSE       FALSE     FALSE     uhD9yP
    ## 16       0.6029      0.5922  FALSE       FALSE     FALSE     uhD9yP
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           19    45196958     0.1361 -1.6054372    1.083e-01
    ## 2           11   121435587     0.0788  0.0304569    9.757e-01
    ## 3            6    41034000     0.0983  1.4191251    1.560e-01
    ## 4            7   143109139     0.0376  0.4760640    6.339e-01
    ## 5           19     1050874     0.0336 -0.1160710    9.074e-01
    ## 6           10    11721057     0.0320  1.2406200    2.149e-01
    ## 7           14    92938855     0.0322  0.4813665    6.307e-01
    ## 8           19    45387459     0.0437  2.7643000    5.766e-03
    ## 9            6    47595155     0.0324  0.4907410    6.237e-01
    ## 10          11    60021948     0.0312  0.6378205    5.241e-01
    ## 11          11    47380340     0.0304  3.9407895    8.085e-05
    ## 12          11    85868640     0.0311 -1.1125400    2.658e-01
    ## 13           2   127892810     0.0318  2.2672956    2.346e-02
    ## 14           1   207750568     0.0392 -0.5280610    5.980e-01
    ## 15           8    27219987     0.0312 -0.3076923    7.599e-01
    ## 16           8    27468503     0.0315  0.9619048    3.362e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              718509 Evangelou2018sbp            TRUE            reported
    ## 2              738168 Evangelou2018sbp            TRUE            reported
    ## 3              730691 Evangelou2018sbp            TRUE            reported
    ## 4              729908 Evangelou2018sbp            TRUE            reported
    ## 5              718614 Evangelou2018sbp            TRUE            reported
    ## 6              737163 Evangelou2018sbp            TRUE            reported
    ## 7              744813 Evangelou2018sbp            TRUE            reported
    ## 8              730528 Evangelou2018sbp            TRUE            reported
    ## 9              736050 Evangelou2018sbp            TRUE            reported
    ## 10             738169 Evangelou2018sbp            TRUE            reported
    ## 11             738170 Evangelou2018sbp            TRUE            reported
    ## 12             738170 Evangelou2018sbp            TRUE            reported
    ## 13             736051 Evangelou2018sbp            TRUE            reported
    ## 14             738168 Evangelou2018sbp            TRUE            reported
    ## 15             738169 Evangelou2018sbp            TRUE            reported
    ## 16             736049 Evangelou2018sbp            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            19     45196958      0.0795  -6.753459     1.436e-11
    ## 2            11    121435587      0.0369  -5.563690     2.633e-08
    ## 3             6     41034000      0.0431   6.914153     4.467e-12
    ## 4             7    143109139      0.0182  -5.648350     1.561e-08
    ## 5            19      1050874      0.0169  -6.337280     2.562e-10
    ## 6            10     11721057      0.0154   5.519480     3.417e-08
    ## 7            14     92938855      0.0157  -5.770701     8.729e-09
    ## 8            19     45387459      0.0189  51.074100    1.000e-200
    ## 9             6     47595155      0.0157  -5.579620     2.232e-08
    ## 10           11     60021948      0.0149  -8.268456     1.186e-16
    ## 11           11     47380340      0.0144   6.493056     9.702e-11
    ## 12           11     85868640      0.0148   8.094590     5.809e-16
    ## 13            2    127892810      0.0154  10.993506     4.022e-28
    ## 14            1    207750568      0.0183  -8.240440     1.555e-16
    ## 15            8     27219987      0.0153   6.117647     8.342e-10
    ## 16            8     27468503      0.0158   8.436709     3.492e-17
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                63926 Kunkle2019load             TRUE
    ## 2                63926 Kunkle2019load             TRUE
    ## 3                63926 Kunkle2019load             TRUE
    ## 4                63926 Kunkle2019load             TRUE
    ## 5                63926 Kunkle2019load             TRUE
    ## 6                63926 Kunkle2019load             TRUE
    ## 7                63926 Kunkle2019load             TRUE
    ## 8                63926 Kunkle2019load             TRUE
    ## 9                63926 Kunkle2019load             TRUE
    ## 10               63926 Kunkle2019load             TRUE
    ## 11               63926 Kunkle2019load             TRUE
    ## 12               63926 Kunkle2019load             TRUE
    ## 13               63926 Kunkle2019load             TRUE
    ## 14               63926 Kunkle2019load             TRUE
    ## 15               63926 Kunkle2019load             TRUE
    ## 16               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      FoFIiN      2    TRUE          FALSE 5e-08
    ## 2              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 3              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 4              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 5              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 6              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 7              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 8              reported      FoFIiN      2    TRUE          FALSE 5e-08
    ## 9              reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 10             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 11             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 12             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 13             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 14             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 15             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ## 16             reported      FoFIiN      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA          <NA>            NA
    ## 2     1.344814e-03             1          TRUE
    ## 3     9.472290e-03             1          TRUE
    ## 4     1.290877e-03             1          TRUE
    ## 5     1.975964e-04             1          TRUE
    ## 6     7.449192e-04             1          TRUE
    ## 7     9.899784e-04             1          TRUE
    ## 8               NA          <NA>            NA
    ## 9     9.772501e-04             1          TRUE
    ## 10    1.907222e-03             1          TRUE
    ## 11    1.236975e-02        <0.014         FALSE
    ## 12    3.481267e-03         0.924          TRUE
    ## 13    2.955881e-03             1          TRUE
    ## 14    1.370153e-05             1          TRUE
    ## 15    6.733521e-04             1          TRUE
    ## 16    1.023003e-04             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11     0.108300
    ## 2  rs12972156          19    45387459    1.000e-200     0.005766

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
    ## 1            FALSE   0.01119347 51.67743  0.05 4.274196 0.5428117
    ## 2             TRUE   0.01054566 52.39829  0.05 1.299041 0.2070169

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
on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for LOAD on Systolic Blood Pressure

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 2      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 3      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 4      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   14  0.15962359 0.07765327
    ## 2                           Weighted median   14  0.09185563 0.11409189
    ## 3                             Weighted mode   14 -0.12445202 0.20432776
    ## 4                                  MR Egger   14  0.35132603 0.39687010
    ##         pval
    ## 1 0.03982167
    ## 2 0.42076072
    ## 3 0.55296692
    ## 4 0.39341923

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Systolic Blood Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 2      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 23.16854   12 0.02632872
    ## 2 Inverse variance weighted 23.65497   13 0.03445613

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load     -0.02385008
    ##           se      pval
    ## 1 0.04751554 0.6247905

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
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 27.56832 0.035

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 2      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 3      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 4      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   13  0.09177132 0.07996751
    ## 2                           Weighted median   13  0.06384956 0.11456713
    ## 3                             Weighted mode   13 -0.14322943 0.20785342
    ## 4                                  MR Egger   13  0.59691960 0.29241394
    ##         pval
    ## 1 0.25113064
    ## 2 0.57731473
    ## 3 0.50387383
    ## 4 0.06595052

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ## 2      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger  7.808091   11 0.7303847
    ## 2 Inverse variance weighted 11.033615   12 0.5260401

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      FoFIiN     uhD9yP Evangelou2018sbp Kunkle2019load     -0.06412904
    ##          se       pval
    ## 1 0.0357071 0.09998506

<br>
