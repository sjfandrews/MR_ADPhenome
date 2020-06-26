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

### Outcome: BMI

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in BMI

    ##            SNP CHROM       POS  REF  ALT      AF    BETA     SE
    ## 1    rs2649062     1   5799177    A    G 0.31410  0.0052 0.0019
    ## 2    rs4662080    NA        NA <NA> <NA>      NA      NA     NA
    ## 3   rs10919252     1 169802956    C    G 0.32090 -0.0008 0.0018
    ## 4    rs6701713     1 207786289    A    G 0.80500 -0.0013 0.0022
    ## 5  rs144505123    NA        NA <NA> <NA>      NA      NA     NA
    ## 6    rs6718282     2  18039651    G    A 0.05016 -0.0073 0.0040
    ## 7  rs114131510    NA        NA <NA> <NA>      NA      NA     NA
    ## 8   rs12615104     2 109820829    T    C 0.26110  0.0043 0.0020
    ## 9  rs111906619    NA        NA <NA> <NA>      NA      NA     NA
    ## 10   rs6431219    NA        NA <NA> <NA>      NA      NA     NA
    ## 11    rs359982    NA        NA <NA> <NA>      NA      NA     NA
    ## 12 rs116341973    NA        NA <NA> <NA>      NA      NA     NA
    ## 13 rs145799027    NA        NA <NA> <NA>      NA      NA     NA
    ## 14  rs71602496    NA        NA <NA> <NA>      NA      NA     NA
    ## 15 rs115803892    NA        NA <NA> <NA>      NA      NA     NA
    ## 16   rs1689013    NA        NA <NA> <NA>      NA      NA     NA
    ## 17 rs144202318    NA        NA <NA> <NA>      NA      NA     NA
    ## 18  rs77345379    NA        NA <NA> <NA>      NA      NA     NA
    ## 19  rs12153819    NA        NA <NA> <NA>      NA      NA     NA
    ## 20  rs17170228     7  33076314    G    A 0.06361  0.0061 0.0035
    ## 21 rs149907089    NA        NA <NA> <NA>      NA      NA     NA
    ## 22   rs2725066     8   4438058    T    A 0.52270  0.0008 0.0017
    ## 23 rs117201713    NA        NA <NA> <NA>      NA      NA     NA
    ## 24  rs36033332    NA        NA <NA> <NA>      NA      NA     NA
    ## 25   rs7930318    NA        NA <NA> <NA>      NA      NA     NA
    ## 26    rs567075    11  85830157    T    C 0.68810 -0.0010 0.0018
    ## 27  rs11218343    11 121435587    T    C 0.03894  0.0032 0.0048
    ## 28   rs7958488    12   6546166    A    T 0.02859  0.0123 0.0062
    ## 29   rs1118069    12  84739181    A    T 0.70570  0.0070 0.0019
    ## 30 rs140016885    NA        NA <NA> <NA>      NA      NA     NA
    ## 31   rs9582517    NA        NA <NA> <NA>      NA      NA     NA
    ## 32 rs146189059    NA        NA <NA> <NA>      NA      NA     NA
    ## 33  rs17125944    14  53400629    T    C 0.09635  0.0135 0.0030
    ## 34 rs150193285    NA        NA <NA> <NA>      NA      NA     NA
    ## 35   rs9947273    NA        NA <NA> <NA>      NA      NA     NA
    ## 36  rs62117204    NA        NA <NA> <NA>      NA      NA     NA
    ## 37  rs76205446    NA        NA <NA> <NA>      NA      NA     NA
    ## 38   rs2075650    19  45395619    A    G 0.13940 -0.0244 0.0023
    ## 39 rs141441332    NA        NA <NA> <NA>      NA      NA     NA
    ## 40    rs204469    19  45490285    A    G 0.95972  0.0094 0.0047
    ## 41   rs2827191    NA        NA <NA> <NA>      NA      NA     NA
    ## 42   rs1043441    22  39130964    C    T 0.29500  0.0011 0.0020
    ##              Z       P      N TRAIT
    ## 1    2.7368400 7.0e-03 632124   BMI
    ## 2           NA      NA     NA  <NA>
    ## 3   -0.4444440 6.8e-01 691099   BMI
    ## 4   -0.5909090 5.6e-01 691718   BMI
    ## 5           NA      NA     NA  <NA>
    ## 6   -1.8250000 6.6e-02 685689   BMI
    ## 7           NA      NA     NA  <NA>
    ## 8    2.1500000 2.7e-02 688625   BMI
    ## 9           NA      NA     NA  <NA>
    ## 10          NA      NA     NA  <NA>
    ## 11          NA      NA     NA  <NA>
    ## 12          NA      NA     NA  <NA>
    ## 13          NA      NA     NA  <NA>
    ## 14          NA      NA     NA  <NA>
    ## 15          NA      NA     NA  <NA>
    ## 16          NA      NA     NA  <NA>
    ## 17          NA      NA     NA  <NA>
    ## 18          NA      NA     NA  <NA>
    ## 19          NA      NA     NA  <NA>
    ## 20   1.7428571 7.7e-02 677025   BMI
    ## 21          NA      NA     NA  <NA>
    ## 22   0.4705882 6.4e-01 686096   BMI
    ## 23          NA      NA     NA  <NA>
    ## 24          NA      NA     NA  <NA>
    ## 25          NA      NA     NA  <NA>
    ## 26  -0.5555560 5.7e-01 691294   BMI
    ## 27   0.6666670 5.1e-01 673765   BMI
    ## 28   1.9838700 4.8e-02 648594   BMI
    ## 29   3.6842100 2.6e-04 684998   BMI
    ## 30          NA      NA     NA  <NA>
    ## 31          NA      NA     NA  <NA>
    ## 32          NA      NA     NA  <NA>
    ## 33   4.5000000 7.1e-06 690545   BMI
    ## 34          NA      NA     NA  <NA>
    ## 35          NA      NA     NA  <NA>
    ## 36          NA      NA     NA  <NA>
    ## 37          NA      NA     NA  <NA>
    ## 38 -10.6087000 1.5e-25 779741   BMI
    ## 39          NA      NA     NA  <NA>
    ## 40   2.0000000 4.3e-02 567052   BMI
    ## 41          NA      NA     NA  <NA>
    ## 42   0.5500000 5.7e-01 636846   BMI

<br>

**Table 3:** Proxy SNPs for BMI

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1    rs4662080  rs4662076 1.000000 1.000000 CT/TG  NA     1  14357851
    ## 2   rs71602496  rs3891250 1.000000 1.000000 GT/AG  NA     4    658304
    ## 3    rs1689013  rs1689014 0.989494 1.000000 CA/TG  NA     4 181046865
    ## 4   rs12153819 rs12211381 0.984013 1.000000 TT/CC  NA     6  83779921
    ## 5   rs36033332 rs13286272 0.978976 1.000000 GC/CG  NA     9  26828025
    ## 6    rs7930318  rs6591559 1.000000 1.000000 CA/TG  NA    11  60025565
    ## 7    rs9582517  rs7993068 0.934257 0.995841 CG/TA  NA    13 102319006
    ## 8    rs9947273  rs1122310 1.000000 1.000000 AG/GC  NA    18  35406066
    ## 9   rs62117204  rs1531517 0.980787 1.000000 TA/CG  NA    19  45242173
    ## 10   rs2827191  rs2827189 0.844048 1.000000 TT/CC  NA    21  23361567
    ## 11 rs144505123       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 12 rs114131510       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 13 rs111906619       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14   rs6431219       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15    rs359982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16 rs116341973       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17 rs145799027       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18 rs115803892       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19 rs144202318       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20  rs77345379       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21 rs149907089       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22 rs117201713       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23 rs140016885       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24 rs146189059       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25 rs150193285       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 26  rs76205446       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 27 rs141441332       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy      AF    BETA     SE          Z       P      N
    ## 1          T         G 0.73520 -0.0035 0.0020 -1.7500000 0.07800 683891
    ## 2          G         T 0.15090  0.0088 0.0024  3.6666667 0.00026 676846
    ## 3          G         A 0.25010  0.0015 0.0020  0.7500000 0.45000 690341
    ## 4          C         T 0.13290 -0.0060 0.0026 -2.3076923 0.02100 692440
    ## 5          G         C 0.03935 -0.0033 0.0042 -0.7857143 0.43000 653119
    ## 6          A         G 0.59040  0.0025 0.0018  1.3888900 0.16000 692306
    ## 7          A         G 0.48820 -0.0021 0.0017 -1.2352900 0.23000 680789
    ## 8          C         G 0.15790  0.0036 0.0024  1.5000000 0.13000 686347
    ## 9          G         A 0.07051  0.0059 0.0032  1.8437500 0.07000 769579
    ## 10         C         T 0.22880 -0.0027 0.0020 -1.3500000 0.17000 675758
    ## 11      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 12      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 13      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 14      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 15      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 16      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 17      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 18      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 19      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 20      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 21      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 22      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 23      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 24      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 25      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 26      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ## 27      <NA>      <NA>      NA      NA     NA         NA      NA     NA
    ##    TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1    BMI    C         T    T         G    T    C          TRUE
    ## 2    BMI    G         T    A         G    G    A          TRUE
    ## 3    BMI    C         A    T         G    C    T          TRUE
    ## 4    BMI    T         T    C         C    T    C          TRUE
    ## 5    BMI    G         C    C         G    G    C          TRUE
    ## 6    BMI    C         A    T         G    T    C          TRUE
    ## 7    BMI    C         G    T         A    C    T          TRUE
    ## 8    BMI    A         G    G         C    A    G          TRUE
    ## 9    BMI    T         A    C         G    T    C          TRUE
    ## 10   BMI    T         T    C         C    T    C          TRUE
    ## 11  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 12  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 13  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 14  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 15  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 16  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 17  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 18  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 19  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 20  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 21  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 22  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 23  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 24  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 25  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 26  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 27  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and BMI datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1   rs1043441                      T                     C
    ## 2  rs10919252                      G                     C
    ## 3   rs1118069                      T                     A
    ## 4  rs11218343                      C                     T
    ## 5  rs12153819                      T                     C
    ## 6  rs12615104                      C                     T
    ## 7   rs1689013                      C                     T
    ## 8  rs17125944                      C                     T
    ## 9  rs17170228                      A                     G
    ## 10   rs204469                      G                     A
    ## 11  rs2075650                      G                     A
    ## 12  rs2649062                      G                     A
    ## 13  rs2725066                      A                     T
    ## 14  rs2827191                      T                     C
    ## 15 rs36033332                      G                     C
    ## 16  rs4662080                      T                     C
    ## 17   rs567075                      C                     T
    ## 18 rs62117204                      T                     C
    ## 19  rs6701713                      G                     A
    ## 20  rs6718282                      A                     G
    ## 21 rs71602496                      G                     A
    ## 22  rs7930318                      T                     C
    ## 23  rs7958488                      T                     A
    ## 24  rs9582517                      C                     T
    ## 25  rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639       0.0011
    ## 2                      G                    C        0.0975      -0.0008
    ## 3                      T                    A        0.1012       0.0070
    ## 4                      C                    T       -0.1653       0.0032
    ## 5                      T                    C       -0.1092      -0.0060
    ## 6                      C                    T       -0.1057       0.0043
    ## 7                      C                    T        0.0637       0.0015
    ## 8                      C                    T        0.0960       0.0135
    ## 9                      A                    G        0.1215       0.0061
    ## 10                     G                    A        0.1588       0.0094
    ## 11                     G                    A        0.5502      -0.0244
    ## 12                     G                    A        0.0652       0.0052
    ## 13                     A                    T       -0.0936       0.0008
    ## 14                     T                    C        0.1277      -0.0027
    ## 15                     G                    C        0.4601      -0.0033
    ## 16                     T                    C        0.1421      -0.0035
    ## 17                     C                    T        0.0900      -0.0010
    ## 18                     T                    C       -0.1867       0.0059
    ## 19                     G                    A       -0.0709      -0.0013
    ## 20                     A                    G       -0.1421      -0.0073
    ## 21                     G                    A        0.0780       0.0088
    ## 22                     T                    C        0.0750       0.0025
    ## 23                     T                    A        0.5085       0.0123
    ## 24                     C                    T       -0.1185      -0.0021
    ## 25                     A                    G       -0.0853       0.0036
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893     0.29500  FALSE       FALSE     FALSE     YWrb3o
    ## 2        0.3275     0.32090  FALSE        TRUE     FALSE     YWrb3o
    ## 3        0.7195     0.70570  FALSE        TRUE     FALSE     YWrb3o
    ## 4        0.0395     0.03894  FALSE       FALSE     FALSE     YWrb3o
    ## 5        0.1018     0.13290  FALSE       FALSE     FALSE     YWrb3o
    ## 6        0.2566     0.26110  FALSE       FALSE     FALSE     YWrb3o
    ## 7        0.2493     0.25010  FALSE       FALSE     FALSE     YWrb3o
    ## 8        0.0924     0.09635  FALSE       FALSE     FALSE     YWrb3o
    ## 9        0.0623     0.06361  FALSE       FALSE     FALSE     YWrb3o
    ## 10       0.9632     0.95972  FALSE       FALSE     FALSE     YWrb3o
    ## 11       0.2197     0.13940  FALSE       FALSE     FALSE     YWrb3o
    ## 12       0.3192     0.31410  FALSE       FALSE     FALSE     YWrb3o
    ## 13       0.5128     0.52270  FALSE        TRUE      TRUE     YWrb3o
    ## 14       0.2857     0.22880  FALSE       FALSE     FALSE     YWrb3o
    ## 15       0.0386     0.03935  FALSE        TRUE     FALSE     YWrb3o
    ## 16       0.6649     0.73520  FALSE       FALSE     FALSE     YWrb3o
    ## 17       0.6903     0.68810  FALSE       FALSE     FALSE     YWrb3o
    ## 18       0.0601     0.07051  FALSE       FALSE     FALSE     YWrb3o
    ## 19       0.7983     0.80500  FALSE       FALSE     FALSE     YWrb3o
    ## 20       0.0440     0.05016  FALSE       FALSE     FALSE     YWrb3o
    ## 21       0.1453     0.15090  FALSE       FALSE     FALSE     YWrb3o
    ## 22       0.5996     0.59040  FALSE       FALSE     FALSE     YWrb3o
    ## 23       0.0195     0.02859  FALSE        TRUE     FALSE     YWrb3o
    ## 24       0.5073     0.48820  FALSE       FALSE     FALSE     YWrb3o
    ## 25       0.1431     0.15790  FALSE       FALSE     FALSE     YWrb3o
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           22    39130964     0.0020   0.5500000      5.7e-01
    ## 2            1   169802956     0.0018  -0.4444440      6.8e-01
    ## 3           12    84739181     0.0019   3.6842100      2.6e-04
    ## 4           11   121435587     0.0048   0.6666670      5.1e-01
    ## 5            6    83779921     0.0026  -2.3076923      2.1e-02
    ## 6            2   109820829     0.0020   2.1500000      2.7e-02
    ## 7            4   181046865     0.0020   0.7500000      4.5e-01
    ## 8           14    53400629     0.0030   4.5000000      7.1e-06
    ## 9            7    33076314     0.0035   1.7428571      7.7e-02
    ## 10          19    45490285     0.0047   2.0000000      4.3e-02
    ## 11          19    45395619     0.0023 -10.6087000      1.5e-25
    ## 12           1     5799177     0.0019   2.7368400      7.0e-03
    ## 13           8     4438058     0.0017   0.4705882      6.4e-01
    ## 14          21    23361567     0.0020  -1.3500000      1.7e-01
    ## 15           9    26828025     0.0042  -0.7857143      4.3e-01
    ## 16           1    14357851     0.0020  -1.7500000      7.8e-02
    ## 17          11    85830157     0.0018  -0.5555560      5.7e-01
    ## 18          19    45242173     0.0032   1.8437500      7.0e-02
    ## 19           1   207786289     0.0022  -0.5909090      5.6e-01
    ## 20           2    18039651     0.0040  -1.8250000      6.6e-02
    ## 21           4      658304     0.0024   3.6666667      2.6e-04
    ## 22          11    60025565     0.0018   1.3888900      1.6e-01
    ## 23          12     6546166     0.0062   1.9838700      4.8e-02
    ## 24          13   102319006     0.0017  -1.2352900      2.3e-01
    ## 25          18    35406066     0.0024   1.5000000      1.3e-01
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1              636846 Yengo2018bmi            TRUE            reported
    ## 2              691099 Yengo2018bmi            TRUE            reported
    ## 3              684998 Yengo2018bmi            TRUE            reported
    ## 4              673765 Yengo2018bmi            TRUE            reported
    ## 5              692440 Yengo2018bmi            TRUE            reported
    ## 6              688625 Yengo2018bmi            TRUE            reported
    ## 7              690341 Yengo2018bmi            TRUE            reported
    ## 8              690545 Yengo2018bmi            TRUE            reported
    ## 9              677025 Yengo2018bmi            TRUE            reported
    ## 10             567052 Yengo2018bmi            TRUE            reported
    ## 11             779741 Yengo2018bmi            TRUE            reported
    ## 12             632124 Yengo2018bmi            TRUE            reported
    ## 13             686096 Yengo2018bmi            TRUE            reported
    ## 14             675758 Yengo2018bmi            TRUE            reported
    ## 15             653119 Yengo2018bmi            TRUE            reported
    ## 16             683891 Yengo2018bmi            TRUE            reported
    ## 17             691294 Yengo2018bmi            TRUE            reported
    ## 18             769579 Yengo2018bmi            TRUE            reported
    ## 19             691718 Yengo2018bmi            TRUE            reported
    ## 20             685689 Yengo2018bmi            TRUE            reported
    ## 21             676846 Yengo2018bmi            TRUE            reported
    ## 22             692306 Yengo2018bmi            TRUE            reported
    ## 23             648594 Yengo2018bmi            TRUE            reported
    ## 24             680789 Yengo2018bmi            TRUE            reported
    ## 25             686347 Yengo2018bmi            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE         rs12153819        rs12211381                 T
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7           TRUE          rs1689013         rs1689014                 C
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13            NA               <NA>              <NA>              <NA>
    ## 14          TRUE          rs2827191         rs2827189                 T
    ## 15          TRUE         rs36033332        rs13286272                 G
    ## 16          TRUE          rs4662080         rs4662076                 T
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18          TRUE         rs62117204         rs1531517                 T
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21          TRUE         rs71602496         rs3891250                 G
    ## 22          TRUE          rs7930318         rs6591559                 T
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24          TRUE          rs9582517         rs7993068                 C
    ## 25          TRUE          rs9947273         rs1122310                 A
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>           22
    ## 2               <NA>             <NA>             <NA>            1
    ## 3               <NA>             <NA>             <NA>           12
    ## 4               <NA>             <NA>             <NA>           11
    ## 5                  C                T                C            6
    ## 6               <NA>             <NA>             <NA>            2
    ## 7                  T                A                G            4
    ## 8               <NA>             <NA>             <NA>           14
    ## 9               <NA>             <NA>             <NA>            7
    ## 10              <NA>             <NA>             <NA>           19
    ## 11              <NA>             <NA>             <NA>           19
    ## 12              <NA>             <NA>             <NA>            1
    ## 13              <NA>             <NA>             <NA>            8
    ## 14                 C                T                C           21
    ## 15                 C                C                G            9
    ## 16                 C                G                T            1
    ## 17              <NA>             <NA>             <NA>           11
    ## 18                 C                A                G           19
    ## 19              <NA>             <NA>             <NA>            1
    ## 20              <NA>             <NA>             <NA>            2
    ## 21                 A                T                G            4
    ## 22                 C                G                A           11
    ## 23              <NA>             <NA>             <NA>           12
    ## 24                 T                G                A           13
    ## 25                 G                G                C           18
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      39130964      0.0135  -4.733333     2.110e-06               40255
    ## 2     169802956      0.0198   4.924240     8.182e-07               40255
    ## 3      84739181      0.0216   4.685190     2.693e-06               40255
    ## 4     121435587      0.0329  -5.024320     5.148e-07               40255
    ## 5      83773049      0.0235  -4.646809     3.291e-06               40255
    ## 6     109820829      0.0221  -4.782810     1.829e-06               40255
    ## 7     181048651      0.0139   4.582730     4.657e-06               40255
    ## 8      53400629      0.0203   4.729060     2.321e-06               40255
    ## 9      33076314      0.0248   4.899194     1.004e-06               40255
    ## 10     45490285      0.0341   4.656890     3.269e-06               40255
    ## 11     45395619      0.0223  24.672600    5.980e-134               40255
    ## 12      5799177      0.0131   4.977100     6.120e-07               40255
    ## 13      4438058      0.0191  -4.900524     9.948e-07               40255
    ## 14     23361798      0.0279   4.577061     4.895e-06               40255
    ## 15     26834807      0.0865   5.319080     1.030e-07               40255
    ## 16     14363419      0.0296   4.800676     1.586e-06               40255
    ## 17     85830157      0.0132   6.818180     9.084e-12               40255
    ## 18     45242967      0.0278  -6.715827     1.864e-11               40255
    ## 19    207786289      0.0146  -4.856160     1.184e-06               40255
    ## 20     18039651      0.0308  -4.613636     3.840e-06               40255
    ## 21       661002      0.0171   4.561400     4.978e-06               40255
    ## 22     60033371      0.0125   6.000000     2.245e-09               40255
    ## 23      6546166      0.1111   4.576960     4.719e-06               40255
    ## 24    102331030      0.0257  -4.610890     3.908e-06               40255
    ## 25     35409158      0.0178  -4.792135     1.593e-06               40255
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 2  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 3  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 4  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 5  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 6  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 7  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 8  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 9  Huang2017aaos             TRUE             reported      WxDegz      2
    ## 10 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 11 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 12 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 13 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 14 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 15 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 16 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 17 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 18 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 19 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 20 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 21 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 22 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 23 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 24 Huang2017aaos             TRUE             reported      WxDegz      2
    ## 25 Huang2017aaos             TRUE             reported      WxDegz      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    3.069935e-06             1
    ## 2     TRUE           TRUE 5e-06    3.388076e-06             1
    ## 3     TRUE           TRUE 5e-06    3.996877e-05        <0.021
    ## 4     TRUE           TRUE 5e-06    2.408192e-05             1
    ## 5     TRUE           TRUE 5e-06    2.592094e-05             1
    ## 6     TRUE           TRUE 5e-06    3.130620e-05         0.105
    ## 7     TRUE           TRUE 5e-06    8.026610e-07             1
    ## 8     TRUE           TRUE 5e-06    1.635838e-04        <0.021
    ## 9     TRUE           TRUE 5e-06    2.521606e-05             1
    ## 10    TRUE          FALSE 5e-06              NA          <NA>
    ## 11    TRUE          FALSE 5e-06              NA          <NA>
    ## 12    TRUE           TRUE 5e-06    2.171141e-05         0.378
    ## 13   FALSE           TRUE 5e-06              NA          <NA>
    ## 14    TRUE           TRUE 5e-06    1.795496e-05         0.819
    ## 15    TRUE           TRUE 5e-06    9.567069e-05         0.903
    ## 16    TRUE           TRUE 5e-06    2.854878e-05         0.315
    ## 17    TRUE           TRUE 5e-06    3.838185e-06             1
    ## 18    TRUE          FALSE 5e-06              NA          <NA>
    ## 19    TRUE           TRUE 5e-06    3.861086e-07             1
    ## 20    TRUE           TRUE 5e-06    3.658080e-05             1
    ## 21    TRUE           TRUE 5e-06    6.706113e-05         0.021
    ## 22    TRUE           TRUE 5e-06    3.329147e-06             1
    ## 23    TRUE           TRUE 5e-06    6.903583e-05             1
    ## 24    TRUE           TRUE 5e-06    1.067324e-06             1
    ## 25    TRUE           TRUE 5e-06    2.049776e-05             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3          FALSE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8          FALSE
    ## 9           TRUE
    ## 10            NA
    ## 11            NA
    ## 12          TRUE
    ## 13            NA
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18            NA
    ## 19          TRUE
    ## 20          TRUE
    ## 21         FALSE
    ## 22          TRUE
    ## 23          TRUE
    ## 24          TRUE
    ## 25          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the BMI GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1   rs204469          19    45490285     3.269e-06      4.3e-02
    ## 2  rs2075650          19    45395619    5.980e-134      1.5e-25
    ## 3 rs62117204          19    45242173     1.864e-11      7.0e-02

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

    ##   outliers_removed pve.exposure       F Alpha       NCP     Power
    ## 1            FALSE   0.01275638 24.7552  0.05 12.489222 0.9422615
    ## 2             TRUE   0.01115774 25.2227  0.05  1.499936 0.2318196

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
on BMI. <br>

**Table 6** MR causaul estimates for AAOS on BMI

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 2      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 3      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 4      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   21  0.009727095 0.004133668
    ## 2                           Weighted median   21 -0.004082190 0.007192620
    ## 3                             Weighted mode   21 -0.006339703 0.007828658
    ## 4                                  MR Egger   21 -0.005675869 0.016998896
    ##         pval
    ## 1 0.01861569
    ## 2 0.57033881
    ## 3 0.42758146
    ## 4 0.74211487

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in BMI and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 2      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 78.36608   19 3.550787e-09
    ## 2 Inverse variance weighted 82.84486   20 1.284604e-09

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Yengo2018bmi/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Yengo2018bmi/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome      exposure egger_intercept
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos     0.002101258
    ##            se      pval
    ## 1 0.002016446 0.3104626

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome      exposure    pt outliers_removed
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos 5e-06            FALSE
    ##   n_outliers   RSSobs   pval
    ## 1          3 91.03455 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 2      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 3      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 4      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   18  0.002049437 0.004319097
    ## 2                           Weighted median   18 -0.007236584 0.007177078
    ## 3                             Weighted mode   18 -0.009733237 0.008846225
    ## 4                                  MR Egger   18 -0.002135914 0.013384440
    ##        pval
    ## 1 0.6351392
    ## 2 0.3133148
    ## 3 0.2865511
    ## 4 0.8752076

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome      exposure
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ## 2      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 40.55242   16 0.0006462677
    ## 2 Inverse variance weighted 40.88911   17 0.0009680736

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome      exposure egger_intercept
    ## 1      WxDegz     YWrb3o Yengo2018bmi Huang2017aaos    0.0005955073
    ##            se      pval
    ## 1 0.001633865 0.7202736

<br>
