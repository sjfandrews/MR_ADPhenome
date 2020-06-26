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

### Outcome: Insomnia

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Insomnia

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1    rs2649062     1   5799177    A    G 0.32036400  1.486780e-03
    ## 2    rs4662080     1  14363419    C    T 0.69553200  9.012835e-04
    ## 3   rs10919252     1 169802956    C    G 0.31039100  4.952650e-04
    ## 4    rs6701713     1 207786289    A    G 0.77515400  3.407780e-04
    ## 5  rs144505123     1 221802052    C    T 0.00744913 -2.059754e-03
    ## 6    rs6718282     2  18039651    G    A 0.08463490  5.758500e-04
    ## 7  rs114131510    NA        NA <NA> <NA>         NA            NA
    ## 8   rs12615104     2 109820829    T    C 0.32661600  2.040660e-04
    ## 9  rs111906619     2 127789085    C    T 0.05424060  6.016265e-04
    ## 10   rs6431219     2 127862133    C    T 0.39324600 -9.091649e-04
    ## 11    rs359982     2 219826934    A    G 0.05341570  1.737090e-03
    ## 12 rs116341973     3  63462893    A    G 0.01417150 -6.493110e-04
    ## 13 rs145799027    NA        NA <NA> <NA>         NA            NA
    ## 14  rs71602496     4    661002    A    G 0.14947100  1.688390e-03
    ## 15 rs115803892     4 134185712    G    A 0.02500000 -8.069966e-05
    ## 16   rs1689013     4 181048651    T    C 0.22133500  9.391790e-04
    ## 17 rs144202318     5 165711579    G    A 0.01040480 -9.024220e-04
    ## 18  rs77345379     6  69273670    C    T 0.02319680 -1.560511e-03
    ## 19  rs12153819     6  83773049    C    T 0.16679800  2.491649e-03
    ## 20  rs17170228     7  33076314    G    A 0.05569710  1.665455e-04
    ## 21 rs149907089    NA        NA <NA> <NA>         NA            NA
    ## 22   rs2725066     8   4438058    T    A 0.54336700 -2.518303e-04
    ## 23 rs117201713     8 121340499    G    C 0.03194600 -1.453639e-03
    ## 24  rs36033332     9  26834807    C    G 0.08303120  1.365940e-03
    ## 25   rs7930318    11  60033371    C    T 0.65976800  5.608798e-04
    ## 26    rs567075    11  85830157    T    C 0.69089900  3.320910e-03
    ## 27  rs11218343    11 121435587    T    C 0.03449530  5.825820e-04
    ## 28   rs7958488    12   6546166    A    T 0.01840830 -2.387860e-04
    ## 29   rs1118069    12  84739181    A    T 0.62582100  4.707790e-03
    ## 30 rs140016885    NA        NA <NA> <NA>         NA            NA
    ## 31   rs9582517    13 102331030    T    C 0.48209100 -1.387970e-03
    ## 32 rs146189059    14  47173254    C    G 0.01144620 -3.271950e-04
    ## 33  rs17125944    14  53400629    T    C 0.09734350 -1.735770e-04
    ## 34 rs150193285    15  75224360    C    T 0.02104500 -8.779698e-04
    ## 35   rs9947273    18  35409158    G    A 0.18287400 -2.255247e-04
    ## 36  rs62117204    19  45242967    C    T 0.07418880  1.257345e-03
    ## 37  rs76205446    19  45355267    T    A 0.00945455 -1.892623e-03
    ## 38   rs2075650    19  45395619    A    G 0.15559200 -3.331590e-03
    ## 39 rs141441332    19  45438575    C    A 0.00789570 -1.824385e-05
    ## 40    rs204469    19  45490285    A    G 0.96476600 -6.749000e-04
    ## 41   rs2827191    21  23361798    C    T 0.29854800  7.386383e-04
    ## 42   rs1043441    22  39130964    C    T 0.30681800  9.656731e-04
    ##              SE      Z         P       N             TRAIT
    ## 1  0.0008674344  1.714 8.659e-02 1326786 Insomnia_Symptoms
    ## 2  0.0010288624  0.876 3.813e-01  944267 Insomnia_Symptoms
    ## 3  0.0008673637  0.571 5.678e-01 1329501 Insomnia_Symptoms
    ## 4  0.0008671200  0.393 6.946e-01 1330800 Insomnia_Symptoms
    ## 5  0.0010278211 -2.004 4.511e-02  944267 Insomnia_Symptoms
    ## 6  0.0008685520  0.663 5.076e-01 1325619 Insomnia_Symptoms
    ## 7            NA     NA        NA      NA              <NA>
    ## 8  0.0008683665  0.235 8.144e-01 1327611 Insomnia_Symptoms
    ## 9  0.0008668970  0.694 4.875e-01 1330603 Insomnia_Symptoms
    ## 10 0.0008675237 -1.048 2.948e-01 1327853 Insomnia_Symptoms
    ## 11 0.0008659484  2.006 4.481e-02 1330800 Insomnia_Symptoms
    ## 12 0.0008669035 -0.749 4.538e-01 1330445 Insomnia_Symptoms
    ## 13           NA     NA        NA      NA              <NA>
    ## 14 0.0008662860  1.949 5.124e-02 1329867 Insomnia_Symptoms
    ## 15 0.0008677383 -0.093 9.256e-01 1330429 Insomnia_Symptoms
    ## 16 0.0008672009  1.083 2.787e-01 1328765 Insomnia_Symptoms
    ## 17 0.0008668799 -1.041 2.978e-01 1329841 Insomnia_Symptoms
    ## 18 0.0008669503 -1.800 7.184e-02 1328106 Insomnia_Symptoms
    ## 19 0.0008657573  2.878 3.999e-03 1329830 Insomnia_Symptoms
    ## 20 0.0008674246  0.192 8.481e-01 1330713 Insomnia_Symptoms
    ## 21           NA     NA        NA      NA              <NA>
    ## 22 0.0008683804 -0.290 7.716e-01 1327324 Insomnia_Symptoms
    ## 23 0.0008662928 -1.678 9.335e-02 1330356 Insomnia_Symptoms
    ## 24 0.0008672620  1.575 1.153e-01 1327580 Insomnia_Symptoms
    ## 25 0.0008668931  0.647 5.173e-01 1330737 Insomnia_Symptoms
    ## 26 0.0008652703  3.838 1.238e-04 1329677 Insomnia_Symptoms
    ## 27 0.0008669368  0.672 5.017e-01 1330539 Insomnia_Symptoms
    ## 28 0.0008683136 -0.275 7.831e-01 1327591 Insomnia_Symptoms
    ## 29 0.0008641321  5.448 5.085e-08 1330480 Insomnia_Symptoms
    ## 30           NA     NA        NA      NA              <NA>
    ## 31 0.0008669370 -1.601 1.093e-01 1328525 Insomnia_Symptoms
    ## 32 0.0008678925 -0.377 7.064e-01 1328488 Insomnia_Symptoms
    ## 33 0.0008678826 -0.200 8.414e-01 1329264 Insomnia_Symptoms
    ## 34 0.0008667027 -1.013 3.113e-01 1330448 Insomnia_Symptoms
    ## 35 0.0010297932 -0.219 8.265e-01  944267 Insomnia_Symptoms
    ## 36 0.0008665370  1.451 1.469e-01 1330047 Insomnia_Symptoms
    ## 37 0.0008661891 -2.185 2.887e-02 1329733 Insomnia_Symptoms
    ## 38 0.0008648985 -3.852 1.172e-04 1330800 Insomnia_Symptoms
    ## 39 0.0008687547 -0.021 9.831e-01 1328426 Insomnia_Symptoms
    ## 40 0.0008674803 -0.778 4.368e-01 1328606 Insomnia_Symptoms
    ## 41 0.0008669464  0.852 3.940e-01 1330064 Insomnia_Symptoms
    ## 42 0.0008668520  1.114 2.654e-01 1329770 Insomnia_Symptoms

<br>

**Table 3:** Proxy SNPs for Insomnia

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs114131510        NA    NA     NA        NA        NA
    ## 2            NA rs145799027        NA    NA     NA        NA        NA
    ## 3            NA rs149907089        NA    NA     NA        NA        NA
    ## 4            NA rs140016885        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized AAOS and Insomnia datasets

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
    ## 11 rs141441332                      A                     C
    ## 12 rs144202318                      A                     G
    ## 13 rs144505123                      T                     C
    ## 14 rs146189059                      G                     C
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
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      T                    C       -0.0639  9.656731e-04
    ## 2                      G                    C        0.0975  4.952650e-04
    ## 3                      T                    A        0.1012  4.707790e-03
    ## 4                      T                    C        0.1268  6.016265e-04
    ## 5                      C                    T       -0.1653  5.825820e-04
    ## 6                      A                    G        0.9151 -8.069966e-05
    ## 7                      G                    A        0.2057 -6.493110e-04
    ## 8                      C                    G        0.2125 -1.453639e-03
    ## 9                      T                    C       -0.1092  2.491649e-03
    ## 10                     C                    T       -0.1057  2.040660e-04
    ## 11                     A                    C        0.5383 -1.824385e-05
    ## 12                     A                    G        0.7219 -9.024220e-04
    ## 13                     T                    C        0.7709 -2.059754e-03
    ## 14                     G                    C        0.9444 -3.271950e-04
    ## 15                     T                    C        0.7622 -8.779698e-04
    ## 16                     C                    T        0.0637  9.391790e-04
    ## 17                     C                    T        0.0960 -1.735770e-04
    ## 18                     A                    G        0.1215  1.665455e-04
    ## 19                     G                    A        0.1588 -6.749000e-04
    ## 20                     G                    A        0.5502 -3.331590e-03
    ## 21                     G                    A        0.0652  1.486780e-03
    ## 22                     A                    T       -0.0936 -2.518303e-04
    ## 23                     T                    C        0.1277  7.386383e-04
    ## 24                     G                    A        0.2660  1.737090e-03
    ## 25                     G                    C        0.4601  1.365940e-03
    ## 26                     T                    C        0.1421  9.012835e-04
    ## 27                     C                    T        0.0900  3.320910e-03
    ## 28                     T                    C       -0.1867  1.257345e-03
    ## 29                     T                    C        0.0774 -9.091649e-04
    ## 30                     G                    A       -0.0709  3.407780e-04
    ## 31                     A                    G       -0.1421  5.758500e-04
    ## 32                     G                    A        0.0780  1.688390e-03
    ## 33                     A                    T        0.7096 -1.892623e-03
    ## 34                     T                    C        0.2291 -1.560511e-03
    ## 35                     T                    C        0.0750  5.608798e-04
    ## 36                     T                    A        0.5085 -2.387860e-04
    ## 37                     C                    T       -0.1185 -1.387970e-03
    ## 38                     A                    G       -0.0853 -2.255247e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893  0.30681800  FALSE       FALSE     FALSE     NHESKA
    ## 2        0.3275  0.31039100  FALSE        TRUE     FALSE     NHESKA
    ## 3        0.7195  0.62582100  FALSE        TRUE     FALSE     NHESKA
    ## 4        0.0709  0.05424060  FALSE       FALSE     FALSE     NHESKA
    ## 5        0.0395  0.03449530  FALSE       FALSE     FALSE     NHESKA
    ## 6        0.0129  0.02500000  FALSE       FALSE     FALSE     NHESKA
    ## 7        0.0227  0.01417150  FALSE       FALSE     FALSE     NHESKA
    ## 8        0.0408  0.03194600  FALSE        TRUE     FALSE     NHESKA
    ## 9        0.1018  0.16679800  FALSE       FALSE     FALSE     NHESKA
    ## 10       0.2566  0.32661600  FALSE       FALSE     FALSE     NHESKA
    ## 11       0.0110  0.00789570  FALSE       FALSE     FALSE     NHESKA
    ## 12       0.0135  0.01040480  FALSE       FALSE     FALSE     NHESKA
    ## 13       0.0113  0.00744913  FALSE       FALSE     FALSE     NHESKA
    ## 14       0.0111  0.01144620  FALSE        TRUE     FALSE     NHESKA
    ## 15       0.0109  0.02104500  FALSE       FALSE     FALSE     NHESKA
    ## 16       0.2493  0.22133500  FALSE       FALSE     FALSE     NHESKA
    ## 17       0.0924  0.09734350  FALSE       FALSE     FALSE     NHESKA
    ## 18       0.0623  0.05569710  FALSE       FALSE     FALSE     NHESKA
    ## 19       0.9632  0.96476600  FALSE       FALSE     FALSE     NHESKA
    ## 20       0.2197  0.15559200  FALSE       FALSE     FALSE     NHESKA
    ## 21       0.3192  0.32036400  FALSE       FALSE     FALSE     NHESKA
    ## 22       0.5128  0.54336700  FALSE        TRUE      TRUE     NHESKA
    ## 23       0.2857  0.29854800  FALSE       FALSE     FALSE     NHESKA
    ## 24       0.0781  0.05341570  FALSE       FALSE     FALSE     NHESKA
    ## 25       0.0386  0.08303120  FALSE        TRUE     FALSE     NHESKA
    ## 26       0.6649  0.69553200  FALSE       FALSE     FALSE     NHESKA
    ## 27       0.6903  0.69089900  FALSE       FALSE     FALSE     NHESKA
    ## 28       0.0601  0.07418880  FALSE       FALSE     FALSE     NHESKA
    ## 29       0.4163  0.39324600  FALSE       FALSE     FALSE     NHESKA
    ## 30       0.7983  0.77515400  FALSE       FALSE     FALSE     NHESKA
    ## 31       0.0440  0.08463490  FALSE       FALSE     FALSE     NHESKA
    ## 32       0.1453  0.14947100  FALSE       FALSE     FALSE     NHESKA
    ## 33       0.0143  0.00945455  FALSE        TRUE     FALSE     NHESKA
    ## 34       0.0185  0.02319680  FALSE       FALSE     FALSE     NHESKA
    ## 35       0.5996  0.65976800  FALSE       FALSE     FALSE     NHESKA
    ## 36       0.0195  0.01840830  FALSE        TRUE     FALSE     NHESKA
    ## 37       0.5073  0.48209100  FALSE       FALSE     FALSE     NHESKA
    ## 38       0.1431  0.18287400  FALSE       FALSE     FALSE     NHESKA
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1           22    39130964 0.0008668520     1.114    2.654e-01
    ## 2            1   169802956 0.0008673637     0.571    5.678e-01
    ## 3           12    84739181 0.0008641321     5.448    5.085e-08
    ## 4            2   127789085 0.0008668970     0.694    4.875e-01
    ## 5           11   121435587 0.0008669368     0.672    5.017e-01
    ## 6            4   134185712 0.0008677383    -0.093    9.256e-01
    ## 7            3    63462893 0.0008669035    -0.749    4.538e-01
    ## 8            8   121340499 0.0008662928    -1.678    9.335e-02
    ## 9            6    83773049 0.0008657573     2.878    3.999e-03
    ## 10           2   109820829 0.0008683665     0.235    8.144e-01
    ## 11          19    45438575 0.0008687547    -0.021    9.831e-01
    ## 12           5   165711579 0.0008668799    -1.041    2.978e-01
    ## 13           1   221802052 0.0010278211    -2.004    4.511e-02
    ## 14          14    47173254 0.0008678925    -0.377    7.064e-01
    ## 15          15    75224360 0.0008667027    -1.013    3.113e-01
    ## 16           4   181048651 0.0008672009     1.083    2.787e-01
    ## 17          14    53400629 0.0008678826    -0.200    8.414e-01
    ## 18           7    33076314 0.0008674246     0.192    8.481e-01
    ## 19          19    45490285 0.0008674803    -0.778    4.368e-01
    ## 20          19    45395619 0.0008648985    -3.852    1.172e-04
    ## 21           1     5799177 0.0008674344     1.714    8.659e-02
    ## 22           8     4438058 0.0008683804    -0.290    7.716e-01
    ## 23          21    23361798 0.0008669464     0.852    3.940e-01
    ## 24           2   219826934 0.0008659484     2.006    4.481e-02
    ## 25           9    26834807 0.0008672620     1.575    1.153e-01
    ## 26           1    14363419 0.0010288624     0.876    3.813e-01
    ## 27          11    85830157 0.0008652703     3.838    1.238e-04
    ## 28          19    45242967 0.0008665370     1.451    1.469e-01
    ## 29           2   127862133 0.0008675237    -1.048    2.948e-01
    ## 30           1   207786289 0.0008671200     0.393    6.946e-01
    ## 31           2    18039651 0.0008685520     0.663    5.076e-01
    ## 32           4      661002 0.0008662860     1.949    5.124e-02
    ## 33          19    45355267 0.0008661891    -2.185    2.887e-02
    ## 34           6    69273670 0.0008669503    -1.800    7.184e-02
    ## 35          11    60033371 0.0008668931     0.647    5.173e-01
    ## 36          12     6546166 0.0008683136    -0.275    7.831e-01
    ## 37          13   102331030 0.0008669370    -1.601    1.093e-01
    ## 38          18    35409158 0.0010297932    -0.219    8.265e-01
    ##    samplesize.outcome                   outcome mr_keep.outcome
    ## 1             1329770 Jansen2018insomnia23andMe            TRUE
    ## 2             1329501 Jansen2018insomnia23andMe            TRUE
    ## 3             1330480 Jansen2018insomnia23andMe            TRUE
    ## 4             1330603 Jansen2018insomnia23andMe            TRUE
    ## 5             1330539 Jansen2018insomnia23andMe            TRUE
    ## 6             1330429 Jansen2018insomnia23andMe            TRUE
    ## 7             1330445 Jansen2018insomnia23andMe            TRUE
    ## 8             1330356 Jansen2018insomnia23andMe            TRUE
    ## 9             1329830 Jansen2018insomnia23andMe            TRUE
    ## 10            1327611 Jansen2018insomnia23andMe            TRUE
    ## 11            1328426 Jansen2018insomnia23andMe            TRUE
    ## 12            1329841 Jansen2018insomnia23andMe            TRUE
    ## 13             944267 Jansen2018insomnia23andMe            TRUE
    ## 14            1328488 Jansen2018insomnia23andMe            TRUE
    ## 15            1330448 Jansen2018insomnia23andMe            TRUE
    ## 16            1328765 Jansen2018insomnia23andMe            TRUE
    ## 17            1329264 Jansen2018insomnia23andMe            TRUE
    ## 18            1330713 Jansen2018insomnia23andMe            TRUE
    ## 19            1328606 Jansen2018insomnia23andMe            TRUE
    ## 20            1330800 Jansen2018insomnia23andMe            TRUE
    ## 21            1326786 Jansen2018insomnia23andMe            TRUE
    ## 22            1327324 Jansen2018insomnia23andMe            TRUE
    ## 23            1330064 Jansen2018insomnia23andMe            TRUE
    ## 24            1330800 Jansen2018insomnia23andMe            TRUE
    ## 25            1327580 Jansen2018insomnia23andMe            TRUE
    ## 26             944267 Jansen2018insomnia23andMe            TRUE
    ## 27            1329677 Jansen2018insomnia23andMe            TRUE
    ## 28            1330047 Jansen2018insomnia23andMe            TRUE
    ## 29            1327853 Jansen2018insomnia23andMe            TRUE
    ## 30            1330800 Jansen2018insomnia23andMe            TRUE
    ## 31            1325619 Jansen2018insomnia23andMe            TRUE
    ## 32            1329867 Jansen2018insomnia23andMe            TRUE
    ## 33            1329733 Jansen2018insomnia23andMe            TRUE
    ## 34            1328106 Jansen2018insomnia23andMe            TRUE
    ## 35            1330737 Jansen2018insomnia23andMe            TRUE
    ## 36            1327591 Jansen2018insomnia23andMe            TRUE
    ## 37            1328525 Jansen2018insomnia23andMe            TRUE
    ## 38             944267 Jansen2018insomnia23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           22     39130964      0.0135  -4.733333
    ## 2             reported            1    169802956      0.0198   4.924240
    ## 3             reported           12     84739181      0.0216   4.685190
    ## 4             reported            2    127789085      0.0256   4.953125
    ## 5             reported           11    121435587      0.0329  -5.024320
    ## 6             reported            4    134185712      0.1973   4.638115
    ## 7             reported            3     63462893      0.0399   5.155390
    ## 8             reported            8    121340499      0.0456   4.660088
    ## 9             reported            6     83773049      0.0235  -4.646809
    ## 10            reported            2    109820829      0.0221  -4.782810
    ## 11            reported           19     45438575      0.0632   8.517405
    ## 12            reported            5    165711579      0.1572   4.592239
    ## 13            reported            1    221802052      0.1609   4.791175
    ## 14            reported           14     47173254      0.1835   5.146590
    ## 15            reported           15     75224360      0.1650   4.619394
    ## 16            reported            4    181048651      0.0139   4.582730
    ## 17            reported           14     53400629      0.0203   4.729060
    ## 18            reported            7     33076314      0.0248   4.899194
    ## 19            reported           19     45490285      0.0341   4.656890
    ## 20            reported           19     45395619      0.0223  24.672600
    ## 21            reported            1      5799177      0.0131   4.977100
    ## 22            reported            8      4438058      0.0191  -4.900524
    ## 23            reported           21     23361798      0.0279   4.577061
    ## 24            reported            2    219826934      0.0513   5.185190
    ## 25            reported            9     26834807      0.0865   5.319080
    ## 26            reported            1     14363419      0.0296   4.800676
    ## 27            reported           11     85830157      0.0132   6.818180
    ## 28            reported           19     45242967      0.0278  -6.715827
    ## 29            reported            2    127862133      0.0124   6.241935
    ## 30            reported            1    207786289      0.0146  -4.856160
    ## 31            reported            2     18039651      0.0308  -4.613636
    ## 32            reported            4       661002      0.0171   4.561400
    ## 33            reported           19     45355267      0.1234   5.750405
    ## 34            reported            6     69273670      0.0501   4.572854
    ## 35            reported           11     60033371      0.0125   6.000000
    ## 36            reported           12      6546166      0.1111   4.576960
    ## 37            reported           13    102331030      0.0257  -4.610890
    ## 38            reported           18     35409158      0.0178  -4.792135
    ##    pval.exposure samplesize.exposure      exposure mr_keep.exposure
    ## 1      2.110e-06               40255 Huang2017aaos             TRUE
    ## 2      8.182e-07               40255 Huang2017aaos             TRUE
    ## 3      2.693e-06               40255 Huang2017aaos             TRUE
    ## 4      7.088e-07               40255 Huang2017aaos             TRUE
    ## 5      5.148e-07               40255 Huang2017aaos             TRUE
    ## 6      3.498e-06               40255 Huang2017aaos             TRUE
    ## 7      2.478e-07               40255 Huang2017aaos             TRUE
    ## 8      3.120e-06               40255 Huang2017aaos             TRUE
    ## 9      3.291e-06               40255 Huang2017aaos             TRUE
    ## 10     1.829e-06               40255 Huang2017aaos             TRUE
    ## 11     1.713e-17               40255 Huang2017aaos             TRUE
    ## 12     4.356e-06               40255 Huang2017aaos             TRUE
    ## 13     1.661e-06               40255 Huang2017aaos             TRUE
    ## 14     2.634e-07               40255 Huang2017aaos             TRUE
    ## 15     3.834e-06               40255 Huang2017aaos             TRUE
    ## 16     4.657e-06               40255 Huang2017aaos             TRUE
    ## 17     2.321e-06               40255 Huang2017aaos             TRUE
    ## 18     1.004e-06               40255 Huang2017aaos             TRUE
    ## 19     3.269e-06               40255 Huang2017aaos             TRUE
    ## 20    5.980e-134               40255 Huang2017aaos             TRUE
    ## 21     6.120e-07               40255 Huang2017aaos             TRUE
    ## 22     9.948e-07               40255 Huang2017aaos             TRUE
    ## 23     4.895e-06               40255 Huang2017aaos             TRUE
    ## 24     2.159e-07               40255 Huang2017aaos             TRUE
    ## 25     1.030e-07               40255 Huang2017aaos             TRUE
    ## 26     1.586e-06               40255 Huang2017aaos             TRUE
    ## 27     9.084e-12               40255 Huang2017aaos             TRUE
    ## 28     1.864e-11               40255 Huang2017aaos             TRUE
    ## 29     3.897e-10               40255 Huang2017aaos             TRUE
    ## 30     1.184e-06               40255 Huang2017aaos             TRUE
    ## 31     3.840e-06               40255 Huang2017aaos             TRUE
    ## 32     4.978e-06               40255 Huang2017aaos             TRUE
    ## 33     9.010e-09               40255 Huang2017aaos             TRUE
    ## 34     4.830e-06               40255 Huang2017aaos             TRUE
    ## 35     2.245e-09               40255 Huang2017aaos             TRUE
    ## 36     4.719e-06               40255 Huang2017aaos             TRUE
    ## 37     3.908e-06               40255 Huang2017aaos             TRUE
    ## 38     1.593e-06               40255 Huang2017aaos             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 2              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 3              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 4              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 5              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 6              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 7              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 8              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 9              reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 10             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 11             reported      z2UsCC      2    TRUE          FALSE 5e-06
    ## 12             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 13             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 14             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 15             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 16             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 17             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 18             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 19             reported      z2UsCC      2    TRUE          FALSE 5e-06
    ## 20             reported      z2UsCC      2    TRUE          FALSE 5e-06
    ## 21             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 22             reported      z2UsCC      2   FALSE           TRUE 5e-06
    ## 23             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 24             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 25             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 26             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 27             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 28             reported      z2UsCC      2    TRUE          FALSE 5e-06
    ## 29             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 30             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 31             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 32             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 33             reported      z2UsCC      2    TRUE          FALSE 5e-06
    ## 34             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 35             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 36             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 37             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ## 38             reported      z2UsCC      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     8.847435e-07             1          TRUE
    ## 2     2.874527e-07             1          TRUE
    ## 3     2.266486e-05       <0.0064         FALSE
    ## 4     4.299910e-07             1          TRUE
    ## 5     2.691142e-07             1          TRUE
    ## 6     1.331569e-07             1          TRUE
    ## 7     3.265759e-07             1          TRUE
    ## 8     1.910632e-06             1          TRUE
    ## 9     6.023581e-06          0.16          TRUE
    ## 10    2.608488e-08             1          TRUE
    ## 11              NA          <NA>            NA
    ## 12    4.846076e-07             1          TRUE
    ## 13    3.779302e-06             1          TRUE
    ## 14    5.246031e-09             1          TRUE
    ## 15    4.360621e-07             1          TRUE
    ## 16    9.332144e-07             1          TRUE
    ## 17    1.817910e-08             1          TRUE
    ## 18    4.697264e-08             1          TRUE
    ## 19              NA          <NA>            NA
    ## 20              NA          <NA>            NA
    ## 21    2.294760e-06             1          TRUE
    ## 22              NA          <NA>            NA
    ## 23    6.299473e-07             1          TRUE
    ## 24    3.524341e-06             1          TRUE
    ## 25    2.677767e-06             1          TRUE
    ## 26    9.262136e-07             1          TRUE
    ## 27    1.131716e-05       <0.0064         FALSE
    ## 28              NA          <NA>            NA
    ## 29    7.725533e-07             1          TRUE
    ## 30    9.754314e-08             1          TRUE
    ## 31    2.709984e-07             1          TRUE
    ## 32    2.967491e-06             1          TRUE
    ## 33              NA          <NA>            NA
    ## 34    2.208503e-06             1          TRUE
    ## 35    3.506842e-07             1          TRUE
    ## 36    1.161518e-09             1          TRUE
    ## 37    2.076588e-06             1          TRUE
    ## 38    6.788196e-08             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17    0.9831000
    ## 2    rs204469          19    45490285     3.269e-06    0.4368000
    ## 3   rs2075650          19    45395619    5.980e-134    0.0001172
    ## 4  rs62117204          19    45242967     1.864e-11    0.1469000
    ## 5  rs76205446          19    45355267     9.010e-09    0.0288700

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
    ## 1            FALSE   0.01948542 24.97867  0.05 0.01309740 0.05150168
    ## 2             TRUE   0.01781838 24.32431  0.05 0.04801649 0.05551852

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
on Insomnia. <br>

**Table 6** MR causaul estimates for AAOS on Insomnia

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 2      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 3      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 4      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   32 -0.0004067242
    ## 2                           Weighted median   32 -0.0004193773
    ## 3                             Weighted mode   32 -0.0007236417
    ## 4                                  MR Egger   32 -0.0014901811
    ##             se      pval
    ## 1 0.0004253199 0.3389316
    ## 2 0.0005728437 0.4641093
    ## 3 0.0004668260 0.1312601
    ## 4 0.0009620985 0.1318951

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Insomnia and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 2      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 80.79873   30 1.515604e-06
    ## 2 Inverse variance weighted 88.00998   31 2.300718e-07

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0005751588 0.0003514988 0.1122258

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                   outcome      exposure    pt
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 90.04996 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 2      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 3      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 4      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   30 -0.0005970056
    ## 2                           Weighted median   30 -0.0004205155
    ## 3                             Weighted mode   30 -0.0007064196
    ## 4                                  MR Egger   30 -0.0009317945
    ##             se      pval
    ## 1 0.0004262669 0.1613505
    ## 2 0.0005874986 0.4741317
    ## 3 0.0004575527 0.1334539
    ## 4 0.0007258171 0.2097390

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ## 2      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 41.89417   28 0.04436427
    ## 2 Inverse variance weighted 42.55198   29 0.05005247

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                   outcome      exposure
    ## 1      z2UsCC     NHESKA Jansen2018insomnia23andMe Huang2017aaos
    ##   egger_intercept          se      pval
    ## 1    0.0001813903 0.000273567 0.5127165

<br>
