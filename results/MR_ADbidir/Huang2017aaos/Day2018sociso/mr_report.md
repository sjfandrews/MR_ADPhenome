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

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Social Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1    rs2649062     1   5799177    A    G 0.311618 -0.00187789 0.00221144
    ## 2    rs4662080    NA        NA <NA> <NA>       NA          NA         NA
    ## 3   rs10919252     1 169802956    C    G 0.325563 -0.00142144 0.00218581
    ## 4    rs6701713     1 207786289    A    G 0.818181 -0.00047959 0.00265556
    ## 5  rs144505123    NA        NA <NA> <NA>       NA          NA         NA
    ## 6    rs6718282     2  18039651    G    A 0.052008  0.00602832 0.00461278
    ## 7  rs114131510    NA        NA <NA> <NA>       NA          NA         NA
    ## 8   rs12615104     2 109820829    T    C 0.260354  0.00354156 0.00233403
    ## 9  rs111906619     2 127789085    C    T 0.079082  0.00450331 0.00379534
    ## 10   rs6431219     2 127862133    C    T 0.414497  0.00155033 0.00207910
    ## 11    rs359982     2 219826934    A    G 0.070882  0.00396863 0.00399114
    ## 12 rs116341973     3  63462893    A    G 0.023003 -0.00116717 0.00683221
    ## 13 rs145799027    NA        NA <NA> <NA>       NA          NA         NA
    ## 14  rs71602496     4    661002    A    G 0.153333  0.00112002 0.00284267
    ## 15 rs115803892     4 134185712    G    A 0.010182  0.00937169 0.01020249
    ## 16   rs1689013     4 181048651    T    C 0.238002  0.00247242 0.00240510
    ## 17 rs144202318     5 165711579    G    A 0.012891  0.00939305 0.00907976
    ## 18  rs77345379     6  69273670    C    T 0.018603 -0.00249921 0.00758030
    ## 19  rs12153819     6  83773049    C    T 0.125130  0.00800301 0.00309562
    ## 20  rs17170228     7  33076314    G    A 0.069165  0.00245067 0.00403665
    ## 21 rs149907089     7 151626353    G    C 0.012184  0.01876030 0.00933614
    ## 22   rs2725066     8   4438058    T    A 0.522563 -0.00023567 0.00205056
    ## 23 rs117201713     8 121340499    G    C 0.039590 -0.00648304 0.00525266
    ## 24  rs36033332     9  26834807    C    G 0.052175  0.00379094 0.00460580
    ## 25   rs7930318    11  60033371    C    T 0.596619 -0.00221433 0.00208782
    ## 26    rs567075    11  85830157    T    C 0.678509 -0.00127758 0.00219300
    ## 27  rs11218343    11 121435587    T    C 0.037070  0.00173279 0.00542115
    ## 28   rs7958488    12   6546166    A    T 0.023954 -0.00867785 0.00669848
    ## 29   rs1118069    12  84739181    A    T 0.716501  0.00175927 0.00227256
    ## 30 rs140016885    12  99679113    A    G 0.014061 -0.00296306 0.00869896
    ## 31   rs9582517    13 102331030    T    C 0.488415 -0.00175846 0.00204902
    ## 32 rs146189059    NA        NA <NA> <NA>       NA          NA         NA
    ## 33  rs17125944    14  53400629    T    C 0.091943 -0.00053034 0.00354474
    ## 34 rs150193285    15  75224360    C    T 0.010949 -0.01398630 0.00984246
    ## 35   rs9947273    NA        NA <NA> <NA>       NA          NA         NA
    ## 36  rs62117204    19  45242967    C    T 0.071981  0.00688254 0.00396290
    ## 37  rs76205446    19  45355267    T    A 0.010858  0.00246832 0.00988317
    ## 38   rs2075650    19  45395619    A    G 0.146147  0.00164979 0.00289944
    ## 39 rs141441332    19  45438575    C    A 0.011222  0.00344866 0.00972335
    ## 40    rs204469    19  45490285    A    G 0.956232  0.00101109 0.00500659
    ## 41   rs2827191    21  23361798    C    T 0.289287 -0.00153830 0.00225886
    ## 42   rs1043441    22  39130964    C    T 0.294217  0.00616331 0.00224766
    ##            Z          P      N            TRAIT
    ## 1  -0.849171 0.39578607 452302 Social_Isolation
    ## 2         NA         NA     NA             <NA>
    ## 3  -0.650302 0.51549699 452302 Social_Isolation
    ## 4  -0.180599 0.85668253 452302 Social_Isolation
    ## 5         NA         NA     NA             <NA>
    ## 6   1.306870 0.19125607 452302 Social_Isolation
    ## 7         NA         NA     NA             <NA>
    ## 8   1.517360 0.12917639 452302 Social_Isolation
    ## 9   1.186530 0.23541124 452302 Social_Isolation
    ## 10  0.745673 0.45586514 452302 Social_Isolation
    ## 11  0.994360 0.32004771 452302 Social_Isolation
    ## 12 -0.170833 0.86435470 452302 Social_Isolation
    ## 13        NA         NA     NA             <NA>
    ## 14  0.394003 0.69357888 452302 Social_Isolation
    ## 15  0.918569 0.35832110 452302 Social_Isolation
    ## 16  1.027990 0.30395394 452302 Social_Isolation
    ## 17  1.034500 0.30090038 452302 Social_Isolation
    ## 18 -0.329698 0.74162833 452302 Social_Isolation
    ## 19  2.585270 0.00973035 452302 Social_Isolation
    ## 20  0.607106 0.54378039 452302 Social_Isolation
    ## 21  2.009430 0.04449186 452302 Social_Isolation
    ## 22 -0.114929 0.90850104 452302 Social_Isolation
    ## 23 -1.234240 0.21711341 452302 Social_Isolation
    ## 24  0.823079 0.41046328 452302 Social_Isolation
    ## 25 -1.060590 0.28887637 452302 Social_Isolation
    ## 26 -0.582571 0.56018203 452302 Social_Isolation
    ## 27  0.319635 0.74924518 452302 Social_Isolation
    ## 28 -1.295500 0.19514935 452302 Social_Isolation
    ## 29  0.774136 0.43885043 452302 Social_Isolation
    ## 30 -0.340622 0.73338811 452302 Social_Isolation
    ## 31 -0.858193 0.39078574 452302 Social_Isolation
    ## 32        NA         NA     NA             <NA>
    ## 33 -0.149613 0.88106958 452302 Social_Isolation
    ## 34 -1.421020 0.15531193 452302 Social_Isolation
    ## 35        NA         NA     NA             <NA>
    ## 36  1.736740 0.08243258 452302 Social_Isolation
    ## 37  0.249750 0.80278087 452302 Social_Isolation
    ## 38  0.569002 0.56935462 452302 Social_Isolation
    ## 39  0.354678 0.72283052 452302 Social_Isolation
    ## 40  0.201953 0.83995366 452302 Social_Isolation
    ## 41 -0.681006 0.49586763 452302 Social_Isolation
    ## 42  2.742100 0.00610480 452302 Social_Isolation

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##    target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1   rs4662080  rs4662076     1      1 CT/TG  NA     1 14357851         T
    ## 2   rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ## 3 rs144505123       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4 rs114131510       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 5 rs145799027       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 6 rs146189059       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy       AF        BETA         SE        Z         P      N
    ## 1         G 0.749401 -0.00284948 0.00236349 -1.20562 0.2279630 452302
    ## 2         T 0.151181  0.00326432 0.00285920  1.14169 0.2535823 452302
    ## 3      <NA>       NA          NA         NA       NA        NA     NA
    ## 4      <NA>       NA          NA         NA       NA        NA     NA
    ## 5      <NA>       NA          NA         NA       NA        NA     NA
    ## 6      <NA>       NA          NA         NA       NA        NA     NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Social_Isolation    C      TRUE    T         G    T    C          TRUE
    ## 2 Social_Isolation    A      TRUE    G         C    A    G          TRUE
    ## 3             <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 4             <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 5             <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 6             <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Social Isolation datasets

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
    ## 12 rs141441332                      A                     C
    ## 13 rs144202318                      A                     G
    ## 14 rs149907089                      C                     G
    ## 15 rs150193285                      T                     C
    ## 16   rs1689013                      C                     T
    ## 17  rs17125944                      C                     T
    ## 18  rs17170228                      A                     G
    ## 19    rs204469                      G                     A
    ## 20   rs2075650                      G                     A
    ## 21   rs2649062                      G                     A
    ## 22   rs2725066                      A                     T
    ## 23   rs2827191                      T                     C
    ## 24    rs359982                      G                     A
    ## 25  rs36033332                      G                     C
    ## 26   rs4662080                      T                     C
    ## 27    rs567075                      C                     T
    ## 28  rs62117204                      T                     C
    ## 29   rs6431219                      T                     C
    ## 30   rs6701713                      G                     A
    ## 31   rs6718282                      A                     G
    ## 32  rs71602496                      G                     A
    ## 33  rs76205446                      A                     T
    ## 34  rs77345379                      T                     C
    ## 35   rs7930318                      T                     C
    ## 36   rs7958488                      T                     A
    ## 37   rs9582517                      C                     T
    ## 38   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639   0.00616331
    ## 2                      G                    C        0.0975  -0.00142144
    ## 3                      T                    A        0.1012   0.00175927
    ## 4                      T                    C        0.1268   0.00450331
    ## 5                      C                    T       -0.1653   0.00173279
    ## 6                      A                    G        0.9151   0.00937169
    ## 7                      G                    A        0.2057  -0.00116717
    ## 8                      C                    G        0.2125  -0.00648304
    ## 9                      T                    C       -0.1092   0.00800301
    ## 10                     C                    T       -0.1057   0.00354156
    ## 11                     G                    A        0.6851  -0.00296306
    ## 12                     A                    C        0.5383   0.00344866
    ## 13                     A                    G        0.7219   0.00939305
    ## 14                     C                    G        0.7109   0.01876030
    ## 15                     T                    C        0.7622  -0.01398630
    ## 16                     C                    T        0.0637   0.00247242
    ## 17                     C                    T        0.0960  -0.00053034
    ## 18                     A                    G        0.1215   0.00245067
    ## 19                     G                    A        0.1588   0.00101109
    ## 20                     G                    A        0.5502   0.00164979
    ## 21                     G                    A        0.0652  -0.00187789
    ## 22                     A                    T       -0.0936  -0.00023567
    ## 23                     T                    C        0.1277  -0.00153830
    ## 24                     G                    A        0.2660   0.00396863
    ## 25                     G                    C        0.4601   0.00379094
    ## 26                     T                    C        0.1421  -0.00284948
    ## 27                     C                    T        0.0900  -0.00127758
    ## 28                     T                    C       -0.1867   0.00688254
    ## 29                     T                    C        0.0774   0.00155033
    ## 30                     G                    A       -0.0709  -0.00047959
    ## 31                     A                    G       -0.1421   0.00602832
    ## 32                     G                    A        0.0780   0.00112002
    ## 33                     A                    T        0.7096   0.00246832
    ## 34                     T                    C        0.2291  -0.00249921
    ## 35                     T                    C        0.0750  -0.00221433
    ## 36                     T                    A        0.5085  -0.00867785
    ## 37                     C                    T       -0.1185  -0.00175846
    ## 38                     A                    G       -0.0853   0.00326432
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893    0.294217  FALSE       FALSE     FALSE     sIwbTv
    ## 2        0.3275    0.325563  FALSE        TRUE     FALSE     sIwbTv
    ## 3        0.7195    0.716501  FALSE        TRUE     FALSE     sIwbTv
    ## 4        0.0709    0.079082  FALSE       FALSE     FALSE     sIwbTv
    ## 5        0.0395    0.037070  FALSE       FALSE     FALSE     sIwbTv
    ## 6        0.0129    0.010182  FALSE       FALSE     FALSE     sIwbTv
    ## 7        0.0227    0.023003  FALSE       FALSE     FALSE     sIwbTv
    ## 8        0.0408    0.039590  FALSE        TRUE     FALSE     sIwbTv
    ## 9        0.1018    0.125130  FALSE       FALSE     FALSE     sIwbTv
    ## 10       0.2566    0.260354  FALSE       FALSE     FALSE     sIwbTv
    ## 11       0.0144    0.014061  FALSE       FALSE     FALSE     sIwbTv
    ## 12       0.0110    0.011222  FALSE       FALSE     FALSE     sIwbTv
    ## 13       0.0135    0.012891  FALSE       FALSE     FALSE     sIwbTv
    ## 14       0.0162    0.012184  FALSE        TRUE     FALSE     sIwbTv
    ## 15       0.0109    0.010949  FALSE       FALSE     FALSE     sIwbTv
    ## 16       0.2493    0.238002  FALSE       FALSE     FALSE     sIwbTv
    ## 17       0.0924    0.091943  FALSE       FALSE     FALSE     sIwbTv
    ## 18       0.0623    0.069165  FALSE       FALSE     FALSE     sIwbTv
    ## 19       0.9632    0.956232  FALSE       FALSE     FALSE     sIwbTv
    ## 20       0.2197    0.146147  FALSE       FALSE     FALSE     sIwbTv
    ## 21       0.3192    0.311618  FALSE       FALSE     FALSE     sIwbTv
    ## 22       0.5128    0.522563  FALSE        TRUE      TRUE     sIwbTv
    ## 23       0.2857    0.289287  FALSE       FALSE     FALSE     sIwbTv
    ## 24       0.0781    0.070882  FALSE       FALSE     FALSE     sIwbTv
    ## 25       0.0386    0.052175  FALSE        TRUE     FALSE     sIwbTv
    ## 26       0.6649    0.749401  FALSE       FALSE     FALSE     sIwbTv
    ## 27       0.6903    0.678509  FALSE       FALSE     FALSE     sIwbTv
    ## 28       0.0601    0.071981  FALSE       FALSE     FALSE     sIwbTv
    ## 29       0.4163    0.414497  FALSE       FALSE     FALSE     sIwbTv
    ## 30       0.7983    0.818181  FALSE       FALSE     FALSE     sIwbTv
    ## 31       0.0440    0.052008  FALSE       FALSE     FALSE     sIwbTv
    ## 32       0.1453    0.153333  FALSE       FALSE     FALSE     sIwbTv
    ## 33       0.0143    0.010858  FALSE        TRUE     FALSE     sIwbTv
    ## 34       0.0185    0.018603  FALSE       FALSE     FALSE     sIwbTv
    ## 35       0.5996    0.596619  FALSE       FALSE     FALSE     sIwbTv
    ## 36       0.0195    0.023954  FALSE        TRUE     FALSE     sIwbTv
    ## 37       0.5073    0.488415  FALSE       FALSE     FALSE     sIwbTv
    ## 38       0.1431    0.151181  FALSE       FALSE     FALSE     sIwbTv
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           22    39130964 0.00224766  2.742100   0.00610480
    ## 2            1   169802956 0.00218581 -0.650302   0.51549699
    ## 3           12    84739181 0.00227256  0.774136   0.43885043
    ## 4            2   127789085 0.00379534  1.186530   0.23541124
    ## 5           11   121435587 0.00542115  0.319635   0.74924518
    ## 6            4   134185712 0.01020249  0.918569   0.35832110
    ## 7            3    63462893 0.00683221 -0.170833   0.86435470
    ## 8            8   121340499 0.00525266 -1.234240   0.21711341
    ## 9            6    83773049 0.00309562  2.585270   0.00973035
    ## 10           2   109820829 0.00233403  1.517360   0.12917639
    ## 11          12    99679113 0.00869896 -0.340622   0.73338811
    ## 12          19    45438575 0.00972335  0.354678   0.72283052
    ## 13           5   165711579 0.00907976  1.034500   0.30090038
    ## 14           7   151626353 0.00933614  2.009430   0.04449186
    ## 15          15    75224360 0.00984246 -1.421020   0.15531193
    ## 16           4   181048651 0.00240510  1.027990   0.30395394
    ## 17          14    53400629 0.00354474 -0.149613   0.88106958
    ## 18           7    33076314 0.00403665  0.607106   0.54378039
    ## 19          19    45490285 0.00500659  0.201953   0.83995366
    ## 20          19    45395619 0.00289944  0.569002   0.56935462
    ## 21           1     5799177 0.00221144 -0.849171   0.39578607
    ## 22           8     4438058 0.00205056 -0.114929   0.90850104
    ## 23          21    23361798 0.00225886 -0.681006   0.49586763
    ## 24           2   219826934 0.00399114  0.994360   0.32004771
    ## 25           9    26834807 0.00460580  0.823079   0.41046328
    ## 26           1    14357851 0.00236349 -1.205620   0.22796303
    ## 27          11    85830157 0.00219300 -0.582571   0.56018203
    ## 28          19    45242967 0.00396290  1.736740   0.08243258
    ## 29           2   127862133 0.00207910  0.745673   0.45586514
    ## 30           1   207786289 0.00265556 -0.180599   0.85668253
    ## 31           2    18039651 0.00461278  1.306870   0.19125607
    ## 32           4      661002 0.00284267  0.394003   0.69357888
    ## 33          19    45355267 0.00988317  0.249750   0.80278087
    ## 34           6    69273670 0.00758030 -0.329698   0.74162833
    ## 35          11    60033371 0.00208782 -1.060590   0.28887637
    ## 36          12     6546166 0.00669848 -1.295500   0.19514935
    ## 37          13   102331030 0.00204902 -0.858193   0.39078574
    ## 38          18    35373923 0.00285920  1.141690   0.25358233
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
    ## 13             452302 Day2018sociso            TRUE            reported
    ## 14             452302 Day2018sociso            TRUE            reported
    ## 15             452302 Day2018sociso            TRUE            reported
    ## 16             452302 Day2018sociso            TRUE            reported
    ## 17             452302 Day2018sociso            TRUE            reported
    ## 18             452302 Day2018sociso            TRUE            reported
    ## 19             452302 Day2018sociso            TRUE            reported
    ## 20             452302 Day2018sociso            TRUE            reported
    ## 21             452302 Day2018sociso            TRUE            reported
    ## 22             452302 Day2018sociso            TRUE            reported
    ## 23             452302 Day2018sociso            TRUE            reported
    ## 24             452302 Day2018sociso            TRUE            reported
    ## 25             452302 Day2018sociso            TRUE            reported
    ## 26             452302 Day2018sociso            TRUE            reported
    ## 27             452302 Day2018sociso            TRUE            reported
    ## 28             452302 Day2018sociso            TRUE            reported
    ## 29             452302 Day2018sociso            TRUE            reported
    ## 30             452302 Day2018sociso            TRUE            reported
    ## 31             452302 Day2018sociso            TRUE            reported
    ## 32             452302 Day2018sociso            TRUE            reported
    ## 33             452302 Day2018sociso            TRUE            reported
    ## 34             452302 Day2018sociso            TRUE            reported
    ## 35             452302 Day2018sociso            TRUE            reported
    ## 36             452302 Day2018sociso            TRUE            reported
    ## 37             452302 Day2018sociso            TRUE            reported
    ## 38             452302 Day2018sociso            TRUE            reported
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
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24            NA               <NA>              <NA>              <NA>
    ## 25            NA               <NA>              <NA>              <NA>
    ## 26          TRUE          rs4662080         rs4662076                 T
    ## 27            NA               <NA>              <NA>              <NA>
    ## 28            NA               <NA>              <NA>              <NA>
    ## 29            NA               <NA>              <NA>              <NA>
    ## 30            NA               <NA>              <NA>              <NA>
    ## 31            NA               <NA>              <NA>              <NA>
    ## 32            NA               <NA>              <NA>              <NA>
    ## 33            NA               <NA>              <NA>              <NA>
    ## 34            NA               <NA>              <NA>              <NA>
    ## 35            NA               <NA>              <NA>              <NA>
    ## 36            NA               <NA>              <NA>              <NA>
    ## 37            NA               <NA>              <NA>              <NA>
    ## 38          TRUE          rs9947273        rs28702850                 A
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
    ## 12              <NA>             <NA>             <NA>           19
    ## 13              <NA>             <NA>             <NA>            5
    ## 14              <NA>             <NA>             <NA>            7
    ## 15              <NA>             <NA>             <NA>           15
    ## 16              <NA>             <NA>             <NA>            4
    ## 17              <NA>             <NA>             <NA>           14
    ## 18              <NA>             <NA>             <NA>            7
    ## 19              <NA>             <NA>             <NA>           19
    ## 20              <NA>             <NA>             <NA>           19
    ## 21              <NA>             <NA>             <NA>            1
    ## 22              <NA>             <NA>             <NA>            8
    ## 23              <NA>             <NA>             <NA>           21
    ## 24              <NA>             <NA>             <NA>            2
    ## 25              <NA>             <NA>             <NA>            9
    ## 26                 C                G                T            1
    ## 27              <NA>             <NA>             <NA>           11
    ## 28              <NA>             <NA>             <NA>           19
    ## 29              <NA>             <NA>             <NA>            2
    ## 30              <NA>             <NA>             <NA>            1
    ## 31              <NA>             <NA>             <NA>            2
    ## 32              <NA>             <NA>             <NA>            4
    ## 33              <NA>             <NA>             <NA>           19
    ## 34              <NA>             <NA>             <NA>            6
    ## 35              <NA>             <NA>             <NA>           11
    ## 36              <NA>             <NA>             <NA>           12
    ## 37              <NA>             <NA>             <NA>           13
    ## 38                 G                T                C           18
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
    ## 12     45438575      0.0632   8.517405     1.713e-17               40255
    ## 13    165711579      0.1572   4.592239     4.356e-06               40255
    ## 14    151626353      0.1535   4.631270     3.637e-06               40255
    ## 15     75224360      0.1650   4.619394     3.834e-06               40255
    ## 16    181048651      0.0139   4.582730     4.657e-06               40255
    ## 17     53400629      0.0203   4.729060     2.321e-06               40255
    ## 18     33076314      0.0248   4.899194     1.004e-06               40255
    ## 19     45490285      0.0341   4.656890     3.269e-06               40255
    ## 20     45395619      0.0223  24.672600    5.980e-134               40255
    ## 21      5799177      0.0131   4.977100     6.120e-07               40255
    ## 22      4438058      0.0191  -4.900524     9.948e-07               40255
    ## 23     23361798      0.0279   4.577061     4.895e-06               40255
    ## 24    219826934      0.0513   5.185190     2.159e-07               40255
    ## 25     26834807      0.0865   5.319080     1.030e-07               40255
    ## 26     14363419      0.0296   4.800676     1.586e-06               40255
    ## 27     85830157      0.0132   6.818180     9.084e-12               40255
    ## 28     45242967      0.0278  -6.715827     1.864e-11               40255
    ## 29    127862133      0.0124   6.241935     3.897e-10               40255
    ## 30    207786289      0.0146  -4.856160     1.184e-06               40255
    ## 31     18039651      0.0308  -4.613636     3.840e-06               40255
    ## 32       661002      0.0171   4.561400     4.978e-06               40255
    ## 33     45355267      0.1234   5.750405     9.010e-09               40255
    ## 34     69273670      0.0501   4.572854     4.830e-06               40255
    ## 35     60033371      0.0125   6.000000     2.245e-09               40255
    ## 36      6546166      0.1111   4.576960     4.719e-06               40255
    ## 37    102331030      0.0257  -4.610890     3.908e-06               40255
    ## 38     35409158      0.0178  -4.792135     1.593e-06               40255
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 2  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 3  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 4  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 5  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 6  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 7  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 8  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 9  Huang2017aaos             TRUE             reported      82OL8I      2
    ## 10 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 11 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 12 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 13 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 14 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 15 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 16 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 17 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 18 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 19 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 20 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 21 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 22 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 23 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 24 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 25 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 26 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 27 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 28 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 29 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 30 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 31 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 32 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 33 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 34 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 35 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 36 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 37 Huang2017aaos             TRUE             reported      82OL8I      2
    ## 38 Huang2017aaos             TRUE             reported      82OL8I      2
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
    ## 12    TRUE          FALSE 5e-06              NA            NA
    ## 13    TRUE           TRUE 5e-06              NA            NA
    ## 14    TRUE           TRUE 5e-06              NA            NA
    ## 15    TRUE           TRUE 5e-06              NA            NA
    ## 16    TRUE           TRUE 5e-06              NA            NA
    ## 17    TRUE           TRUE 5e-06              NA            NA
    ## 18    TRUE           TRUE 5e-06              NA            NA
    ## 19    TRUE          FALSE 5e-06              NA            NA
    ## 20    TRUE          FALSE 5e-06              NA            NA
    ## 21    TRUE           TRUE 5e-06              NA            NA
    ## 22   FALSE           TRUE 5e-06              NA            NA
    ## 23    TRUE           TRUE 5e-06              NA            NA
    ## 24    TRUE           TRUE 5e-06              NA            NA
    ## 25    TRUE           TRUE 5e-06              NA            NA
    ## 26    TRUE           TRUE 5e-06              NA            NA
    ## 27    TRUE           TRUE 5e-06              NA            NA
    ## 28    TRUE          FALSE 5e-06              NA            NA
    ## 29    TRUE           TRUE 5e-06              NA            NA
    ## 30    TRUE           TRUE 5e-06              NA            NA
    ## 31    TRUE           TRUE 5e-06              NA            NA
    ## 32    TRUE           TRUE 5e-06              NA            NA
    ## 33    TRUE          FALSE 5e-06              NA            NA
    ## 34    TRUE           TRUE 5e-06              NA            NA
    ## 35    TRUE           TRUE 5e-06              NA            NA
    ## 36    TRUE           TRUE 5e-06              NA            NA
    ## 37    TRUE           TRUE 5e-06              NA            NA
    ## 38    TRUE           TRUE 5e-06              NA            NA
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
    ## 19          TRUE
    ## 20          TRUE
    ## 21          TRUE
    ## 22            NA
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
    ## 36          TRUE
    ## 37          TRUE
    ## 38          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17   0.72283052
    ## 2    rs204469          19    45490285     3.269e-06   0.83995366
    ## 3   rs2075650          19    45395619    5.980e-134   0.56935462
    ## 4  rs62117204          19    45242967     1.864e-11   0.08243258
    ## 5  rs76205446          19    45355267     9.010e-09   0.80278087

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
    ## 1            FALSE    0.0193715 24.82975  0.05 2.139056 0.3097592

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
on Social Isolation. <br>

**Table 6** MR causaul estimates for AAOS on Social Isolation

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 2      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 3      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 4      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   32 -0.002002104 0.003387259
    ## 2                           Weighted median   32  0.007213018 0.005236574
    ## 3                             Weighted mode   32  0.007987926 0.007141571
    ## 4                                  MR Egger   32  0.005994816 0.005754207
    ##        pval
    ## 1 0.5544741
    ## 2 0.1683790
    ## 3 0.2719416
    ## 4 0.3058211

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Social Isolation and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 2      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 37.55318   30 0.16156180
    ## 2 Inverse variance weighted 41.82292   31 0.09284448

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome      exposure egger_intercept
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos    -0.001679115
    ##             se       pval
    ## 1 0.0009091651 0.07465042

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome      exposure    pt
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 44.81036 0.0916

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 2      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 3      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 4      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   32 -0.002002104 0.003387259
    ## 2                           Weighted median   32  0.007213018 0.005410875
    ## 3                             Weighted mode   32  0.007987926 0.006676780
    ## 4                                  MR Egger   32  0.005994816 0.005754207
    ##        pval
    ## 1 0.5544741
    ## 2 0.1825122
    ## 3 0.2406209
    ## 4 0.3058211

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ## 2      82OL8I     sIwbTv Day2018sociso Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 37.55318   30 0.16156180
    ## 2 Inverse variance weighted 41.82292   31 0.09284448

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome      exposure egger_intercept
    ## 1      82OL8I     sIwbTv Day2018sociso Huang2017aaos    -0.001679115
    ##             se       pval
    ## 1 0.0009091651 0.07465042

<br>
