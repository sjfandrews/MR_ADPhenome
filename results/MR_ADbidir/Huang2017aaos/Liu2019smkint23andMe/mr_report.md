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

### Outcome: Somking Initiation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Somking Initiation

    ##            SNP CHROM       POS REF ALT         AF          BETA
    ## 1    rs2649062     1   5799177   A   G 0.32036400 -2.866110e-04
    ## 2    rs4662080     1  14363419   C   T 0.69553200 -4.433238e-04
    ## 3   rs10919252     1 169802956   C   G 0.31039100 -3.274770e-03
    ## 4    rs6701713     1 207786289   A   G 0.77515400 -3.424600e-04
    ## 5  rs144505123     1 221802052   C   T 0.00744913 -1.283345e-04
    ## 6    rs6718282     2  18039651   G   A 0.08463490  2.335293e-04
    ## 7  rs114131510     2  78420700   A   G 0.00839110 -6.846290e-04
    ## 8   rs12615104     2 109820829   T   C 0.32661600  2.064920e-03
    ## 9  rs111906619     2 127789085   C   T 0.05424060 -1.019402e-03
    ## 10   rs6431219     2 127862133   C   T 0.39324600 -4.388306e-04
    ## 11    rs359982     2 219826934   A   G 0.05341570  9.285270e-04
    ## 12 rs116341973     3  63462893   A   G 0.01417150 -9.996080e-04
    ## 13 rs145799027     3 114438213   T   C 0.00290276  2.893640e-04
    ## 14  rs71602496     4    661002   A   G 0.14947100  2.375660e-03
    ## 15 rs115803892     4 134185712   G   A 0.02500000  1.673150e-03
    ## 16   rs1689013     4 181048651   T   C 0.22133500  1.098570e-03
    ## 17 rs144202318     5 165711579   G   A 0.01040480  6.594242e-04
    ## 18  rs77345379     6  69273670   C   T 0.02319680  2.451696e-04
    ## 19  rs12153819     6  83773049   C   T 0.16679800 -9.084259e-04
    ## 20  rs17170228     7  33076314   G   A 0.05569710  2.167318e-03
    ## 21 rs149907089     7 151626353   G   C 0.01035230  8.347207e-04
    ## 22   rs2725066     8   4438058   T   A 0.54336700  1.604496e-03
    ## 23 rs117201713     8 121340499   G   C 0.03194600  4.469356e-04
    ## 24  rs36033332     9  26834807   C   G 0.08303120  1.309940e-03
    ## 25   rs7930318    11  60033371   C   T 0.65976800  1.014003e-03
    ## 26    rs567075    11  85830157   T   C 0.69089900  6.072100e-04
    ## 27  rs11218343    11 121435587   T   C 0.03449530  4.325260e-04
    ## 28   rs7958488    12   6546166   A   T 0.01840830 -9.648100e-05
    ## 29   rs1118069    12  84739181   A   T 0.62582100  3.247870e-03
    ## 30 rs140016885    12  99679113   A   G 0.02373190  1.693820e-03
    ## 31   rs9582517    13 102331030   T   C 0.48209100 -4.235210e-04
    ## 32 rs146189059    14  47173254   C   G 0.01144620  7.304410e-04
    ## 33  rs17125944    14  53400629   T   C 0.09734350  6.734270e-04
    ## 34 rs150193285    15  75224360   C   T 0.02104500  4.109122e-04
    ## 35   rs9947273    18  35409158   G   A 0.18287400 -2.875511e-03
    ## 36  rs62117204    19  45242967   C   T 0.07418880  8.926982e-05
    ## 37  rs76205446    19  45355267   T   A 0.00945455 -1.284755e-03
    ## 38   rs2075650    19  45395619   A   G 0.15559200 -2.885480e-03
    ## 39 rs141441332    19  45438575   C   A 0.00789570 -2.172392e-04
    ## 40    rs204469    19  45490285   A   G 0.96476600 -5.333810e-04
    ## 41   rs2827191    21  23361798   C   T 0.29854800 -1.117459e-03
    ## 42   rs1043441    22  39130964   C   T 0.30681800 -1.352413e-03
    ##              SE      Z         P       N              TRAIT
    ## 1  0.0009012926 -0.318 0.7505000 1232091 Smoking_Initiation
    ## 2  0.0012924892 -0.343 0.7314000  599289 Smoking_Initiation
    ## 3  0.0008989218 -3.643 0.0002692 1232091 Smoking_Initiation
    ## 4  0.0009012116 -0.380 0.7037000 1232091 Smoking_Initiation
    ## 5  0.0009232699 -0.139 0.8892000 1174994 Smoking_Initiation
    ## 6  0.0009230408  0.253 0.8001000 1174994 Smoking_Initiation
    ## 7  0.0009008281 -0.760 0.4471000 1232091 Smoking_Initiation
    ## 8  0.0008997470  2.295 0.0217500 1232091 Smoking_Initiation
    ## 9  0.0009005314 -1.132 0.2578000 1232091 Smoking_Initiation
    ## 10 0.0009010896 -0.487 0.6265000 1232091 Smoking_Initiation
    ## 11 0.0009006080  1.031 0.3027000 1232091 Smoking_Initiation
    ## 12 0.0009005478 -1.110 0.2671000 1232091 Smoking_Initiation
    ## 13 0.0012581049  0.230 0.8180000  632802 Smoking_Initiation
    ## 14 0.0008995306  2.641 0.0082680 1232091 Smoking_Initiation
    ## 15 0.0009000270  1.859 0.0629900 1232091 Smoking_Initiation
    ## 16 0.0009004663  1.220 0.2225000 1232091 Smoking_Initiation
    ## 17 0.0009008527  0.732 0.4641000 1232091 Smoking_Initiation
    ## 18 0.0009013589  0.272 0.7857000 1232091 Smoking_Initiation
    ## 19 0.0009222598 -0.985 0.3244000 1174994 Smoking_Initiation
    ## 20 0.0008996753  2.409 0.0160100 1232091 Smoking_Initiation
    ## 21 0.0012571094  0.664 0.5070000  632802 Smoking_Initiation
    ## 22 0.0012908253  1.243 0.2138000  599289 Smoking_Initiation
    ## 23 0.0009010798  0.496 0.6200000 1232091 Smoking_Initiation
    ## 24 0.0009002993  1.455 0.1457000 1232091 Smoking_Initiation
    ## 25 0.0009005355  1.126 0.2601000 1232091 Smoking_Initiation
    ## 26 0.0009009046  0.674 0.5001000 1232091 Smoking_Initiation
    ## 27 0.0009010966  0.480 0.6311000 1232091 Smoking_Initiation
    ## 28 0.0009016914 -0.107 0.9147000 1232091 Smoking_Initiation
    ## 29 0.0008989402  3.613 0.0003032 1232091 Smoking_Initiation
    ## 30 0.0009000120  1.882 0.0598200 1232091 Smoking_Initiation
    ## 31 0.0009011082 -0.470 0.6387000 1232091 Smoking_Initiation
    ## 32 0.0009269550  0.788 0.4307000 1163546 Smoking_Initiation
    ## 33 0.0009015088  0.747 0.4549000 1230262 Smoking_Initiation
    ## 34 0.0009011231  0.456 0.6484000 1232091 Smoking_Initiation
    ## 35 0.0012894669 -2.230 0.0257700  599289 Smoking_Initiation
    ## 36 0.0009017153  0.099 0.9210000 1232091 Smoking_Initiation
    ## 37 0.0009003187 -1.427 0.1536000 1232091 Smoking_Initiation
    ## 38 0.0008991834 -3.209 0.0013340 1232091 Smoking_Initiation
    ## 39 0.0009014074 -0.241 0.8095000 1232091 Smoking_Initiation
    ## 40 0.0009009819 -0.592 0.5537000 1232091 Smoking_Initiation
    ## 41 0.0009004507 -1.241 0.2145000 1232091 Smoking_Initiation
    ## 42 0.0009218903 -1.467 0.1423000 1174994 Smoking_Initiation

<br>

**Table 3:** Proxy SNPs for Somking Initiation

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA         NA        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized AAOS and Somking Initiation datasets

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
    ## 18 rs149907089                      C                     G
    ## 19 rs150193285                      T                     C
    ## 20   rs1689013                      C                     T
    ## 21  rs17125944                      C                     T
    ## 22  rs17170228                      A                     G
    ## 23    rs204469                      G                     A
    ## 24   rs2075650                      G                     A
    ## 25   rs2649062                      G                     A
    ## 26   rs2725066                      A                     T
    ## 27   rs2827191                      T                     C
    ## 28    rs359982                      G                     A
    ## 29  rs36033332                      G                     C
    ## 30   rs4662080                      T                     C
    ## 31    rs567075                      C                     T
    ## 32  rs62117204                      T                     C
    ## 33   rs6431219                      T                     C
    ## 34   rs6701713                      G                     A
    ## 35   rs6718282                      A                     G
    ## 36  rs71602496                      G                     A
    ## 37  rs76205446                      A                     T
    ## 38  rs77345379                      T                     C
    ## 39   rs7930318                      T                     C
    ## 40   rs7958488                      T                     A
    ## 41   rs9582517                      C                     T
    ## 42   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      T                    C       -0.0639 -1.352413e-03
    ## 2                      G                    C        0.0975 -3.274770e-03
    ## 3                      T                    A        0.1012  3.247870e-03
    ## 4                      T                    C        0.1268 -1.019402e-03
    ## 5                      C                    T       -0.1653  4.325260e-04
    ## 6                      G                    A        0.6419 -6.846290e-04
    ## 7                      A                    G        0.9151  1.673150e-03
    ## 8                      G                    A        0.2057 -9.996080e-04
    ## 9                      C                    G        0.2125  4.469356e-04
    ## 10                     T                    C       -0.1092 -9.084259e-04
    ## 11                     C                    T       -0.1057  2.064920e-03
    ## 12                     G                    A        0.6851  1.693820e-03
    ## 13                     A                    C        0.5383 -2.172392e-04
    ## 14                     A                    G        0.7219  6.594242e-04
    ## 15                     T                    C        0.7709 -1.283345e-04
    ## 16                     C                    T        0.7485  2.893640e-04
    ## 17                     G                    C        0.9444  7.304410e-04
    ## 18                     C                    G        0.7109  8.347207e-04
    ## 19                     T                    C        0.7622  4.109122e-04
    ## 20                     C                    T        0.0637  1.098570e-03
    ## 21                     C                    T        0.0960  6.734270e-04
    ## 22                     A                    G        0.1215  2.167318e-03
    ## 23                     G                    A        0.1588 -5.333810e-04
    ## 24                     G                    A        0.5502 -2.885480e-03
    ## 25                     G                    A        0.0652 -2.866110e-04
    ## 26                     A                    T       -0.0936  1.604496e-03
    ## 27                     T                    C        0.1277 -1.117459e-03
    ## 28                     G                    A        0.2660  9.285270e-04
    ## 29                     G                    C        0.4601  1.309940e-03
    ## 30                     T                    C        0.1421 -4.433238e-04
    ## 31                     C                    T        0.0900  6.072100e-04
    ## 32                     T                    C       -0.1867  8.926982e-05
    ## 33                     T                    C        0.0774 -4.388306e-04
    ## 34                     G                    A       -0.0709 -3.424600e-04
    ## 35                     A                    G       -0.1421  2.335293e-04
    ## 36                     G                    A        0.0780  2.375660e-03
    ## 37                     A                    T        0.7096 -1.284755e-03
    ## 38                     T                    C        0.2291  2.451696e-04
    ## 39                     T                    C        0.0750  1.014003e-03
    ## 40                     T                    A        0.5085 -9.648100e-05
    ## 41                     C                    T       -0.1185 -4.235210e-04
    ## 42                     A                    G       -0.0853 -2.875511e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893  0.30681800  FALSE       FALSE     FALSE     atbZsa
    ## 2        0.3275  0.31039100  FALSE        TRUE     FALSE     atbZsa
    ## 3        0.7195  0.62582100  FALSE        TRUE     FALSE     atbZsa
    ## 4        0.0709  0.05424060  FALSE       FALSE     FALSE     atbZsa
    ## 5        0.0395  0.03449530  FALSE       FALSE     FALSE     atbZsa
    ## 6        0.0162  0.00839110  FALSE       FALSE     FALSE     atbZsa
    ## 7        0.0129  0.02500000  FALSE       FALSE     FALSE     atbZsa
    ## 8        0.0227  0.01417150  FALSE       FALSE     FALSE     atbZsa
    ## 9        0.0408  0.03194600  FALSE        TRUE     FALSE     atbZsa
    ## 10       0.1018  0.16679800  FALSE       FALSE     FALSE     atbZsa
    ## 11       0.2566  0.32661600  FALSE       FALSE     FALSE     atbZsa
    ## 12       0.0144  0.02373190  FALSE       FALSE     FALSE     atbZsa
    ## 13       0.0110  0.00789570  FALSE       FALSE     FALSE     atbZsa
    ## 14       0.0135  0.01040480  FALSE       FALSE     FALSE     atbZsa
    ## 15       0.0113  0.00744913  FALSE       FALSE     FALSE     atbZsa
    ## 16       0.0147  0.00290276  FALSE       FALSE     FALSE     atbZsa
    ## 17       0.0111  0.01144620  FALSE        TRUE     FALSE     atbZsa
    ## 18       0.0162  0.01035230  FALSE        TRUE     FALSE     atbZsa
    ## 19       0.0109  0.02104500  FALSE       FALSE     FALSE     atbZsa
    ## 20       0.2493  0.22133500  FALSE       FALSE     FALSE     atbZsa
    ## 21       0.0924  0.09734350  FALSE       FALSE     FALSE     atbZsa
    ## 22       0.0623  0.05569710  FALSE       FALSE     FALSE     atbZsa
    ## 23       0.9632  0.96476600  FALSE       FALSE     FALSE     atbZsa
    ## 24       0.2197  0.15559200  FALSE       FALSE     FALSE     atbZsa
    ## 25       0.3192  0.32036400  FALSE       FALSE     FALSE     atbZsa
    ## 26       0.5128  0.54336700  FALSE        TRUE      TRUE     atbZsa
    ## 27       0.2857  0.29854800  FALSE       FALSE     FALSE     atbZsa
    ## 28       0.0781  0.05341570  FALSE       FALSE     FALSE     atbZsa
    ## 29       0.0386  0.08303120  FALSE        TRUE     FALSE     atbZsa
    ## 30       0.6649  0.69553200  FALSE       FALSE     FALSE     atbZsa
    ## 31       0.6903  0.69089900  FALSE       FALSE     FALSE     atbZsa
    ## 32       0.0601  0.07418880  FALSE       FALSE     FALSE     atbZsa
    ## 33       0.4163  0.39324600  FALSE       FALSE     FALSE     atbZsa
    ## 34       0.7983  0.77515400  FALSE       FALSE     FALSE     atbZsa
    ## 35       0.0440  0.08463490  FALSE       FALSE     FALSE     atbZsa
    ## 36       0.1453  0.14947100  FALSE       FALSE     FALSE     atbZsa
    ## 37       0.0143  0.00945455  FALSE        TRUE     FALSE     atbZsa
    ## 38       0.0185  0.02319680  FALSE       FALSE     FALSE     atbZsa
    ## 39       0.5996  0.65976800  FALSE       FALSE     FALSE     atbZsa
    ## 40       0.0195  0.01840830  FALSE        TRUE     FALSE     atbZsa
    ## 41       0.5073  0.48209100  FALSE       FALSE     FALSE     atbZsa
    ## 42       0.1431  0.18287400  FALSE       FALSE     FALSE     atbZsa
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1           22    39130964 0.0009218903    -1.467    0.1423000
    ## 2            1   169802956 0.0008989218    -3.643    0.0002692
    ## 3           12    84739181 0.0008989402     3.613    0.0003032
    ## 4            2   127789085 0.0009005314    -1.132    0.2578000
    ## 5           11   121435587 0.0009010966     0.480    0.6311000
    ## 6            2    78420700 0.0009008281    -0.760    0.4471000
    ## 7            4   134185712 0.0009000270     1.859    0.0629900
    ## 8            3    63462893 0.0009005478    -1.110    0.2671000
    ## 9            8   121340499 0.0009010798     0.496    0.6200000
    ## 10           6    83773049 0.0009222598    -0.985    0.3244000
    ## 11           2   109820829 0.0008997470     2.295    0.0217500
    ## 12          12    99679113 0.0009000120     1.882    0.0598200
    ## 13          19    45438575 0.0009014074    -0.241    0.8095000
    ## 14           5   165711579 0.0009008527     0.732    0.4641000
    ## 15           1   221802052 0.0009232699    -0.139    0.8892000
    ## 16           3   114438213 0.0012581049     0.230    0.8180000
    ## 17          14    47173254 0.0009269550     0.788    0.4307000
    ## 18           7   151626353 0.0012571094     0.664    0.5070000
    ## 19          15    75224360 0.0009011231     0.456    0.6484000
    ## 20           4   181048651 0.0009004663     1.220    0.2225000
    ## 21          14    53400629 0.0009015088     0.747    0.4549000
    ## 22           7    33076314 0.0008996753     2.409    0.0160100
    ## 23          19    45490285 0.0009009819    -0.592    0.5537000
    ## 24          19    45395619 0.0008991834    -3.209    0.0013340
    ## 25           1     5799177 0.0009012926    -0.318    0.7505000
    ## 26           8     4438058 0.0012908253     1.243    0.2138000
    ## 27          21    23361798 0.0009004507    -1.241    0.2145000
    ## 28           2   219826934 0.0009006080     1.031    0.3027000
    ## 29           9    26834807 0.0009002993     1.455    0.1457000
    ## 30           1    14363419 0.0012924892    -0.343    0.7314000
    ## 31          11    85830157 0.0009009046     0.674    0.5001000
    ## 32          19    45242967 0.0009017153     0.099    0.9210000
    ## 33           2   127862133 0.0009010896    -0.487    0.6265000
    ## 34           1   207786289 0.0009012116    -0.380    0.7037000
    ## 35           2    18039651 0.0009230408     0.253    0.8001000
    ## 36           4      661002 0.0008995306     2.641    0.0082680
    ## 37          19    45355267 0.0009003187    -1.427    0.1536000
    ## 38           6    69273670 0.0009013589     0.272    0.7857000
    ## 39          11    60033371 0.0009005355     1.126    0.2601000
    ## 40          12     6546166 0.0009016914    -0.107    0.9147000
    ## 41          13   102331030 0.0009011082    -0.470    0.6387000
    ## 42          18    35409158 0.0012894669    -2.230    0.0257700
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1             1174994 Liu2019smkint23andMe            TRUE
    ## 2             1232091 Liu2019smkint23andMe            TRUE
    ## 3             1232091 Liu2019smkint23andMe            TRUE
    ## 4             1232091 Liu2019smkint23andMe            TRUE
    ## 5             1232091 Liu2019smkint23andMe            TRUE
    ## 6             1232091 Liu2019smkint23andMe            TRUE
    ## 7             1232091 Liu2019smkint23andMe            TRUE
    ## 8             1232091 Liu2019smkint23andMe            TRUE
    ## 9             1232091 Liu2019smkint23andMe            TRUE
    ## 10            1174994 Liu2019smkint23andMe            TRUE
    ## 11            1232091 Liu2019smkint23andMe            TRUE
    ## 12            1232091 Liu2019smkint23andMe            TRUE
    ## 13            1232091 Liu2019smkint23andMe            TRUE
    ## 14            1232091 Liu2019smkint23andMe            TRUE
    ## 15            1174994 Liu2019smkint23andMe            TRUE
    ## 16             632802 Liu2019smkint23andMe            TRUE
    ## 17            1163546 Liu2019smkint23andMe            TRUE
    ## 18             632802 Liu2019smkint23andMe            TRUE
    ## 19            1232091 Liu2019smkint23andMe            TRUE
    ## 20            1232091 Liu2019smkint23andMe            TRUE
    ## 21            1230262 Liu2019smkint23andMe            TRUE
    ## 22            1232091 Liu2019smkint23andMe            TRUE
    ## 23            1232091 Liu2019smkint23andMe            TRUE
    ## 24            1232091 Liu2019smkint23andMe            TRUE
    ## 25            1232091 Liu2019smkint23andMe            TRUE
    ## 26             599289 Liu2019smkint23andMe            TRUE
    ## 27            1232091 Liu2019smkint23andMe            TRUE
    ## 28            1232091 Liu2019smkint23andMe            TRUE
    ## 29            1232091 Liu2019smkint23andMe            TRUE
    ## 30             599289 Liu2019smkint23andMe            TRUE
    ## 31            1232091 Liu2019smkint23andMe            TRUE
    ## 32            1232091 Liu2019smkint23andMe            TRUE
    ## 33            1232091 Liu2019smkint23andMe            TRUE
    ## 34            1232091 Liu2019smkint23andMe            TRUE
    ## 35            1174994 Liu2019smkint23andMe            TRUE
    ## 36            1232091 Liu2019smkint23andMe            TRUE
    ## 37            1232091 Liu2019smkint23andMe            TRUE
    ## 38            1232091 Liu2019smkint23andMe            TRUE
    ## 39            1232091 Liu2019smkint23andMe            TRUE
    ## 40            1232091 Liu2019smkint23andMe            TRUE
    ## 41            1232091 Liu2019smkint23andMe            TRUE
    ## 42             599289 Liu2019smkint23andMe            TRUE
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
    ## 18            reported            7    151626353      0.1535   4.631270
    ## 19            reported           15     75224360      0.1650   4.619394
    ## 20            reported            4    181048651      0.0139   4.582730
    ## 21            reported           14     53400629      0.0203   4.729060
    ## 22            reported            7     33076314      0.0248   4.899194
    ## 23            reported           19     45490285      0.0341   4.656890
    ## 24            reported           19     45395619      0.0223  24.672600
    ## 25            reported            1      5799177      0.0131   4.977100
    ## 26            reported            8      4438058      0.0191  -4.900524
    ## 27            reported           21     23361798      0.0279   4.577061
    ## 28            reported            2    219826934      0.0513   5.185190
    ## 29            reported            9     26834807      0.0865   5.319080
    ## 30            reported            1     14363419      0.0296   4.800676
    ## 31            reported           11     85830157      0.0132   6.818180
    ## 32            reported           19     45242967      0.0278  -6.715827
    ## 33            reported            2    127862133      0.0124   6.241935
    ## 34            reported            1    207786289      0.0146  -4.856160
    ## 35            reported            2     18039651      0.0308  -4.613636
    ## 36            reported            4       661002      0.0171   4.561400
    ## 37            reported           19     45355267      0.1234   5.750405
    ## 38            reported            6     69273670      0.0501   4.572854
    ## 39            reported           11     60033371      0.0125   6.000000
    ## 40            reported           12      6546166      0.1111   4.576960
    ## 41            reported           13    102331030      0.0257  -4.610890
    ## 42            reported           18     35409158      0.0178  -4.792135
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
    ## 18     3.637e-06               40255 Huang2017aaos             TRUE
    ## 19     3.834e-06               40255 Huang2017aaos             TRUE
    ## 20     4.657e-06               40255 Huang2017aaos             TRUE
    ## 21     2.321e-06               40255 Huang2017aaos             TRUE
    ## 22     1.004e-06               40255 Huang2017aaos             TRUE
    ## 23     3.269e-06               40255 Huang2017aaos             TRUE
    ## 24    5.980e-134               40255 Huang2017aaos             TRUE
    ## 25     6.120e-07               40255 Huang2017aaos             TRUE
    ## 26     9.948e-07               40255 Huang2017aaos             TRUE
    ## 27     4.895e-06               40255 Huang2017aaos             TRUE
    ## 28     2.159e-07               40255 Huang2017aaos             TRUE
    ## 29     1.030e-07               40255 Huang2017aaos             TRUE
    ## 30     1.586e-06               40255 Huang2017aaos             TRUE
    ## 31     9.084e-12               40255 Huang2017aaos             TRUE
    ## 32     1.864e-11               40255 Huang2017aaos             TRUE
    ## 33     3.897e-10               40255 Huang2017aaos             TRUE
    ## 34     1.184e-06               40255 Huang2017aaos             TRUE
    ## 35     3.840e-06               40255 Huang2017aaos             TRUE
    ## 36     4.978e-06               40255 Huang2017aaos             TRUE
    ## 37     9.010e-09               40255 Huang2017aaos             TRUE
    ## 38     4.830e-06               40255 Huang2017aaos             TRUE
    ## 39     2.245e-09               40255 Huang2017aaos             TRUE
    ## 40     4.719e-06               40255 Huang2017aaos             TRUE
    ## 41     3.908e-06               40255 Huang2017aaos             TRUE
    ## 42     1.593e-06               40255 Huang2017aaos             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 2              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 3              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 4              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 5              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 6              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 7              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 8              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 9              reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 10             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 11             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 12             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 13             reported      Np3uhQ      2    TRUE          FALSE 5e-06
    ## 14             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 15             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 16             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 17             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 18             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 19             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 20             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 21             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 22             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 23             reported      Np3uhQ      2    TRUE          FALSE 5e-06
    ## 24             reported      Np3uhQ      2    TRUE          FALSE 5e-06
    ## 25             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 26             reported      Np3uhQ      2   FALSE           TRUE 5e-06
    ## 27             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 28             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 29             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 30             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 31             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 32             reported      Np3uhQ      2    TRUE          FALSE 5e-06
    ## 33             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 34             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 35             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 36             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 37             reported      Np3uhQ      2    TRUE          FALSE 5e-06
    ## 38             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 39             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 40             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 41             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ## 42             reported      Np3uhQ      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.676811e-06             1          TRUE
    ## 2     1.135370e-05        0.0072         FALSE
    ## 3     9.992765e-06       <0.0072         FALSE
    ## 4     1.296151e-06             1          TRUE
    ## 5     3.438439e-07             1          TRUE
    ## 6     1.878718e-06             1          TRUE
    ## 7     9.648116e-07             1          TRUE
    ## 8     1.431572e-06             1          TRUE
    ## 9     6.492394e-08             1          TRUE
    ## 10    6.565455e-07             1          TRUE
    ## 11    4.690570e-06        0.4896          TRUE
    ## 12    1.355675e-06             1          TRUE
    ## 13              NA          <NA>            NA
    ## 14    3.633208e-14             1          TRUE
    ## 15    8.554836e-07             1          TRUE
    ## 16    1.727022e-07             1          TRUE
    ## 17    2.419398e-08             1          TRUE
    ## 18    3.765500e-08             1          TRUE
    ## 19    1.011554e-07             1          TRUE
    ## 20    1.083916e-06             1          TRUE
    ## 21    3.441742e-07             1          TRUE
    ## 22    4.250530e-06        0.7416          TRUE
    ## 23              NA          <NA>            NA
    ## 24              NA          <NA>            NA
    ## 25    1.200229e-07             1          TRUE
    ## 26              NA          <NA>            NA
    ## 27    1.531897e-06             1          TRUE
    ## 28    4.818358e-07             1          TRUE
    ## 29    8.538944e-07             1          TRUE
    ## 30    3.296512e-07             1          TRUE
    ## 31    2.763896e-07             1          TRUE
    ## 32              NA          <NA>            NA
    ## 33    2.601908e-07             1          TRUE
    ## 34    7.724228e-08             1          TRUE
    ## 35    1.329341e-07             1          TRUE
    ## 36    5.321660e-06         0.324          TRUE
    ## 37              NA          <NA>            NA
    ## 38    1.308708e-09             1          TRUE
    ## 39    8.957006e-07             1          TRUE
    ## 40    3.455464e-07             1          TRUE
    ## 41    9.987472e-08             1          TRUE
    ## 42    7.836220e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Somking
Initiation GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17     0.809500
    ## 2    rs204469          19    45490285     3.269e-06     0.553700
    ## 3   rs2075650          19    45395619    5.980e-134     0.001334
    ## 4  rs62117204          19    45242967     1.864e-11     0.921000
    ## 5  rs76205446          19    45355267     9.010e-09     0.153600

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.02165173 24.72390  0.05 0.1095727 0.06264443
    ## 2             TRUE   0.02052170 24.78458  0.05 0.1061520 0.06224699

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
on Somking Initiation. <br>

**Table 6** MR causaul estimates for AAOS on Somking Initiation

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 2      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 3      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 4      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   36 0.0009136962 0.0003781741
    ## 2                           Weighted median   36 0.0007842988 0.0005135473
    ## 3                             Weighted mode   36 0.0007916259 0.0004187384
    ## 4                                  MR Egger   36 0.0004729611 0.0007673988
    ##         pval
    ## 1 0.01568892
    ## 2 0.12670678
    ## 3 0.06699330
    ## 4 0.54178995

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Somking Initiation and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 2      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 67.27431   34 0.0005781195
    ## 2 Inverse variance weighted 68.53067   35 0.0005994769

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019smkint23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019smkint23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0002506441 0.0003145469 0.4310723

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
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers  RSSobs  pval
    ## 1            FALSE          2 70.0409 0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 2      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 3      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 4      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   34 0.0009152347 0.0003788367
    ## 2                           Weighted median   34 0.0007842694 0.0005248763
    ## 3                             Weighted mode   34 0.0009021813 0.0004324232
    ## 4                                  MR Egger   34 0.0004191138 0.0006247337
    ##         pval
    ## 1 0.01569602
    ## 2 0.13512371
    ## 3 0.04475405
    ## 4 0.50711838

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ## 2      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 40.69948   32 0.1392295
    ## 2 Inverse variance weighted 42.20628   33 0.1307907

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      Np3uhQ     atbZsa Liu2019smkint23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0002868933 0.0002635799 0.2845269

<br>
