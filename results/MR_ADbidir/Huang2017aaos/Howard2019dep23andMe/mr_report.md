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

### Outcome: Depression

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Depression

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1    rs2649062     1   5799177    A    G 0.3162  0.0020 0.0038  0.52631600
    ## 2    rs4662080     1  14363419    C    T 0.7177  0.0022 0.0040  0.55000000
    ## 3   rs10919252     1 169802956    C    G 0.3276  0.0034 0.0037  0.91891900
    ## 4    rs6701713     1 207786289    A    G 0.8125 -0.0009 0.0045 -0.20000000
    ## 5  rs144505123     1 221802052    C    T 0.0086 -0.0258 0.0222 -1.16216216
    ## 6    rs6718282     2  18039651    G    A 0.0509  0.0004 0.0083  0.04819277
    ## 7  rs114131510    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 8   rs12615104     2 109820829    T    C 0.2616  0.0023 0.0040  0.57500000
    ## 9  rs111906619     2 127789085    C    T 0.0748  0.0102 0.0069  1.47826087
    ## 10   rs6431219     2 127862133    C    T 0.4097  0.0018 0.0036  0.50000000
    ## 11    rs359982     2 219826934    A    G 0.0702  0.0160 0.0073  2.19178000
    ## 12 rs116341973     3  63462893    A    G 0.0225 -0.0117 0.0120 -0.97500000
    ## 13 rs145799027    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 14  rs71602496     4    661002    A    G 0.1540  0.0004 0.0050  0.08000000
    ## 15 rs115803892     4 134185712    G    A 0.0118 -0.0067 0.0169 -0.39644970
    ## 16   rs1689013     4 181048651    T    C 0.2447  0.0032 0.0041  0.78048800
    ## 17 rs144202318     5 165711579    G    A 0.0134  0.0316 0.0167  1.89221557
    ## 18  rs77345379     6  69273670    C    T 0.0192 -0.0190 0.0135 -1.40740741
    ## 19  rs12153819     6  83773049    C    T 0.1235  0.0129 0.0054  2.38888889
    ## 20  rs17170228     7  33076314    G    A 0.0656 -0.0034 0.0072 -0.47222222
    ## 21 rs149907089    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 22   rs2725066     8   4438058    T    A 0.5217  0.0059 0.0036  1.63888889
    ## 23 rs117201713     8 121340499    G    C 0.0387 -0.0179 0.0093 -1.92473118
    ## 24  rs36033332     9  26834807    C    G 0.0487  0.0114 0.0090  1.26667000
    ## 25   rs7930318    11  60033371    C    T 0.5961 -0.0008 0.0036 -0.22222222
    ## 26    rs567075    11  85830157    T    C 0.6784 -0.0038 0.0038 -1.00000000
    ## 27  rs11218343    11 121435587    T    C 0.0388 -0.0013 0.0092 -0.14130400
    ## 28   rs7958488    12   6546166    A    T 0.0238  0.0070 0.0122  0.57377000
    ## 29   rs1118069    12  84739181    A    T 0.7157  0.0157 0.0039  4.02564000
    ## 30 rs140016885    12  99679113    A    G 0.0153  0.0376 0.0173  2.17341000
    ## 31   rs9582517    13 102331030    T    C 0.4960  0.0003 0.0035  0.08571430
    ## 32 rs146189059    14  47173254    C    G 0.0093  0.0227 0.0206  1.10194000
    ## 33  rs17125944    14  53400629    T    C 0.0909 -0.0136 0.0061 -2.22951000
    ## 34 rs150193285    15  75224360    C    T 0.0111  0.0185 0.0173  1.06936416
    ## 35   rs9947273    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 36  rs62117204    19  45242967    C    T 0.0706  0.0159 0.0070  2.27142857
    ## 37  rs76205446    19  45355267    T    A 0.0103  0.0060 0.0188  0.31914894
    ## 38   rs2075650    19  45395619    A    G 0.1450 -0.0001 0.0050 -0.02000000
    ## 39 rs141441332    19  45438575    C    A 0.0112  0.0071 0.0181  0.39226519
    ## 40    rs204469    19  45490285    A    G 0.9576  0.0079 0.0089  0.88764000
    ## 41   rs2827191    21  23361798    C    T 0.2904 -0.0058 0.0039 -1.48717949
    ## 42   rs1043441    22  39130964    C    T 0.2951  0.0077 0.0039  1.97435897
    ##            P      N      TRAIT
    ## 1  0.6015000 807553 Depression
    ## 2  0.5852000 807553 Depression
    ## 3  0.3618000 807553 Depression
    ## 4  0.8427000 807553 Depression
    ## 5  0.2445000 807553 Depression
    ## 6  0.9614000 807553 Depression
    ## 7         NA     NA       <NA>
    ## 8  0.5683000 807553 Depression
    ## 9  0.1366000 807553 Depression
    ## 10 0.6198000 807553 Depression
    ## 11 0.0274300 807553 Depression
    ## 12 0.3292000 807553 Depression
    ## 13        NA     NA       <NA>
    ## 14 0.9367000 807553 Depression
    ## 15 0.6923000 807553 Depression
    ## 16 0.4386000 807553 Depression
    ## 17 0.0588800 807553 Depression
    ## 18 0.1594000 807553 Depression
    ## 19 0.0177500 807553 Depression
    ## 20 0.6346000 807553 Depression
    ## 21        NA     NA       <NA>
    ## 22 0.1039000 807553 Depression
    ## 23 0.0535000 807553 Depression
    ## 24 0.2037000 807553 Depression
    ## 25 0.8255000 807553 Depression
    ## 26 0.3210000 807553 Depression
    ## 27 0.8873000 807553 Depression
    ## 28 0.5659000 807553 Depression
    ## 29 0.0000647 807553 Depression
    ## 30 0.0300500 807553 Depression
    ## 31 0.9322000 807553 Depression
    ## 32 0.2695000 807553 Depression
    ## 33 0.0269300 807553 Depression
    ## 34 0.2858000 807553 Depression
    ## 35        NA     NA       <NA>
    ## 36 0.0222100 807553 Depression
    ## 37 0.7502000 807553 Depression
    ## 38 0.9842000 807553 Depression
    ## 39 0.6955000 807553 Depression
    ## 40 0.3730000 807553 Depression
    ## 41 0.1400000 807553 Depression
    ## 42 0.0500700 807553 Depression

<br>

**Table 3:** Proxy SNPs for Depression

    ##    target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1   rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ## 2 rs114131510       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 3 rs145799027       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4 rs149907089       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy     AF   BETA     SE        Z      P      N      TRAIT  ref
    ## 1      TRUE 0.1548 0.0074 0.0049 1.510204 0.1339 807553 Depression    A
    ## 2        NA     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 3        NA     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 4        NA     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ##   ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1      TRUE    G         C    A    G          TRUE
    ## 2        NA <NA>      <NA> <NA> <NA>            NA
    ## 3        NA <NA>      <NA> <NA> <NA>            NA
    ## 4        NA <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Depression datasets

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
    ## 14 rs144505123                      T                     C
    ## 15 rs146189059                      G                     C
    ## 16 rs150193285                      T                     C
    ## 17   rs1689013                      C                     T
    ## 18  rs17125944                      C                     T
    ## 19  rs17170228                      A                     G
    ## 20    rs204469                      G                     A
    ## 21   rs2075650                      G                     A
    ## 22   rs2649062                      G                     A
    ## 23   rs2725066                      A                     T
    ## 24   rs2827191                      T                     C
    ## 25    rs359982                      G                     A
    ## 26  rs36033332                      G                     C
    ## 27   rs4662080                      T                     C
    ## 28    rs567075                      C                     T
    ## 29  rs62117204                      T                     C
    ## 30   rs6431219                      T                     C
    ## 31   rs6701713                      G                     A
    ## 32   rs6718282                      A                     G
    ## 33  rs71602496                      G                     A
    ## 34  rs76205446                      A                     T
    ## 35  rs77345379                      T                     C
    ## 36   rs7930318                      T                     C
    ## 37   rs7958488                      T                     A
    ## 38   rs9582517                      C                     T
    ## 39   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639       0.0077
    ## 2                      G                    C        0.0975       0.0034
    ## 3                      T                    A        0.1012       0.0157
    ## 4                      T                    C        0.1268       0.0102
    ## 5                      C                    T       -0.1653      -0.0013
    ## 6                      A                    G        0.9151      -0.0067
    ## 7                      G                    A        0.2057      -0.0117
    ## 8                      C                    G        0.2125      -0.0179
    ## 9                      T                    C       -0.1092       0.0129
    ## 10                     C                    T       -0.1057       0.0023
    ## 11                     G                    A        0.6851       0.0376
    ## 12                     A                    C        0.5383       0.0071
    ## 13                     A                    G        0.7219       0.0316
    ## 14                     T                    C        0.7709      -0.0258
    ## 15                     G                    C        0.9444       0.0227
    ## 16                     T                    C        0.7622       0.0185
    ## 17                     C                    T        0.0637       0.0032
    ## 18                     C                    T        0.0960      -0.0136
    ## 19                     A                    G        0.1215      -0.0034
    ## 20                     G                    A        0.1588       0.0079
    ## 21                     G                    A        0.5502      -0.0001
    ## 22                     G                    A        0.0652       0.0020
    ## 23                     A                    T       -0.0936       0.0059
    ## 24                     T                    C        0.1277      -0.0058
    ## 25                     G                    A        0.2660       0.0160
    ## 26                     G                    C        0.4601       0.0114
    ## 27                     T                    C        0.1421       0.0022
    ## 28                     C                    T        0.0900      -0.0038
    ## 29                     T                    C       -0.1867       0.0159
    ## 30                     T                    C        0.0774       0.0018
    ## 31                     G                    A       -0.0709      -0.0009
    ## 32                     A                    G       -0.1421       0.0004
    ## 33                     G                    A        0.0780       0.0004
    ## 34                     A                    T        0.7096       0.0060
    ## 35                     T                    C        0.2291      -0.0190
    ## 36                     T                    C        0.0750      -0.0008
    ## 37                     T                    A        0.5085       0.0070
    ## 38                     C                    T       -0.1185       0.0003
    ## 39                     A                    G       -0.0853       0.0074
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893      0.2951  FALSE       FALSE     FALSE     XNmH6t
    ## 2        0.3275      0.3276  FALSE        TRUE     FALSE     XNmH6t
    ## 3        0.7195      0.7157  FALSE        TRUE     FALSE     XNmH6t
    ## 4        0.0709      0.0748  FALSE       FALSE     FALSE     XNmH6t
    ## 5        0.0395      0.0388  FALSE       FALSE     FALSE     XNmH6t
    ## 6        0.0129      0.0118  FALSE       FALSE     FALSE     XNmH6t
    ## 7        0.0227      0.0225  FALSE       FALSE     FALSE     XNmH6t
    ## 8        0.0408      0.0387  FALSE        TRUE     FALSE     XNmH6t
    ## 9        0.1018      0.1235  FALSE       FALSE     FALSE     XNmH6t
    ## 10       0.2566      0.2616  FALSE       FALSE     FALSE     XNmH6t
    ## 11       0.0144      0.0153  FALSE       FALSE     FALSE     XNmH6t
    ## 12       0.0110      0.0112  FALSE       FALSE     FALSE     XNmH6t
    ## 13       0.0135      0.0134  FALSE       FALSE     FALSE     XNmH6t
    ## 14       0.0113      0.0086  FALSE       FALSE     FALSE     XNmH6t
    ## 15       0.0111      0.0093  FALSE        TRUE     FALSE     XNmH6t
    ## 16       0.0109      0.0111  FALSE       FALSE     FALSE     XNmH6t
    ## 17       0.2493      0.2447  FALSE       FALSE     FALSE     XNmH6t
    ## 18       0.0924      0.0909  FALSE       FALSE     FALSE     XNmH6t
    ## 19       0.0623      0.0656  FALSE       FALSE     FALSE     XNmH6t
    ## 20       0.9632      0.9576  FALSE       FALSE     FALSE     XNmH6t
    ## 21       0.2197      0.1450  FALSE       FALSE     FALSE     XNmH6t
    ## 22       0.3192      0.3162  FALSE       FALSE     FALSE     XNmH6t
    ## 23       0.5128      0.5217  FALSE        TRUE      TRUE     XNmH6t
    ## 24       0.2857      0.2904  FALSE       FALSE     FALSE     XNmH6t
    ## 25       0.0781      0.0702  FALSE       FALSE     FALSE     XNmH6t
    ## 26       0.0386      0.0487  FALSE        TRUE     FALSE     XNmH6t
    ## 27       0.6649      0.7177  FALSE       FALSE     FALSE     XNmH6t
    ## 28       0.6903      0.6784  FALSE       FALSE     FALSE     XNmH6t
    ## 29       0.0601      0.0706  FALSE       FALSE     FALSE     XNmH6t
    ## 30       0.4163      0.4097  FALSE       FALSE     FALSE     XNmH6t
    ## 31       0.7983      0.8125  FALSE       FALSE     FALSE     XNmH6t
    ## 32       0.0440      0.0509  FALSE       FALSE     FALSE     XNmH6t
    ## 33       0.1453      0.1540  FALSE       FALSE     FALSE     XNmH6t
    ## 34       0.0143      0.0103  FALSE        TRUE     FALSE     XNmH6t
    ## 35       0.0185      0.0192  FALSE       FALSE     FALSE     XNmH6t
    ## 36       0.5996      0.5961  FALSE       FALSE     FALSE     XNmH6t
    ## 37       0.0195      0.0238  FALSE        TRUE     FALSE     XNmH6t
    ## 38       0.5073      0.4960  FALSE       FALSE     FALSE     XNmH6t
    ## 39       0.1431      0.1548  FALSE       FALSE     FALSE     XNmH6t
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           22    39130964     0.0039  1.97435897    0.0500700
    ## 2            1   169802956     0.0037  0.91891900    0.3618000
    ## 3           12    84739181     0.0039  4.02564000    0.0000647
    ## 4            2   127789085     0.0069  1.47826087    0.1366000
    ## 5           11   121435587     0.0092 -0.14130400    0.8873000
    ## 6            4   134185712     0.0169 -0.39644970    0.6923000
    ## 7            3    63462893     0.0120 -0.97500000    0.3292000
    ## 8            8   121340499     0.0093 -1.92473118    0.0535000
    ## 9            6    83773049     0.0054  2.38888889    0.0177500
    ## 10           2   109820829     0.0040  0.57500000    0.5683000
    ## 11          12    99679113     0.0173  2.17341000    0.0300500
    ## 12          19    45438575     0.0181  0.39226519    0.6955000
    ## 13           5   165711579     0.0167  1.89221557    0.0588800
    ## 14           1   221802052     0.0222 -1.16216216    0.2445000
    ## 15          14    47173254     0.0206  1.10194000    0.2695000
    ## 16          15    75224360     0.0173  1.06936416    0.2858000
    ## 17           4   181048651     0.0041  0.78048800    0.4386000
    ## 18          14    53400629     0.0061 -2.22951000    0.0269300
    ## 19           7    33076314     0.0072 -0.47222222    0.6346000
    ## 20          19    45490285     0.0089  0.88764000    0.3730000
    ## 21          19    45395619     0.0050 -0.02000000    0.9842000
    ## 22           1     5799177     0.0038  0.52631600    0.6015000
    ## 23           8     4438058     0.0036  1.63888889    0.1039000
    ## 24          21    23361798     0.0039 -1.48717949    0.1400000
    ## 25           2   219826934     0.0073  2.19178000    0.0274300
    ## 26           9    26834807     0.0090  1.26667000    0.2037000
    ## 27           1    14363419     0.0040  0.55000000    0.5852000
    ## 28          11    85830157     0.0038 -1.00000000    0.3210000
    ## 29          19    45242967     0.0070  2.27142857    0.0222100
    ## 30           2   127862133     0.0036  0.50000000    0.6198000
    ## 31           1   207786289     0.0045 -0.20000000    0.8427000
    ## 32           2    18039651     0.0083  0.04819277    0.9614000
    ## 33           4      661002     0.0050  0.08000000    0.9367000
    ## 34          19    45355267     0.0188  0.31914894    0.7502000
    ## 35           6    69273670     0.0135 -1.40740741    0.1594000
    ## 36          11    60033371     0.0036 -0.22222222    0.8255000
    ## 37          12     6546166     0.0122  0.57377000    0.5659000
    ## 38          13   102331030     0.0035  0.08571430    0.9322000
    ## 39          18    35373923     0.0049  1.51020408    0.1339000
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              807553 Howard2019dep23andMe            TRUE
    ## 2              807553 Howard2019dep23andMe            TRUE
    ## 3              807553 Howard2019dep23andMe            TRUE
    ## 4              807553 Howard2019dep23andMe            TRUE
    ## 5              807553 Howard2019dep23andMe            TRUE
    ## 6              807553 Howard2019dep23andMe            TRUE
    ## 7              807553 Howard2019dep23andMe            TRUE
    ## 8              807553 Howard2019dep23andMe            TRUE
    ## 9              807553 Howard2019dep23andMe            TRUE
    ## 10             807553 Howard2019dep23andMe            TRUE
    ## 11             807553 Howard2019dep23andMe            TRUE
    ## 12             807553 Howard2019dep23andMe            TRUE
    ## 13             807553 Howard2019dep23andMe            TRUE
    ## 14             807553 Howard2019dep23andMe            TRUE
    ## 15             807553 Howard2019dep23andMe            TRUE
    ## 16             807553 Howard2019dep23andMe            TRUE
    ## 17             807553 Howard2019dep23andMe            TRUE
    ## 18             807553 Howard2019dep23andMe            TRUE
    ## 19             807553 Howard2019dep23andMe            TRUE
    ## 20             807553 Howard2019dep23andMe            TRUE
    ## 21             807553 Howard2019dep23andMe            TRUE
    ## 22             807553 Howard2019dep23andMe            TRUE
    ## 23             807553 Howard2019dep23andMe            TRUE
    ## 24             807553 Howard2019dep23andMe            TRUE
    ## 25             807553 Howard2019dep23andMe            TRUE
    ## 26             807553 Howard2019dep23andMe            TRUE
    ## 27             807553 Howard2019dep23andMe            TRUE
    ## 28             807553 Howard2019dep23andMe            TRUE
    ## 29             807553 Howard2019dep23andMe            TRUE
    ## 30             807553 Howard2019dep23andMe            TRUE
    ## 31             807553 Howard2019dep23andMe            TRUE
    ## 32             807553 Howard2019dep23andMe            TRUE
    ## 33             807553 Howard2019dep23andMe            TRUE
    ## 34             807553 Howard2019dep23andMe            TRUE
    ## 35             807553 Howard2019dep23andMe            TRUE
    ## 36             807553 Howard2019dep23andMe            TRUE
    ## 37             807553 Howard2019dep23andMe            TRUE
    ## 38             807553 Howard2019dep23andMe            TRUE
    ## 39             807553 Howard2019dep23andMe            TRUE
    ##    pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1             reported            NA               <NA>              <NA>
    ## 2             reported            NA               <NA>              <NA>
    ## 3             reported            NA               <NA>              <NA>
    ## 4             reported            NA               <NA>              <NA>
    ## 5             reported            NA               <NA>              <NA>
    ## 6             reported            NA               <NA>              <NA>
    ## 7             reported            NA               <NA>              <NA>
    ## 8             reported            NA               <NA>              <NA>
    ## 9             reported            NA               <NA>              <NA>
    ## 10            reported            NA               <NA>              <NA>
    ## 11            reported            NA               <NA>              <NA>
    ## 12            reported            NA               <NA>              <NA>
    ## 13            reported            NA               <NA>              <NA>
    ## 14            reported            NA               <NA>              <NA>
    ## 15            reported            NA               <NA>              <NA>
    ## 16            reported            NA               <NA>              <NA>
    ## 17            reported            NA               <NA>              <NA>
    ## 18            reported            NA               <NA>              <NA>
    ## 19            reported            NA               <NA>              <NA>
    ## 20            reported            NA               <NA>              <NA>
    ## 21            reported            NA               <NA>              <NA>
    ## 22            reported            NA               <NA>              <NA>
    ## 23            reported            NA               <NA>              <NA>
    ## 24            reported            NA               <NA>              <NA>
    ## 25            reported            NA               <NA>              <NA>
    ## 26            reported            NA               <NA>              <NA>
    ## 27            reported            NA               <NA>              <NA>
    ## 28            reported            NA               <NA>              <NA>
    ## 29            reported            NA               <NA>              <NA>
    ## 30            reported            NA               <NA>              <NA>
    ## 31            reported            NA               <NA>              <NA>
    ## 32            reported            NA               <NA>              <NA>
    ## 33            reported            NA               <NA>              <NA>
    ## 34            reported            NA               <NA>              <NA>
    ## 35            reported            NA               <NA>              <NA>
    ## 36            reported            NA               <NA>              <NA>
    ## 37            reported            NA               <NA>              <NA>
    ## 38            reported            NA               <NA>              <NA>
    ## 39            reported          TRUE          rs9947273        rs28702850
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>              <NA>               NA             <NA>
    ## 2               <NA>              <NA>               NA             <NA>
    ## 3               <NA>              <NA>               NA             <NA>
    ## 4               <NA>              <NA>               NA             <NA>
    ## 5               <NA>              <NA>               NA             <NA>
    ## 6               <NA>              <NA>               NA             <NA>
    ## 7               <NA>              <NA>               NA             <NA>
    ## 8               <NA>              <NA>               NA             <NA>
    ## 9               <NA>              <NA>               NA             <NA>
    ## 10              <NA>              <NA>               NA             <NA>
    ## 11              <NA>              <NA>               NA             <NA>
    ## 12              <NA>              <NA>               NA             <NA>
    ## 13              <NA>              <NA>               NA             <NA>
    ## 14              <NA>              <NA>               NA             <NA>
    ## 15              <NA>              <NA>               NA             <NA>
    ## 16              <NA>              <NA>               NA             <NA>
    ## 17              <NA>              <NA>               NA             <NA>
    ## 18              <NA>              <NA>               NA             <NA>
    ## 19              <NA>              <NA>               NA             <NA>
    ## 20              <NA>              <NA>               NA             <NA>
    ## 21              <NA>              <NA>               NA             <NA>
    ## 22              <NA>              <NA>               NA             <NA>
    ## 23              <NA>              <NA>               NA             <NA>
    ## 24              <NA>              <NA>               NA             <NA>
    ## 25              <NA>              <NA>               NA             <NA>
    ## 26              <NA>              <NA>               NA             <NA>
    ## 27              <NA>              <NA>               NA             <NA>
    ## 28              <NA>              <NA>               NA             <NA>
    ## 29              <NA>              <NA>               NA             <NA>
    ## 30              <NA>              <NA>               NA             <NA>
    ## 31              <NA>              <NA>               NA             <NA>
    ## 32              <NA>              <NA>               NA             <NA>
    ## 33              <NA>              <NA>               NA             <NA>
    ## 34              <NA>              <NA>               NA             <NA>
    ## 35              <NA>              <NA>               NA             <NA>
    ## 36              <NA>              <NA>               NA             <NA>
    ## 37              <NA>              <NA>               NA             <NA>
    ## 38              <NA>              <NA>               NA             <NA>
    ## 39                 A                 G             TRUE                C
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            22     39130964      0.0135  -4.733333     2.110e-06
    ## 2             1    169802956      0.0198   4.924240     8.182e-07
    ## 3            12     84739181      0.0216   4.685190     2.693e-06
    ## 4             2    127789085      0.0256   4.953125     7.088e-07
    ## 5            11    121435587      0.0329  -5.024320     5.148e-07
    ## 6             4    134185712      0.1973   4.638115     3.498e-06
    ## 7             3     63462893      0.0399   5.155390     2.478e-07
    ## 8             8    121340499      0.0456   4.660088     3.120e-06
    ## 9             6     83773049      0.0235  -4.646809     3.291e-06
    ## 10            2    109820829      0.0221  -4.782810     1.829e-06
    ## 11           12     99679113      0.1416   4.838280     1.310e-06
    ## 12           19     45438575      0.0632   8.517405     1.713e-17
    ## 13            5    165711579      0.1572   4.592239     4.356e-06
    ## 14            1    221802052      0.1609   4.791175     1.661e-06
    ## 15           14     47173254      0.1835   5.146590     2.634e-07
    ## 16           15     75224360      0.1650   4.619394     3.834e-06
    ## 17            4    181048651      0.0139   4.582730     4.657e-06
    ## 18           14     53400629      0.0203   4.729060     2.321e-06
    ## 19            7     33076314      0.0248   4.899194     1.004e-06
    ## 20           19     45490285      0.0341   4.656890     3.269e-06
    ## 21           19     45395619      0.0223  24.672600    5.980e-134
    ## 22            1      5799177      0.0131   4.977100     6.120e-07
    ## 23            8      4438058      0.0191  -4.900524     9.948e-07
    ## 24           21     23361798      0.0279   4.577061     4.895e-06
    ## 25            2    219826934      0.0513   5.185190     2.159e-07
    ## 26            9     26834807      0.0865   5.319080     1.030e-07
    ## 27            1     14363419      0.0296   4.800676     1.586e-06
    ## 28           11     85830157      0.0132   6.818180     9.084e-12
    ## 29           19     45242967      0.0278  -6.715827     1.864e-11
    ## 30            2    127862133      0.0124   6.241935     3.897e-10
    ## 31            1    207786289      0.0146  -4.856160     1.184e-06
    ## 32            2     18039651      0.0308  -4.613636     3.840e-06
    ## 33            4       661002      0.0171   4.561400     4.978e-06
    ## 34           19     45355267      0.1234   5.750405     9.010e-09
    ## 35            6     69273670      0.0501   4.572854     4.830e-06
    ## 36           11     60033371      0.0125   6.000000     2.245e-09
    ## 37           12      6546166      0.1111   4.576960     4.719e-06
    ## 38           13    102331030      0.0257  -4.610890     3.908e-06
    ## 39           18     35409158      0.0178  -4.792135     1.593e-06
    ##    samplesize.exposure      exposure mr_keep.exposure pval_origin.exposure
    ## 1                40255 Huang2017aaos             TRUE             reported
    ## 2                40255 Huang2017aaos             TRUE             reported
    ## 3                40255 Huang2017aaos             TRUE             reported
    ## 4                40255 Huang2017aaos             TRUE             reported
    ## 5                40255 Huang2017aaos             TRUE             reported
    ## 6                40255 Huang2017aaos             TRUE             reported
    ## 7                40255 Huang2017aaos             TRUE             reported
    ## 8                40255 Huang2017aaos             TRUE             reported
    ## 9                40255 Huang2017aaos             TRUE             reported
    ## 10               40255 Huang2017aaos             TRUE             reported
    ## 11               40255 Huang2017aaos             TRUE             reported
    ## 12               40255 Huang2017aaos             TRUE             reported
    ## 13               40255 Huang2017aaos             TRUE             reported
    ## 14               40255 Huang2017aaos             TRUE             reported
    ## 15               40255 Huang2017aaos             TRUE             reported
    ## 16               40255 Huang2017aaos             TRUE             reported
    ## 17               40255 Huang2017aaos             TRUE             reported
    ## 18               40255 Huang2017aaos             TRUE             reported
    ## 19               40255 Huang2017aaos             TRUE             reported
    ## 20               40255 Huang2017aaos             TRUE             reported
    ## 21               40255 Huang2017aaos             TRUE             reported
    ## 22               40255 Huang2017aaos             TRUE             reported
    ## 23               40255 Huang2017aaos             TRUE             reported
    ## 24               40255 Huang2017aaos             TRUE             reported
    ## 25               40255 Huang2017aaos             TRUE             reported
    ## 26               40255 Huang2017aaos             TRUE             reported
    ## 27               40255 Huang2017aaos             TRUE             reported
    ## 28               40255 Huang2017aaos             TRUE             reported
    ## 29               40255 Huang2017aaos             TRUE             reported
    ## 30               40255 Huang2017aaos             TRUE             reported
    ## 31               40255 Huang2017aaos             TRUE             reported
    ## 32               40255 Huang2017aaos             TRUE             reported
    ## 33               40255 Huang2017aaos             TRUE             reported
    ## 34               40255 Huang2017aaos             TRUE             reported
    ## 35               40255 Huang2017aaos             TRUE             reported
    ## 36               40255 Huang2017aaos             TRUE             reported
    ## 37               40255 Huang2017aaos             TRUE             reported
    ## 38               40255 Huang2017aaos             TRUE             reported
    ## 39               40255 Huang2017aaos             TRUE             reported
    ##    id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1       HyYs5D      2    TRUE           TRUE 5e-06    6.961264e-05
    ## 2       HyYs5D      2    TRUE           TRUE 5e-06    6.754673e-06
    ## 3       HyYs5D      2    TRUE           TRUE 5e-06    2.297323e-04
    ## 4       HyYs5D      2    TRUE           TRUE 5e-06    8.435264e-05
    ## 5       HyYs5D      2    TRUE           TRUE 5e-06    2.748206e-08
    ## 6       HyYs5D      2    TRUE           TRUE 5e-06    2.714574e-04
    ## 7       HyYs5D      2    TRUE           TRUE 5e-06    1.866125e-04
    ## 8       HyYs5D      2    TRUE           TRUE 5e-06    4.058580e-04
    ## 9       HyYs5D      2    TRUE           TRUE 5e-06    1.978565e-04
    ## 10      HyYs5D      2    TRUE           TRUE 5e-06    1.099739e-05
    ## 11      HyYs5D      2    TRUE           TRUE 5e-06    1.111695e-03
    ## 12      HyYs5D      2    TRUE          FALSE 5e-06              NA
    ## 13      HyYs5D      2    TRUE           TRUE 5e-06    7.262688e-04
    ## 14      HyYs5D      2    TRUE           TRUE 5e-06    1.159265e-03
    ## 15      HyYs5D      2    TRUE           TRUE 5e-06    2.390331e-04
    ## 16      HyYs5D      2    TRUE           TRUE 5e-06    1.586570e-04
    ## 17      HyYs5D      2    TRUE           TRUE 5e-06    7.065310e-06
    ## 18      HyYs5D      2    TRUE           TRUE 5e-06    2.124339e-04
    ## 19      HyYs5D      2    TRUE           TRUE 5e-06    2.043557e-05
    ## 20      HyYs5D      2    TRUE          FALSE 5e-06              NA
    ## 21      HyYs5D      2    TRUE          FALSE 5e-06              NA
    ## 22      HyYs5D      2    TRUE           TRUE 5e-06    2.065599e-06
    ## 23      HyYs5D      2   FALSE           TRUE 5e-06              NA
    ## 24      HyYs5D      2    TRUE           TRUE 5e-06    5.181105e-05
    ## 25      HyYs5D      2    TRUE           TRUE 5e-06    2.045290e-04
    ## 26      HyYs5D      2    TRUE           TRUE 5e-06    6.486117e-05
    ## 27      HyYs5D      2    TRUE           TRUE 5e-06    9.693092e-07
    ## 28      HyYs5D      2    TRUE           TRUE 5e-06    2.197788e-05
    ## 29      HyYs5D      2    TRUE          FALSE 5e-06              NA
    ## 30      HyYs5D      2    TRUE           TRUE 5e-06    1.282897e-06
    ## 31      HyYs5D      2    TRUE           TRUE 5e-06    7.532559e-08
    ## 32      HyYs5D      2    TRUE           TRUE 5e-06    2.807154e-06
    ## 33      HyYs5D      2    TRUE           TRUE 5e-06    8.599615e-08
    ## 34      HyYs5D      2    TRUE          FALSE 5e-06              NA
    ## 35      HyYs5D      2    TRUE           TRUE 5e-06    4.511645e-04
    ## 36      HyYs5D      2    TRUE           TRUE 5e-06    2.209801e-06
    ## 37      HyYs5D      2    TRUE           TRUE 5e-06    7.056082e-06
    ## 38      HyYs5D      2    TRUE           TRUE 5e-06    1.974580e-06
    ## 39      HyYs5D      2    TRUE           TRUE 5e-06    6.792830e-05
    ##    mrpresso_pval mrpresso_keep
    ## 1              1          TRUE
    ## 2              1          TRUE
    ## 3        <0.0066         FALSE
    ## 4              1          TRUE
    ## 5              1          TRUE
    ## 6              1          TRUE
    ## 7              1          TRUE
    ## 8              1          TRUE
    ## 9         0.4158          TRUE
    ## 10             1          TRUE
    ## 11             1          TRUE
    ## 12          <NA>            NA
    ## 13             1          TRUE
    ## 14             1          TRUE
    ## 15             1          TRUE
    ## 16             1          TRUE
    ## 17             1          TRUE
    ## 18         0.561          TRUE
    ## 19             1          TRUE
    ## 20          <NA>            NA
    ## 21          <NA>            NA
    ## 22             1          TRUE
    ## 23          <NA>            NA
    ## 24             1          TRUE
    ## 25             1          TRUE
    ## 26             1          TRUE
    ## 27             1          TRUE
    ## 28             1          TRUE
    ## 29          <NA>            NA
    ## 30             1          TRUE
    ## 31             1          TRUE
    ## 32             1          TRUE
    ## 33             1          TRUE
    ## 34          <NA>            NA
    ## 35             1          TRUE
    ## 36             1          TRUE
    ## 37             1          TRUE
    ## 38             1          TRUE
    ## 39             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Depression
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17      0.69550
    ## 2    rs204469          19    45490285     3.269e-06      0.37300
    ## 3   rs2075650          19    45395619    5.980e-134      0.98420
    ## 4  rs62117204          19    45242967     1.864e-11      0.02221
    ## 5  rs76205446          19    45355267     9.010e-09      0.75020

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

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.02006458 24.95580  0.05 0.03836328 0.05440619
    ## 2             TRUE   0.01952726 25.03337  0.05 0.27874668 0.08249648

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
on Depression. <br>

**Table 6** MR causaul estimates for AAOS on Depression

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 2      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 3      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 4      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   33 0.008856172 0.005882602
    ## 2                           Weighted median   33 0.015336282 0.009104381
    ## 3                             Weighted mode   33 0.018057310 0.011051548
    ## 4                                  MR Egger   33 0.020116747 0.012463136
    ##         pval
    ## 1 0.13219932
    ## 2 0.09208607
    ## 3 0.11207807
    ## 4 0.11664026

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Depression and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 2      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 61.77272   31 0.0008300984
    ## 2 Inverse variance weighted 64.69806   32 0.0005434017

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Howard2019dep23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Howard2019dep23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##   egger_intercept          se      pval
    ## 1    -0.002375202 0.001960335 0.2348087

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome      exposure    pt
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 68.24698 0.0012

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 2      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 3      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 4      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   32 0.005366366 0.005952358
    ## 2                           Weighted median   32 0.015111408 0.009161698
    ## 3                             Weighted mode   32 0.018775952 0.010671749
    ## 4                                  MR Egger   32 0.021520336 0.010678590
    ##         pval
    ## 1 0.36729443
    ## 2 0.09906341
    ## 3 0.08837567
    ## 4 0.05291181

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ## 2      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 43.82464   30 0.04946660
    ## 2 Inverse variance weighted 49.94596   31 0.01696721

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      HyYs5D     XNmH6t Howard2019dep23andMe Huang2017aaos
    ##   egger_intercept          se       pval
    ## 1    -0.003497852 0.001708746 0.04950183

<br>
