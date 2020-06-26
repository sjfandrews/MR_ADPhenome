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

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Hearing Difficulty

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1    rs2649062     1   5799177    A    G 0.311425 -1.64647e-03 0.00142696
    ## 2    rs4662080     1  14363419    C    T 0.749317  3.48437e-03 0.00152956
    ## 3   rs10919252     1 169802956    C    G 0.326301 -3.67296e-03 0.00140596
    ## 4    rs6701713     1 207786289    A    G 0.818375 -1.68473e-03 0.00170882
    ## 5  rs144505123    NA        NA <NA> <NA>       NA           NA         NA
    ## 6    rs6718282     2  18039651    G    A 0.051390  5.94925e-03 0.00303588
    ## 7  rs114131510    NA        NA <NA> <NA>       NA           NA         NA
    ## 8   rs12615104     2 109820829    T    C 0.260303  6.47070e-04 0.00150398
    ## 9  rs111906619     2 127789085    C    T 0.079492 -2.04414e-03 0.00243939
    ## 10   rs6431219     2 127862133    C    T 0.414654  2.24321e-03 0.00134146
    ## 11    rs359982     2 219826934    A    G 0.070628 -2.87082e-03 0.00256893
    ## 12 rs116341973     3  63462893    A    G 0.022673  6.36508e-03 0.00443917
    ## 13 rs145799027    NA        NA <NA> <NA>       NA           NA         NA
    ## 14  rs71602496     4    661002    A    G 0.153567  1.19983e-03 0.00183217
    ## 15 rs115803892     4 134185712    G    A 0.010124  2.10067e-03 0.00663308
    ## 16   rs1689013     4 181048651    T    C 0.237413 -2.64399e-04 0.00155122
    ## 17 rs144202318     5 165711579    G    A 0.012759 -7.80704e-03 0.00595855
    ## 18  rs77345379     6  69273670    C    T 0.018297  4.83861e-03 0.00506496
    ## 19  rs12153819     6  83773049    C    T 0.124680 -1.45980e-03 0.00200028
    ## 20  rs17170228     7  33076314    G    A 0.068882 -2.07052e-03 0.00260791
    ## 21 rs149907089     7 151626353    G    C 0.012116 -1.25127e-03 0.00685119
    ## 22   rs2725066     8   4438058    T    A 0.523327  3.66496e-04 0.00132535
    ## 23 rs117201713     8 121340499    G    C 0.039403  5.82387e-03 0.00339732
    ## 24  rs36033332     9  26834807    C    G 0.052395  2.66027e-03 0.00299033
    ## 25   rs7930318    11  60033371    C    T 0.596939  2.88491e-03 0.00134417
    ## 26    rs567075    11  85830157    T    C 0.678309  6.71386e-04 0.00141239
    ## 27  rs11218343    11 121435587    T    C 0.037339  1.42182e-03 0.00348571
    ## 28   rs7958488    12   6546166    A    T 0.024126 -8.50142e-04 0.00440385
    ## 29   rs1118069    12  84739181    A    T 0.715043 -2.40504e-03 0.00146062
    ## 30 rs140016885    12  99679113    A    G 0.014035 -5.38099e-03 0.00593040
    ## 31   rs9582517    13 102331030    T    C 0.489144  1.15127e-03 0.00132390
    ## 32 rs146189059    NA        NA <NA> <NA>       NA           NA         NA
    ## 33  rs17125944    14  53400629    T    C 0.092501 -1.30170e-03 0.00228301
    ## 34 rs150193285    15  75224360    C    T 0.011255  7.37202e-03 0.00629254
    ## 35   rs9947273    18  35409158    G    A 0.150890 -2.33022e-04 0.00186666
    ## 36  rs62117204    19  45242967    C    T 0.072203  2.08698e-03 0.00254898
    ## 37  rs76205446    19  45355267    T    A 0.010882  4.84818e-05 0.00647137
    ## 38   rs2075650    19  45395619    A    G 0.146178  1.48604e-03 0.00187135
    ## 39 rs141441332    19  45438575    C    A 0.011087 -7.35816e-04 0.00652399
    ## 40    rs204469    19  45490285    A    G 0.956677 -5.17711e-03 0.00327522
    ## 41   rs2827191    21  23361798    C    T 0.289688 -1.27527e-03 0.00145535
    ## 42   rs1043441    22  39130964    C    T 0.293633  2.09765e-03 0.00144893
    ##              Z     P      N              TRAIT
    ## 1  -1.15383000 0.250 250389 Hearing_Difficulty
    ## 2   2.27802000 0.023 250389 Hearing_Difficulty
    ## 3  -2.61242000 0.009 250389 Hearing_Difficulty
    ## 4  -0.98590300 0.320 250389 Hearing_Difficulty
    ## 5           NA    NA     NA               <NA>
    ## 6   1.95965000 0.050 250389 Hearing_Difficulty
    ## 7           NA    NA     NA               <NA>
    ## 8   0.43023800 0.670 250389 Hearing_Difficulty
    ## 9  -0.83797200 0.400 250389 Hearing_Difficulty
    ## 10  1.67222000 0.094 250389 Hearing_Difficulty
    ## 11 -1.11752000 0.260 250389 Hearing_Difficulty
    ## 12  1.43384000 0.150 250389 Hearing_Difficulty
    ## 13          NA    NA     NA               <NA>
    ## 14  0.65486800 0.510 250389 Hearing_Difficulty
    ## 15  0.31669600 0.750 250389 Hearing_Difficulty
    ## 16 -0.17044600 0.860 250389 Hearing_Difficulty
    ## 17 -1.31022000 0.190 250389 Hearing_Difficulty
    ## 18  0.95531100 0.340 250389 Hearing_Difficulty
    ## 19 -0.72979800 0.470 250389 Hearing_Difficulty
    ## 20 -0.79393800 0.430 250389 Hearing_Difficulty
    ## 21 -0.18263500 0.860 250389 Hearing_Difficulty
    ## 22  0.27652800 0.780 250389 Hearing_Difficulty
    ## 23  1.71425000 0.086 250389 Hearing_Difficulty
    ## 24  0.88962400 0.370 250389 Hearing_Difficulty
    ## 25  2.14624000 0.032 250389 Hearing_Difficulty
    ## 26  0.47535500 0.630 250389 Hearing_Difficulty
    ## 27  0.40790000 0.680 250389 Hearing_Difficulty
    ## 28 -0.19304500 0.850 250389 Hearing_Difficulty
    ## 29 -1.64659000 0.100 250389 Hearing_Difficulty
    ## 30 -0.90735700 0.360 250389 Hearing_Difficulty
    ## 31  0.86960500 0.380 250389 Hearing_Difficulty
    ## 32          NA    NA     NA               <NA>
    ## 33 -0.57016800 0.570 250389 Hearing_Difficulty
    ## 34  1.17155000 0.240 250389 Hearing_Difficulty
    ## 35 -0.12483400 0.900 250389 Hearing_Difficulty
    ## 36  0.81875100 0.410 250389 Hearing_Difficulty
    ## 37  0.00749174 0.990 250389 Hearing_Difficulty
    ## 38  0.79410100 0.430 250389 Hearing_Difficulty
    ## 39 -0.11278600 0.910 250389 Hearing_Difficulty
    ## 40 -1.58069000 0.110 250389 Hearing_Difficulty
    ## 41 -0.87626300 0.380 250389 Hearing_Difficulty
    ## 42  1.44772000 0.150 250389 Hearing_Difficulty

<br>

**Table 3:** Proxy SNPs for Hearing Difficulty

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs144505123        NA    NA     NA        NA        NA
    ## 2            NA rs114131510        NA    NA     NA        NA        NA
    ## 3            NA rs145799027        NA    NA     NA        NA        NA
    ## 4            NA rs146189059        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA
    ## 2    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA
    ## 3    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA
    ## 4    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Hearing Difficulty datasets

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
    ## 1                      T                    C       -0.0639  2.09765e-03
    ## 2                      G                    C        0.0975 -3.67296e-03
    ## 3                      T                    A        0.1012 -2.40504e-03
    ## 4                      T                    C        0.1268 -2.04414e-03
    ## 5                      C                    T       -0.1653  1.42182e-03
    ## 6                      A                    G        0.9151  2.10067e-03
    ## 7                      G                    A        0.2057  6.36508e-03
    ## 8                      C                    G        0.2125  5.82387e-03
    ## 9                      T                    C       -0.1092 -1.45980e-03
    ## 10                     C                    T       -0.1057  6.47070e-04
    ## 11                     G                    A        0.6851 -5.38099e-03
    ## 12                     A                    C        0.5383 -7.35816e-04
    ## 13                     A                    G        0.7219 -7.80704e-03
    ## 14                     C                    G        0.7109 -1.25127e-03
    ## 15                     T                    C        0.7622  7.37202e-03
    ## 16                     C                    T        0.0637 -2.64399e-04
    ## 17                     C                    T        0.0960 -1.30170e-03
    ## 18                     A                    G        0.1215 -2.07052e-03
    ## 19                     G                    A        0.1588 -5.17711e-03
    ## 20                     G                    A        0.5502  1.48604e-03
    ## 21                     G                    A        0.0652 -1.64647e-03
    ## 22                     A                    T       -0.0936  3.66496e-04
    ## 23                     T                    C        0.1277 -1.27527e-03
    ## 24                     G                    A        0.2660 -2.87082e-03
    ## 25                     G                    C        0.4601  2.66027e-03
    ## 26                     T                    C        0.1421  3.48437e-03
    ## 27                     C                    T        0.0900  6.71386e-04
    ## 28                     T                    C       -0.1867  2.08698e-03
    ## 29                     T                    C        0.0774  2.24321e-03
    ## 30                     G                    A       -0.0709 -1.68473e-03
    ## 31                     A                    G       -0.1421  5.94925e-03
    ## 32                     G                    A        0.0780  1.19983e-03
    ## 33                     A                    T        0.7096  4.84818e-05
    ## 34                     T                    C        0.2291  4.83861e-03
    ## 35                     T                    C        0.0750  2.88491e-03
    ## 36                     T                    A        0.5085 -8.50142e-04
    ## 37                     C                    T       -0.1185  1.15127e-03
    ## 38                     A                    G       -0.0853 -2.33022e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893    0.293633  FALSE       FALSE     FALSE     HZxbt9
    ## 2        0.3275    0.326301  FALSE        TRUE     FALSE     HZxbt9
    ## 3        0.7195    0.715043  FALSE        TRUE     FALSE     HZxbt9
    ## 4        0.0709    0.079492  FALSE       FALSE     FALSE     HZxbt9
    ## 5        0.0395    0.037339  FALSE       FALSE     FALSE     HZxbt9
    ## 6        0.0129    0.010124  FALSE       FALSE     FALSE     HZxbt9
    ## 7        0.0227    0.022673  FALSE       FALSE     FALSE     HZxbt9
    ## 8        0.0408    0.039403  FALSE        TRUE     FALSE     HZxbt9
    ## 9        0.1018    0.124680  FALSE       FALSE     FALSE     HZxbt9
    ## 10       0.2566    0.260303  FALSE       FALSE     FALSE     HZxbt9
    ## 11       0.0144    0.014035  FALSE       FALSE     FALSE     HZxbt9
    ## 12       0.0110    0.011087  FALSE       FALSE     FALSE     HZxbt9
    ## 13       0.0135    0.012759  FALSE       FALSE     FALSE     HZxbt9
    ## 14       0.0162    0.012116  FALSE        TRUE     FALSE     HZxbt9
    ## 15       0.0109    0.011255  FALSE       FALSE     FALSE     HZxbt9
    ## 16       0.2493    0.237413  FALSE       FALSE     FALSE     HZxbt9
    ## 17       0.0924    0.092501  FALSE       FALSE     FALSE     HZxbt9
    ## 18       0.0623    0.068882  FALSE       FALSE     FALSE     HZxbt9
    ## 19       0.9632    0.956677  FALSE       FALSE     FALSE     HZxbt9
    ## 20       0.2197    0.146178  FALSE       FALSE     FALSE     HZxbt9
    ## 21       0.3192    0.311425  FALSE       FALSE     FALSE     HZxbt9
    ## 22       0.5128    0.523327  FALSE        TRUE      TRUE     HZxbt9
    ## 23       0.2857    0.289688  FALSE       FALSE     FALSE     HZxbt9
    ## 24       0.0781    0.070628  FALSE       FALSE     FALSE     HZxbt9
    ## 25       0.0386    0.052395  FALSE        TRUE     FALSE     HZxbt9
    ## 26       0.6649    0.749317  FALSE       FALSE     FALSE     HZxbt9
    ## 27       0.6903    0.678309  FALSE       FALSE     FALSE     HZxbt9
    ## 28       0.0601    0.072203  FALSE       FALSE     FALSE     HZxbt9
    ## 29       0.4163    0.414654  FALSE       FALSE     FALSE     HZxbt9
    ## 30       0.7983    0.818375  FALSE       FALSE     FALSE     HZxbt9
    ## 31       0.0440    0.051390  FALSE       FALSE     FALSE     HZxbt9
    ## 32       0.1453    0.153567  FALSE       FALSE     FALSE     HZxbt9
    ## 33       0.0143    0.010882  FALSE        TRUE     FALSE     HZxbt9
    ## 34       0.0185    0.018297  FALSE       FALSE     FALSE     HZxbt9
    ## 35       0.5996    0.596939  FALSE       FALSE     FALSE     HZxbt9
    ## 36       0.0195    0.024126  FALSE        TRUE     FALSE     HZxbt9
    ## 37       0.5073    0.489144  FALSE       FALSE     FALSE     HZxbt9
    ## 38       0.1431    0.150890  FALSE       FALSE     FALSE     HZxbt9
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           22    39130964 0.00144893  1.44772000        0.150
    ## 2            1   169802956 0.00140596 -2.61242000        0.009
    ## 3           12    84739181 0.00146062 -1.64659000        0.100
    ## 4            2   127789085 0.00243939 -0.83797200        0.400
    ## 5           11   121435587 0.00348571  0.40790000        0.680
    ## 6            4   134185712 0.00663308  0.31669600        0.750
    ## 7            3    63462893 0.00443917  1.43384000        0.150
    ## 8            8   121340499 0.00339732  1.71425000        0.086
    ## 9            6    83773049 0.00200028 -0.72979800        0.470
    ## 10           2   109820829 0.00150398  0.43023800        0.670
    ## 11          12    99679113 0.00593040 -0.90735700        0.360
    ## 12          19    45438575 0.00652399 -0.11278600        0.910
    ## 13           5   165711579 0.00595855 -1.31022000        0.190
    ## 14           7   151626353 0.00685119 -0.18263500        0.860
    ## 15          15    75224360 0.00629254  1.17155000        0.240
    ## 16           4   181048651 0.00155122 -0.17044600        0.860
    ## 17          14    53400629 0.00228301 -0.57016800        0.570
    ## 18           7    33076314 0.00260791 -0.79393800        0.430
    ## 19          19    45490285 0.00327522 -1.58069000        0.110
    ## 20          19    45395619 0.00187135  0.79410100        0.430
    ## 21           1     5799177 0.00142696 -1.15383000        0.250
    ## 22           8     4438058 0.00132535  0.27652800        0.780
    ## 23          21    23361798 0.00145535 -0.87626300        0.380
    ## 24           2   219826934 0.00256893 -1.11752000        0.260
    ## 25           9    26834807 0.00299033  0.88962400        0.370
    ## 26           1    14363419 0.00152956  2.27802000        0.023
    ## 27          11    85830157 0.00141239  0.47535500        0.630
    ## 28          19    45242967 0.00254898  0.81875100        0.410
    ## 29           2   127862133 0.00134146  1.67222000        0.094
    ## 30           1   207786289 0.00170882 -0.98590300        0.320
    ## 31           2    18039651 0.00303588  1.95965000        0.050
    ## 32           4      661002 0.00183217  0.65486800        0.510
    ## 33          19    45355267 0.00647137  0.00749174        0.990
    ## 34           6    69273670 0.00506496  0.95531100        0.340
    ## 35          11    60033371 0.00134417  2.14624000        0.032
    ## 36          12     6546166 0.00440385 -0.19304500        0.850
    ## 37          13   102331030 0.00132390  0.86960500        0.380
    ## 38          18    35409158 0.00186666 -0.12483400        0.900
    ##    samplesize.outcome        outcome mr_keep.outcome pval_origin.outcome
    ## 1              250389 Wells2019hdiff            TRUE            reported
    ## 2              250389 Wells2019hdiff            TRUE            reported
    ## 3              250389 Wells2019hdiff            TRUE            reported
    ## 4              250389 Wells2019hdiff            TRUE            reported
    ## 5              250389 Wells2019hdiff            TRUE            reported
    ## 6              250389 Wells2019hdiff            TRUE            reported
    ## 7              250389 Wells2019hdiff            TRUE            reported
    ## 8              250389 Wells2019hdiff            TRUE            reported
    ## 9              250389 Wells2019hdiff            TRUE            reported
    ## 10             250389 Wells2019hdiff            TRUE            reported
    ## 11             250389 Wells2019hdiff            TRUE            reported
    ## 12             250389 Wells2019hdiff            TRUE            reported
    ## 13             250389 Wells2019hdiff            TRUE            reported
    ## 14             250389 Wells2019hdiff            TRUE            reported
    ## 15             250389 Wells2019hdiff            TRUE            reported
    ## 16             250389 Wells2019hdiff            TRUE            reported
    ## 17             250389 Wells2019hdiff            TRUE            reported
    ## 18             250389 Wells2019hdiff            TRUE            reported
    ## 19             250389 Wells2019hdiff            TRUE            reported
    ## 20             250389 Wells2019hdiff            TRUE            reported
    ## 21             250389 Wells2019hdiff            TRUE            reported
    ## 22             250389 Wells2019hdiff            TRUE            reported
    ## 23             250389 Wells2019hdiff            TRUE            reported
    ## 24             250389 Wells2019hdiff            TRUE            reported
    ## 25             250389 Wells2019hdiff            TRUE            reported
    ## 26             250389 Wells2019hdiff            TRUE            reported
    ## 27             250389 Wells2019hdiff            TRUE            reported
    ## 28             250389 Wells2019hdiff            TRUE            reported
    ## 29             250389 Wells2019hdiff            TRUE            reported
    ## 30             250389 Wells2019hdiff            TRUE            reported
    ## 31             250389 Wells2019hdiff            TRUE            reported
    ## 32             250389 Wells2019hdiff            TRUE            reported
    ## 33             250389 Wells2019hdiff            TRUE            reported
    ## 34             250389 Wells2019hdiff            TRUE            reported
    ## 35             250389 Wells2019hdiff            TRUE            reported
    ## 36             250389 Wells2019hdiff            TRUE            reported
    ## 37             250389 Wells2019hdiff            TRUE            reported
    ## 38             250389 Wells2019hdiff            TRUE            reported
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
    ## 14            7    151626353      0.1535   4.631270     3.637e-06
    ## 15           15     75224360      0.1650   4.619394     3.834e-06
    ## 16            4    181048651      0.0139   4.582730     4.657e-06
    ## 17           14     53400629      0.0203   4.729060     2.321e-06
    ## 18            7     33076314      0.0248   4.899194     1.004e-06
    ## 19           19     45490285      0.0341   4.656890     3.269e-06
    ## 20           19     45395619      0.0223  24.672600    5.980e-134
    ## 21            1      5799177      0.0131   4.977100     6.120e-07
    ## 22            8      4438058      0.0191  -4.900524     9.948e-07
    ## 23           21     23361798      0.0279   4.577061     4.895e-06
    ## 24            2    219826934      0.0513   5.185190     2.159e-07
    ## 25            9     26834807      0.0865   5.319080     1.030e-07
    ## 26            1     14363419      0.0296   4.800676     1.586e-06
    ## 27           11     85830157      0.0132   6.818180     9.084e-12
    ## 28           19     45242967      0.0278  -6.715827     1.864e-11
    ## 29            2    127862133      0.0124   6.241935     3.897e-10
    ## 30            1    207786289      0.0146  -4.856160     1.184e-06
    ## 31            2     18039651      0.0308  -4.613636     3.840e-06
    ## 32            4       661002      0.0171   4.561400     4.978e-06
    ## 33           19     45355267      0.1234   5.750405     9.010e-09
    ## 34            6     69273670      0.0501   4.572854     4.830e-06
    ## 35           11     60033371      0.0125   6.000000     2.245e-09
    ## 36           12      6546166      0.1111   4.576960     4.719e-06
    ## 37           13    102331030      0.0257  -4.610890     3.908e-06
    ## 38           18     35409158      0.0178  -4.792135     1.593e-06
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
    ##    id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1       reZmkx      2    TRUE           TRUE 5e-06    4.315017e-06
    ## 2       reZmkx      2    TRUE           TRUE 5e-06    1.368320e-05
    ## 3       reZmkx      2    TRUE           TRUE 5e-06    5.750026e-06
    ## 4       reZmkx      2    TRUE           TRUE 5e-06    3.962862e-06
    ## 5       reZmkx      2    TRUE           TRUE 5e-06    1.775229e-06
    ## 6       reZmkx      2    TRUE           TRUE 5e-06    8.727941e-06
    ## 7       reZmkx      2    TRUE           TRUE 5e-06    4.308776e-05
    ## 8       reZmkx      2    TRUE           TRUE 5e-06    3.690349e-05
    ## 9       reZmkx      2    TRUE           TRUE 5e-06    2.406826e-06
    ## 10      reZmkx      2    TRUE           TRUE 5e-06    3.539181e-07
    ## 11      reZmkx      2    TRUE           TRUE 5e-06    2.806017e-05
    ## 12      reZmkx      2    TRUE          FALSE 5e-06              NA
    ## 13      reZmkx      2    TRUE           TRUE 5e-06    6.280018e-05
    ## 14      reZmkx      2    TRUE           TRUE 5e-06    7.193116e-07
    ## 15      reZmkx      2    TRUE           TRUE 5e-06    7.163606e-05
    ## 16      reZmkx      2    TRUE           TRUE 5e-06    5.113210e-08
    ## 17      reZmkx      2    TRUE           TRUE 5e-06    1.567723e-06
    ## 18      reZmkx      2    TRUE           TRUE 5e-06    4.062125e-06
    ## 19      reZmkx      2    TRUE          FALSE 5e-06              NA
    ## 20      reZmkx      2    TRUE          FALSE 5e-06              NA
    ## 21      reZmkx      2    TRUE           TRUE 5e-06    2.631026e-06
    ## 22      reZmkx      2   FALSE           TRUE 5e-06              NA
    ## 23      reZmkx      2    TRUE           TRUE 5e-06    1.542185e-06
    ## 24      reZmkx      2    TRUE           TRUE 5e-06    8.144083e-06
    ## 25      reZmkx      2    TRUE           TRUE 5e-06    1.115224e-05
    ## 26      reZmkx      2    TRUE           TRUE 5e-06    1.393184e-05
    ## 27      reZmkx      2    TRUE           TRUE 5e-06    5.520012e-07
    ## 28      reZmkx      2    TRUE          FALSE 5e-06              NA
    ## 29      reZmkx      2    TRUE           TRUE 5e-06    5.429777e-06
    ## 30      reZmkx      2    TRUE           TRUE 5e-06    3.042243e-06
    ## 31      reZmkx      2    TRUE           TRUE 5e-06    3.508869e-05
    ## 32      reZmkx      2    TRUE           TRUE 5e-06    1.588206e-06
    ## 33      reZmkx      2    TRUE          FALSE 5e-06              NA
    ## 34      reZmkx      2    TRUE           TRUE 5e-06    2.533835e-05
    ## 35      reZmkx      2    TRUE           TRUE 5e-06    8.867445e-06
    ## 36      reZmkx      2    TRUE           TRUE 5e-06    3.212887e-07
    ## 37      reZmkx      2    TRUE           TRUE 5e-06    1.256153e-06
    ## 38      reZmkx      2    TRUE           TRUE 5e-06    8.396562e-08
    ##    mrpresso_pval mrpresso_keep
    ## 1         1.0000          TRUE
    ## 2         0.2560          TRUE
    ## 3         1.0000          TRUE
    ## 4         1.0000          TRUE
    ## 5         1.0000          TRUE
    ## 6         1.0000          TRUE
    ## 7         1.0000          TRUE
    ## 8         1.0000          TRUE
    ## 9         1.0000          TRUE
    ## 10        1.0000          TRUE
    ## 11        1.0000          TRUE
    ## 12            NA            NA
    ## 13        1.0000          TRUE
    ## 14        1.0000          TRUE
    ## 15        1.0000          TRUE
    ## 16        1.0000          TRUE
    ## 17        1.0000          TRUE
    ## 18        1.0000          TRUE
    ## 19            NA            NA
    ## 20            NA            NA
    ## 21        1.0000          TRUE
    ## 22            NA            NA
    ## 23        1.0000          TRUE
    ## 24        1.0000          TRUE
    ## 25        1.0000          TRUE
    ## 26        0.4672          TRUE
    ## 27        1.0000          TRUE
    ## 28            NA            NA
    ## 29        1.0000          TRUE
    ## 30        1.0000          TRUE
    ## 31        1.0000          TRUE
    ## 32        1.0000          TRUE
    ## 33            NA            NA
    ## 34        1.0000          TRUE
    ## 35        0.7424          TRUE
    ## 36        1.0000          TRUE
    ## 37        1.0000          TRUE
    ## 38        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17         0.91
    ## 2    rs204469          19    45490285     3.269e-06         0.11
    ## 3   rs2075650          19    45395619    5.980e-134         0.43
    ## 4  rs62117204          19    45242967     1.864e-11         0.41
    ## 5  rs76205446          19    45355267     9.010e-09         0.99

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
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE    0.0193715 24.82975  0.05 0.01887764 0.05216528

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
on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for AAOS on Hearing Difficulty

    ##   id.exposure id.outcome        outcome      exposure
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 2      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 3      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 4      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   32 -0.0006303320 0.002218805
    ## 2                           Weighted median   32 -0.0016829906 0.003457805
    ## 3                             Weighted mode   32 -0.0023461708 0.004281221
    ## 4                                  MR Egger   32  0.0004327684 0.004247271
    ##        pval
    ## 1 0.7763443
    ## 2 0.6264552
    ## 3 0.5876068
    ## 4 0.9195194

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Hearing Difficulty and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome      exposure
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 2      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 46.91198   30 0.02538031
    ## 2 Inverse variance weighted 47.08288   31 0.03215323

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome      exposure egger_intercept
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos   -0.0002187047
    ##             se     pval
    ## 1 0.0006615507 0.743249

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome      exposure    pt
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 49.86096 0.0376

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome      exposure
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 2      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 3      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 4      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   32 -0.0006303320 0.002218805
    ## 2                           Weighted median   32 -0.0016829906 0.003255420
    ## 3                             Weighted mode   32 -0.0023461708 0.004191434
    ## 4                                  MR Egger   32  0.0004327684 0.004247271
    ##        pval
    ## 1 0.7763443
    ## 2 0.6051694
    ## 3 0.5796699
    ## 4 0.9195194

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome      exposure
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ## 2      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 46.91198   30 0.02538031
    ## 2 Inverse variance weighted 47.08288   31 0.03215323

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome      exposure egger_intercept
    ## 1      reZmkx     HZxbt9 Wells2019hdiff Huang2017aaos   -0.0002187047
    ##             se     pval
    ## 1 0.0006615507 0.743249

<br>
