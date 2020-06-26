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

### Outcome: Pulse Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Pulse Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1    rs2649062     1   5799177    A    G 0.3164  0.0065 0.0221  0.2941180
    ## 2    rs4662080    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 3   rs10919252     1 169802956    C    G 0.3246 -0.0009 0.0217 -0.0414747
    ## 4    rs6701713     1 207786289    A    G 0.8128 -0.0433 0.0261 -1.6590000
    ## 5  rs144505123    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 6    rs6718282     2  18039651    G    A 0.0541 -0.0244 0.0473 -0.5158562
    ## 7  rs114131510    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 8   rs12615104     2 109820829    T    C 0.2665 -0.0522 0.0233 -2.2403400
    ## 9  rs111906619     2 127789085    C    T 0.0762  0.0531 0.0394  1.3477157
    ## 10   rs6431219     2 127862133    C    T 0.4086  0.0129 0.0208  0.6201923
    ## 11    rs359982     2 219826934    A    G 0.0716  0.0727 0.0418  1.7392300
    ## 12 rs116341973     3  63462893    A    G 0.0223 -0.0777 0.0712 -1.0912900
    ## 13 rs145799027    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 14  rs71602496     4    661002    A    G 0.1543  0.0596 0.0289  2.0622800
    ## 15 rs115803892     4 134185712    G    A 0.0132  0.2006 0.0979  2.0490296
    ## 16   rs1689013     4 181048651    T    C 0.2440  0.0114 0.0239  0.4769870
    ## 17 rs144202318    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 18  rs77345379     6  69273670    C    T 0.0234 -0.0829 0.0753 -1.1009296
    ## 19  rs12153819     6  83773049    C    T 0.1248  0.0015 0.0314  0.0477707
    ## 20  rs17170228     7  33076314    G    A 0.0664 -0.1210 0.0414 -2.9227053
    ## 21 rs149907089    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 22   rs2725066     8   4438058    T    A 0.5245 -0.0219 0.0207 -1.0579710
    ## 23 rs117201713     8 121340499    G    C 0.0387  0.0743 0.0538  1.3810409
    ## 24  rs36033332     9  26834807    C    G 0.0517 -0.0237 0.0497 -0.4768610
    ## 25   rs7930318    11  60033371    C    T 0.5992 -0.0029 0.0209 -0.1387560
    ## 26    rs567075    11  85830157    T    C 0.6775 -0.0296 0.0219 -1.3516000
    ## 27  rs11218343    11 121435587    T    C 0.0388  0.0128 0.0534  0.2397000
    ## 28   rs7958488    12   6546166    A    T 0.0243  0.0296 0.0697  0.4246770
    ## 29   rs1118069    12  84739181    A    T 0.7106  0.0608 0.0226  2.6902700
    ## 30 rs140016885    12  99679113    A    G 0.0157 -0.0258 0.0956 -0.2698740
    ## 31   rs9582517    13 102331030    T    C 0.4947  0.0080 0.0205  0.3902440
    ## 32 rs146189059    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 33  rs17125944    14  53400629    T    C 0.0919 -0.2452 0.0357 -6.8683500
    ## 34 rs150193285    15  75224360    C    T 0.0125  0.2105 0.1000  2.1050000
    ## 35   rs9947273    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 36  rs62117204    19  45242967    C    T 0.0711 -0.1893 0.0415 -4.5614458
    ## 37  rs76205446    19  45355267    T    A 0.0106  0.2245 0.1108  2.0261733
    ## 38   rs2075650    19  45395619    A    G 0.1458  0.1583 0.0297  5.3299700
    ## 39 rs141441332    NA        NA <NA> <NA>     NA      NA     NA         NA
    ## 40    rs204469    19  45490285    A    G 0.9569 -0.0740 0.0536 -1.3806000
    ## 41   rs2827191    21  23361798    C    T 0.2879  0.0216 0.0229  0.9432314
    ## 42   rs1043441    22  39130964    C    T 0.2957 -0.0025 0.0224 -0.1116071
    ##            P      N          TRAIT
    ## 1  7.693e-01 738168 Pulse_Pressure
    ## 2         NA     NA           <NA>
    ## 3  9.665e-01 738169 Pulse_Pressure
    ## 4  9.749e-02 737165 Pulse_Pressure
    ## 5         NA     NA           <NA>
    ## 6  6.066e-01 731033 Pulse_Pressure
    ## 7         NA     NA           <NA>
    ## 8  2.503e-02 729451 Pulse_Pressure
    ## 9  1.774e-01 738168 Pulse_Pressure
    ## 10 5.337e-01 737056 Pulse_Pressure
    ## 11 8.223e-02 733432 Pulse_Pressure
    ## 12 2.750e-01 737053 Pulse_Pressure
    ## 13        NA     NA           <NA>
    ## 14 3.931e-02 735551 Pulse_Pressure
    ## 15 4.053e-02 721941 Pulse_Pressure
    ## 16 6.326e-01 735151 Pulse_Pressure
    ## 17        NA     NA           <NA>
    ## 18 2.711e-01 738167 Pulse_Pressure
    ## 19 9.622e-01 738169 Pulse_Pressure
    ## 20 3.450e-03 738169 Pulse_Pressure
    ## 21        NA     NA           <NA>
    ## 22 2.911e-01 726833 Pulse_Pressure
    ## 23 1.672e-01 738169 Pulse_Pressure
    ## 24 6.337e-01 744067 Pulse_Pressure
    ## 25 8.882e-01 738169 Pulse_Pressure
    ## 26 1.766e-01 738169 Pulse_Pressure
    ## 27 8.107e-01 738168 Pulse_Pressure
    ## 28 6.709e-01 745817 Pulse_Pressure
    ## 29 7.030e-03 741942 Pulse_Pressure
    ## 30 7.870e-01 737196 Pulse_Pressure
    ## 31 6.978e-01 744815 Pulse_Pressure
    ## 32        NA     NA           <NA>
    ## 33 6.406e-12 736553 Pulse_Pressure
    ## 34 3.527e-02 733320 Pulse_Pressure
    ## 35        NA     NA           <NA>
    ## 36 4.956e-06 725319 Pulse_Pressure
    ## 37 4.271e-02 697945 Pulse_Pressure
    ## 38 9.531e-08 730529 Pulse_Pressure
    ## 39        NA     NA           <NA>
    ## 40 1.670e-01 707703 Pulse_Pressure
    ## 41 3.458e-01 743700 Pulse_Pressure
    ## 42 9.102e-01 745819 Pulse_Pressure

<br>

**Table 3:** Proxy SNPs for Pulse Pressure

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
    ##   ALT.proxy     AF    BETA     SE          Z      P      N          TRAIT
    ## 1         G 0.7444  0.0093 0.0235  0.3957450 0.6924 738169 Pulse_Pressure
    ## 2         T 0.1576 -0.0048 0.0284 -0.1690141 0.8661 745819 Pulse_Pressure
    ## 3      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 4      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 5      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 6      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 7      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 8      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ## 9      <NA>     NA      NA     NA         NA     NA     NA           <NA>
    ##    ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1    C      TRUE    T         G    T    C          TRUE
    ## 2    A      TRUE    G         C    A    G          TRUE
    ## 3 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 4 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 5 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 6 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 7 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 8 <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 9 <NA>        NA <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Pulse Pressure datasets

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
    ## 1                      T                    C       -0.0639      -0.0025
    ## 2                      G                    C        0.0975      -0.0009
    ## 3                      T                    A        0.1012       0.0608
    ## 4                      T                    C        0.1268       0.0531
    ## 5                      C                    T       -0.1653       0.0128
    ## 6                      A                    G        0.9151       0.2006
    ## 7                      G                    A        0.2057      -0.0777
    ## 8                      C                    G        0.2125       0.0743
    ## 9                      T                    C       -0.1092       0.0015
    ## 10                     C                    T       -0.1057      -0.0522
    ## 11                     G                    A        0.6851      -0.0258
    ## 12                     T                    C        0.7622       0.2105
    ## 13                     C                    T        0.0637       0.0114
    ## 14                     C                    T        0.0960      -0.2452
    ## 15                     A                    G        0.1215      -0.1210
    ## 16                     G                    A        0.1588      -0.0740
    ## 17                     G                    A        0.5502       0.1583
    ## 18                     G                    A        0.0652       0.0065
    ## 19                     A                    T       -0.0936      -0.0219
    ## 20                     T                    C        0.1277       0.0216
    ## 21                     G                    A        0.2660       0.0727
    ## 22                     G                    C        0.4601      -0.0237
    ## 23                     T                    C        0.1421       0.0093
    ## 24                     C                    T        0.0900      -0.0296
    ## 25                     T                    C       -0.1867      -0.1893
    ## 26                     T                    C        0.0774       0.0129
    ## 27                     G                    A       -0.0709      -0.0433
    ## 28                     A                    G       -0.1421      -0.0244
    ## 29                     G                    A        0.0780       0.0596
    ## 30                     A                    T        0.7096       0.2245
    ## 31                     T                    C        0.2291      -0.0829
    ## 32                     T                    C        0.0750      -0.0029
    ## 33                     T                    A        0.5085       0.0296
    ## 34                     C                    T       -0.1185       0.0080
    ## 35                     A                    G       -0.0853      -0.0048
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893      0.2957  FALSE       FALSE     FALSE     rdhqcB
    ## 2        0.3275      0.3246  FALSE        TRUE     FALSE     rdhqcB
    ## 3        0.7195      0.7106  FALSE        TRUE     FALSE     rdhqcB
    ## 4        0.0709      0.0762  FALSE       FALSE     FALSE     rdhqcB
    ## 5        0.0395      0.0388  FALSE       FALSE     FALSE     rdhqcB
    ## 6        0.0129      0.0132  FALSE       FALSE     FALSE     rdhqcB
    ## 7        0.0227      0.0223  FALSE       FALSE     FALSE     rdhqcB
    ## 8        0.0408      0.0387  FALSE        TRUE     FALSE     rdhqcB
    ## 9        0.1018      0.1248  FALSE       FALSE     FALSE     rdhqcB
    ## 10       0.2566      0.2665  FALSE       FALSE     FALSE     rdhqcB
    ## 11       0.0144      0.0157  FALSE       FALSE     FALSE     rdhqcB
    ## 12       0.0109      0.0125  FALSE       FALSE     FALSE     rdhqcB
    ## 13       0.2493      0.2440  FALSE       FALSE     FALSE     rdhqcB
    ## 14       0.0924      0.0919  FALSE       FALSE     FALSE     rdhqcB
    ## 15       0.0623      0.0664  FALSE       FALSE     FALSE     rdhqcB
    ## 16       0.9632      0.9569  FALSE       FALSE     FALSE     rdhqcB
    ## 17       0.2197      0.1458  FALSE       FALSE     FALSE     rdhqcB
    ## 18       0.3192      0.3164  FALSE       FALSE     FALSE     rdhqcB
    ## 19       0.5128      0.5245  FALSE        TRUE      TRUE     rdhqcB
    ## 20       0.2857      0.2879  FALSE       FALSE     FALSE     rdhqcB
    ## 21       0.0781      0.0716  FALSE       FALSE     FALSE     rdhqcB
    ## 22       0.0386      0.0517  FALSE        TRUE     FALSE     rdhqcB
    ## 23       0.6649      0.7444  FALSE       FALSE     FALSE     rdhqcB
    ## 24       0.6903      0.6775  FALSE       FALSE     FALSE     rdhqcB
    ## 25       0.0601      0.0711  FALSE       FALSE     FALSE     rdhqcB
    ## 26       0.4163      0.4086  FALSE       FALSE     FALSE     rdhqcB
    ## 27       0.7983      0.8128  FALSE       FALSE     FALSE     rdhqcB
    ## 28       0.0440      0.0541  FALSE       FALSE     FALSE     rdhqcB
    ## 29       0.1453      0.1543  FALSE       FALSE     FALSE     rdhqcB
    ## 30       0.0143      0.0106  FALSE        TRUE     FALSE     rdhqcB
    ## 31       0.0185      0.0234  FALSE       FALSE     FALSE     rdhqcB
    ## 32       0.5996      0.5992  FALSE       FALSE     FALSE     rdhqcB
    ## 33       0.0195      0.0243  FALSE        TRUE     FALSE     rdhqcB
    ## 34       0.5073      0.4947  FALSE       FALSE     FALSE     rdhqcB
    ## 35       0.1431      0.1576  FALSE       FALSE     FALSE     rdhqcB
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           22    39130964     0.0224 -0.1116071    9.102e-01
    ## 2            1   169802956     0.0217 -0.0414747    9.665e-01
    ## 3           12    84739181     0.0226  2.6902700    7.030e-03
    ## 4            2   127789085     0.0394  1.3477157    1.774e-01
    ## 5           11   121435587     0.0534  0.2397000    8.107e-01
    ## 6            4   134185712     0.0979  2.0490296    4.053e-02
    ## 7            3    63462893     0.0712 -1.0912900    2.750e-01
    ## 8            8   121340499     0.0538  1.3810409    1.672e-01
    ## 9            6    83773049     0.0314  0.0477707    9.622e-01
    ## 10           2   109820829     0.0233 -2.2403400    2.503e-02
    ## 11          12    99679113     0.0956 -0.2698740    7.870e-01
    ## 12          15    75224360     0.1000  2.1050000    3.527e-02
    ## 13           4   181048651     0.0239  0.4769870    6.326e-01
    ## 14          14    53400629     0.0357 -6.8683500    6.406e-12
    ## 15           7    33076314     0.0414 -2.9227053    3.450e-03
    ## 16          19    45490285     0.0536 -1.3806000    1.670e-01
    ## 17          19    45395619     0.0297  5.3299700    9.531e-08
    ## 18           1     5799177     0.0221  0.2941180    7.693e-01
    ## 19           8     4438058     0.0207 -1.0579710    2.911e-01
    ## 20          21    23361798     0.0229  0.9432314    3.458e-01
    ## 21           2   219826934     0.0418  1.7392300    8.223e-02
    ## 22           9    26834807     0.0497 -0.4768610    6.337e-01
    ## 23           1    14357851     0.0235  0.3957450    6.924e-01
    ## 24          11    85830157     0.0219 -1.3516000    1.766e-01
    ## 25          19    45242967     0.0415 -4.5614458    4.956e-06
    ## 26           2   127862133     0.0208  0.6201923    5.337e-01
    ## 27           1   207786289     0.0261 -1.6590000    9.749e-02
    ## 28           2    18039651     0.0473 -0.5158562    6.066e-01
    ## 29           4      661002     0.0289  2.0622800    3.931e-02
    ## 30          19    45355267     0.1108  2.0261733    4.271e-02
    ## 31           6    69273670     0.0753 -1.1009296    2.711e-01
    ## 32          11    60033371     0.0209 -0.1387560    8.882e-01
    ## 33          12     6546166     0.0697  0.4246770    6.709e-01
    ## 34          13   102331030     0.0205  0.3902440    6.978e-01
    ## 35          18    35373923     0.0284 -0.1690141    8.661e-01
    ##    samplesize.outcome         outcome mr_keep.outcome pval_origin.outcome
    ## 1              745819 Evangelou2018pp            TRUE            reported
    ## 2              738169 Evangelou2018pp            TRUE            reported
    ## 3              741942 Evangelou2018pp            TRUE            reported
    ## 4              738168 Evangelou2018pp            TRUE            reported
    ## 5              738168 Evangelou2018pp            TRUE            reported
    ## 6              721941 Evangelou2018pp            TRUE            reported
    ## 7              737053 Evangelou2018pp            TRUE            reported
    ## 8              738169 Evangelou2018pp            TRUE            reported
    ## 9              738169 Evangelou2018pp            TRUE            reported
    ## 10             729451 Evangelou2018pp            TRUE            reported
    ## 11             737196 Evangelou2018pp            TRUE            reported
    ## 12             733320 Evangelou2018pp            TRUE            reported
    ## 13             735151 Evangelou2018pp            TRUE            reported
    ## 14             736553 Evangelou2018pp            TRUE            reported
    ## 15             738169 Evangelou2018pp            TRUE            reported
    ## 16             707703 Evangelou2018pp            TRUE            reported
    ## 17             730529 Evangelou2018pp            TRUE            reported
    ## 18             738168 Evangelou2018pp            TRUE            reported
    ## 19             726833 Evangelou2018pp            TRUE            reported
    ## 20             743700 Evangelou2018pp            TRUE            reported
    ## 21             733432 Evangelou2018pp            TRUE            reported
    ## 22             744067 Evangelou2018pp            TRUE            reported
    ## 23             738169 Evangelou2018pp            TRUE            reported
    ## 24             738169 Evangelou2018pp            TRUE            reported
    ## 25             725319 Evangelou2018pp            TRUE            reported
    ## 26             737056 Evangelou2018pp            TRUE            reported
    ## 27             737165 Evangelou2018pp            TRUE            reported
    ## 28             731033 Evangelou2018pp            TRUE            reported
    ## 29             735551 Evangelou2018pp            TRUE            reported
    ## 30             697945 Evangelou2018pp            TRUE            reported
    ## 31             738167 Evangelou2018pp            TRUE            reported
    ## 32             738169 Evangelou2018pp            TRUE            reported
    ## 33             745817 Evangelou2018pp            TRUE            reported
    ## 34             744815 Evangelou2018pp            TRUE            reported
    ## 35             745819 Evangelou2018pp            TRUE            reported
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
    ## 1  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 2  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 3  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 4  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 5  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 6  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 7  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 8  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 9  Huang2017aaos             TRUE             reported      S35mKE      2
    ## 10 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 11 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 12 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 13 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 14 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 15 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 16 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 17 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 18 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 19 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 20 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 21 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 22 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 23 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 24 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 25 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 26 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 27 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 28 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 29 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 30 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 31 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 32 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 33 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 34 Huang2017aaos             TRUE             reported      S35mKE      2
    ## 35 Huang2017aaos             TRUE             reported      S35mKE      2
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
    ## 10    TRUE           TRUE 5e-06              NA            NA
    ## 11    TRUE           TRUE 5e-06              NA            NA
    ## 12    TRUE           TRUE 5e-06              NA            NA
    ## 13    TRUE           TRUE 5e-06              NA            NA
    ## 14    TRUE          FALSE 5e-06              NA            NA
    ## 15    TRUE           TRUE 5e-06              NA            NA
    ## 16    TRUE          FALSE 5e-06              NA            NA
    ## 17    TRUE          FALSE 5e-06              NA            NA
    ## 18    TRUE           TRUE 5e-06              NA            NA
    ## 19   FALSE           TRUE 5e-06              NA            NA
    ## 20    TRUE           TRUE 5e-06              NA            NA
    ## 21    TRUE           TRUE 5e-06              NA            NA
    ## 22    TRUE           TRUE 5e-06              NA            NA
    ## 23    TRUE           TRUE 5e-06              NA            NA
    ## 24    TRUE           TRUE 5e-06              NA            NA
    ## 25    TRUE          FALSE 5e-06              NA            NA
    ## 26    TRUE           TRUE 5e-06              NA            NA
    ## 27    TRUE           TRUE 5e-06              NA            NA
    ## 28    TRUE           TRUE 5e-06              NA            NA
    ## 29    TRUE           TRUE 5e-06              NA            NA
    ## 30    TRUE          FALSE 5e-06              NA            NA
    ## 31    TRUE           TRUE 5e-06              NA            NA
    ## 32    TRUE           TRUE 5e-06              NA            NA
    ## 33    TRUE           TRUE 5e-06              NA            NA
    ## 34    TRUE           TRUE 5e-06              NA            NA
    ## 35    TRUE           TRUE 5e-06              NA            NA
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
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19            NA
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE
    ## 23          TRUE
    ## 24          TRUE
    ## 25          TRUE
    ## 26          TRUE
    ## 27          TRUE
    ## 28          TRUE
    ## 29          TRUE
    ## 30          TRUE
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

**Table 5:** SNPs that were genome-wide significant in the Pulse
Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs17125944          14    53400629     2.321e-06    6.406e-12
    ## 2   rs204469          19    45490285     3.269e-06    1.670e-01
    ## 3  rs2075650          19    45395619    5.980e-134    9.531e-08
    ## 4 rs62117204          19    45242967     1.864e-11    4.956e-06
    ## 5 rs76205446          19    45355267     9.010e-09    4.271e-02

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
    ## 1            FALSE   0.01776869 25.09226  0.05 4.368997 0.5518415

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
on Pulse Pressure. <br>

**Table 6** MR causaul estimates for AAOS on Pulse Pressure

    ##   id.exposure id.outcome         outcome      exposure
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 2      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 3      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 4      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ##                                      method nsnp             b         se
    ## 1 Inverse variance weighted (fixed effects)   29  0.1054144409 0.03746977
    ## 2                           Weighted median   29  0.0622795002 0.05691064
    ## 3                             Weighted mode   29 -0.0009763806 0.07939130
    ## 4                                  MR Egger   29  0.0926838125 0.07504668
    ##          pval
    ## 1 0.004903286
    ## 2 0.273806573
    ## 3 0.990274809
    ## 4 0.227464502

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Pulse Pressure and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome         outcome      exposure
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 2      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 42.18931   27 0.03152777
    ## 2 Inverse variance weighted 42.26296   28 0.04094686

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018pp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018pp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome         outcome      exposure egger_intercept
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos     0.002370232
    ##           se      pval
    ## 1 0.01091706 0.8297528

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome         outcome      exposure    pt
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 45.19714 0.051

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome         outcome      exposure
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 2      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 3      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 4      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ##                                      method nsnp             b         se
    ## 1 Inverse variance weighted (fixed effects)   29  0.1054144409 0.03746977
    ## 2                           Weighted median   29  0.0622795002 0.06116486
    ## 3                             Weighted mode   29 -0.0009763806 0.07958911
    ## 4                                  MR Egger   29  0.0926838125 0.07504668
    ##          pval
    ## 1 0.004903286
    ## 2 0.308571700
    ## 3 0.990298979
    ## 4 0.227464502

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome         outcome      exposure
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ## 2      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 42.18931   27 0.03152777
    ## 2 Inverse variance weighted 42.26296   28 0.04094686

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome         outcome      exposure egger_intercept
    ## 1      S35mKE     rdhqcB Evangelou2018pp Huang2017aaos     0.002370232
    ##           se      pval
    ## 1 0.01091706 0.8297528

<br>
