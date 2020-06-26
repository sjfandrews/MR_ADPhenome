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

### Outcome: Fish and plant related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Fish and plant
related diet

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1    rs2649062     1   5799177   A   G 0.311133 -1.71984e-04 0.00262130
    ## 2    rs4662080     1  14363419   C   T 0.751907  1.07552e-03 0.00282444
    ## 3   rs10919252     1 169802956   C   G 0.325956  1.44373e-03 0.00258448
    ## 4    rs6701713     1 207786289   A   G 0.818813 -5.95050e-04 0.00313669
    ## 5  rs144505123     1 221802052   C   T 0.003852  6.79918e-03 0.01954880
    ## 6    rs6718282     2  18039651   G   A 0.048633  7.47655e-05 0.00565532
    ## 7  rs114131510     2  78420700   A   G 0.006343  1.23128e-02 0.01529050
    ## 8   rs12615104     2 109820829   T   C 0.258948 -2.39854e-03 0.00276444
    ## 9  rs111906619     2 127789085   C   T 0.079031  2.87126e-03 0.00448360
    ## 10   rs6431219     2 127862133   C   T 0.414084  2.50801e-03 0.00246153
    ## 11    rs359982     2 219826934   A   G 0.070784  4.94343e-04 0.00470192
    ## 12 rs116341973     3  63462893   A   G 0.022615  1.04885e-02 0.00813525
    ## 13 rs145799027     3 114438213   T   C 0.005036 -1.44607e-02 0.01713350
    ## 14  rs71602496     4    661002   A   G 0.152642 -5.03043e-03 0.00336660
    ## 15 rs115803892     4 134185712   G   A 0.009920 -9.02440e-03 0.01219660
    ## 16   rs1689013     4 181048651   T   C 0.237354 -1.37773e-03 0.00284523
    ## 17 rs144202318     5 165711579   G   A 0.012309  1.12866e-02 0.01097560
    ## 18  rs77345379     6  69273670   C   T 0.016515  6.63220e-03 0.00952572
    ## 19  rs12153819     6  83773049   C   T 0.124291  1.52057e-03 0.00366542
    ## 20  rs17170228     7  33076314   G   A 0.068572  1.59326e-03 0.00479205
    ## 21 rs149907089     7 151626353   G   C 0.007207  3.06426e-03 0.01446910
    ## 22   rs2725066     8   4438058   T   A 0.522547  1.88014e-03 0.00243318
    ## 23 rs117201713     8 121340499   G   C 0.039352 -6.09536e-03 0.00622371
    ## 24  rs36033332     9  26834807   C   G 0.050117 -1.16550e-02 0.00556420
    ## 25   rs7930318    11  60033371   C   T 0.596901  8.89807e-04 0.00246743
    ## 26    rs567075    11  85830157   T   C 0.678287 -2.54743e-03 0.00258981
    ## 27  rs11218343    11 121435587   T   C 0.037072  7.13061e-04 0.00640304
    ## 28   rs7958488    12   6546166   A   T 0.021857  9.72115e-03 0.00829611
    ## 29   rs1118069    12  84739181   A   T 0.717067 -1.46481e-03 0.00268323
    ## 30 rs140016885    12  99679113   A   G 0.011152 -2.12252e-02 0.01157720
    ## 31   rs9582517    13 102331030   T   C 0.489103 -2.11900e-04 0.00242797
    ## 32 rs146189059    14  47173254   C   G 0.006617 -1.27299e-02 0.01497190
    ## 33  rs17125944    14  53400629   T   C 0.090900  6.80446e-03 0.00421079
    ## 34 rs150193285    15  75224360   C   T 0.010642 -8.33312e-03 0.01180220
    ## 35   rs9947273    18  35409158   G   A 0.146658 -3.71392e-03 0.00346583
    ## 36  rs62117204    19  45242967   C   T 0.071890 -9.49500e-03 0.00468067
    ## 37  rs76205446    19  45355267   T   A 0.010150  3.19355e-02 0.01208870
    ## 38   rs2075650    19  45395619   A   G 0.146460  1.64226e-02 0.00342495
    ## 39 rs141441332    19  45438575   C   A 0.009834  1.92564e-02 0.01228410
    ## 40    rs204469    19  45490285   A   G 0.957551  9.96409e-03 0.00602524
    ## 41   rs2827191    21  23361798   C   T 0.289085  4.25363e-03 0.00267096
    ## 42   rs1043441    22  39130964   C   T 0.293687  1.23977e-03 0.00265670
    ##             Z       P      N           TRAIT
    ## 1  -0.0656102 9.5e-01 335576 fish_plant_diet
    ## 2   0.3807910 7.0e-01 335576 fish_plant_diet
    ## 3   0.5586150 5.8e-01 335576 fish_plant_diet
    ## 4  -0.1897060 8.5e-01 335576 fish_plant_diet
    ## 5   0.3478050 7.3e-01 335576 fish_plant_diet
    ## 6   0.0132204 9.9e-01 335576 fish_plant_diet
    ## 7   0.8052580 4.2e-01 335576 fish_plant_diet
    ## 8  -0.8676400 3.9e-01 335576 fish_plant_diet
    ## 9   0.6403920 5.2e-01 335576 fish_plant_diet
    ## 10  1.0188800 3.1e-01 335576 fish_plant_diet
    ## 11  0.1051360 9.2e-01 335576 fish_plant_diet
    ## 12  1.2892700 2.0e-01 335576 fish_plant_diet
    ## 13 -0.8440020 4.0e-01 335576 fish_plant_diet
    ## 14 -1.4942200 1.4e-01 335576 fish_plant_diet
    ## 15 -0.7399110 4.6e-01 335576 fish_plant_diet
    ## 16 -0.4842240 6.3e-01 335576 fish_plant_diet
    ## 17  1.0283400 3.0e-01 335576 fish_plant_diet
    ## 18  0.6962410 4.9e-01 335576 fish_plant_diet
    ## 19  0.4148420 6.8e-01 335576 fish_plant_diet
    ## 20  0.3324800 7.4e-01 335576 fish_plant_diet
    ## 21  0.2117800 8.3e-01 335576 fish_plant_diet
    ## 22  0.7727090 4.4e-01 335576 fish_plant_diet
    ## 23 -0.9793770 3.3e-01 335576 fish_plant_diet
    ## 24 -2.0946400 3.6e-02 335576 fish_plant_diet
    ## 25  0.3606210 7.2e-01 335576 fish_plant_diet
    ## 26 -0.9836360 3.3e-01 335576 fish_plant_diet
    ## 27  0.1113630 9.1e-01 335576 fish_plant_diet
    ## 28  1.1717700 2.4e-01 335576 fish_plant_diet
    ## 29 -0.5459130 5.9e-01 335576 fish_plant_diet
    ## 30 -1.8333600 6.7e-02 335576 fish_plant_diet
    ## 31 -0.0872746 9.3e-01 335576 fish_plant_diet
    ## 32 -0.8502530 4.0e-01 335576 fish_plant_diet
    ## 33  1.6159600 1.1e-01 335576 fish_plant_diet
    ## 34 -0.7060650 4.8e-01 335576 fish_plant_diet
    ## 35 -1.0715800 2.8e-01 335576 fish_plant_diet
    ## 36 -2.0285600 4.3e-02 335576 fish_plant_diet
    ## 37  2.6417600 8.2e-03 335576 fish_plant_diet
    ## 38  4.7949900 1.6e-06 335576 fish_plant_diet
    ## 39  1.5675900 1.2e-01 335576 fish_plant_diet
    ## 40  1.6537200 9.8e-02 335576 fish_plant_diet
    ## 41  1.5925500 1.1e-01 335576 fish_plant_diet
    ## 42  0.4666580 6.4e-01 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Fish and plant related diet

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

**Table 4:** Harmonized AAOS and Fish and plant related diet datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639  1.23977e-03
    ## 2                      G                    C        0.0975  1.44373e-03
    ## 3                      T                    A        0.1012 -1.46481e-03
    ## 4                      T                    C        0.1268  2.87126e-03
    ## 5                      C                    T       -0.1653  7.13061e-04
    ## 6                      G                    A        0.6419  1.23128e-02
    ## 7                      A                    G        0.9151 -9.02440e-03
    ## 8                      G                    A        0.2057  1.04885e-02
    ## 9                      C                    G        0.2125 -6.09536e-03
    ## 10                     T                    C       -0.1092  1.52057e-03
    ## 11                     C                    T       -0.1057 -2.39854e-03
    ## 12                     G                    A        0.6851 -2.12252e-02
    ## 13                     A                    C        0.5383  1.92564e-02
    ## 14                     A                    G        0.7219  1.12866e-02
    ## 15                     T                    C        0.7709  6.79918e-03
    ## 16                     C                    T        0.7485 -1.44607e-02
    ## 17                     G                    C        0.9444 -1.27299e-02
    ## 18                     C                    G        0.7109  3.06426e-03
    ## 19                     T                    C        0.7622 -8.33312e-03
    ## 20                     C                    T        0.0637 -1.37773e-03
    ## 21                     C                    T        0.0960  6.80446e-03
    ## 22                     A                    G        0.1215  1.59326e-03
    ## 23                     G                    A        0.1588  9.96409e-03
    ## 24                     G                    A        0.5502  1.64226e-02
    ## 25                     G                    A        0.0652 -1.71984e-04
    ## 26                     A                    T       -0.0936  1.88014e-03
    ## 27                     T                    C        0.1277  4.25363e-03
    ## 28                     G                    A        0.2660  4.94343e-04
    ## 29                     G                    C        0.4601 -1.16550e-02
    ## 30                     T                    C        0.1421  1.07552e-03
    ## 31                     C                    T        0.0900 -2.54743e-03
    ## 32                     T                    C       -0.1867 -9.49500e-03
    ## 33                     T                    C        0.0774  2.50801e-03
    ## 34                     G                    A       -0.0709 -5.95050e-04
    ## 35                     A                    G       -0.1421  7.47655e-05
    ## 36                     G                    A        0.0780 -5.03043e-03
    ## 37                     A                    T        0.7096  3.19355e-02
    ## 38                     T                    C        0.2291  6.63220e-03
    ## 39                     T                    C        0.0750  8.89807e-04
    ## 40                     T                    A        0.5085  9.72115e-03
    ## 41                     C                    T       -0.1185 -2.11900e-04
    ## 42                     A                    G       -0.0853 -3.71392e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893    0.293687  FALSE       FALSE     FALSE     QBhCA6
    ## 2        0.3275    0.325956  FALSE        TRUE     FALSE     QBhCA6
    ## 3        0.7195    0.717067  FALSE        TRUE     FALSE     QBhCA6
    ## 4        0.0709    0.079031  FALSE       FALSE     FALSE     QBhCA6
    ## 5        0.0395    0.037072  FALSE       FALSE     FALSE     QBhCA6
    ## 6        0.0162    0.006343  FALSE       FALSE     FALSE     QBhCA6
    ## 7        0.0129    0.009920  FALSE       FALSE     FALSE     QBhCA6
    ## 8        0.0227    0.022615  FALSE       FALSE     FALSE     QBhCA6
    ## 9        0.0408    0.039352  FALSE        TRUE     FALSE     QBhCA6
    ## 10       0.1018    0.124291  FALSE       FALSE     FALSE     QBhCA6
    ## 11       0.2566    0.258948  FALSE       FALSE     FALSE     QBhCA6
    ## 12       0.0144    0.011152  FALSE       FALSE     FALSE     QBhCA6
    ## 13       0.0110    0.009834  FALSE       FALSE     FALSE     QBhCA6
    ## 14       0.0135    0.012309  FALSE       FALSE     FALSE     QBhCA6
    ## 15       0.0113    0.003852  FALSE       FALSE     FALSE     QBhCA6
    ## 16       0.0147    0.005036  FALSE       FALSE     FALSE     QBhCA6
    ## 17       0.0111    0.006617  FALSE        TRUE     FALSE     QBhCA6
    ## 18       0.0162    0.007207  FALSE        TRUE     FALSE     QBhCA6
    ## 19       0.0109    0.010642  FALSE       FALSE     FALSE     QBhCA6
    ## 20       0.2493    0.237354  FALSE       FALSE     FALSE     QBhCA6
    ## 21       0.0924    0.090900  FALSE       FALSE     FALSE     QBhCA6
    ## 22       0.0623    0.068572  FALSE       FALSE     FALSE     QBhCA6
    ## 23       0.9632    0.957551  FALSE       FALSE     FALSE     QBhCA6
    ## 24       0.2197    0.146460  FALSE       FALSE     FALSE     QBhCA6
    ## 25       0.3192    0.311133  FALSE       FALSE     FALSE     QBhCA6
    ## 26       0.5128    0.522547  FALSE        TRUE      TRUE     QBhCA6
    ## 27       0.2857    0.289085  FALSE       FALSE     FALSE     QBhCA6
    ## 28       0.0781    0.070784  FALSE       FALSE     FALSE     QBhCA6
    ## 29       0.0386    0.050117  FALSE        TRUE     FALSE     QBhCA6
    ## 30       0.6649    0.751907  FALSE       FALSE     FALSE     QBhCA6
    ## 31       0.6903    0.678287  FALSE       FALSE     FALSE     QBhCA6
    ## 32       0.0601    0.071890  FALSE       FALSE     FALSE     QBhCA6
    ## 33       0.4163    0.414084  FALSE       FALSE     FALSE     QBhCA6
    ## 34       0.7983    0.818813  FALSE       FALSE     FALSE     QBhCA6
    ## 35       0.0440    0.048633  FALSE       FALSE     FALSE     QBhCA6
    ## 36       0.1453    0.152642  FALSE       FALSE     FALSE     QBhCA6
    ## 37       0.0143    0.010150  FALSE        TRUE     FALSE     QBhCA6
    ## 38       0.0185    0.016515  FALSE       FALSE     FALSE     QBhCA6
    ## 39       0.5996    0.596901  FALSE       FALSE     FALSE     QBhCA6
    ## 40       0.0195    0.021857  FALSE        TRUE     FALSE     QBhCA6
    ## 41       0.5073    0.489103  FALSE       FALSE     FALSE     QBhCA6
    ## 42       0.1431    0.146658  FALSE       FALSE     FALSE     QBhCA6
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           22    39130964 0.00265670  0.4666580      6.4e-01
    ## 2            1   169802956 0.00258448  0.5586150      5.8e-01
    ## 3           12    84739181 0.00268323 -0.5459130      5.9e-01
    ## 4            2   127789085 0.00448360  0.6403920      5.2e-01
    ## 5           11   121435587 0.00640304  0.1113630      9.1e-01
    ## 6            2    78420700 0.01529050  0.8052580      4.2e-01
    ## 7            4   134185712 0.01219660 -0.7399110      4.6e-01
    ## 8            3    63462893 0.00813525  1.2892700      2.0e-01
    ## 9            8   121340499 0.00622371 -0.9793770      3.3e-01
    ## 10           6    83773049 0.00366542  0.4148420      6.8e-01
    ## 11           2   109820829 0.00276444 -0.8676400      3.9e-01
    ## 12          12    99679113 0.01157720 -1.8333600      6.7e-02
    ## 13          19    45438575 0.01228410  1.5675900      1.2e-01
    ## 14           5   165711579 0.01097560  1.0283400      3.0e-01
    ## 15           1   221802052 0.01954880  0.3478050      7.3e-01
    ## 16           3   114438213 0.01713350 -0.8440020      4.0e-01
    ## 17          14    47173254 0.01497190 -0.8502530      4.0e-01
    ## 18           7   151626353 0.01446910  0.2117800      8.3e-01
    ## 19          15    75224360 0.01180220 -0.7060650      4.8e-01
    ## 20           4   181048651 0.00284523 -0.4842240      6.3e-01
    ## 21          14    53400629 0.00421079  1.6159600      1.1e-01
    ## 22           7    33076314 0.00479205  0.3324800      7.4e-01
    ## 23          19    45490285 0.00602524  1.6537200      9.8e-02
    ## 24          19    45395619 0.00342495  4.7949900      1.6e-06
    ## 25           1     5799177 0.00262130 -0.0656102      9.5e-01
    ## 26           8     4438058 0.00243318  0.7727090      4.4e-01
    ## 27          21    23361798 0.00267096  1.5925500      1.1e-01
    ## 28           2   219826934 0.00470192  0.1051360      9.2e-01
    ## 29           9    26834807 0.00556420 -2.0946400      3.6e-02
    ## 30           1    14363419 0.00282444  0.3807910      7.0e-01
    ## 31          11    85830157 0.00258981 -0.9836360      3.3e-01
    ## 32          19    45242967 0.00468067 -2.0285600      4.3e-02
    ## 33           2   127862133 0.00246153  1.0188800      3.1e-01
    ## 34           1   207786289 0.00313669 -0.1897060      8.5e-01
    ## 35           2    18039651 0.00565532  0.0132204      9.9e-01
    ## 36           4      661002 0.00336660 -1.4942200      1.4e-01
    ## 37          19    45355267 0.01208870  2.6417600      8.2e-03
    ## 38           6    69273670 0.00952572  0.6962410      4.9e-01
    ## 39          11    60033371 0.00246743  0.3606210      7.2e-01
    ## 40          12     6546166 0.00829611  1.1717700      2.4e-01
    ## 41          13   102331030 0.00242797 -0.0872746      9.3e-01
    ## 42          18    35409158 0.00346583 -1.0715800      2.8e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020fish            TRUE            reported
    ## 2              335576 Niarchou2020fish            TRUE            reported
    ## 3              335576 Niarchou2020fish            TRUE            reported
    ## 4              335576 Niarchou2020fish            TRUE            reported
    ## 5              335576 Niarchou2020fish            TRUE            reported
    ## 6              335576 Niarchou2020fish            TRUE            reported
    ## 7              335576 Niarchou2020fish            TRUE            reported
    ## 8              335576 Niarchou2020fish            TRUE            reported
    ## 9              335576 Niarchou2020fish            TRUE            reported
    ## 10             335576 Niarchou2020fish            TRUE            reported
    ## 11             335576 Niarchou2020fish            TRUE            reported
    ## 12             335576 Niarchou2020fish            TRUE            reported
    ## 13             335576 Niarchou2020fish            TRUE            reported
    ## 14             335576 Niarchou2020fish            TRUE            reported
    ## 15             335576 Niarchou2020fish            TRUE            reported
    ## 16             335576 Niarchou2020fish            TRUE            reported
    ## 17             335576 Niarchou2020fish            TRUE            reported
    ## 18             335576 Niarchou2020fish            TRUE            reported
    ## 19             335576 Niarchou2020fish            TRUE            reported
    ## 20             335576 Niarchou2020fish            TRUE            reported
    ## 21             335576 Niarchou2020fish            TRUE            reported
    ## 22             335576 Niarchou2020fish            TRUE            reported
    ## 23             335576 Niarchou2020fish            TRUE            reported
    ## 24             335576 Niarchou2020fish            TRUE            reported
    ## 25             335576 Niarchou2020fish            TRUE            reported
    ## 26             335576 Niarchou2020fish            TRUE            reported
    ## 27             335576 Niarchou2020fish            TRUE            reported
    ## 28             335576 Niarchou2020fish            TRUE            reported
    ## 29             335576 Niarchou2020fish            TRUE            reported
    ## 30             335576 Niarchou2020fish            TRUE            reported
    ## 31             335576 Niarchou2020fish            TRUE            reported
    ## 32             335576 Niarchou2020fish            TRUE            reported
    ## 33             335576 Niarchou2020fish            TRUE            reported
    ## 34             335576 Niarchou2020fish            TRUE            reported
    ## 35             335576 Niarchou2020fish            TRUE            reported
    ## 36             335576 Niarchou2020fish            TRUE            reported
    ## 37             335576 Niarchou2020fish            TRUE            reported
    ## 38             335576 Niarchou2020fish            TRUE            reported
    ## 39             335576 Niarchou2020fish            TRUE            reported
    ## 40             335576 Niarchou2020fish            TRUE            reported
    ## 41             335576 Niarchou2020fish            TRUE            reported
    ## 42             335576 Niarchou2020fish            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            22     39130964      0.0135  -4.733333     2.110e-06
    ## 2             1    169802956      0.0198   4.924240     8.182e-07
    ## 3            12     84739181      0.0216   4.685190     2.693e-06
    ## 4             2    127789085      0.0256   4.953125     7.088e-07
    ## 5            11    121435587      0.0329  -5.024320     5.148e-07
    ## 6             2     78420700      0.1406   4.565430     4.949e-06
    ## 7             4    134185712      0.1973   4.638115     3.498e-06
    ## 8             3     63462893      0.0399   5.155390     2.478e-07
    ## 9             8    121340499      0.0456   4.660088     3.120e-06
    ## 10            6     83773049      0.0235  -4.646809     3.291e-06
    ## 11            2    109820829      0.0221  -4.782810     1.829e-06
    ## 12           12     99679113      0.1416   4.838280     1.310e-06
    ## 13           19     45438575      0.0632   8.517405     1.713e-17
    ## 14            5    165711579      0.1572   4.592239     4.356e-06
    ## 15            1    221802052      0.1609   4.791175     1.661e-06
    ## 16            3    114438213      0.1601   4.675200     2.933e-06
    ## 17           14     47173254      0.1835   5.146590     2.634e-07
    ## 18            7    151626353      0.1535   4.631270     3.637e-06
    ## 19           15     75224360      0.1650   4.619394     3.834e-06
    ## 20            4    181048651      0.0139   4.582730     4.657e-06
    ## 21           14     53400629      0.0203   4.729060     2.321e-06
    ## 22            7     33076314      0.0248   4.899194     1.004e-06
    ## 23           19     45490285      0.0341   4.656890     3.269e-06
    ## 24           19     45395619      0.0223  24.672600    5.980e-134
    ## 25            1      5799177      0.0131   4.977100     6.120e-07
    ## 26            8      4438058      0.0191  -4.900524     9.948e-07
    ## 27           21     23361798      0.0279   4.577061     4.895e-06
    ## 28            2    219826934      0.0513   5.185190     2.159e-07
    ## 29            9     26834807      0.0865   5.319080     1.030e-07
    ## 30            1     14363419      0.0296   4.800676     1.586e-06
    ## 31           11     85830157      0.0132   6.818180     9.084e-12
    ## 32           19     45242967      0.0278  -6.715827     1.864e-11
    ## 33            2    127862133      0.0124   6.241935     3.897e-10
    ## 34            1    207786289      0.0146  -4.856160     1.184e-06
    ## 35            2     18039651      0.0308  -4.613636     3.840e-06
    ## 36            4       661002      0.0171   4.561400     4.978e-06
    ## 37           19     45355267      0.1234   5.750405     9.010e-09
    ## 38            6     69273670      0.0501   4.572854     4.830e-06
    ## 39           11     60033371      0.0125   6.000000     2.245e-09
    ## 40           12      6546166      0.1111   4.576960     4.719e-06
    ## 41           13    102331030      0.0257  -4.610890     3.908e-06
    ## 42           18     35409158      0.0178  -4.792135     1.593e-06
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
    ## 40               40255 Huang2017aaos             TRUE             reported
    ## 41               40255 Huang2017aaos             TRUE             reported
    ## 42               40255 Huang2017aaos             TRUE             reported
    ##    id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 2       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 3       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 4       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 5       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 6       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 7       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 8       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 9       h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 10      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 11      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 12      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 13      h1DzPh      2    TRUE          FALSE 5e-06              NA
    ## 14      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 15      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 16      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 17      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 18      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 19      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 20      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 21      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 22      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 23      h1DzPh      2    TRUE          FALSE 5e-06              NA
    ## 24      h1DzPh      2    TRUE          FALSE 5e-06              NA
    ## 25      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 26      h1DzPh      2   FALSE           TRUE 5e-06              NA
    ## 27      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 28      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 29      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 30      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 31      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 32      h1DzPh      2    TRUE          FALSE 5e-06              NA
    ## 33      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 34      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 35      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 36      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 37      h1DzPh      2    TRUE          FALSE 5e-06              NA
    ## 38      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 39      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 40      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 41      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ## 42      h1DzPh      2    TRUE           TRUE 5e-06              NA
    ##    mrpresso_pval mrpresso_keep
    ## 1             NA          TRUE
    ## 2             NA          TRUE
    ## 3             NA          TRUE
    ## 4             NA          TRUE
    ## 5             NA          TRUE
    ## 6             NA          TRUE
    ## 7             NA          TRUE
    ## 8             NA          TRUE
    ## 9             NA          TRUE
    ## 10            NA          TRUE
    ## 11            NA          TRUE
    ## 12            NA          TRUE
    ## 13            NA          TRUE
    ## 14            NA          TRUE
    ## 15            NA          TRUE
    ## 16            NA          TRUE
    ## 17            NA          TRUE
    ## 18            NA          TRUE
    ## 19            NA          TRUE
    ## 20            NA          TRUE
    ## 21            NA          TRUE
    ## 22            NA          TRUE
    ## 23            NA          TRUE
    ## 24            NA          TRUE
    ## 25            NA          TRUE
    ## 26            NA            NA
    ## 27            NA          TRUE
    ## 28            NA          TRUE
    ## 29            NA          TRUE
    ## 30            NA          TRUE
    ## 31            NA          TRUE
    ## 32            NA          TRUE
    ## 33            NA          TRUE
    ## 34            NA          TRUE
    ## 35            NA          TRUE
    ## 36            NA          TRUE
    ## 37            NA          TRUE
    ## 38            NA          TRUE
    ## 39            NA          TRUE
    ## 40            NA          TRUE
    ## 41            NA          TRUE
    ## 42            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Fish and
plant related diet GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17      1.2e-01
    ## 2    rs204469          19    45490285     3.269e-06      9.8e-02
    ## 3   rs2075650          19    45395619    5.980e-134      1.6e-06
    ## 4  rs62117204          19    45242967     1.864e-11      4.3e-02
    ## 5  rs76205446          19    45355267     9.010e-09      8.2e-03

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

    ##   outliers_removed pve.exposure       F Alpha        NCP      Power
    ## 1            FALSE   0.02165173 24.7239  0.05 0.06912465 0.05795572

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
on Fish and plant related diet. <br>

**Table 6** MR causaul estimates for AAOS on Fish and plant related diet

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 2      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 3      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 4      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   36 -1.360163e-03 0.003847520
    ## 2                           Weighted median   36 -6.106868e-05 0.005980784
    ## 3                             Weighted mode   36 -8.803777e-03 0.009732651
    ## 4                                  MR Egger   36 -6.627056e-03 0.005666306
    ##        pval
    ## 1 0.7237010
    ## 2 0.9918531
    ## 3 0.3718826
    ## 4 0.2503140

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Fish and plant related diet and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 2      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 28.24141   34 0.7453813
    ## 2 Inverse variance weighted 29.84455   35 0.7151662

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Niarchou2020fish/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Niarchou2020fish/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome      exposure egger_intercept
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos     0.001181729
    ##             se      pval
    ## 1 0.0009333225 0.2140652

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
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 32.33665 0.6728

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 2      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 3      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 4      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   36 -1.360163e-03 0.003847520
    ## 2                           Weighted median   36 -6.106868e-05 0.005678382
    ## 3                             Weighted mode   36 -8.803777e-03 0.010124133
    ## 4                                  MR Egger   36 -6.627056e-03 0.005666306
    ##        pval
    ## 1 0.7237010
    ## 2 0.9914192
    ## 3 0.3904528
    ## 4 0.2503140

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome      exposure
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ## 2      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 28.24141   34 0.7453813
    ## 2 Inverse variance weighted 29.84455   35 0.7151662

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome      exposure egger_intercept
    ## 1      h1DzPh     QBhCA6 Niarchou2020fish Huang2017aaos     0.001181729
    ##             se      pval
    ## 1 0.0009333225 0.2140652

<br>
