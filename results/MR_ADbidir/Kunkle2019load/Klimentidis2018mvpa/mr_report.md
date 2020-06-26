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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1     rs679515     1 207750568   T   C 0.8126 -0.1508 0.0183 -8.240440
    ## 2    rs7584040     2 127863224   C   T 0.2261  0.0862 0.0172  5.011628
    ## 3    rs6733839     2 127892810   C   T 0.4067  0.1693 0.0154 10.993506
    ## 4   rs35695568     2 186794162   G   T 0.0922  0.1152 0.0247  4.663968
    ## 5   rs10933431     2 233981912   G   C 0.7774  0.1001 0.0194  5.159794
    ## 6    rs6805148     3  45101639   A   C 0.0864 -0.1293 0.0257 -5.031130
    ## 7   rs28660482     4  66245059   T   A 0.0243  0.2220 0.0475  4.673684
    ## 8    rs6822989     4 104176240   C   T 0.0082  0.4361 0.0940  4.639362
    ## 9   rs35868327     5  52665230   T   A 0.0132 -0.3753 0.0760 -4.938158
    ## 10  rs11168036     5 139707439   T   G 0.5033 -0.0754 0.0143 -5.272730
    ## 11  rs34665982     6  32560306   T   C 0.5213 -0.0967 0.0166 -5.825300
    ## 12 rs114812713     6  41034000   G   C 0.0301  0.2980 0.0431  6.914153
    ## 13   rs1385742     6  47595155   A   T 0.6344 -0.0876 0.0157 -5.579620
    ## 14 rs143429938     7  33721795   C   T 0.0211  0.3535 0.0769  4.596879
    ## 15   rs9649710     7  50322832   A   G 0.6331  0.0676 0.0148  4.567570
    ## 16 rs117240937     7 127426090   G   A 0.0173 -0.3122 0.0672 -4.645833
    ## 17  rs11767557     7 143109139   T   C 0.1968 -0.1028 0.0182 -5.648350
    ## 18  rs73223431     8  27219987   C   T 0.3669  0.0936 0.0153  6.117647
    ## 19    rs867230     8  27468503   C   A 0.6029  0.1333 0.0158  8.436709
    ## 20  rs13252043     8  71551628   C   T 0.0984  0.1140 0.0237  4.810127
    ## 21   rs6559689     9  85450616   C   T 0.0504  0.1585 0.0335  4.731343
    ## 22  rs12416487    10  11721057   A   T 0.6519  0.0850 0.0154  5.519480
    ## 23   rs3740688    11  47380340   G   T 0.5524  0.0935 0.0144  6.493056
    ## 24   rs1582763    11  60021948   G   A 0.3729 -0.1232 0.0149 -8.268456
    ## 25   rs3851179    11  85868640   T   C 0.6410  0.1198 0.0148  8.094590
    ## 26  rs11218343    11 121435587   T   C 0.0401 -0.2053 0.0369 -5.563690
    ## 27   rs9787911    11 131769402   T   C 0.4249  0.0662 0.0144  4.597220
    ## 28 rs117394726    12 127222883   A   C 0.0400  0.2193 0.0465  4.716130
    ## 29  rs17125924    14  53391680   A   G 0.0926  0.1222 0.0246  4.967480
    ## 30  rs12590654    14  92938855   G   A 0.3353 -0.0906 0.0157 -5.770701
    ## 31    rs383902    15  59034174   C   T 0.3274 -0.0698 0.0151 -4.622517
    ## 32  rs28588186    16  19910313   C   G 0.1981 -0.0880 0.0181 -4.861880
    ## 33  rs62039712    16  79355857   G   A 0.1158  0.1528 0.0288  5.305556
    ## 34  rs34971488    16  81779775   G   A 0.2205  0.0940 0.0198  4.747475
    ## 35   rs2632516    17  56409089   G   C 0.4402 -0.0748 0.0147 -5.088435
    ## 36  rs12151021    19   1050874   A   G 0.6753 -0.1071 0.0169 -6.337280
    ## 37   rs8111708    19  18558876   A   G 0.3427  0.0696 0.0151  4.609270
    ## 38 rs111358663    19  45196958   T   A 0.0111 -0.5369 0.0795 -6.753459
    ## 39   rs4803765    19  45358448   C   T 0.0243  0.7165 0.0610 11.745902
    ## 40  rs12972156    19  45387459   C   G 0.2027  0.9653 0.0189 51.074100
    ## 41 rs117310449    19  45393516   C   T 0.0130  0.9879 0.0691 14.296671
    ## 42  rs73033507    19  45431403   C   T 0.0239 -0.3620 0.0657 -5.509893
    ## 43 rs114533385    19  45436753   C   T 0.0210  0.8281 0.0661 12.527988
    ## 44 rs118004808    19  45439498   C   T 0.0177 -0.5523 0.1015 -5.441379
    ## 45 rs139995984    19  45574482   G   C 0.0155 -0.5343 0.0879 -6.078498
    ## 46  rs80182863    19  45653226   C   T 0.0234  0.2977 0.0623  4.778491
    ## 47   rs6014724    20  54998544   A   G 0.0920 -0.1319 0.0259 -5.092660
    ## 48   rs2830489    21  28148191   C   T 0.2882 -0.0837 0.0162 -5.166667
    ## 49 rs138727474    22  21926584   C   T 0.0269 -0.2515 0.0545 -4.614679
    ##                P     N TRAIT
    ## 1   1.555000e-16 63926  LOAD
    ## 2   5.341000e-07 63926  LOAD
    ## 3   4.022000e-28 63926  LOAD
    ## 4   3.200000e-06 63926  LOAD
    ## 5   2.552000e-07 63926  LOAD
    ## 6   4.774000e-07 63926  LOAD
    ## 7   2.900000e-06 63926  LOAD
    ## 8   3.487000e-06 63926  LOAD
    ## 9   7.796000e-07 63926  LOAD
    ## 10  1.432000e-07 63926  LOAD
    ## 11  5.798000e-09 63926  LOAD
    ## 12  4.467000e-12 63926  LOAD
    ## 13  2.232000e-08 63926  LOAD
    ## 14  4.253000e-06 63926  LOAD
    ## 15  4.794000e-06 63926  LOAD
    ## 16  3.350000e-06 63926  LOAD
    ## 17  1.561000e-08 63926  LOAD
    ## 18  8.342000e-10 63926  LOAD
    ## 19  3.492000e-17 63926  LOAD
    ## 20  1.570000e-06 63926  LOAD
    ## 21  2.169000e-06 63926  LOAD
    ## 22  3.417000e-08 63926  LOAD
    ## 23  9.702000e-11 63926  LOAD
    ## 24  1.186000e-16 63926  LOAD
    ## 25  5.809000e-16 63926  LOAD
    ## 26  2.633000e-08 63926  LOAD
    ## 27  4.386000e-06 63926  LOAD
    ## 28  2.459000e-06 63926  LOAD
    ## 29  6.621000e-07 63926  LOAD
    ## 30  8.729000e-09 63926  LOAD
    ## 31  3.812000e-06 63926  LOAD
    ## 32  1.115000e-06 63926  LOAD
    ## 33  1.171000e-07 63926  LOAD
    ## 34  2.067000e-06 63926  LOAD
    ## 35  3.671000e-07 63926  LOAD
    ## 36  2.562000e-10 63926  LOAD
    ## 37  3.946000e-06 63926  LOAD
    ## 38  1.436000e-11 63926  LOAD
    ## 39  7.131000e-32 63926  LOAD
    ## 40 2.225074e-308 63926  LOAD
    ## 41  2.275000e-46 63926  LOAD
    ## 42  3.646000e-08 63926  LOAD
    ## 43  5.434000e-36 63926  LOAD
    ## 44  5.274000e-08 63926  LOAD
    ## 45  1.192000e-09 63926  LOAD
    ## 46  1.750000e-06 63926  LOAD
    ## 47  3.652000e-07 63926  LOAD
    ## 48  2.422000e-07 63926  LOAD
    ## 49  3.904000e-06 63926  LOAD

<br>

### Outcome: Moderate-Vigours Physical Activity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Moderate-Vigours
Physical Activity

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1     rs679515     1 207750568    T    C 0.822736 -2.68935e-03 0.00288456
    ## 2    rs7584040     2 127863224    C    T 0.232336  2.01028e-03 0.00261755
    ## 3    rs6733839     2 127892810    C    T 0.390914  4.13469e-03 0.00229715
    ## 4   rs35695568     2 186794162    G    T 0.094525 -1.58933e-03 0.00376685
    ## 5   rs10933431     2 233981912    G    C 0.780311 -1.74793e-03 0.00266185
    ## 6    rs6805148     3  45101639    A    C 0.092882  2.73695e-03 0.00381527
    ## 7   rs28660482     4  66245059    T    A 0.023655  1.14653e-03 0.00727228
    ## 8    rs6822989    NA        NA <NA> <NA>       NA           NA         NA
    ## 9   rs35868327     5  52665230    T    G 0.005760  1.42971e-02 0.01838310
    ## 10  rs11168036     5 139707439    T    G 0.519372 -1.16986e-03 0.00221639
    ## 11  rs34665982    NA        NA <NA> <NA>       NA           NA         NA
    ## 12 rs114812713     6  41034000    G    C 0.026354  3.57881e-03 0.00699606
    ## 13   rs1385742     6  47595155    A    T 0.646220  5.93828e-04 0.00232832
    ## 14 rs143429938     7  33721795    C    T 0.015788 -2.12631e-03 0.00916671
    ## 15   rs9649710     7  50322832    A    G 0.605585 -9.72638e-04 0.00225971
    ## 16 rs117240937     7 127426090    G    A 0.008964  2.01540e-02 0.01204380
    ## 17  rs11767557     7 143109139    T    C 0.212746 -9.33681e-05 0.00269128
    ## 18  rs73223431     8  27219987    C    T 0.365873  1.56571e-04 0.00228908
    ## 19    rs867230     8  27468503    C    A 0.587291 -1.48876e-03 0.00225568
    ## 20  rs13252043    NA        NA <NA> <NA>       NA           NA         NA
    ## 21   rs6559689     9  85450616    C    T 0.045962  9.42868e-04 0.00526160
    ## 22  rs12416487    10  11721057    A    T 0.656532 -5.22359e-03 0.00232401
    ## 23   rs3740688    11  47380340    G    T 0.545220  5.55677e-03 0.00221709
    ## 24   rs1582763    11  60021948    G    A 0.380326  2.51652e-04 0.00227338
    ## 25   rs3851179    11  85868640    T    C 0.628166  1.37111e-03 0.00227693
    ## 26  rs11218343    11 121435587    T    C 0.037506 -4.70450e-03 0.00580715
    ## 27   rs9787911    11 131769402    T    C 0.426932 -3.07412e-03 0.00223665
    ## 28 rs117394726    12 127222883    A    C 0.035859 -6.46429e-03 0.00624365
    ## 29  rs17125924    14  53391680    A    G 0.091410  2.91805e-03 0.00383220
    ## 30  rs12590654    14  92938855    G    A 0.340110  2.57166e-03 0.00234106
    ## 31    rs383902    15  59034174    C    T 0.334652 -3.16475e-03 0.00234238
    ## 32  rs28588186    16  19910313    C    G 0.200920 -1.07570e-03 0.00276669
    ## 33  rs62039712    16  79355857    G    A 0.119414  3.60682e-03 0.00352392
    ## 34  rs34971488    16  81779775    G    A 0.211274 -2.93840e-03 0.00276223
    ## 35   rs2632516    17  56409089    G    C 0.443078 -1.66667e-03 0.00222868
    ## 36  rs12151021    19   1050874    A    G 0.674423  1.59727e-04 0.00236401
    ## 37   rs8111708    19  18558876    A    G 0.348304 -2.07361e-03 0.00231816
    ## 38 rs111358663    19  45196958    T    A 0.015715 -7.06007e-03 0.00901348
    ## 39   rs4803765    NA        NA <NA> <NA>       NA           NA         NA
    ## 40  rs12972156    19  45387459    C    G 0.147734  1.64839e-02 0.00312721
    ## 41 rs117310449    19  45393516    C    T 0.012068  3.14555e-02 0.01015580
    ## 42  rs73033507    19  45431403    C    T 0.038051 -2.56287e-03 0.00585801
    ## 43 rs114533385    19  45436753    C    T 0.011169  3.72717e-02 0.01081530
    ## 44 rs118004808    19  45439498    C    T 0.018892 -8.01549e-03 0.00920524
    ## 45 rs139995984    19  45574482    G    C 0.013340 -2.14404e-03 0.01077070
    ## 46  rs80182863    19  45653226    C    T 0.015535  7.88356e-03 0.00929672
    ## 47   rs6014724    20  54998544    A    G 0.089008  6.77326e-03 0.00388935
    ## 48   rs2830489    21  28148191    C    T 0.275283  1.54406e-03 0.00246549
    ## 49 rs138727474    22  21926584    C    T 0.036242 -5.48948e-03 0.00627466
    ##             Z       P      N TRAIT
    ## 1  -0.9323260 3.5e-01 377234  MVPA
    ## 2   0.7680010 4.4e-01 377234  MVPA
    ## 3   1.7999200 7.2e-02 377234  MVPA
    ## 4  -0.4219250 6.7e-01 377234  MVPA
    ## 5  -0.6566600 5.1e-01 377234  MVPA
    ## 6   0.7173670 4.7e-01 377234  MVPA
    ## 7   0.1576580 8.7e-01 377234  MVPA
    ## 8          NA      NA     NA  <NA>
    ## 9   0.7777310 4.4e-01 377234  MVPA
    ## 10 -0.5278220 6.0e-01 377234  MVPA
    ## 11         NA      NA     NA  <NA>
    ## 12  0.5115460 6.1e-01 377234  MVPA
    ## 13  0.2550460 8.0e-01 377234  MVPA
    ## 14 -0.2319600 8.2e-01 377234  MVPA
    ## 15 -0.4304260 6.7e-01 377234  MVPA
    ## 16  1.6733900 9.4e-02 377234  MVPA
    ## 17 -0.0346928 9.7e-01 377234  MVPA
    ## 18  0.0683991 9.5e-01 377234  MVPA
    ## 19 -0.6600050 5.1e-01 377234  MVPA
    ## 20         NA      NA     NA  <NA>
    ## 21  0.1791980 8.6e-01 377234  MVPA
    ## 22 -2.2476600 2.5e-02 377234  MVPA
    ## 23  2.5063300 1.2e-02 377234  MVPA
    ## 24  0.1106950 9.1e-01 377234  MVPA
    ## 25  0.6021750 5.5e-01 377234  MVPA
    ## 26 -0.8101220 4.2e-01 377234  MVPA
    ## 27 -1.3744300 1.7e-01 377234  MVPA
    ## 28 -1.0353400 3.0e-01 377234  MVPA
    ## 29  0.7614560 4.5e-01 377234  MVPA
    ## 30  1.0985000 2.7e-01 377234  MVPA
    ## 31 -1.3510800 1.8e-01 377234  MVPA
    ## 32 -0.3888040 7.0e-01 377234  MVPA
    ## 33  1.0235200 3.1e-01 377234  MVPA
    ## 34 -1.0637800 2.9e-01 377234  MVPA
    ## 35 -0.7478280 4.5e-01 377234  MVPA
    ## 36  0.0675661 9.5e-01 377234  MVPA
    ## 37 -0.8945070 3.7e-01 377234  MVPA
    ## 38 -0.7832790 4.3e-01 377234  MVPA
    ## 39         NA      NA     NA  <NA>
    ## 40  5.2711200 1.4e-07 377234  MVPA
    ## 41  3.0972900 2.0e-03 377234  MVPA
    ## 42 -0.4374980 6.6e-01 377234  MVPA
    ## 43  3.4462000 5.7e-04 377234  MVPA
    ## 44 -0.8707530 3.8e-01 377234  MVPA
    ## 45 -0.1990620 8.4e-01 377234  MVPA
    ## 46  0.8479940 4.0e-01 377234  MVPA
    ## 47  1.7414900 8.2e-02 377234  MVPA
    ## 48  0.6262690 5.3e-01 377234  MVPA
    ## 49 -0.8748650 3.8e-01 377234  MVPA

<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity

    ##   target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM       POS REF.proxy
    ## 1  rs6822989 rs28544093     1      1 TC/CT  NA     4 104182954         T
    ## 2 rs13252043 rs11996416     1      1 TT/CC  NA     8  71505146         C
    ## 3 rs34665982       <NA>    NA     NA  <NA>  NA    NA        NA      <NA>
    ## 4  rs4803765       <NA>    NA     NA  <NA>  NA    NA        NA      <NA>
    ##   ALT.proxy       AF        BETA         SE         Z    P      N TRAIT
    ## 1         C 0.005368 -0.00685727 0.01527570 -0.448901 0.65 377234  MVPA
    ## 2         T 0.094743 -0.00151178 0.00375865 -0.402214 0.69 377234  MVPA
    ## 3      <NA>       NA          NA         NA        NA   NA     NA  <NA>
    ## 4      <NA>       NA          NA         NA        NA   NA     NA  <NA>
    ##    ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 TRUE         C    C         T TRUE    C          TRUE
    ## 2 TRUE         T    C         C TRUE    C          TRUE
    ## 3   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 4   NA      <NA> <NA>      <NA>   NA <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Moderate-Vigours Physical Activity
datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10933431                      C                     G
    ## 2  rs111358663                      A                     T
    ## 3   rs11168036                      G                     T
    ## 4   rs11218343                      C                     T
    ## 5  rs114533385                      T                     C
    ## 6  rs114812713                      C                     G
    ## 7  rs117240937                      A                     G
    ## 8  rs117310449                      T                     C
    ## 9  rs117394726                      C                     A
    ## 10  rs11767557                      C                     T
    ## 11 rs118004808                      T                     C
    ## 12  rs12151021                      G                     A
    ## 13  rs12416487                      T                     A
    ## 14  rs12590654                      A                     G
    ## 15  rs12972156                      G                     C
    ## 16  rs13252043                      T                     C
    ## 17   rs1385742                      T                     A
    ## 18 rs138727474                      T                     C
    ## 19 rs139995984                      C                     G
    ## 20 rs143429938                      T                     C
    ## 21   rs1582763                      A                     G
    ## 22  rs17125924                      G                     A
    ## 23   rs2632516                      C                     G
    ## 24   rs2830489                      T                     C
    ## 25  rs28588186                      G                     C
    ## 26  rs28660482                      A                     T
    ## 27  rs34971488                      A                     G
    ## 28  rs35695568                      T                     G
    ## 29  rs35868327                      A                     T
    ## 30   rs3740688                      T                     G
    ## 31    rs383902                      T                     C
    ## 32   rs3851179                      C                     T
    ## 33   rs6014724                      G                     A
    ## 34  rs62039712                      A                     G
    ## 35   rs6559689                      T                     C
    ## 36   rs6733839                      T                     C
    ## 37    rs679515                      C                     T
    ## 38   rs6805148                      C                     A
    ## 39   rs6822989                      T                     C
    ## 40  rs73033507                      T                     C
    ## 41  rs73223431                      T                     C
    ## 42   rs7584040                      T                     C
    ## 43  rs80182863                      T                     C
    ## 44   rs8111708                      G                     A
    ## 45    rs867230                      A                     C
    ## 46   rs9649710                      G                     A
    ## 47   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    G        0.1001 -1.74793e-03
    ## 2                      A                    T       -0.5369 -7.06007e-03
    ## 3                      G                    T       -0.0754 -1.16986e-03
    ## 4                      C                    T       -0.2053 -4.70450e-03
    ## 5                      T                    C        0.8281  3.72717e-02
    ## 6                      C                    G        0.2980  3.57881e-03
    ## 7                      A                    G       -0.3122  2.01540e-02
    ## 8                      T                    C        0.9879  3.14555e-02
    ## 9                      C                    A        0.2193 -6.46429e-03
    ## 10                     C                    T       -0.1028 -9.33681e-05
    ## 11                     T                    C       -0.5523 -8.01549e-03
    ## 12                     G                    A       -0.1071  1.59727e-04
    ## 13                     T                    A        0.0850 -5.22359e-03
    ## 14                     A                    G       -0.0906  2.57166e-03
    ## 15                     G                    C        0.9653  1.64839e-02
    ## 16                     T                    C        0.1140 -1.51178e-03
    ## 17                     T                    A       -0.0876  5.93828e-04
    ## 18                     T                    C       -0.2515 -5.48948e-03
    ## 19                     C                    G       -0.5343 -2.14404e-03
    ## 20                     T                    C        0.3535 -2.12631e-03
    ## 21                     A                    G       -0.1232  2.51652e-04
    ## 22                     G                    A        0.1222  2.91805e-03
    ## 23                     C                    G       -0.0748 -1.66667e-03
    ## 24                     T                    C       -0.0837  1.54406e-03
    ## 25                     G                    C       -0.0880 -1.07570e-03
    ## 26                     A                    T        0.2220  1.14653e-03
    ## 27                     A                    G        0.0940 -2.93840e-03
    ## 28                     T                    G        0.1152 -1.58933e-03
    ## 29                     G                    T       -0.3753  1.42971e-02
    ## 30                     T                    G        0.0935  5.55677e-03
    ## 31                     T                    C       -0.0698 -3.16475e-03
    ## 32                     C                    T        0.1198  1.37111e-03
    ## 33                     G                    A       -0.1319  6.77326e-03
    ## 34                     A                    G        0.1528  3.60682e-03
    ## 35                     T                    C        0.1585  9.42868e-04
    ## 36                     T                    C        0.1693  4.13469e-03
    ## 37                     C                    T       -0.1508 -2.68935e-03
    ## 38                     C                    A       -0.1293  2.73695e-03
    ## 39                     T                    C        0.4361 -6.85727e-03
    ## 40                     T                    C       -0.3620 -2.56287e-03
    ## 41                     T                    C        0.0936  1.56571e-04
    ## 42                     T                    C        0.0862  2.01028e-03
    ## 43                     T                    C        0.2977  7.88356e-03
    ## 44                     G                    A        0.0696 -2.07361e-03
    ## 45                     A                    C        0.1333 -1.48876e-03
    ## 46                     G                    A        0.0676 -9.72638e-04
    ## 47                     C                    T        0.0662 -3.07412e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774    0.780311  FALSE        TRUE     FALSE     fiKLgo
    ## 2        0.0111    0.015715  FALSE        TRUE     FALSE     fiKLgo
    ## 3        0.5033    0.519372  FALSE       FALSE     FALSE     fiKLgo
    ## 4        0.0401    0.037506  FALSE       FALSE     FALSE     fiKLgo
    ## 5        0.0210    0.011169  FALSE       FALSE     FALSE     fiKLgo
    ## 6        0.0301    0.026354  FALSE        TRUE     FALSE     fiKLgo
    ## 7        0.0173    0.008964  FALSE       FALSE     FALSE     fiKLgo
    ## 8        0.0130    0.012068  FALSE       FALSE     FALSE     fiKLgo
    ## 9        0.0400    0.035859  FALSE       FALSE     FALSE     fiKLgo
    ## 10       0.1968    0.212746  FALSE       FALSE     FALSE     fiKLgo
    ## 11       0.0177    0.018892  FALSE       FALSE     FALSE     fiKLgo
    ## 12       0.6753    0.674423  FALSE       FALSE     FALSE     fiKLgo
    ## 13       0.6519    0.656532  FALSE        TRUE     FALSE     fiKLgo
    ## 14       0.3353    0.340110  FALSE       FALSE     FALSE     fiKLgo
    ## 15       0.2027    0.147734  FALSE        TRUE     FALSE     fiKLgo
    ## 16       0.0984    0.094743  FALSE       FALSE     FALSE     fiKLgo
    ## 17       0.6344    0.646220  FALSE        TRUE     FALSE     fiKLgo
    ## 18       0.0269    0.036242  FALSE       FALSE     FALSE     fiKLgo
    ## 19       0.0155    0.013340  FALSE        TRUE     FALSE     fiKLgo
    ## 20       0.0211    0.015788  FALSE       FALSE     FALSE     fiKLgo
    ## 21       0.3729    0.380326  FALSE       FALSE     FALSE     fiKLgo
    ## 22       0.0926    0.091410  FALSE       FALSE     FALSE     fiKLgo
    ## 23       0.4402    0.443078  FALSE        TRUE      TRUE     fiKLgo
    ## 24       0.2882    0.275283  FALSE       FALSE     FALSE     fiKLgo
    ## 25       0.1981    0.200920  FALSE        TRUE     FALSE     fiKLgo
    ## 26       0.0243    0.023655  FALSE        TRUE     FALSE     fiKLgo
    ## 27       0.2205    0.211274  FALSE       FALSE     FALSE     fiKLgo
    ## 28       0.0922    0.094525  FALSE       FALSE     FALSE     fiKLgo
    ## 29       0.0132    0.005760   TRUE        TRUE     FALSE     fiKLgo
    ## 30       0.5524    0.545220  FALSE       FALSE     FALSE     fiKLgo
    ## 31       0.3274    0.334652  FALSE       FALSE     FALSE     fiKLgo
    ## 32       0.6410    0.628166  FALSE       FALSE     FALSE     fiKLgo
    ## 33       0.0920    0.089008  FALSE       FALSE     FALSE     fiKLgo
    ## 34       0.1158    0.119414  FALSE       FALSE     FALSE     fiKLgo
    ## 35       0.0504    0.045962  FALSE       FALSE     FALSE     fiKLgo
    ## 36       0.4067    0.390914  FALSE       FALSE     FALSE     fiKLgo
    ## 37       0.8126    0.822736  FALSE       FALSE     FALSE     fiKLgo
    ## 38       0.0864    0.092882  FALSE       FALSE     FALSE     fiKLgo
    ## 39       0.0082    0.005368  FALSE       FALSE     FALSE     fiKLgo
    ## 40       0.0239    0.038051  FALSE       FALSE     FALSE     fiKLgo
    ## 41       0.3669    0.365873  FALSE       FALSE     FALSE     fiKLgo
    ## 42       0.2261    0.232336  FALSE       FALSE     FALSE     fiKLgo
    ## 43       0.0234    0.015535  FALSE       FALSE     FALSE     fiKLgo
    ## 44       0.3427    0.348304  FALSE       FALSE     FALSE     fiKLgo
    ## 45       0.6029    0.587291  FALSE       FALSE     FALSE     fiKLgo
    ## 46       0.6331    0.605585  FALSE       FALSE     FALSE     fiKLgo
    ## 47       0.4249    0.426932  FALSE       FALSE     FALSE     fiKLgo
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            2   233981912 0.00266185 -0.6566600      5.1e-01
    ## 2           19    45196958 0.00901348 -0.7832790      4.3e-01
    ## 3            5   139707439 0.00221639 -0.5278220      6.0e-01
    ## 4           11   121435587 0.00580715 -0.8101220      4.2e-01
    ## 5           19    45436753 0.01081530  3.4462000      5.7e-04
    ## 6            6    41034000 0.00699606  0.5115460      6.1e-01
    ## 7            7   127426090 0.01204380  1.6733900      9.4e-02
    ## 8           19    45393516 0.01015580  3.0972900      2.0e-03
    ## 9           12   127222883 0.00624365 -1.0353400      3.0e-01
    ## 10           7   143109139 0.00269128 -0.0346928      9.7e-01
    ## 11          19    45439498 0.00920524 -0.8707530      3.8e-01
    ## 12          19     1050874 0.00236401  0.0675661      9.5e-01
    ## 13          10    11721057 0.00232401 -2.2476600      2.5e-02
    ## 14          14    92938855 0.00234106  1.0985000      2.7e-01
    ## 15          19    45387459 0.00312721  5.2711200      1.4e-07
    ## 16           8    71505146 0.00375865 -0.4022140      6.9e-01
    ## 17           6    47595155 0.00232832  0.2550460      8.0e-01
    ## 18          22    21926584 0.00627466 -0.8748650      3.8e-01
    ## 19          19    45574482 0.01077070 -0.1990620      8.4e-01
    ## 20           7    33721795 0.00916671 -0.2319600      8.2e-01
    ## 21          11    60021948 0.00227338  0.1106950      9.1e-01
    ## 22          14    53391680 0.00383220  0.7614560      4.5e-01
    ## 23          17    56409089 0.00222868 -0.7478280      4.5e-01
    ## 24          21    28148191 0.00246549  0.6262690      5.3e-01
    ## 25          16    19910313 0.00276669 -0.3888040      7.0e-01
    ## 26           4    66245059 0.00727228  0.1576580      8.7e-01
    ## 27          16    81779775 0.00276223 -1.0637800      2.9e-01
    ## 28           2   186794162 0.00376685 -0.4219250      6.7e-01
    ## 29           5    52665230 0.01838310  0.7777310      4.4e-01
    ## 30          11    47380340 0.00221709  2.5063300      1.2e-02
    ## 31          15    59034174 0.00234238 -1.3510800      1.8e-01
    ## 32          11    85868640 0.00227693  0.6021750      5.5e-01
    ## 33          20    54998544 0.00388935  1.7414900      8.2e-02
    ## 34          16    79355857 0.00352392  1.0235200      3.1e-01
    ## 35           9    85450616 0.00526160  0.1791980      8.6e-01
    ## 36           2   127892810 0.00229715  1.7999200      7.2e-02
    ## 37           1   207750568 0.00288456 -0.9323260      3.5e-01
    ## 38           3    45101639 0.00381527  0.7173670      4.7e-01
    ## 39           4   104182954 0.01527570 -0.4489010      6.5e-01
    ## 40          19    45431403 0.00585801 -0.4374980      6.6e-01
    ## 41           8    27219987 0.00228908  0.0683991      9.5e-01
    ## 42           2   127863224 0.00261755  0.7680010      4.4e-01
    ## 43          19    45653226 0.00929672  0.8479940      4.0e-01
    ## 44          19    18558876 0.00231816 -0.8945070      3.7e-01
    ## 45           8    27468503 0.00225568 -0.6600050      5.1e-01
    ## 46           7    50322832 0.00225971 -0.4304260      6.7e-01
    ## 47          11   131769402 0.00223665 -1.3744300      1.7e-01
    ##    samplesize.outcome             outcome mr_keep.outcome
    ## 1              377234 Klimentidis2018mvpa            TRUE
    ## 2              377234 Klimentidis2018mvpa            TRUE
    ## 3              377234 Klimentidis2018mvpa            TRUE
    ## 4              377234 Klimentidis2018mvpa            TRUE
    ## 5              377234 Klimentidis2018mvpa            TRUE
    ## 6              377234 Klimentidis2018mvpa            TRUE
    ## 7              377234 Klimentidis2018mvpa            TRUE
    ## 8              377234 Klimentidis2018mvpa            TRUE
    ## 9              377234 Klimentidis2018mvpa            TRUE
    ## 10             377234 Klimentidis2018mvpa            TRUE
    ## 11             377234 Klimentidis2018mvpa            TRUE
    ## 12             377234 Klimentidis2018mvpa            TRUE
    ## 13             377234 Klimentidis2018mvpa            TRUE
    ## 14             377234 Klimentidis2018mvpa            TRUE
    ## 15             377234 Klimentidis2018mvpa            TRUE
    ## 16             377234 Klimentidis2018mvpa            TRUE
    ## 17             377234 Klimentidis2018mvpa            TRUE
    ## 18             377234 Klimentidis2018mvpa            TRUE
    ## 19             377234 Klimentidis2018mvpa            TRUE
    ## 20             377234 Klimentidis2018mvpa            TRUE
    ## 21             377234 Klimentidis2018mvpa            TRUE
    ## 22             377234 Klimentidis2018mvpa            TRUE
    ## 23             377234 Klimentidis2018mvpa            TRUE
    ## 24             377234 Klimentidis2018mvpa            TRUE
    ## 25             377234 Klimentidis2018mvpa            TRUE
    ## 26             377234 Klimentidis2018mvpa            TRUE
    ## 27             377234 Klimentidis2018mvpa            TRUE
    ## 28             377234 Klimentidis2018mvpa            TRUE
    ## 29             377234 Klimentidis2018mvpa            TRUE
    ## 30             377234 Klimentidis2018mvpa            TRUE
    ## 31             377234 Klimentidis2018mvpa            TRUE
    ## 32             377234 Klimentidis2018mvpa            TRUE
    ## 33             377234 Klimentidis2018mvpa            TRUE
    ## 34             377234 Klimentidis2018mvpa            TRUE
    ## 35             377234 Klimentidis2018mvpa            TRUE
    ## 36             377234 Klimentidis2018mvpa            TRUE
    ## 37             377234 Klimentidis2018mvpa            TRUE
    ## 38             377234 Klimentidis2018mvpa            TRUE
    ## 39             377234 Klimentidis2018mvpa            TRUE
    ## 40             377234 Klimentidis2018mvpa            TRUE
    ## 41             377234 Klimentidis2018mvpa            TRUE
    ## 42             377234 Klimentidis2018mvpa            TRUE
    ## 43             377234 Klimentidis2018mvpa            TRUE
    ## 44             377234 Klimentidis2018mvpa            TRUE
    ## 45             377234 Klimentidis2018mvpa            TRUE
    ## 46             377234 Klimentidis2018mvpa            TRUE
    ## 47             377234 Klimentidis2018mvpa            TRUE
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
    ## 16            reported          TRUE         rs13252043        rs11996416
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
    ## 39            reported          TRUE          rs6822989        rs28544093
    ## 40            reported            NA               <NA>              <NA>
    ## 41            reported            NA               <NA>              <NA>
    ## 42            reported            NA               <NA>              <NA>
    ## 43            reported            NA               <NA>              <NA>
    ## 44            reported            NA               <NA>              <NA>
    ## 45            reported            NA               <NA>              <NA>
    ## 46            reported            NA               <NA>              <NA>
    ## 47            reported            NA               <NA>              <NA>
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1                 NA              <NA>             <NA>             <NA>
    ## 2                 NA              <NA>             <NA>             <NA>
    ## 3                 NA              <NA>             <NA>             <NA>
    ## 4                 NA              <NA>             <NA>             <NA>
    ## 5                 NA              <NA>             <NA>             <NA>
    ## 6                 NA              <NA>             <NA>             <NA>
    ## 7                 NA              <NA>             <NA>             <NA>
    ## 8                 NA              <NA>             <NA>             <NA>
    ## 9                 NA              <NA>             <NA>             <NA>
    ## 10                NA              <NA>             <NA>             <NA>
    ## 11                NA              <NA>             <NA>             <NA>
    ## 12                NA              <NA>             <NA>             <NA>
    ## 13                NA              <NA>             <NA>             <NA>
    ## 14                NA              <NA>             <NA>             <NA>
    ## 15                NA              <NA>             <NA>             <NA>
    ## 16              TRUE                 C                T                C
    ## 17                NA              <NA>             <NA>             <NA>
    ## 18                NA              <NA>             <NA>             <NA>
    ## 19                NA              <NA>             <NA>             <NA>
    ## 20                NA              <NA>             <NA>             <NA>
    ## 21                NA              <NA>             <NA>             <NA>
    ## 22                NA              <NA>             <NA>             <NA>
    ## 23                NA              <NA>             <NA>             <NA>
    ## 24                NA              <NA>             <NA>             <NA>
    ## 25                NA              <NA>             <NA>             <NA>
    ## 26                NA              <NA>             <NA>             <NA>
    ## 27                NA              <NA>             <NA>             <NA>
    ## 28                NA              <NA>             <NA>             <NA>
    ## 29                NA              <NA>             <NA>             <NA>
    ## 30                NA              <NA>             <NA>             <NA>
    ## 31                NA              <NA>             <NA>             <NA>
    ## 32                NA              <NA>             <NA>             <NA>
    ## 33                NA              <NA>             <NA>             <NA>
    ## 34                NA              <NA>             <NA>             <NA>
    ## 35                NA              <NA>             <NA>             <NA>
    ## 36                NA              <NA>             <NA>             <NA>
    ## 37                NA              <NA>             <NA>             <NA>
    ## 38                NA              <NA>             <NA>             <NA>
    ## 39              TRUE                 C                C                T
    ## 40                NA              <NA>             <NA>             <NA>
    ## 41                NA              <NA>             <NA>             <NA>
    ## 42                NA              <NA>             <NA>             <NA>
    ## 43                NA              <NA>             <NA>             <NA>
    ## 44                NA              <NA>             <NA>             <NA>
    ## 45                NA              <NA>             <NA>             <NA>
    ## 46                NA              <NA>             <NA>             <NA>
    ## 47                NA              <NA>             <NA>             <NA>
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             2    233981912      0.0194   5.159794     2.552e-07
    ## 2            19     45196958      0.0795  -6.753459     1.436e-11
    ## 3             5    139707439      0.0143  -5.272730     1.432e-07
    ## 4            11    121435587      0.0369  -5.563690     2.633e-08
    ## 5            19     45436753      0.0661  12.527988     5.434e-36
    ## 6             6     41034000      0.0431   6.914153     4.467e-12
    ## 7             7    127426090      0.0672  -4.645833     3.350e-06
    ## 8            19     45393516      0.0691  14.296671     2.275e-46
    ## 9            12    127222883      0.0465   4.716130     2.459e-06
    ## 10            7    143109139      0.0182  -5.648350     1.561e-08
    ## 11           19     45439498      0.1015  -5.441379     5.274e-08
    ## 12           19      1050874      0.0169  -6.337280     2.562e-10
    ## 13           10     11721057      0.0154   5.519480     3.417e-08
    ## 14           14     92938855      0.0157  -5.770701     8.729e-09
    ## 15           19     45387459      0.0189  51.074100    1.000e-200
    ## 16            8     71551628      0.0237   4.810127     1.570e-06
    ## 17            6     47595155      0.0157  -5.579620     2.232e-08
    ## 18           22     21926584      0.0545  -4.614679     3.904e-06
    ## 19           19     45574482      0.0879  -6.078498     1.192e-09
    ## 20            7     33721795      0.0769   4.596879     4.253e-06
    ## 21           11     60021948      0.0149  -8.268456     1.186e-16
    ## 22           14     53391680      0.0246   4.967480     6.621e-07
    ## 23           17     56409089      0.0147  -5.088435     3.671e-07
    ## 24           21     28148191      0.0162  -5.166667     2.422e-07
    ## 25           16     19910313      0.0181  -4.861880     1.115e-06
    ## 26            4     66245059      0.0475   4.673684     2.900e-06
    ## 27           16     81779775      0.0198   4.747475     2.067e-06
    ## 28            2    186794162      0.0247   4.663968     3.200e-06
    ## 29            5     52665230      0.0760  -4.938158     7.796e-07
    ## 30           11     47380340      0.0144   6.493056     9.702e-11
    ## 31           15     59034174      0.0151  -4.622517     3.812e-06
    ## 32           11     85868640      0.0148   8.094590     5.809e-16
    ## 33           20     54998544      0.0259  -5.092660     3.652e-07
    ## 34           16     79355857      0.0288   5.305556     1.171e-07
    ## 35            9     85450616      0.0335   4.731343     2.169e-06
    ## 36            2    127892810      0.0154  10.993506     4.022e-28
    ## 37            1    207750568      0.0183  -8.240440     1.555e-16
    ## 38            3     45101639      0.0257  -5.031130     4.774e-07
    ## 39            4    104176240      0.0940   4.639362     3.487e-06
    ## 40           19     45431403      0.0657  -5.509893     3.646e-08
    ## 41            8     27219987      0.0153   6.117647     8.342e-10
    ## 42            2    127863224      0.0172   5.011628     5.341e-07
    ## 43           19     45653226      0.0623   4.778491     1.750e-06
    ## 44           19     18558876      0.0151   4.609270     3.946e-06
    ## 45            8     27468503      0.0158   8.436709     3.492e-17
    ## 46            7     50322832      0.0148   4.567570     4.794e-06
    ## 47           11    131769402      0.0144   4.597220     4.386e-06
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                63926 Kunkle2019load             TRUE
    ## 2                63926 Kunkle2019load             TRUE
    ## 3                63926 Kunkle2019load             TRUE
    ## 4                63926 Kunkle2019load             TRUE
    ## 5                63926 Kunkle2019load             TRUE
    ## 6                63926 Kunkle2019load             TRUE
    ## 7                63926 Kunkle2019load             TRUE
    ## 8                63926 Kunkle2019load             TRUE
    ## 9                63926 Kunkle2019load             TRUE
    ## 10               63926 Kunkle2019load             TRUE
    ## 11               63926 Kunkle2019load             TRUE
    ## 12               63926 Kunkle2019load             TRUE
    ## 13               63926 Kunkle2019load             TRUE
    ## 14               63926 Kunkle2019load             TRUE
    ## 15               63926 Kunkle2019load             TRUE
    ## 16               63926 Kunkle2019load             TRUE
    ## 17               63926 Kunkle2019load             TRUE
    ## 18               63926 Kunkle2019load             TRUE
    ## 19               63926 Kunkle2019load             TRUE
    ## 20               63926 Kunkle2019load             TRUE
    ## 21               63926 Kunkle2019load             TRUE
    ## 22               63926 Kunkle2019load             TRUE
    ## 23               63926 Kunkle2019load             TRUE
    ## 24               63926 Kunkle2019load             TRUE
    ## 25               63926 Kunkle2019load             TRUE
    ## 26               63926 Kunkle2019load             TRUE
    ## 27               63926 Kunkle2019load             TRUE
    ## 28               63926 Kunkle2019load             TRUE
    ## 29               63926 Kunkle2019load             TRUE
    ## 30               63926 Kunkle2019load             TRUE
    ## 31               63926 Kunkle2019load             TRUE
    ## 32               63926 Kunkle2019load             TRUE
    ## 33               63926 Kunkle2019load             TRUE
    ## 34               63926 Kunkle2019load             TRUE
    ## 35               63926 Kunkle2019load             TRUE
    ## 36               63926 Kunkle2019load             TRUE
    ## 37               63926 Kunkle2019load             TRUE
    ## 38               63926 Kunkle2019load             TRUE
    ## 39               63926 Kunkle2019load             TRUE
    ## 40               63926 Kunkle2019load             TRUE
    ## 41               63926 Kunkle2019load             TRUE
    ## 42               63926 Kunkle2019load             TRUE
    ## 43               63926 Kunkle2019load             TRUE
    ## 44               63926 Kunkle2019load             TRUE
    ## 45               63926 Kunkle2019load             TRUE
    ## 46               63926 Kunkle2019load             TRUE
    ## 47               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 2              reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 3              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 4              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 5              reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 6              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 7              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 8              reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 9              reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 10             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 11             reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 12             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 13             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 14             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 15             reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 16             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 17             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 18             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 19             reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 20             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 21             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 22             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 23             reported      CqOoQN      2   FALSE           TRUE 5e-06
    ## 24             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 25             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 26             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 27             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 28             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 29             reported      CqOoQN      2   FALSE           TRUE 5e-06
    ## 30             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 31             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 32             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 33             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 34             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 35             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 36             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 37             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 38             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 39             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 40             reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 41             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 42             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 43             reported      CqOoQN      2    TRUE          FALSE 5e-06
    ## 44             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 45             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 46             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ## 47             reported      CqOoQN      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA          TRUE
    ## 2               NA            NA          TRUE
    ## 3               NA            NA          TRUE
    ## 4               NA            NA          TRUE
    ## 5               NA            NA          TRUE
    ## 6               NA            NA          TRUE
    ## 7               NA            NA          TRUE
    ## 8               NA            NA          TRUE
    ## 9               NA            NA          TRUE
    ## 10              NA            NA          TRUE
    ## 11              NA            NA          TRUE
    ## 12              NA            NA          TRUE
    ## 13              NA            NA          TRUE
    ## 14              NA            NA          TRUE
    ## 15              NA            NA          TRUE
    ## 16              NA            NA          TRUE
    ## 17              NA            NA          TRUE
    ## 18              NA            NA          TRUE
    ## 19              NA            NA          TRUE
    ## 20              NA            NA          TRUE
    ## 21              NA            NA          TRUE
    ## 22              NA            NA          TRUE
    ## 23              NA            NA            NA
    ## 24              NA            NA          TRUE
    ## 25              NA            NA          TRUE
    ## 26              NA            NA          TRUE
    ## 27              NA            NA          TRUE
    ## 28              NA            NA          TRUE
    ## 29              NA            NA            NA
    ## 30              NA            NA          TRUE
    ## 31              NA            NA          TRUE
    ## 32              NA            NA          TRUE
    ## 33              NA            NA          TRUE
    ## 34              NA            NA          TRUE
    ## 35              NA            NA          TRUE
    ## 36              NA            NA          TRUE
    ## 37              NA            NA          TRUE
    ## 38              NA            NA          TRUE
    ## 39              NA            NA          TRUE
    ## 40              NA            NA          TRUE
    ## 41              NA            NA          TRUE
    ## 42              NA            NA          TRUE
    ## 43              NA            NA          TRUE
    ## 44              NA            NA          TRUE
    ## 45              NA            NA          TRUE
    ## 46              NA            NA          TRUE
    ## 47              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the
Moderate-Vigours Physical Activity GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11      4.3e-01
    ## 2 rs114533385          19    45436753     5.434e-36      5.7e-04
    ## 3 rs117310449          19    45393516     2.275e-46      2.0e-03
    ## 4 rs118004808          19    45439498     5.274e-08      3.8e-01
    ## 5  rs12972156          19    45387459    1.000e-200      1.4e-07
    ## 6 rs139995984          19    45574482     1.192e-09      8.4e-01
    ## 7  rs73033507          19    45431403     3.646e-08      6.6e-01
    ## 8  rs80182863          19    45653226     1.750e-06      4.0e-01

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.01959325 34.50785  0.05 0.0369086 0.05423869

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

Table 6 presents the MR causal estimates of genetically predicted LOAD
on Moderate-Vigours Physical Activity. <br>

**Table 6** MR causaul estimates for LOAD on Moderate-Vigours Physical
Activity

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 2      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 3      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 4      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   37 0.0004960583 0.004192867
    ## 2                           Weighted median   37 0.0010298768 0.006025349
    ## 3                             Weighted mode   37 0.0119232337 0.011064077
    ## 4                                  MR Egger   37 0.0118155243 0.012029276
    ##        pval
    ## 1 0.9058220
    ## 2 0.8642835
    ## 3 0.2883572
    ## 4 0.3327276

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Moderate-Vigours Physical Activity and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 2      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 35.55222   35 0.4422196
    ## 2 Inverse variance weighted 36.57829   36 0.4418203

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Klimentidis2018mvpa/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Klimentidis2018mvpa/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##   egger_intercept          se      pval
    ## 1    -0.001368307 0.001361432 0.3217711

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome             outcome       exposure    pt
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 38.93438 0.4352

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 2      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 3      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 4      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   37 0.0004960583 0.004192867
    ## 2                           Weighted median   37 0.0010298768 0.006093941
    ## 3                             Weighted mode   37 0.0119232337 0.011018029
    ## 4                                  MR Egger   37 0.0118155243 0.012029276
    ##        pval
    ## 1 0.9058220
    ## 2 0.8657965
    ## 3 0.2863786
    ## 4 0.3327276

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ## 2      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 35.55222   35 0.4422196
    ## 2 Inverse variance weighted 36.57829   36 0.4418203

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      CqOoQN     fiKLgo Klimentidis2018mvpa Kunkle2019load
    ##   egger_intercept          se      pval
    ## 1    -0.001368307 0.001361432 0.3217711

<br>
