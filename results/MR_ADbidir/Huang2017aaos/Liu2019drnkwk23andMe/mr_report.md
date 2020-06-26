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

### Outcome: Alcohol Consumption

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Alcohol Consumption

    ##            SNP CHROM       POS REF ALT         AF          BETA
    ## 1    rs2649062     1   5799177   A   G 0.32036400  8.634410e-04
    ## 2    rs4662080     1  14363419   C   T 0.69553200 -6.297174e-04
    ## 3   rs10919252     1 169802956   C   G 0.31039100 -7.127570e-05
    ## 4    rs6701713     1 207786289   A   G 0.77515400 -1.264240e-03
    ## 5  rs144505123     1 221802052   C   T 0.00744913  4.743112e-05
    ## 6    rs6718282     2  18039651   G   A 0.08463490  8.799353e-04
    ## 7  rs114131510     2  78420700   A   G 0.00839110 -1.299990e-03
    ## 8   rs12615104     2 109820829   T   C 0.32661600 -6.071560e-04
    ## 9  rs111906619     2 127789085   C   T 0.05424060 -1.680584e-03
    ## 10   rs6431219     2 127862133   C   T 0.39324600 -3.198779e-03
    ## 11    rs359982     2 219826934   A   G 0.05341570 -5.803740e-04
    ## 12 rs116341973     3  63462893   A   G 0.01417150  1.548630e-05
    ## 13 rs145799027     3 114438213   T   C 0.00290276 -4.518260e-04
    ## 14  rs71602496     4    661002   A   G 0.14947100  1.338060e-03
    ## 15 rs115803892     4 134185712   G   A 0.02500000 -1.388475e-03
    ## 16   rs1689013     4 181048651   T   C 0.22133500 -8.316680e-04
    ## 17 rs144202318     5 165711579   G   A 0.01040480 -1.038598e-03
    ## 18  rs77345379     6  69273670   C   T 0.02319680  1.947896e-03
    ## 19  rs12153819     6  83773049   C   T 0.16679800 -7.790076e-05
    ## 20  rs17170228     7  33076314   G   A 0.05569710  2.262370e-03
    ## 21 rs149907089     7 151626353   G   C 0.01035230 -3.249526e-04
    ## 22   rs2725066     8   4438058   T   A 0.54336700  3.330486e-03
    ## 23 rs117201713     8 121340499   G   C 0.03194600 -8.976958e-05
    ## 24  rs36033332     9  26834807   C   G 0.08303120 -4.131180e-06
    ## 25   rs7930318    11  60033371   C   T 0.65976800  1.370987e-03
    ## 26    rs567075    11  85830157   T   C 0.69089900 -1.716570e-03
    ## 27  rs11218343    11 121435587   T   C 0.03449530  5.092910e-04
    ## 28   rs7958488    12   6546166   A   T 0.01840830  2.733020e-04
    ## 29   rs1118069    12  84739181   A   T 0.62582100 -1.466660e-03
    ## 30 rs140016885    12  99679113   A   G 0.02373190  4.351060e-04
    ## 31   rs9582517    13 102331030   T   C 0.48209100  7.595860e-04
    ## 32 rs146189059    14  47173254   C   G 0.01144620 -6.671400e-05
    ## 33  rs17125944    14  53400629   T   C 0.09734350  1.808090e-03
    ## 34 rs150193285    15  75224360   C   T 0.02104500  1.001541e-03
    ## 35   rs9947273    18  35409158   G   A 0.18287400 -1.710760e-03
    ## 36  rs62117204    19  45242967   C   T 0.07418880  1.667215e-03
    ## 37  rs76205446    19  45355267   T   A 0.00945455 -2.196969e-04
    ## 38   rs2075650    19  45395619   A   G 0.15559200 -1.312340e-03
    ## 39 rs141441332    19  45438575   C   A 0.00789570  5.401973e-04
    ## 40    rs204469    19  45490285   A   G 0.96476600 -4.437980e-05
    ## 41   rs2827191    21  23361798   C   T 0.29854800  3.124702e-04
    ## 42   rs1043441    22  39130964   C   T 0.30681800 -3.650251e-03
    ##             SE      Z         P      N           TRAIT
    ## 1  0.001031590  0.837 0.4028000 939356 Drinks_Per_Week
    ## 2  0.001574294 -0.400 0.6895000 403931 Drinks_Per_Week
    ## 3  0.001032981 -0.069 0.9453000 939356 Drinks_Per_Week
    ## 4  0.001031195 -1.226 0.2202000 939356 Drinks_Per_Week
    ## 5  0.001054025  0.045 0.9644000 902538 Drinks_Per_Week
    ## 6  0.001051297  0.837 0.4025000 904462 Drinks_Per_Week
    ## 7  0.001030107 -1.262 0.2070000 941280 Drinks_Per_Week
    ## 8  0.001030826 -0.589 0.5559000 941280 Drinks_Per_Week
    ## 9  0.001029770 -1.632 0.1027000 941280 Drinks_Per_Week
    ## 10 0.001028546 -3.110 0.0018720 941280 Drinks_Per_Week
    ## 11 0.001030859 -0.563 0.5735000 941280 Drinks_Per_Week
    ## 12 0.001032423  0.015 0.9882000 941280 Drinks_Per_Week
    ## 13 0.001365032 -0.331 0.7410000 537349 Drinks_Per_Week
    ## 14 0.001030071  1.299 0.1938000 941280 Drinks_Per_Week
    ## 15 0.001030026 -1.348 0.1775000 941280 Drinks_Per_Week
    ## 16 0.001030567 -0.807 0.4195000 941280 Drinks_Per_Week
    ## 17 0.001030355 -1.008 0.3135000 941280 Drinks_Per_Week
    ## 18 0.001029543  1.892 0.0584600 941280 Drinks_Per_Week
    ## 19 0.001052713 -0.074 0.9410000 904462 Drinks_Per_Week
    ## 20 0.001029286  2.198 0.0279800 941280 Drinks_Per_Week
    ## 21 0.001365347 -0.238 0.8120000 537349 Drinks_Per_Week
    ## 22 0.001033350  3.223 0.0012690 932367 Drinks_Per_Week
    ## 23 0.001031834 -0.087 0.9308000 941280 Drinks_Per_Week
    ## 24 0.001032796 -0.004 0.9971000 941280 Drinks_Per_Week
    ## 25 0.001030042  1.331 0.1834000 941280 Drinks_Per_Week
    ## 26 0.001029739 -1.667 0.0955800 941280 Drinks_Per_Week
    ## 27 0.001030953  0.494 0.6216000 941280 Drinks_Per_Week
    ## 28 0.001031328  0.265 0.7907000 941280 Drinks_Per_Week
    ## 29 0.001029956 -1.424 0.1544000 941280 Drinks_Per_Week
    ## 30 0.001031056  0.422 0.6727000 941280 Drinks_Per_Week
    ## 31 0.001030646  0.737 0.4609000 941280 Drinks_Per_Week
    ## 32 0.001058952 -0.063 0.9498000 893955 Drinks_Per_Week
    ## 33 0.001029661  1.756 0.0791600 941280 Drinks_Per_Week
    ## 34 0.001030392  0.972 0.3312000 941280 Drinks_Per_Week
    ## 35 0.001572390 -1.088 0.2766000 403931 Drinks_Per_Week
    ## 36 0.001029781  1.619 0.1054000 941280 Drinks_Per_Week
    ## 37 0.001031441 -0.213 0.8312000 941280 Drinks_Per_Week
    ## 38 0.001030095 -1.274 0.2025000 941280 Drinks_Per_Week
    ## 39 0.001030911  0.524 0.6002000 941280 Drinks_Per_Week
    ## 40 0.001032088 -0.043 0.9655000 941280 Drinks_Per_Week
    ## 41 0.001031255  0.303 0.7616000 941280 Drinks_Per_Week
    ## 42 0.001048923 -3.480 0.0005008 904462 Drinks_Per_Week

<br>

**Table 3:** Proxy SNPs for Alcohol Consumption

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

**Table 4:** Harmonized AAOS and Alcohol Consumption datasets

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
    ## 1                      T                    C       -0.0639 -3.650251e-03
    ## 2                      G                    C        0.0975 -7.127570e-05
    ## 3                      T                    A        0.1012 -1.466660e-03
    ## 4                      T                    C        0.1268 -1.680584e-03
    ## 5                      C                    T       -0.1653  5.092910e-04
    ## 6                      G                    A        0.6419 -1.299990e-03
    ## 7                      A                    G        0.9151 -1.388475e-03
    ## 8                      G                    A        0.2057  1.548630e-05
    ## 9                      C                    G        0.2125 -8.976958e-05
    ## 10                     T                    C       -0.1092 -7.790076e-05
    ## 11                     C                    T       -0.1057 -6.071560e-04
    ## 12                     G                    A        0.6851  4.351060e-04
    ## 13                     A                    C        0.5383  5.401973e-04
    ## 14                     A                    G        0.7219 -1.038598e-03
    ## 15                     T                    C        0.7709  4.743112e-05
    ## 16                     C                    T        0.7485 -4.518260e-04
    ## 17                     G                    C        0.9444 -6.671400e-05
    ## 18                     C                    G        0.7109 -3.249526e-04
    ## 19                     T                    C        0.7622  1.001541e-03
    ## 20                     C                    T        0.0637 -8.316680e-04
    ## 21                     C                    T        0.0960  1.808090e-03
    ## 22                     A                    G        0.1215  2.262370e-03
    ## 23                     G                    A        0.1588 -4.437980e-05
    ## 24                     G                    A        0.5502 -1.312340e-03
    ## 25                     G                    A        0.0652  8.634410e-04
    ## 26                     A                    T       -0.0936  3.330486e-03
    ## 27                     T                    C        0.1277  3.124702e-04
    ## 28                     G                    A        0.2660 -5.803740e-04
    ## 29                     G                    C        0.4601 -4.131180e-06
    ## 30                     T                    C        0.1421 -6.297174e-04
    ## 31                     C                    T        0.0900 -1.716570e-03
    ## 32                     T                    C       -0.1867  1.667215e-03
    ## 33                     T                    C        0.0774 -3.198779e-03
    ## 34                     G                    A       -0.0709 -1.264240e-03
    ## 35                     A                    G       -0.1421  8.799353e-04
    ## 36                     G                    A        0.0780  1.338060e-03
    ## 37                     A                    T        0.7096 -2.196969e-04
    ## 38                     T                    C        0.2291  1.947896e-03
    ## 39                     T                    C        0.0750  1.370987e-03
    ## 40                     T                    A        0.5085  2.733020e-04
    ## 41                     C                    T       -0.1185  7.595860e-04
    ## 42                     A                    G       -0.0853 -1.710760e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893  0.30681800  FALSE       FALSE     FALSE     1r2NOa
    ## 2        0.3275  0.31039100  FALSE        TRUE     FALSE     1r2NOa
    ## 3        0.7195  0.62582100  FALSE        TRUE     FALSE     1r2NOa
    ## 4        0.0709  0.05424060  FALSE       FALSE     FALSE     1r2NOa
    ## 5        0.0395  0.03449530  FALSE       FALSE     FALSE     1r2NOa
    ## 6        0.0162  0.00839110  FALSE       FALSE     FALSE     1r2NOa
    ## 7        0.0129  0.02500000  FALSE       FALSE     FALSE     1r2NOa
    ## 8        0.0227  0.01417150  FALSE       FALSE     FALSE     1r2NOa
    ## 9        0.0408  0.03194600  FALSE        TRUE     FALSE     1r2NOa
    ## 10       0.1018  0.16679800  FALSE       FALSE     FALSE     1r2NOa
    ## 11       0.2566  0.32661600  FALSE       FALSE     FALSE     1r2NOa
    ## 12       0.0144  0.02373190  FALSE       FALSE     FALSE     1r2NOa
    ## 13       0.0110  0.00789570  FALSE       FALSE     FALSE     1r2NOa
    ## 14       0.0135  0.01040480  FALSE       FALSE     FALSE     1r2NOa
    ## 15       0.0113  0.00744913  FALSE       FALSE     FALSE     1r2NOa
    ## 16       0.0147  0.00290276  FALSE       FALSE     FALSE     1r2NOa
    ## 17       0.0111  0.01144620  FALSE        TRUE     FALSE     1r2NOa
    ## 18       0.0162  0.01035230  FALSE        TRUE     FALSE     1r2NOa
    ## 19       0.0109  0.02104500  FALSE       FALSE     FALSE     1r2NOa
    ## 20       0.2493  0.22133500  FALSE       FALSE     FALSE     1r2NOa
    ## 21       0.0924  0.09734350  FALSE       FALSE     FALSE     1r2NOa
    ## 22       0.0623  0.05569710  FALSE       FALSE     FALSE     1r2NOa
    ## 23       0.9632  0.96476600  FALSE       FALSE     FALSE     1r2NOa
    ## 24       0.2197  0.15559200  FALSE       FALSE     FALSE     1r2NOa
    ## 25       0.3192  0.32036400  FALSE       FALSE     FALSE     1r2NOa
    ## 26       0.5128  0.54336700  FALSE        TRUE      TRUE     1r2NOa
    ## 27       0.2857  0.29854800  FALSE       FALSE     FALSE     1r2NOa
    ## 28       0.0781  0.05341570  FALSE       FALSE     FALSE     1r2NOa
    ## 29       0.0386  0.08303120  FALSE        TRUE     FALSE     1r2NOa
    ## 30       0.6649  0.69553200  FALSE       FALSE     FALSE     1r2NOa
    ## 31       0.6903  0.69089900  FALSE       FALSE     FALSE     1r2NOa
    ## 32       0.0601  0.07418880  FALSE       FALSE     FALSE     1r2NOa
    ## 33       0.4163  0.39324600  FALSE       FALSE     FALSE     1r2NOa
    ## 34       0.7983  0.77515400  FALSE       FALSE     FALSE     1r2NOa
    ## 35       0.0440  0.08463490  FALSE       FALSE     FALSE     1r2NOa
    ## 36       0.1453  0.14947100  FALSE       FALSE     FALSE     1r2NOa
    ## 37       0.0143  0.00945455  FALSE        TRUE     FALSE     1r2NOa
    ## 38       0.0185  0.02319680  FALSE       FALSE     FALSE     1r2NOa
    ## 39       0.5996  0.65976800  FALSE       FALSE     FALSE     1r2NOa
    ## 40       0.0195  0.01840830  FALSE        TRUE     FALSE     1r2NOa
    ## 41       0.5073  0.48209100  FALSE       FALSE     FALSE     1r2NOa
    ## 42       0.1431  0.18287400  FALSE       FALSE     FALSE     1r2NOa
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           22    39130964 0.001048923    -3.480    0.0005008
    ## 2            1   169802956 0.001032981    -0.069    0.9453000
    ## 3           12    84739181 0.001029956    -1.424    0.1544000
    ## 4            2   127789085 0.001029770    -1.632    0.1027000
    ## 5           11   121435587 0.001030953     0.494    0.6216000
    ## 6            2    78420700 0.001030107    -1.262    0.2070000
    ## 7            4   134185712 0.001030026    -1.348    0.1775000
    ## 8            3    63462893 0.001032423     0.015    0.9882000
    ## 9            8   121340499 0.001031834    -0.087    0.9308000
    ## 10           6    83773049 0.001052713    -0.074    0.9410000
    ## 11           2   109820829 0.001030826    -0.589    0.5559000
    ## 12          12    99679113 0.001031056     0.422    0.6727000
    ## 13          19    45438575 0.001030911     0.524    0.6002000
    ## 14           5   165711579 0.001030355    -1.008    0.3135000
    ## 15           1   221802052 0.001054025     0.045    0.9644000
    ## 16           3   114438213 0.001365032    -0.331    0.7410000
    ## 17          14    47173254 0.001058952    -0.063    0.9498000
    ## 18           7   151626353 0.001365347    -0.238    0.8120000
    ## 19          15    75224360 0.001030392     0.972    0.3312000
    ## 20           4   181048651 0.001030567    -0.807    0.4195000
    ## 21          14    53400629 0.001029661     1.756    0.0791600
    ## 22           7    33076314 0.001029286     2.198    0.0279800
    ## 23          19    45490285 0.001032088    -0.043    0.9655000
    ## 24          19    45395619 0.001030095    -1.274    0.2025000
    ## 25           1     5799177 0.001031590     0.837    0.4028000
    ## 26           8     4438058 0.001033350     3.223    0.0012690
    ## 27          21    23361798 0.001031255     0.303    0.7616000
    ## 28           2   219826934 0.001030859    -0.563    0.5735000
    ## 29           9    26834807 0.001032796    -0.004    0.9971000
    ## 30           1    14363419 0.001574294    -0.400    0.6895000
    ## 31          11    85830157 0.001029739    -1.667    0.0955800
    ## 32          19    45242967 0.001029781     1.619    0.1054000
    ## 33           2   127862133 0.001028546    -3.110    0.0018720
    ## 34           1   207786289 0.001031195    -1.226    0.2202000
    ## 35           2    18039651 0.001051297     0.837    0.4025000
    ## 36           4      661002 0.001030071     1.299    0.1938000
    ## 37          19    45355267 0.001031441    -0.213    0.8312000
    ## 38           6    69273670 0.001029543     1.892    0.0584600
    ## 39          11    60033371 0.001030042     1.331    0.1834000
    ## 40          12     6546166 0.001031328     0.265    0.7907000
    ## 41          13   102331030 0.001030646     0.737    0.4609000
    ## 42          18    35409158 0.001572390    -1.088    0.2766000
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              904462 Liu2019drnkwk23andMe            TRUE
    ## 2              939356 Liu2019drnkwk23andMe            TRUE
    ## 3              941280 Liu2019drnkwk23andMe            TRUE
    ## 4              941280 Liu2019drnkwk23andMe            TRUE
    ## 5              941280 Liu2019drnkwk23andMe            TRUE
    ## 6              941280 Liu2019drnkwk23andMe            TRUE
    ## 7              941280 Liu2019drnkwk23andMe            TRUE
    ## 8              941280 Liu2019drnkwk23andMe            TRUE
    ## 9              941280 Liu2019drnkwk23andMe            TRUE
    ## 10             904462 Liu2019drnkwk23andMe            TRUE
    ## 11             941280 Liu2019drnkwk23andMe            TRUE
    ## 12             941280 Liu2019drnkwk23andMe            TRUE
    ## 13             941280 Liu2019drnkwk23andMe            TRUE
    ## 14             941280 Liu2019drnkwk23andMe            TRUE
    ## 15             902538 Liu2019drnkwk23andMe            TRUE
    ## 16             537349 Liu2019drnkwk23andMe            TRUE
    ## 17             893955 Liu2019drnkwk23andMe            TRUE
    ## 18             537349 Liu2019drnkwk23andMe            TRUE
    ## 19             941280 Liu2019drnkwk23andMe            TRUE
    ## 20             941280 Liu2019drnkwk23andMe            TRUE
    ## 21             941280 Liu2019drnkwk23andMe            TRUE
    ## 22             941280 Liu2019drnkwk23andMe            TRUE
    ## 23             941280 Liu2019drnkwk23andMe            TRUE
    ## 24             941280 Liu2019drnkwk23andMe            TRUE
    ## 25             939356 Liu2019drnkwk23andMe            TRUE
    ## 26             932367 Liu2019drnkwk23andMe            TRUE
    ## 27             941280 Liu2019drnkwk23andMe            TRUE
    ## 28             941280 Liu2019drnkwk23andMe            TRUE
    ## 29             941280 Liu2019drnkwk23andMe            TRUE
    ## 30             403931 Liu2019drnkwk23andMe            TRUE
    ## 31             941280 Liu2019drnkwk23andMe            TRUE
    ## 32             941280 Liu2019drnkwk23andMe            TRUE
    ## 33             941280 Liu2019drnkwk23andMe            TRUE
    ## 34             939356 Liu2019drnkwk23andMe            TRUE
    ## 35             904462 Liu2019drnkwk23andMe            TRUE
    ## 36             941280 Liu2019drnkwk23andMe            TRUE
    ## 37             941280 Liu2019drnkwk23andMe            TRUE
    ## 38             941280 Liu2019drnkwk23andMe            TRUE
    ## 39             941280 Liu2019drnkwk23andMe            TRUE
    ## 40             941280 Liu2019drnkwk23andMe            TRUE
    ## 41             941280 Liu2019drnkwk23andMe            TRUE
    ## 42             403931 Liu2019drnkwk23andMe            TRUE
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
    ## 1              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 2              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 3              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 4              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 5              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 6              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 7              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 8              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 9              reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 10             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 11             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 12             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 13             reported      gUu6CA      2    TRUE          FALSE 5e-06
    ## 14             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 15             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 16             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 17             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 18             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 19             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 20             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 21             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 22             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 23             reported      gUu6CA      2    TRUE          FALSE 5e-06
    ## 24             reported      gUu6CA      2    TRUE          FALSE 5e-06
    ## 25             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 26             reported      gUu6CA      2   FALSE           TRUE 5e-06
    ## 27             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 28             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 29             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 30             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 31             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 32             reported      gUu6CA      2    TRUE          FALSE 5e-06
    ## 33             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 34             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 35             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 36             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 37             reported      gUu6CA      2    TRUE          FALSE 5e-06
    ## 38             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 39             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 40             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 41             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ## 42             reported      gUu6CA      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.348035e-05        0.0144         FALSE
    ## 2     1.821851e-09        1.0000          TRUE
    ## 3     2.072110e-06        1.0000          TRUE
    ## 4     2.715685e-06        1.0000          TRUE
    ## 5     2.142761e-07        1.0000          TRUE
    ## 6     1.433699e-06        1.0000          TRUE
    ## 7     1.718869e-06        1.0000          TRUE
    ## 8     5.855345e-09        1.0000          TRUE
    ## 9     7.570808e-10        1.0000          TRUE
    ## 10    1.214908e-08        1.0000          TRUE
    ## 11    4.089276e-07        1.0000          TRUE
    ## 12    4.804950e-07        1.0000          TRUE
    ## 13              NA            NA            NA
    ## 14    8.262687e-07        1.0000          TRUE
    ## 15    9.253025e-08        1.0000          TRUE
    ## 16    6.024431e-08        1.0000          TRUE
    ## 17    6.117950e-08        1.0000          TRUE
    ## 18    1.490630e-08        1.0000          TRUE
    ## 19    1.859903e-06        1.0000          TRUE
    ## 20    6.618099e-07        1.0000          TRUE
    ## 21    3.382923e-06        1.0000          TRUE
    ## 22    5.308569e-06        1.0000          TRUE
    ## 23              NA            NA            NA
    ## 24              NA            NA            NA
    ## 25    7.801513e-07        1.0000          TRUE
    ## 26              NA            NA            NA
    ## 27    1.232065e-07        1.0000          TRUE
    ## 28    2.585151e-07        1.0000          TRUE
    ## 29    1.853162e-08        1.0000          TRUE
    ## 30    3.467223e-07        1.0000          TRUE
    ## 31    2.864576e-06        1.0000          TRUE
    ## 32              NA            NA            NA
    ## 33    1.010832e-05        0.0288         FALSE
    ## 34    1.654333e-06        1.0000          TRUE
    ## 35    7.072908e-07        1.0000          TRUE
    ## 36    1.856234e-06        1.0000          TRUE
    ## 37              NA            NA            NA
    ## 38    4.136727e-06        1.0000          TRUE
    ## 39    1.944362e-06        1.0000          TRUE
    ## 40    1.959991e-07        1.0000          TRUE
    ## 41    5.278426e-07        1.0000          TRUE
    ## 42    3.016416e-06        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Alcohol
Consumption GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17       0.6002
    ## 2    rs204469          19    45490285     3.269e-06       0.9655
    ## 3   rs2075650          19    45395619    5.980e-134       0.2025
    ## 4  rs62117204          19    45242967     1.864e-11       0.1054
    ## 5  rs76205446          19    45355267     9.010e-09       0.8312

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
    ## 1            FALSE   0.02165173 24.72390  0.05 0.04732784 0.05543912
    ## 2             TRUE   0.02013929 24.31325  0.05 0.09404367 0.06084149

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
on Alcohol Consumption. <br>

**Table 6** MR causaul estimates for AAOS on Alcohol Consumption

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 2      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 3      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 4      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   36 -0.0002939791
    ## 2                           Weighted median   36 -0.0001741159
    ## 3                             Weighted mode   36 -0.0003930445
    ## 4                                  MR Egger   36 -0.0007886241
    ##             se      pval
    ## 1 0.0004302976 0.4944808
    ## 2 0.0005945373 0.7696295
    ## 3 0.0005046593 0.4413132
    ## 4 0.0007893675 0.3248241

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Alcohol Consumption and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 2      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 54.77680   34 0.01343652
    ## 2 Inverse variance weighted 55.99044   35 0.01360071

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0002823174 0.0003252758 0.3915163

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
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 57.41572 0.0274

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 2      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 3      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 4      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   34 -0.0002904036
    ## 2                           Weighted median   34 -0.0001732223
    ## 3                             Weighted mode   34 -0.0003412905
    ## 4                                  MR Egger   34 -0.0007836121
    ##             se      pval
    ## 1 0.0004306715 0.5001180
    ## 2 0.0005947633 0.7708633
    ## 3 0.0004914359 0.4922445
    ## 4 0.0006452578 0.2334746

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ## 2      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 33.09929   32 0.4132904
    ## 2 Inverse variance weighted 34.22001   33 0.4089331

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      gUu6CA     1r2NOa Liu2019drnkwk23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    0.0002849612 0.0002737606 0.3057166

<br>
