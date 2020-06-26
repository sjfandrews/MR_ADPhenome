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

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Education

    ##            SNP CHROM       POS  REF  ALT     AF         BETA          SE
    ## 1    rs2649062     1   5799177    A    G 0.3163  2.10811e-03 0.001507837
    ## 2    rs4662080     1  14363419    C    T 0.6865  3.71980e-03 0.001996122
    ## 3   rs10919252     1 169802956    C    G 0.3254  4.94941e-03 0.001496601
    ## 4    rs6701713     1 207786289    A    G 0.8097  7.75476e-04 0.001786304
    ## 5  rs144505123     1 221802052    C    T 0.0080 -1.76507e-03 0.008131641
    ## 6    rs6718282     2  18039651    G    A 0.0531  5.70284e-03 0.003138497
    ## 7  rs114131510     2  78420700    A    G 0.0095  2.01062e-03 0.009912174
    ## 8   rs12615104     2 109820829    T    C 0.2654 -2.10735e-04 0.001588038
    ## 9  rs111906619     2 127789085    C    T 0.0734  1.84188e-03 0.002691388
    ## 10   rs6431219     2 127862133    C    T 0.4067  9.56599e-04 0.001427456
    ## 11    rs359982     2 219826934    A    G 0.0700 -4.24057e-04 0.002813715
    ## 12 rs116341973     3  63462893    A    G 0.0219  7.00916e-03 0.004807970
    ## 13 rs145799027     3 114438213    T    C 0.0080 -9.14441e-03 0.011484935
    ## 14  rs71602496     4    661002    A    G 0.1543 -1.11128e-03 0.001950736
    ## 15 rs115803892     4 134185712    G    A 0.0128  9.83607e-03 0.006339070
    ## 16   rs1689013     4 181048651    T    C 0.2434 -2.35916e-03 0.001635291
    ## 17 rs144202318     5 165711579    G    A 0.0135  9.95875e-05 0.006566549
    ## 18  rs77345379     6  69273670    C    T 0.0203  3.82961e-03 0.005025174
    ## 19  rs12153819     6  83773049    C    T 0.1268  7.63320e-04 0.002108121
    ## 20  rs17170228     7  33076314    G    A 0.0644 -1.10121e-02 0.002857287
    ## 21 rs149907089    NA        NA <NA> <NA>     NA           NA          NA
    ## 22   rs2725066     8   4438058    T    A 0.5246 -1.52435e-03 0.001411927
    ## 23 rs117201713     8 121340499    G    C 0.0378 -2.59575e-03 0.003741144
    ## 24  rs36033332     9  26834807    C    G 0.0493 -3.74441e-03 0.003342091
    ## 25   rs7930318    11  60033371    C    T 0.6001 -5.96966e-04 0.001431360
    ## 26    rs567075    11  85830157    T    C 0.6791 -7.14009e-03 0.001502056
    ## 27  rs11218343    11 121435587    T    C 0.0379  7.47756e-03 0.003679490
    ## 28   rs7958488    12   6546166    A    T 0.0249  5.22110e-03 0.004571176
    ## 29   rs1118069    12  84739181    A    T 0.7077 -6.13755e-03 0.001541692
    ## 30 rs140016885    12  99679113    A    G 0.0149 -5.62640e-03 0.007619829
    ## 31   rs9582517    13 102331030    T    C 0.4963  3.13030e-03 0.001402917
    ## 32 rs146189059    14  47173254    C    G 0.0099 -1.87245e-02 0.007423652
    ## 33  rs17125944    14  53400629    T    C 0.0921  7.07464e-03 0.002424864
    ## 34 rs150193285    15  75224360    C    T 0.0125 -7.66277e-04 0.006416053
    ## 35   rs9947273    18  35409158    G    A 0.1615 -3.69225e-03 0.002509875
    ## 36  rs62117204    19  45242967    C    T 0.0694 -6.97830e-03 0.002789735
    ## 37  rs76205446    19  45355267    T    A 0.0099  5.79684e-03 0.007394998
    ## 38   rs2075650    19  45395619    A    G 0.1455  2.58258e-03 0.002000458
    ## 39 rs141441332    19  45438575    C    A 0.0110  1.78979e-03 0.007347206
    ## 40    rs204469    19  45490285    A    G 0.9583  3.20615e-03 0.003594563
    ## 41   rs2827191    21  23361798    C    T 0.2885  4.69729e-03 0.001550090
    ## 42   rs1043441    22  39130964    C    T 0.2963  5.27474e-04 0.001537250
    ##              Z            P         N     TRAIT
    ## 1   1.39810000 1.620816e-01 1131881.0 Education
    ## 2   1.86350803 6.239082e-02  648964.0 Education
    ## 3   3.30711000 9.426366e-04 1131881.0 Education
    ## 4   0.43412300 6.641988e-01 1131881.0 Education
    ## 5  -0.21706172 8.281602e-01 1060514.0 Education
    ## 6   1.81706251 6.920754e-02 1123656.0 Education
    ## 7   0.20284400 8.392572e-01  601947.0 Education
    ## 8  -0.13270100 8.944295e-01 1131881.0 Education
    ## 9   0.68436053 4.937475e-01 1129624.0 Education
    ## 10  0.67014251 5.027669e-01 1131881.0 Education
    ## 11 -0.15071100 8.802037e-01 1079777.0 Education
    ## 12  1.45782000 1.448900e-01 1123889.9 Education
    ## 13 -0.79620900 4.259106e-01  531637.0 Education
    ## 14 -0.56966900 5.689025e-01 1120710.0 Education
    ## 15  1.55165953 1.207437e-01 1095995.0 Education
    ## 16 -1.44265000 1.491178e-01 1130052.9 Education
    ## 17  0.01516588 9.878998e-01  969100.9 Education
    ## 18  0.76208568 4.460089e-01 1108112.0 Education
    ## 19  0.36208549 7.172881e-01 1130967.0 Education
    ## 20 -3.85403033 1.161892e-04 1131337.0 Education
    ## 21          NA           NA        NA      <NA>
    ## 22 -1.07962138 2.803108e-01 1119342.0 Education
    ## 23 -0.69383920 4.877831e-01 1093221.0 Education
    ## 24 -1.12038000 2.625520e-01 1063036.0 Education
    ## 25 -0.41706182 6.766332e-01 1131881.0 Education
    ## 26 -4.75356000 1.998689e-06 1131881.0 Education
    ## 27  2.03223000 4.213053e-02 1127302.0 Education
    ## 28  1.14218000 2.533789e-01 1096910.0 Education
    ## 29 -3.98104000 6.861307e-05 1131881.0 Education
    ## 30 -0.73838900 4.602781e-01  653007.0 Education
    ## 31  2.23128000 2.566254e-02 1131084.0 Education
    ## 32 -2.52228000 1.165981e-02 1030208.0 Education
    ## 33  2.91754000 3.528078e-03 1131881.0 Education
    ## 34 -0.11943134 9.049336e-01 1095196.0 Education
    ## 35 -1.47109077 1.412666e-01  652372.0 Education
    ## 36 -2.50142303 1.236953e-02 1107202.0 Education
    ## 37  0.78388664 4.331066e-01 1038207.0 Education
    ## 38  1.29100000 1.967051e-01 1118515.0 Education
    ## 39  0.24360202 8.075391e-01  947635.0 Education
    ## 40  0.89194400 3.724232e-01 1077816.0 Education
    ## 41  3.03033324 2.442840e-03 1128340.0 Education
    ## 42  0.34312813 7.315021e-01 1129448.0 Education

<br>

**Table 3:** Proxy SNPs for Education

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs149907089        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Education datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1    rs1043441                      T                     C
    ## 2   rs10919252                      G                     C
    ## 3    rs1118069                      T                     A
    ## 4  rs111906619                      T                     C
    ## 5   rs11218343                      C                     T
    ## 6  rs114131510                      G                     A
    ## 7  rs115803892                      A                     G
    ## 8  rs116341973                      G                     A
    ## 9  rs117201713                      C                     G
    ## 10  rs12153819                      T                     C
    ## 11  rs12615104                      C                     T
    ## 12 rs140016885                      G                     A
    ## 13 rs141441332                      A                     C
    ## 14 rs144202318                      A                     G
    ## 15 rs144505123                      T                     C
    ## 16 rs145799027                      C                     T
    ## 17 rs146189059                      G                     C
    ## 18 rs150193285                      T                     C
    ## 19   rs1689013                      C                     T
    ## 20  rs17125944                      C                     T
    ## 21  rs17170228                      A                     G
    ## 22    rs204469                      G                     A
    ## 23   rs2075650                      G                     A
    ## 24   rs2649062                      G                     A
    ## 25   rs2725066                      A                     T
    ## 26   rs2827191                      T                     C
    ## 27    rs359982                      G                     A
    ## 28  rs36033332                      G                     C
    ## 29   rs4662080                      T                     C
    ## 30    rs567075                      C                     T
    ## 31  rs62117204                      T                     C
    ## 32   rs6431219                      T                     C
    ## 33   rs6701713                      G                     A
    ## 34   rs6718282                      A                     G
    ## 35  rs71602496                      G                     A
    ## 36  rs76205446                      A                     T
    ## 37  rs77345379                      T                     C
    ## 38   rs7930318                      T                     C
    ## 39   rs7958488                      T                     A
    ## 40   rs9582517                      C                     T
    ## 41   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639  5.27474e-04
    ## 2                      G                    C        0.0975  4.94941e-03
    ## 3                      T                    A        0.1012 -6.13755e-03
    ## 4                      T                    C        0.1268  1.84188e-03
    ## 5                      C                    T       -0.1653  7.47756e-03
    ## 6                      G                    A        0.6419  2.01062e-03
    ## 7                      A                    G        0.9151  9.83607e-03
    ## 8                      G                    A        0.2057  7.00916e-03
    ## 9                      C                    G        0.2125 -2.59575e-03
    ## 10                     T                    C       -0.1092  7.63320e-04
    ## 11                     C                    T       -0.1057 -2.10735e-04
    ## 12                     G                    A        0.6851 -5.62640e-03
    ## 13                     A                    C        0.5383  1.78979e-03
    ## 14                     A                    G        0.7219  9.95875e-05
    ## 15                     T                    C        0.7709 -1.76507e-03
    ## 16                     C                    T        0.7485 -9.14441e-03
    ## 17                     G                    C        0.9444 -1.87245e-02
    ## 18                     T                    C        0.7622 -7.66277e-04
    ## 19                     C                    T        0.0637 -2.35916e-03
    ## 20                     C                    T        0.0960  7.07464e-03
    ## 21                     A                    G        0.1215 -1.10121e-02
    ## 22                     G                    A        0.1588  3.20615e-03
    ## 23                     G                    A        0.5502  2.58258e-03
    ## 24                     G                    A        0.0652  2.10811e-03
    ## 25                     A                    T       -0.0936 -1.52435e-03
    ## 26                     T                    C        0.1277  4.69729e-03
    ## 27                     G                    A        0.2660 -4.24057e-04
    ## 28                     G                    C        0.4601 -3.74441e-03
    ## 29                     T                    C        0.1421  3.71980e-03
    ## 30                     C                    T        0.0900 -7.14009e-03
    ## 31                     T                    C       -0.1867 -6.97830e-03
    ## 32                     T                    C        0.0774  9.56599e-04
    ## 33                     G                    A       -0.0709  7.75476e-04
    ## 34                     A                    G       -0.1421  5.70284e-03
    ## 35                     G                    A        0.0780 -1.11128e-03
    ## 36                     A                    T        0.7096  5.79684e-03
    ## 37                     T                    C        0.2291  3.82961e-03
    ## 38                     T                    C        0.0750 -5.96966e-04
    ## 39                     T                    A        0.5085  5.22110e-03
    ## 40                     C                    T       -0.1185  3.13030e-03
    ## 41                     A                    G       -0.0853 -3.69225e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893      0.2963  FALSE       FALSE     FALSE     BAY22b
    ## 2        0.3275      0.3254  FALSE        TRUE     FALSE     BAY22b
    ## 3        0.7195      0.7077  FALSE        TRUE     FALSE     BAY22b
    ## 4        0.0709      0.0734  FALSE       FALSE     FALSE     BAY22b
    ## 5        0.0395      0.0379  FALSE       FALSE     FALSE     BAY22b
    ## 6        0.0162      0.0095  FALSE       FALSE     FALSE     BAY22b
    ## 7        0.0129      0.0128  FALSE       FALSE     FALSE     BAY22b
    ## 8        0.0227      0.0219  FALSE       FALSE     FALSE     BAY22b
    ## 9        0.0408      0.0378  FALSE        TRUE     FALSE     BAY22b
    ## 10       0.1018      0.1268  FALSE       FALSE     FALSE     BAY22b
    ## 11       0.2566      0.2654  FALSE       FALSE     FALSE     BAY22b
    ## 12       0.0144      0.0149  FALSE       FALSE     FALSE     BAY22b
    ## 13       0.0110      0.0110  FALSE       FALSE     FALSE     BAY22b
    ## 14       0.0135      0.0135  FALSE       FALSE     FALSE     BAY22b
    ## 15       0.0113      0.0080  FALSE       FALSE     FALSE     BAY22b
    ## 16       0.0147      0.0080  FALSE       FALSE     FALSE     BAY22b
    ## 17       0.0111      0.0099  FALSE        TRUE     FALSE     BAY22b
    ## 18       0.0109      0.0125  FALSE       FALSE     FALSE     BAY22b
    ## 19       0.2493      0.2434  FALSE       FALSE     FALSE     BAY22b
    ## 20       0.0924      0.0921  FALSE       FALSE     FALSE     BAY22b
    ## 21       0.0623      0.0644  FALSE       FALSE     FALSE     BAY22b
    ## 22       0.9632      0.9583  FALSE       FALSE     FALSE     BAY22b
    ## 23       0.2197      0.1455  FALSE       FALSE     FALSE     BAY22b
    ## 24       0.3192      0.3163  FALSE       FALSE     FALSE     BAY22b
    ## 25       0.5128      0.5246  FALSE        TRUE      TRUE     BAY22b
    ## 26       0.2857      0.2885  FALSE       FALSE     FALSE     BAY22b
    ## 27       0.0781      0.0700  FALSE       FALSE     FALSE     BAY22b
    ## 28       0.0386      0.0493  FALSE        TRUE     FALSE     BAY22b
    ## 29       0.6649      0.6865  FALSE       FALSE     FALSE     BAY22b
    ## 30       0.6903      0.6791  FALSE       FALSE     FALSE     BAY22b
    ## 31       0.0601      0.0694  FALSE       FALSE     FALSE     BAY22b
    ## 32       0.4163      0.4067  FALSE       FALSE     FALSE     BAY22b
    ## 33       0.7983      0.8097  FALSE       FALSE     FALSE     BAY22b
    ## 34       0.0440      0.0531  FALSE       FALSE     FALSE     BAY22b
    ## 35       0.1453      0.1543  FALSE       FALSE     FALSE     BAY22b
    ## 36       0.0143      0.0099  FALSE        TRUE     FALSE     BAY22b
    ## 37       0.0185      0.0203  FALSE       FALSE     FALSE     BAY22b
    ## 38       0.5996      0.6001  FALSE       FALSE     FALSE     BAY22b
    ## 39       0.0195      0.0249  FALSE        TRUE     FALSE     BAY22b
    ## 40       0.5073      0.4963  FALSE       FALSE     FALSE     BAY22b
    ## 41       0.1431      0.1615  FALSE       FALSE     FALSE     BAY22b
    ##    chr.outcome pos.outcome  se.outcome   z.outcome pval.outcome
    ## 1           22    39130964 0.001537250  0.34312813 7.315021e-01
    ## 2            1   169802956 0.001496601  3.30711000 9.426366e-04
    ## 3           12    84739181 0.001541692 -3.98104000 6.861307e-05
    ## 4            2   127789085 0.002691388  0.68436053 4.937475e-01
    ## 5           11   121435587 0.003679490  2.03223000 4.213053e-02
    ## 6            2    78420700 0.009912174  0.20284400 8.392572e-01
    ## 7            4   134185712 0.006339070  1.55165953 1.207437e-01
    ## 8            3    63462893 0.004807970  1.45782000 1.448900e-01
    ## 9            8   121340499 0.003741144 -0.69383920 4.877831e-01
    ## 10           6    83773049 0.002108121  0.36208549 7.172881e-01
    ## 11           2   109820829 0.001588038 -0.13270100 8.944295e-01
    ## 12          12    99679113 0.007619829 -0.73838900 4.602781e-01
    ## 13          19    45438575 0.007347206  0.24360202 8.075391e-01
    ## 14           5   165711579 0.006566549  0.01516588 9.878998e-01
    ## 15           1   221802052 0.008131641 -0.21706172 8.281602e-01
    ## 16           3   114438213 0.011484935 -0.79620900 4.259106e-01
    ## 17          14    47173254 0.007423652 -2.52228000 1.165981e-02
    ## 18          15    75224360 0.006416053 -0.11943134 9.049336e-01
    ## 19           4   181048651 0.001635291 -1.44265000 1.491178e-01
    ## 20          14    53400629 0.002424864  2.91754000 3.528078e-03
    ## 21           7    33076314 0.002857287 -3.85403033 1.161892e-04
    ## 22          19    45490285 0.003594563  0.89194400 3.724232e-01
    ## 23          19    45395619 0.002000458  1.29100000 1.967051e-01
    ## 24           1     5799177 0.001507837  1.39810000 1.620816e-01
    ## 25           8     4438058 0.001411927 -1.07962138 2.803108e-01
    ## 26          21    23361798 0.001550090  3.03033324 2.442840e-03
    ## 27           2   219826934 0.002813715 -0.15071100 8.802037e-01
    ## 28           9    26834807 0.003342091 -1.12038000 2.625520e-01
    ## 29           1    14363419 0.001996122  1.86350803 6.239082e-02
    ## 30          11    85830157 0.001502056 -4.75356000 1.998689e-06
    ## 31          19    45242967 0.002789735 -2.50142303 1.236953e-02
    ## 32           2   127862133 0.001427456  0.67014251 5.027669e-01
    ## 33           1   207786289 0.001786304  0.43412300 6.641988e-01
    ## 34           2    18039651 0.003138497  1.81706251 6.920754e-02
    ## 35           4      661002 0.001950736 -0.56966900 5.689025e-01
    ## 36          19    45355267 0.007394998  0.78388664 4.331066e-01
    ## 37           6    69273670 0.005025174  0.76208568 4.460089e-01
    ## 38          11    60033371 0.001431360 -0.41706182 6.766332e-01
    ## 39          12     6546166 0.004571176  1.14218000 2.533789e-01
    ## 40          13   102331030 0.001402917  2.23128000 2.566254e-02
    ## 41          18    35409158 0.002509875 -1.47109077 1.412666e-01
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1           1129448.0 Lee2018education23andMe            TRUE
    ## 2           1131881.0 Lee2018education23andMe            TRUE
    ## 3           1131881.0 Lee2018education23andMe            TRUE
    ## 4           1129624.0 Lee2018education23andMe            TRUE
    ## 5           1127302.0 Lee2018education23andMe            TRUE
    ## 6            601947.0 Lee2018education23andMe            TRUE
    ## 7           1095995.0 Lee2018education23andMe            TRUE
    ## 8           1123889.9 Lee2018education23andMe            TRUE
    ## 9           1093221.0 Lee2018education23andMe            TRUE
    ## 10          1130967.0 Lee2018education23andMe            TRUE
    ## 11          1131881.0 Lee2018education23andMe            TRUE
    ## 12           653007.0 Lee2018education23andMe            TRUE
    ## 13           947635.0 Lee2018education23andMe            TRUE
    ## 14           969100.9 Lee2018education23andMe            TRUE
    ## 15          1060514.0 Lee2018education23andMe            TRUE
    ## 16           531637.0 Lee2018education23andMe            TRUE
    ## 17          1030208.0 Lee2018education23andMe            TRUE
    ## 18          1095196.0 Lee2018education23andMe            TRUE
    ## 19          1130052.9 Lee2018education23andMe            TRUE
    ## 20          1131881.0 Lee2018education23andMe            TRUE
    ## 21          1131337.0 Lee2018education23andMe            TRUE
    ## 22          1077816.0 Lee2018education23andMe            TRUE
    ## 23          1118515.0 Lee2018education23andMe            TRUE
    ## 24          1131881.0 Lee2018education23andMe            TRUE
    ## 25          1119342.0 Lee2018education23andMe            TRUE
    ## 26          1128340.0 Lee2018education23andMe            TRUE
    ## 27          1079777.0 Lee2018education23andMe            TRUE
    ## 28          1063036.0 Lee2018education23andMe            TRUE
    ## 29           648964.0 Lee2018education23andMe            TRUE
    ## 30          1131881.0 Lee2018education23andMe            TRUE
    ## 31          1107202.0 Lee2018education23andMe            TRUE
    ## 32          1131881.0 Lee2018education23andMe            TRUE
    ## 33          1131881.0 Lee2018education23andMe            TRUE
    ## 34          1123656.0 Lee2018education23andMe            TRUE
    ## 35          1120710.0 Lee2018education23andMe            TRUE
    ## 36          1038207.0 Lee2018education23andMe            TRUE
    ## 37          1108112.0 Lee2018education23andMe            TRUE
    ## 38          1131881.0 Lee2018education23andMe            TRUE
    ## 39          1096910.0 Lee2018education23andMe            TRUE
    ## 40          1131084.0 Lee2018education23andMe            TRUE
    ## 41           652372.0 Lee2018education23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           22     39130964      0.0135  -4.733333
    ## 2             reported            1    169802956      0.0198   4.924240
    ## 3             reported           12     84739181      0.0216   4.685190
    ## 4             reported            2    127789085      0.0256   4.953125
    ## 5             reported           11    121435587      0.0329  -5.024320
    ## 6             reported            2     78420700      0.1406   4.565430
    ## 7             reported            4    134185712      0.1973   4.638115
    ## 8             reported            3     63462893      0.0399   5.155390
    ## 9             reported            8    121340499      0.0456   4.660088
    ## 10            reported            6     83773049      0.0235  -4.646809
    ## 11            reported            2    109820829      0.0221  -4.782810
    ## 12            reported           12     99679113      0.1416   4.838280
    ## 13            reported           19     45438575      0.0632   8.517405
    ## 14            reported            5    165711579      0.1572   4.592239
    ## 15            reported            1    221802052      0.1609   4.791175
    ## 16            reported            3    114438213      0.1601   4.675200
    ## 17            reported           14     47173254      0.1835   5.146590
    ## 18            reported           15     75224360      0.1650   4.619394
    ## 19            reported            4    181048651      0.0139   4.582730
    ## 20            reported           14     53400629      0.0203   4.729060
    ## 21            reported            7     33076314      0.0248   4.899194
    ## 22            reported           19     45490285      0.0341   4.656890
    ## 23            reported           19     45395619      0.0223  24.672600
    ## 24            reported            1      5799177      0.0131   4.977100
    ## 25            reported            8      4438058      0.0191  -4.900524
    ## 26            reported           21     23361798      0.0279   4.577061
    ## 27            reported            2    219826934      0.0513   5.185190
    ## 28            reported            9     26834807      0.0865   5.319080
    ## 29            reported            1     14363419      0.0296   4.800676
    ## 30            reported           11     85830157      0.0132   6.818180
    ## 31            reported           19     45242967      0.0278  -6.715827
    ## 32            reported            2    127862133      0.0124   6.241935
    ## 33            reported            1    207786289      0.0146  -4.856160
    ## 34            reported            2     18039651      0.0308  -4.613636
    ## 35            reported            4       661002      0.0171   4.561400
    ## 36            reported           19     45355267      0.1234   5.750405
    ## 37            reported            6     69273670      0.0501   4.572854
    ## 38            reported           11     60033371      0.0125   6.000000
    ## 39            reported           12      6546166      0.1111   4.576960
    ## 40            reported           13    102331030      0.0257  -4.610890
    ## 41            reported           18     35409158      0.0178  -4.792135
    ##    pval.exposure samplesize.exposure      exposure mr_keep.exposure
    ## 1      2.110e-06               40255 Huang2017aaos             TRUE
    ## 2      8.182e-07               40255 Huang2017aaos             TRUE
    ## 3      2.693e-06               40255 Huang2017aaos             TRUE
    ## 4      7.088e-07               40255 Huang2017aaos             TRUE
    ## 5      5.148e-07               40255 Huang2017aaos             TRUE
    ## 6      4.949e-06               40255 Huang2017aaos             TRUE
    ## 7      3.498e-06               40255 Huang2017aaos             TRUE
    ## 8      2.478e-07               40255 Huang2017aaos             TRUE
    ## 9      3.120e-06               40255 Huang2017aaos             TRUE
    ## 10     3.291e-06               40255 Huang2017aaos             TRUE
    ## 11     1.829e-06               40255 Huang2017aaos             TRUE
    ## 12     1.310e-06               40255 Huang2017aaos             TRUE
    ## 13     1.713e-17               40255 Huang2017aaos             TRUE
    ## 14     4.356e-06               40255 Huang2017aaos             TRUE
    ## 15     1.661e-06               40255 Huang2017aaos             TRUE
    ## 16     2.933e-06               40255 Huang2017aaos             TRUE
    ## 17     2.634e-07               40255 Huang2017aaos             TRUE
    ## 18     3.834e-06               40255 Huang2017aaos             TRUE
    ## 19     4.657e-06               40255 Huang2017aaos             TRUE
    ## 20     2.321e-06               40255 Huang2017aaos             TRUE
    ## 21     1.004e-06               40255 Huang2017aaos             TRUE
    ## 22     3.269e-06               40255 Huang2017aaos             TRUE
    ## 23    5.980e-134               40255 Huang2017aaos             TRUE
    ## 24     6.120e-07               40255 Huang2017aaos             TRUE
    ## 25     9.948e-07               40255 Huang2017aaos             TRUE
    ## 26     4.895e-06               40255 Huang2017aaos             TRUE
    ## 27     2.159e-07               40255 Huang2017aaos             TRUE
    ## 28     1.030e-07               40255 Huang2017aaos             TRUE
    ## 29     1.586e-06               40255 Huang2017aaos             TRUE
    ## 30     9.084e-12               40255 Huang2017aaos             TRUE
    ## 31     1.864e-11               40255 Huang2017aaos             TRUE
    ## 32     3.897e-10               40255 Huang2017aaos             TRUE
    ## 33     1.184e-06               40255 Huang2017aaos             TRUE
    ## 34     3.840e-06               40255 Huang2017aaos             TRUE
    ## 35     4.978e-06               40255 Huang2017aaos             TRUE
    ## 36     9.010e-09               40255 Huang2017aaos             TRUE
    ## 37     4.830e-06               40255 Huang2017aaos             TRUE
    ## 38     2.245e-09               40255 Huang2017aaos             TRUE
    ## 39     4.719e-06               40255 Huang2017aaos             TRUE
    ## 40     3.908e-06               40255 Huang2017aaos             TRUE
    ## 41     1.593e-06               40255 Huang2017aaos             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 2              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 3              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 4              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 5              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 6              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 7              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 8              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 9              reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 10             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 11             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 12             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 13             reported      qGu2Z6      2    TRUE          FALSE 5e-06
    ## 14             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 15             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 16             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 17             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 18             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 19             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 20             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 21             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 22             reported      qGu2Z6      2    TRUE          FALSE 5e-06
    ## 23             reported      qGu2Z6      2    TRUE          FALSE 5e-06
    ## 24             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 25             reported      qGu2Z6      2   FALSE           TRUE 5e-06
    ## 26             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 27             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 28             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 29             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 30             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 31             reported      qGu2Z6      2    TRUE          FALSE 5e-06
    ## 32             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 33             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 34             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 35             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 36             reported      qGu2Z6      2    TRUE          FALSE 5e-06
    ## 37             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 38             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 39             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 40             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ## 41             reported      qGu2Z6      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.274817e-07             1          TRUE
    ## 2     2.838448e-05        <0.007         FALSE
    ## 3     3.590852e-05        <0.007         FALSE
    ## 4     4.887877e-06             1          TRUE
    ## 5     5.041888e-05             1          TRUE
    ## 6     1.470330e-05             1          TRUE
    ## 7     1.893624e-04             1          TRUE
    ## 8     5.833825e-05             1          TRUE
    ## 9     4.210407e-06             1          TRUE
    ## 10    2.238735e-07             1          TRUE
    ## 11    2.591786e-07             1          TRUE
    ## 12    1.540775e-05             1          TRUE
    ## 13              NA          <NA>            NA
    ## 14    4.809427e-06             1          TRUE
    ## 15    1.182597e-07             1          TRUE
    ## 16    5.280586e-05             1          TRUE
    ## 17    3.093764e-04         0.749          TRUE
    ## 18    1.968255e-06             1          TRUE
    ## 19    4.853034e-06             1          TRUE
    ## 20    5.466411e-05         0.063          TRUE
    ## 21    1.162089e-04        <0.007         FALSE
    ## 22              NA          <NA>            NA
    ## 23              NA          <NA>            NA
    ## 24    5.321426e-06             1          TRUE
    ## 25              NA          <NA>            NA
    ## 26    2.726940e-05         0.035         FALSE
    ## 27    9.753195e-08             1          TRUE
    ## 28    7.602985e-06             1          TRUE
    ## 29    1.774833e-05             1          TRUE
    ## 30    4.931223e-05        <0.007         FALSE
    ## 31              NA          <NA>            NA
    ## 32    1.402487e-06             1          TRUE
    ## 33    3.452607e-07             1          TRUE
    ## 34    2.886106e-05             1          TRUE
    ## 35    8.221834e-07             1          TRUE
    ## 36              NA          <NA>            NA
    ## 37    2.023827e-05             1          TRUE
    ## 38    1.590372e-07             1          TRUE
    ## 39    4.955204e-05             1          TRUE
    ## 40    8.484672e-06             1          TRUE
    ## 41    1.557705e-05             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17   0.80753907
    ## 2    rs204469          19    45490285     3.269e-06   0.37242318
    ## 3   rs2075650          19    45395619    5.980e-134   0.19670510
    ## 4  rs62117204          19    45242967     1.864e-11   0.01236953
    ## 5  rs76205446          19    45355267     9.010e-09   0.43310663

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
    ## 1            FALSE   0.02112109 24.79423  0.05 2.68821180 0.37449678
    ## 2             TRUE   0.01775710 24.23913  0.05 0.07629057 0.05878464

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
on Education. <br>

**Table 6** MR causaul estimates for AAOS on Education

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 2      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 3      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 4      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   35 -0.002715581 0.002240708
    ## 2                           Weighted median   35 -0.001398509 0.003870413
    ## 3                             Weighted mode   35 -0.002172873 0.004734650
    ## 4                                  MR Egger   35 -0.001324065 0.006207251
    ##        pval
    ## 1 0.2255393
    ## 2 0.7178504
    ## 3 0.6492049
    ## 4 0.8323980

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Education and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 2      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 119.8902   33 8.568636e-12
    ## 2 Inverse variance weighted 120.2369   34 1.463599e-11

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##   egger_intercept          se      pval
    ## 1   -0.0003184364 0.001030786 0.7593199

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome      exposure    pt
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          5 126.5295 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 2      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 3      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 4      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   30 -0.001658498 0.002367342
    ## 2                           Weighted median   30 -0.001439629 0.003625740
    ## 3                             Weighted mode   30 -0.002436518 0.004626233
    ## 4                                  MR Egger   30 -0.002468461 0.004271415
    ##        pval
    ## 1 0.4835688
    ## 2 0.6913247
    ## 3 0.6024253
    ## 4 0.5679489

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ## 2      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 47.66815   28 0.01163208
    ## 2 Inverse variance weighted 47.79646   29 0.01542834

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      qGu2Z6     BAY22b Lee2018education23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0002136922 0.0007783657 0.7856854

<br>
