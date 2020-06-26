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

### Exposure: AAOS

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with AAOS

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1    rs2649062     1   5799177   A   G 0.3192  0.0652 0.0131  4.977100
    ## 2    rs4662080     1  14363419   C   T 0.6649  0.1421 0.0296  4.800676
    ## 3   rs10919252     1 169802956   C   G 0.3275  0.0975 0.0198  4.924240
    ## 4    rs6701713     1 207786289   A   G 0.7983 -0.0709 0.0146 -4.856160
    ## 5  rs144505123     1 221802052   C   T 0.0113  0.7709 0.1609  4.791175
    ## 6    rs6718282     2  18039651   G   A 0.0440 -0.1421 0.0308 -4.613636
    ## 7  rs114131510     2  78420700   A   G 0.0162  0.6419 0.1406  4.565430
    ## 8   rs12615104     2 109820829   T   C 0.2566 -0.1057 0.0221 -4.782810
    ## 9  rs111906619     2 127789085   C   T 0.0709  0.1268 0.0256  4.953125
    ## 10   rs6431219     2 127862133   C   T 0.4163  0.0774 0.0124  6.241935
    ## 11    rs359982     2 219826934   A   G 0.0781  0.2660 0.0513  5.185190
    ## 12 rs116341973     3  63462893   A   G 0.0227  0.2057 0.0399  5.155390
    ## 13 rs145799027     3 114438213   T   C 0.0147  0.7485 0.1601  4.675200
    ## 14  rs71602496     4    661002   A   G 0.1453  0.0780 0.0171  4.561400
    ## 15 rs115803892     4 134185712   G   A 0.0129  0.9151 0.1973  4.638115
    ## 16   rs1689013     4 181048651   T   C 0.2493  0.0637 0.0139  4.582730
    ## 17 rs144202318     5 165711579   G   A 0.0135  0.7219 0.1572  4.592239
    ## 18  rs77345379     6  69273670   C   T 0.0185  0.2291 0.0501  4.572854
    ## 19  rs12153819     6  83773049   C   T 0.1018 -0.1092 0.0235 -4.646809
    ## 20  rs17170228     7  33076314   G   A 0.0623  0.1215 0.0248  4.899194
    ## 21 rs149907089     7 151626353   G   C 0.0162  0.7109 0.1535  4.631270
    ## 22   rs2725066     8   4438058   T   A 0.5128 -0.0936 0.0191 -4.900524
    ## 23 rs117201713     8 121340499   G   C 0.0408  0.2125 0.0456  4.660088
    ## 24  rs36033332     9  26834807   C   G 0.0386  0.4601 0.0865  5.319080
    ## 25   rs7930318    11  60033371   C   T 0.5996  0.0750 0.0125  6.000000
    ## 26    rs567075    11  85830157   T   C 0.6903  0.0900 0.0132  6.818180
    ## 27  rs11218343    11 121435587   T   C 0.0395 -0.1653 0.0329 -5.024320
    ## 28   rs7958488    12   6546166   A   T 0.0195  0.5085 0.1111  4.576960
    ## 29   rs1118069    12  84739181   A   T 0.7195  0.1012 0.0216  4.685190
    ## 30 rs140016885    12  99679113   A   G 0.0144  0.6851 0.1416  4.838280
    ## 31   rs9582517    13 102331030   T   C 0.5073 -0.1185 0.0257 -4.610890
    ## 32 rs146189059    14  47173254   C   G 0.0111  0.9444 0.1835  5.146590
    ## 33  rs17125944    14  53400629   T   C 0.0924  0.0960 0.0203  4.729060
    ## 34 rs150193285    15  75224360   C   T 0.0109  0.7622 0.1650  4.619394
    ## 35   rs9947273    18  35409158   G   A 0.1431 -0.0853 0.0178 -4.792135
    ## 36  rs62117204    19  45242967   C   T 0.0601 -0.1867 0.0278 -6.715827
    ## 37  rs76205446    19  45355267   T   A 0.0143  0.7096 0.1234  5.750405
    ## 38   rs2075650    19  45395619   A   G 0.2197  0.5502 0.0223 24.672600
    ## 39 rs141441332    19  45438575   C   A 0.0110  0.5383 0.0632  8.517405
    ## 40    rs204469    19  45490285   A   G 0.9632  0.1588 0.0341  4.656890
    ## 41   rs2827191    21  23361798   C   T 0.2857  0.1277 0.0279  4.577061
    ## 42   rs1043441    22  39130964   C   T 0.2893 -0.0639 0.0135 -4.733333
    ##             P     N TRAIT
    ## 1   6.120e-07 40255  AAOS
    ## 2   1.586e-06 40255  AAOS
    ## 3   8.182e-07 40255  AAOS
    ## 4   1.184e-06 40255  AAOS
    ## 5   1.661e-06 40255  AAOS
    ## 6   3.840e-06 40255  AAOS
    ## 7   4.949e-06 40255  AAOS
    ## 8   1.829e-06 40255  AAOS
    ## 9   7.088e-07 40255  AAOS
    ## 10  3.897e-10 40255  AAOS
    ## 11  2.159e-07 40255  AAOS
    ## 12  2.478e-07 40255  AAOS
    ## 13  2.933e-06 40255  AAOS
    ## 14  4.978e-06 40255  AAOS
    ## 15  3.498e-06 40255  AAOS
    ## 16  4.657e-06 40255  AAOS
    ## 17  4.356e-06 40255  AAOS
    ## 18  4.830e-06 40255  AAOS
    ## 19  3.291e-06 40255  AAOS
    ## 20  1.004e-06 40255  AAOS
    ## 21  3.637e-06 40255  AAOS
    ## 22  9.948e-07 40255  AAOS
    ## 23  3.120e-06 40255  AAOS
    ## 24  1.030e-07 40255  AAOS
    ## 25  2.245e-09 40255  AAOS
    ## 26  9.084e-12 40255  AAOS
    ## 27  5.148e-07 40255  AAOS
    ## 28  4.719e-06 40255  AAOS
    ## 29  2.693e-06 40255  AAOS
    ## 30  1.310e-06 40255  AAOS
    ## 31  3.908e-06 40255  AAOS
    ## 32  2.634e-07 40255  AAOS
    ## 33  2.321e-06 40255  AAOS
    ## 34  3.834e-06 40255  AAOS
    ## 35  1.593e-06 40255  AAOS
    ## 36  1.864e-11 40255  AAOS
    ## 37  9.010e-09 40255  AAOS
    ## 38 5.980e-134 40255  AAOS
    ## 39  1.713e-17 40255  AAOS
    ## 40  3.269e-06 40255  AAOS
    ## 41  4.895e-06 40255  AAOS
    ## 42  2.110e-06 40255  AAOS

<br>

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Diastolic Blood
Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1    rs2649062     1   5799177    A    G 0.3162  0.0250 0.0187  1.33690000
    ## 2    rs4662080    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 3   rs10919252     1 169802956    C    G 0.3248  0.0100 0.0184  0.54347800
    ## 4    rs6701713     1 207786289    A    G 0.8129  0.0275 0.0221  1.24434000
    ## 5  rs144505123    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 6    rs6718282     2  18039651    G    A 0.0546 -0.0004 0.0398 -0.01005025
    ## 7  rs114131510    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 8   rs12615104     2 109820829    T    C 0.2665  0.0277 0.0197  1.40609000
    ## 9  rs111906619     2 127789085    C    T 0.0765 -0.0270 0.0332 -0.81325301
    ## 10   rs6431219     2 127862133    C    T 0.4089  0.0187 0.0176  1.06250000
    ## 11    rs359982     2 219826934    A    G 0.0713 -0.0315 0.0352 -0.89488600
    ## 12 rs116341973     3  63462893    A    G 0.0224  0.0640 0.0597  1.07203000
    ## 13 rs145799027    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 14  rs71602496     4    661002    A    G 0.1540  0.0167 0.0244  0.68442600
    ## 15 rs115803892     4 134185712    G    A 0.0133 -0.0168 0.0828 -0.20289855
    ## 16   rs1689013     4 181048651    T    C 0.2432  0.0321 0.0202  1.58911000
    ## 17 rs144202318    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 18  rs77345379     6  69273670    C    T 0.0234  0.0407 0.0637  0.63893250
    ## 19  rs12153819     6  83773049    C    T 0.1251 -0.0771 0.0264 -2.92045455
    ## 20  rs17170228     7  33076314    G    A 0.0667  0.0064 0.0350  0.18285714
    ## 21 rs149907089    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 22   rs2725066     8   4438058    T    A 0.5250 -0.0152 0.0175 -0.86857143
    ## 23 rs117201713     8 121340499    G    C 0.0387 -0.0037 0.0454 -0.08149780
    ## 24  rs36033332     9  26834807    C    G 0.0519  0.0196 0.0418  0.46890000
    ## 25   rs7930318    11  60033371    C    T 0.5999  0.0146 0.0177  0.82485876
    ## 26    rs567075    11  85830157    T    C 0.6778 -0.0151 0.0185 -0.81621600
    ## 27  rs11218343    11 121435587    T    C 0.0384 -0.0255 0.0454 -0.56167400
    ## 28   rs7958488    12   6546166    A    T 0.0244 -0.1444 0.0589 -2.45161000
    ## 29   rs1118069    12  84739181    A    T 0.7104  0.0133 0.0192  0.69270800
    ## 30 rs140016885    12  99679113    A    G 0.0156  0.0041 0.0806  0.05086850
    ## 31   rs9582517    13 102331030    T    C 0.4936 -0.0114 0.0174 -0.65517200
    ## 32 rs146189059    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 33  rs17125944    14  53400629    T    C 0.0922 -0.1428 0.0303 -4.71287000
    ## 34 rs150193285    15  75224360    C    T 0.0127  0.1668 0.0840  1.98571429
    ## 35   rs9947273    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 36  rs62117204    19  45242967    C    T 0.0714 -0.0822 0.0350 -2.34857143
    ## 37  rs76205446    19  45355267    T    A 0.0106  0.0741 0.0934  0.79336188
    ## 38   rs2075650    19  45395619    A    G 0.1463 -0.0284 0.0250 -1.13600000
    ## 39 rs141441332    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 40    rs204469    19  45490285    A    G 0.9567 -0.1118 0.0450 -2.48444000
    ## 41   rs2827191    21  23361798    C    T 0.2878  0.0112 0.0194  0.57731959
    ## 42   rs1043441    22  39130964    C    T 0.2954 -0.0462 0.0190 -2.43157895
    ##            P      N                    TRAIT
    ## 1  1.809e-01 757600 Diastolic_Blood_Pressure
    ## 2         NA     NA                     <NA>
    ## 3  5.879e-01 757600 Diastolic_Blood_Pressure
    ## 4  2.132e-01 756596 Diastolic_Blood_Pressure
    ## 5         NA     NA                     <NA>
    ## 6  9.911e-01 750464 Diastolic_Blood_Pressure
    ## 7         NA     NA                     <NA>
    ## 8  1.601e-01 748882 Diastolic_Blood_Pressure
    ## 9  4.156e-01 757600 Diastolic_Blood_Pressure
    ## 10 2.860e-01 756487 Diastolic_Blood_Pressure
    ## 11 3.716e-01 752864 Diastolic_Blood_Pressure
    ## 12 2.839e-01 756485 Diastolic_Blood_Pressure
    ## 13        NA     NA                     <NA>
    ## 14 4.944e-01 754983 Diastolic_Blood_Pressure
    ## 15 8.392e-01 741372 Diastolic_Blood_Pressure
    ## 16 1.120e-01 754582 Diastolic_Blood_Pressure
    ## 17        NA     NA                     <NA>
    ## 18 5.223e-01 757598 Diastolic_Blood_Pressure
    ## 19 3.499e-03 757601 Diastolic_Blood_Pressure
    ## 20 8.544e-01 757600 Diastolic_Blood_Pressure
    ## 21        NA     NA                     <NA>
    ## 22 3.857e-01 746264 Diastolic_Blood_Pressure
    ## 23 9.347e-01 757600 Diastolic_Blood_Pressure
    ## 24 6.391e-01 755848 Diastolic_Blood_Pressure
    ## 25 4.090e-01 757600 Diastolic_Blood_Pressure
    ## 26 4.137e-01 757600 Diastolic_Blood_Pressure
    ## 27 5.747e-01 757599 Diastolic_Blood_Pressure
    ## 28 1.413e-02 757599 Diastolic_Blood_Pressure
    ## 29 4.877e-01 753723 Diastolic_Blood_Pressure
    ## 30 9.593e-01 749905 Diastolic_Blood_Pressure
    ## 31 5.134e-01 756596 Diastolic_Blood_Pressure
    ## 32        NA     NA                     <NA>
    ## 33 2.434e-06 748334 Diastolic_Blood_Pressure
    ## 34 4.701e-02 747438 Diastolic_Blood_Pressure
    ## 35        NA     NA                     <NA>
    ## 36 1.905e-02 733885 Diastolic_Blood_Pressure
    ## 37 4.276e-01 705284 Diastolic_Blood_Pressure
    ## 38 2.574e-01 739095 Diastolic_Blood_Pressure
    ## 39        NA     NA                     <NA>
    ## 40 1.301e-02 719485 Diastolic_Blood_Pressure
    ## 41 5.638e-01 755481 Diastolic_Blood_Pressure
    ## 42 1.504e-02 757600 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

    ##    target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1   rs4662080  rs4662076     1      1 CT/TG  NA     1 14357851         T
    ## 2   rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ## 3 rs144505123       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4 rs114131510       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 5 rs145799027       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 6 rs144202318       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 7 rs149907089       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 8 rs146189059       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 9 rs141441332       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy     AF    BETA     SE         Z      P      N
    ## 1         G 0.7448 -0.0060 0.0199 -0.301508 0.7622 757600
    ## 2         T 0.1580 -0.0263 0.0241 -1.091286 0.2751 757600
    ## 3      <NA>     NA      NA     NA        NA     NA     NA
    ## 4      <NA>     NA      NA     NA        NA     NA     NA
    ## 5      <NA>     NA      NA     NA        NA     NA     NA
    ## 6      <NA>     NA      NA     NA        NA     NA     NA
    ## 7      <NA>     NA      NA     NA        NA     NA     NA
    ## 8      <NA>     NA      NA     NA        NA     NA     NA
    ## 9      <NA>     NA      NA     NA        NA     NA     NA
    ##                      TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1 Diastolic_Blood_Pressure    C      TRUE    T         G    T    C
    ## 2 Diastolic_Blood_Pressure    A      TRUE    G         C    A    G
    ## 3                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 4                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 5                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 6                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 7                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 8                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ## 9                     <NA> <NA>        NA <NA>      <NA> <NA> <NA>
    ##   proxy.outcome
    ## 1          TRUE
    ## 2          TRUE
    ## 3            NA
    ## 4            NA
    ## 5            NA
    ## 6            NA
    ## 7            NA
    ## 8            NA
    ## 9            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Diastolic Blood Pressure datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1    rs1043441                      T                     C
    ## 2   rs10919252                      G                     C
    ## 3    rs1118069                      T                     A
    ## 4  rs111906619                      T                     C
    ## 5   rs11218343                      C                     T
    ## 6  rs115803892                      A                     G
    ## 7  rs116341973                      G                     A
    ## 8  rs117201713                      C                     G
    ## 9   rs12153819                      T                     C
    ## 10  rs12615104                      C                     T
    ## 11 rs140016885                      G                     A
    ## 12 rs150193285                      T                     C
    ## 13   rs1689013                      C                     T
    ## 14  rs17125944                      C                     T
    ## 15  rs17170228                      A                     G
    ## 16    rs204469                      G                     A
    ## 17   rs2075650                      G                     A
    ## 18   rs2649062                      G                     A
    ## 19   rs2725066                      A                     T
    ## 20   rs2827191                      T                     C
    ## 21    rs359982                      G                     A
    ## 22  rs36033332                      G                     C
    ## 23   rs4662080                      T                     C
    ## 24    rs567075                      C                     T
    ## 25  rs62117204                      T                     C
    ## 26   rs6431219                      T                     C
    ## 27   rs6701713                      G                     A
    ## 28   rs6718282                      A                     G
    ## 29  rs71602496                      G                     A
    ## 30  rs76205446                      A                     T
    ## 31  rs77345379                      T                     C
    ## 32   rs7930318                      T                     C
    ## 33   rs7958488                      T                     A
    ## 34   rs9582517                      C                     T
    ## 35   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639      -0.0462
    ## 2                      G                    C        0.0975       0.0100
    ## 3                      T                    A        0.1012       0.0133
    ## 4                      T                    C        0.1268      -0.0270
    ## 5                      C                    T       -0.1653      -0.0255
    ## 6                      A                    G        0.9151      -0.0168
    ## 7                      G                    A        0.2057       0.0640
    ## 8                      C                    G        0.2125      -0.0037
    ## 9                      T                    C       -0.1092      -0.0771
    ## 10                     C                    T       -0.1057       0.0277
    ## 11                     G                    A        0.6851       0.0041
    ## 12                     T                    C        0.7622       0.1668
    ## 13                     C                    T        0.0637       0.0321
    ## 14                     C                    T        0.0960      -0.1428
    ## 15                     A                    G        0.1215       0.0064
    ## 16                     G                    A        0.1588      -0.1118
    ## 17                     G                    A        0.5502      -0.0284
    ## 18                     G                    A        0.0652       0.0250
    ## 19                     A                    T       -0.0936      -0.0152
    ## 20                     T                    C        0.1277       0.0112
    ## 21                     G                    A        0.2660      -0.0315
    ## 22                     G                    C        0.4601       0.0196
    ## 23                     T                    C        0.1421      -0.0060
    ## 24                     C                    T        0.0900      -0.0151
    ## 25                     T                    C       -0.1867      -0.0822
    ## 26                     T                    C        0.0774       0.0187
    ## 27                     G                    A       -0.0709       0.0275
    ## 28                     A                    G       -0.1421      -0.0004
    ## 29                     G                    A        0.0780       0.0167
    ## 30                     A                    T        0.7096       0.0741
    ## 31                     T                    C        0.2291       0.0407
    ## 32                     T                    C        0.0750       0.0146
    ## 33                     T                    A        0.5085      -0.1444
    ## 34                     C                    T       -0.1185      -0.0114
    ## 35                     A                    G       -0.0853      -0.0263
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893      0.2954  FALSE       FALSE     FALSE     hmlhVf
    ## 2        0.3275      0.3248  FALSE        TRUE     FALSE     hmlhVf
    ## 3        0.7195      0.7104  FALSE        TRUE     FALSE     hmlhVf
    ## 4        0.0709      0.0765  FALSE       FALSE     FALSE     hmlhVf
    ## 5        0.0395      0.0384  FALSE       FALSE     FALSE     hmlhVf
    ## 6        0.0129      0.0133  FALSE       FALSE     FALSE     hmlhVf
    ## 7        0.0227      0.0224  FALSE       FALSE     FALSE     hmlhVf
    ## 8        0.0408      0.0387  FALSE        TRUE     FALSE     hmlhVf
    ## 9        0.1018      0.1251  FALSE       FALSE     FALSE     hmlhVf
    ## 10       0.2566      0.2665  FALSE       FALSE     FALSE     hmlhVf
    ## 11       0.0144      0.0156  FALSE       FALSE     FALSE     hmlhVf
    ## 12       0.0109      0.0127  FALSE       FALSE     FALSE     hmlhVf
    ## 13       0.2493      0.2432  FALSE       FALSE     FALSE     hmlhVf
    ## 14       0.0924      0.0922  FALSE       FALSE     FALSE     hmlhVf
    ## 15       0.0623      0.0667  FALSE       FALSE     FALSE     hmlhVf
    ## 16       0.9632      0.9567  FALSE       FALSE     FALSE     hmlhVf
    ## 17       0.2197      0.1463  FALSE       FALSE     FALSE     hmlhVf
    ## 18       0.3192      0.3162  FALSE       FALSE     FALSE     hmlhVf
    ## 19       0.5128      0.5250  FALSE        TRUE      TRUE     hmlhVf
    ## 20       0.2857      0.2878  FALSE       FALSE     FALSE     hmlhVf
    ## 21       0.0781      0.0713  FALSE       FALSE     FALSE     hmlhVf
    ## 22       0.0386      0.0519  FALSE        TRUE     FALSE     hmlhVf
    ## 23       0.6649      0.7448  FALSE       FALSE     FALSE     hmlhVf
    ## 24       0.6903      0.6778  FALSE       FALSE     FALSE     hmlhVf
    ## 25       0.0601      0.0714  FALSE       FALSE     FALSE     hmlhVf
    ## 26       0.4163      0.4089  FALSE       FALSE     FALSE     hmlhVf
    ## 27       0.7983      0.8129  FALSE       FALSE     FALSE     hmlhVf
    ## 28       0.0440      0.0546  FALSE       FALSE     FALSE     hmlhVf
    ## 29       0.1453      0.1540  FALSE       FALSE     FALSE     hmlhVf
    ## 30       0.0143      0.0106  FALSE        TRUE     FALSE     hmlhVf
    ## 31       0.0185      0.0234  FALSE       FALSE     FALSE     hmlhVf
    ## 32       0.5996      0.5999  FALSE       FALSE     FALSE     hmlhVf
    ## 33       0.0195      0.0244  FALSE        TRUE     FALSE     hmlhVf
    ## 34       0.5073      0.4936  FALSE       FALSE     FALSE     hmlhVf
    ## 35       0.1431      0.1580  FALSE       FALSE     FALSE     hmlhVf
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           22    39130964     0.0190 -2.43157895    1.504e-02
    ## 2            1   169802956     0.0184  0.54347800    5.879e-01
    ## 3           12    84739181     0.0192  0.69270800    4.877e-01
    ## 4            2   127789085     0.0332 -0.81325301    4.156e-01
    ## 5           11   121435587     0.0454 -0.56167400    5.747e-01
    ## 6            4   134185712     0.0828 -0.20289855    8.392e-01
    ## 7            3    63462893     0.0597  1.07203000    2.839e-01
    ## 8            8   121340499     0.0454 -0.08149780    9.347e-01
    ## 9            6    83773049     0.0264 -2.92045455    3.499e-03
    ## 10           2   109820829     0.0197  1.40609000    1.601e-01
    ## 11          12    99679113     0.0806  0.05086850    9.593e-01
    ## 12          15    75224360     0.0840  1.98571429    4.701e-02
    ## 13           4   181048651     0.0202  1.58911000    1.120e-01
    ## 14          14    53400629     0.0303 -4.71287000    2.434e-06
    ## 15           7    33076314     0.0350  0.18285714    8.544e-01
    ## 16          19    45490285     0.0450 -2.48444000    1.301e-02
    ## 17          19    45395619     0.0250 -1.13600000    2.574e-01
    ## 18           1     5799177     0.0187  1.33690000    1.809e-01
    ## 19           8     4438058     0.0175 -0.86857143    3.857e-01
    ## 20          21    23361798     0.0194  0.57731959    5.638e-01
    ## 21           2   219826934     0.0352 -0.89488600    3.716e-01
    ## 22           9    26834807     0.0418  0.46890000    6.391e-01
    ## 23           1    14357851     0.0199 -0.30150800    7.622e-01
    ## 24          11    85830157     0.0185 -0.81621600    4.137e-01
    ## 25          19    45242967     0.0350 -2.34857143    1.905e-02
    ## 26           2   127862133     0.0176  1.06250000    2.860e-01
    ## 27           1   207786289     0.0221  1.24434000    2.132e-01
    ## 28           2    18039651     0.0398 -0.01005025    9.911e-01
    ## 29           4      661002     0.0244  0.68442600    4.944e-01
    ## 30          19    45355267     0.0934  0.79336188    4.276e-01
    ## 31           6    69273670     0.0637  0.63893250    5.223e-01
    ## 32          11    60033371     0.0177  0.82485876    4.090e-01
    ## 33          12     6546166     0.0589 -2.45161000    1.413e-02
    ## 34          13   102331030     0.0174 -0.65517200    5.134e-01
    ## 35          18    35373923     0.0241 -1.09128631    2.751e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              757600 Evangelou2018dbp            TRUE            reported
    ## 2              757600 Evangelou2018dbp            TRUE            reported
    ## 3              753723 Evangelou2018dbp            TRUE            reported
    ## 4              757600 Evangelou2018dbp            TRUE            reported
    ## 5              757599 Evangelou2018dbp            TRUE            reported
    ## 6              741372 Evangelou2018dbp            TRUE            reported
    ## 7              756485 Evangelou2018dbp            TRUE            reported
    ## 8              757600 Evangelou2018dbp            TRUE            reported
    ## 9              757601 Evangelou2018dbp            TRUE            reported
    ## 10             748882 Evangelou2018dbp            TRUE            reported
    ## 11             749905 Evangelou2018dbp            TRUE            reported
    ## 12             747438 Evangelou2018dbp            TRUE            reported
    ## 13             754582 Evangelou2018dbp            TRUE            reported
    ## 14             748334 Evangelou2018dbp            TRUE            reported
    ## 15             757600 Evangelou2018dbp            TRUE            reported
    ## 16             719485 Evangelou2018dbp            TRUE            reported
    ## 17             739095 Evangelou2018dbp            TRUE            reported
    ## 18             757600 Evangelou2018dbp            TRUE            reported
    ## 19             746264 Evangelou2018dbp            TRUE            reported
    ## 20             755481 Evangelou2018dbp            TRUE            reported
    ## 21             752864 Evangelou2018dbp            TRUE            reported
    ## 22             755848 Evangelou2018dbp            TRUE            reported
    ## 23             757600 Evangelou2018dbp            TRUE            reported
    ## 24             757600 Evangelou2018dbp            TRUE            reported
    ## 25             733885 Evangelou2018dbp            TRUE            reported
    ## 26             756487 Evangelou2018dbp            TRUE            reported
    ## 27             756596 Evangelou2018dbp            TRUE            reported
    ## 28             750464 Evangelou2018dbp            TRUE            reported
    ## 29             754983 Evangelou2018dbp            TRUE            reported
    ## 30             705284 Evangelou2018dbp            TRUE            reported
    ## 31             757598 Evangelou2018dbp            TRUE            reported
    ## 32             757600 Evangelou2018dbp            TRUE            reported
    ## 33             757599 Evangelou2018dbp            TRUE            reported
    ## 34             756596 Evangelou2018dbp            TRUE            reported
    ## 35             757600 Evangelou2018dbp            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13            NA               <NA>              <NA>              <NA>
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23          TRUE          rs4662080         rs4662076                 T
    ## 24            NA               <NA>              <NA>              <NA>
    ## 25            NA               <NA>              <NA>              <NA>
    ## 26            NA               <NA>              <NA>              <NA>
    ## 27            NA               <NA>              <NA>              <NA>
    ## 28            NA               <NA>              <NA>              <NA>
    ## 29            NA               <NA>              <NA>              <NA>
    ## 30            NA               <NA>              <NA>              <NA>
    ## 31            NA               <NA>              <NA>              <NA>
    ## 32            NA               <NA>              <NA>              <NA>
    ## 33            NA               <NA>              <NA>              <NA>
    ## 34            NA               <NA>              <NA>              <NA>
    ## 35          TRUE          rs9947273        rs28702850                 A
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>           22
    ## 2               <NA>             <NA>             <NA>            1
    ## 3               <NA>             <NA>             <NA>           12
    ## 4               <NA>             <NA>             <NA>            2
    ## 5               <NA>             <NA>             <NA>           11
    ## 6               <NA>             <NA>             <NA>            4
    ## 7               <NA>             <NA>             <NA>            3
    ## 8               <NA>             <NA>             <NA>            8
    ## 9               <NA>             <NA>             <NA>            6
    ## 10              <NA>             <NA>             <NA>            2
    ## 11              <NA>             <NA>             <NA>           12
    ## 12              <NA>             <NA>             <NA>           15
    ## 13              <NA>             <NA>             <NA>            4
    ## 14              <NA>             <NA>             <NA>           14
    ## 15              <NA>             <NA>             <NA>            7
    ## 16              <NA>             <NA>             <NA>           19
    ## 17              <NA>             <NA>             <NA>           19
    ## 18              <NA>             <NA>             <NA>            1
    ## 19              <NA>             <NA>             <NA>            8
    ## 20              <NA>             <NA>             <NA>           21
    ## 21              <NA>             <NA>             <NA>            2
    ## 22              <NA>             <NA>             <NA>            9
    ## 23                 C                G                T            1
    ## 24              <NA>             <NA>             <NA>           11
    ## 25              <NA>             <NA>             <NA>           19
    ## 26              <NA>             <NA>             <NA>            2
    ## 27              <NA>             <NA>             <NA>            1
    ## 28              <NA>             <NA>             <NA>            2
    ## 29              <NA>             <NA>             <NA>            4
    ## 30              <NA>             <NA>             <NA>           19
    ## 31              <NA>             <NA>             <NA>            6
    ## 32              <NA>             <NA>             <NA>           11
    ## 33              <NA>             <NA>             <NA>           12
    ## 34              <NA>             <NA>             <NA>           13
    ## 35                 G                T                C           18
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      39130964      0.0135  -4.733333     2.110e-06               40255
    ## 2     169802956      0.0198   4.924240     8.182e-07               40255
    ## 3      84739181      0.0216   4.685190     2.693e-06               40255
    ## 4     127789085      0.0256   4.953125     7.088e-07               40255
    ## 5     121435587      0.0329  -5.024320     5.148e-07               40255
    ## 6     134185712      0.1973   4.638115     3.498e-06               40255
    ## 7      63462893      0.0399   5.155390     2.478e-07               40255
    ## 8     121340499      0.0456   4.660088     3.120e-06               40255
    ## 9      83773049      0.0235  -4.646809     3.291e-06               40255
    ## 10    109820829      0.0221  -4.782810     1.829e-06               40255
    ## 11     99679113      0.1416   4.838280     1.310e-06               40255
    ## 12     75224360      0.1650   4.619394     3.834e-06               40255
    ## 13    181048651      0.0139   4.582730     4.657e-06               40255
    ## 14     53400629      0.0203   4.729060     2.321e-06               40255
    ## 15     33076314      0.0248   4.899194     1.004e-06               40255
    ## 16     45490285      0.0341   4.656890     3.269e-06               40255
    ## 17     45395619      0.0223  24.672600    5.980e-134               40255
    ## 18      5799177      0.0131   4.977100     6.120e-07               40255
    ## 19      4438058      0.0191  -4.900524     9.948e-07               40255
    ## 20     23361798      0.0279   4.577061     4.895e-06               40255
    ## 21    219826934      0.0513   5.185190     2.159e-07               40255
    ## 22     26834807      0.0865   5.319080     1.030e-07               40255
    ## 23     14363419      0.0296   4.800676     1.586e-06               40255
    ## 24     85830157      0.0132   6.818180     9.084e-12               40255
    ## 25     45242967      0.0278  -6.715827     1.864e-11               40255
    ## 26    127862133      0.0124   6.241935     3.897e-10               40255
    ## 27    207786289      0.0146  -4.856160     1.184e-06               40255
    ## 28     18039651      0.0308  -4.613636     3.840e-06               40255
    ## 29       661002      0.0171   4.561400     4.978e-06               40255
    ## 30     45355267      0.1234   5.750405     9.010e-09               40255
    ## 31     69273670      0.0501   4.572854     4.830e-06               40255
    ## 32     60033371      0.0125   6.000000     2.245e-09               40255
    ## 33      6546166      0.1111   4.576960     4.719e-06               40255
    ## 34    102331030      0.0257  -4.610890     3.908e-06               40255
    ## 35     35409158      0.0178  -4.792135     1.593e-06               40255
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 2  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 3  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 4  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 5  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 6  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 7  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 8  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 9  Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 10 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 11 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 12 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 13 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 14 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 15 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 16 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 17 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 18 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 19 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 20 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 21 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 22 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 23 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 24 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 25 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 26 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 27 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 28 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 29 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 30 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 31 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 32 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 33 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 34 Huang2017aaos             TRUE             reported      XIAx4r      2
    ## 35 Huang2017aaos             TRUE             reported      XIAx4r      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    2.035964e-03          0.69
    ## 2     TRUE           TRUE 5e-06    6.083685e-05             1
    ## 3     TRUE           TRUE 5e-06    1.231337e-04             1
    ## 4     TRUE           TRUE 5e-06    9.355032e-04             1
    ## 5     TRUE           TRUE 5e-06    4.703145e-04             1
    ## 6     TRUE           TRUE 5e-06    2.018508e-03             1
    ## 7     TRUE           TRUE 5e-06    3.552343e-03             1
    ## 8     TRUE           TRUE 5e-06    8.404432e-05             1
    ## 9     TRUE           TRUE 5e-06    5.726875e-03          0.03
    ## 10    TRUE           TRUE 5e-06    9.741449e-04             1
    ## 11    TRUE           TRUE 5e-06    1.926440e-04             1
    ## 12    TRUE           TRUE 5e-06    2.593614e-02             1
    ## 13    TRUE           TRUE 5e-06    9.501533e-04             1
    ## 14    TRUE           TRUE 5e-06    2.150308e-02         <0.03
    ## 15    TRUE           TRUE 5e-06    1.175550e-05             1
    ## 16    TRUE          FALSE 5e-06              NA          <NA>
    ## 17    TRUE          FALSE 5e-06              NA          <NA>
    ## 18    TRUE           TRUE 5e-06    5.602089e-04             1
    ## 19   FALSE           TRUE 5e-06              NA          <NA>
    ## 20    TRUE           TRUE 5e-06    7.046784e-05             1
    ## 21    TRUE           TRUE 5e-06    1.630606e-03             1
    ## 22    TRUE           TRUE 5e-06    8.669671e-05             1
    ## 23    TRUE           TRUE 5e-06    1.006015e-04             1
    ## 24    TRUE           TRUE 5e-06    3.149818e-04             1
    ## 25    TRUE          FALSE 5e-06              NA          <NA>
    ## 26    TRUE           TRUE 5e-06    2.927193e-04             1
    ## 27    TRUE           TRUE 5e-06    8.737576e-04             1
    ## 28    TRUE           TRUE 5e-06    1.000475e-05             1
    ## 29    TRUE           TRUE 5e-06    2.225250e-04             1
    ## 30    TRUE          FALSE 5e-06              NA          <NA>
    ## 31    TRUE           TRUE 5e-06    1.258464e-03             1
    ## 32    TRUE           TRUE 5e-06    1.682574e-04             1
    ## 33    TRUE           TRUE 5e-06    2.874141e-02          0.18
    ## 34    TRUE           TRUE 5e-06    7.867436e-05             1
    ## 35    TRUE           TRUE 5e-06    5.997252e-04             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9          FALSE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14         FALSE
    ## 15          TRUE
    ## 16            NA
    ## 17            NA
    ## 18          TRUE
    ## 19            NA
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE
    ## 23          TRUE
    ## 24          TRUE
    ## 25            NA
    ## 26          TRUE
    ## 27          TRUE
    ## 28          TRUE
    ## 29          TRUE
    ## 30            NA
    ## 31          TRUE
    ## 32          TRUE
    ## 33          TRUE
    ## 34          TRUE
    ## 35          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1   rs204469          19    45490285     3.269e-06      0.01301
    ## 2  rs2075650          19    45395619    5.980e-134      0.25740
    ## 3 rs62117204          19    45242967     1.864e-11      0.01905
    ## 4 rs76205446          19    45355267     9.010e-09      0.42760

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
    ## 1            FALSE   0.01831894 25.02038  0.05 1.358539 0.2143687
    ## 2             TRUE   0.01722692 25.18276  0.05 2.171880 0.3136983

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

Table 6 presents the MR causal estimates of genetically predicted AAOS
on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for AAOS on Diastolic Blood Pressure

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 2      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 3      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 4      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   30  0.02479282 0.03148469
    ## 2                           Weighted median   30  0.02163247 0.04785280
    ## 3                             Weighted mode   30  0.02792037 0.05500510
    ## 4                                  MR Egger   30 -0.03620775 0.07462372
    ##        pval
    ## 1 0.4310147
    ## 2 0.6512237
    ## 3 0.6155756
    ## 4 0.6313062

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Diastolic Blood Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 2      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 60.85781   28 0.0003160964
    ## 2 Inverse variance weighted 63.22669   29 0.0002410644

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome      exposure egger_intercept
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos      0.01128405
    ##           se      pval
    ## 1 0.01080867 0.3054238

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome      exposure    pt
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          2 66.62213 0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 2      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 3      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 4      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   28  0.02838361 0.03191708
    ## 2                           Weighted median   28  0.02025730 0.04846633
    ## 3                             Weighted mode   28  0.02624609 0.05916013
    ## 4                                  MR Egger   28 -0.04254165 0.05353971
    ##        pval
    ## 1 0.3738460
    ## 2 0.6759717
    ## 3 0.6608343
    ## 4 0.4340506

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ## 2      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 29.06155   26 0.3082907
    ## 2 Inverse variance weighted 32.31573   27 0.2205927

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome      exposure egger_intercept
    ## 1      XIAx4r     hmlhVf Evangelou2018dbp Huang2017aaos      0.01340924
    ##            se       pval
    ## 1 0.007858794 0.09987657

<br>
