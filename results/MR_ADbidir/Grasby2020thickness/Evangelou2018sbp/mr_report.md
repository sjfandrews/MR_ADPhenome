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

### Exposure: Cortical Thickness

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Thickness

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1    rs1180331     1  40012184   G   A 0.4610  0.0039 0.0008  4.875000
    ## 2     rs556204     1  57595583   G   C 0.1594 -0.0050 0.0010 -5.000000
    ## 3    rs2002058     1  58561329   C   T 0.1892  0.0046 0.0010  4.600000
    ## 4    rs7549825     1  98554409   A   G 0.3084  0.0040 0.0008  5.000000
    ## 5    rs7531555     1 196929310   C   T 0.2386  0.0047 0.0009  5.222222
    ## 6    rs6738528     2  27149258   T   A 0.3984  0.0045 0.0008  5.625000
    ## 7    rs3770776     2  37150793   A   G 0.4299  0.0039 0.0008  4.875000
    ## 8   rs11692435     2  98275354   G   A 0.0910 -0.0091 0.0015 -6.066667
    ## 9     rs533577     3  39489651   C   T 0.4935 -0.0050 0.0008 -6.250000
    ## 10  rs11708974     3  64395184   C   T 0.4778  0.0035 0.0008  4.375000
    ## 11   rs2636563     3 183939044   G   C 0.2416  0.0044 0.0009  4.888889
    ## 12  rs10016059     4   2405007   T   C 0.3379  0.0038 0.0008  4.750000
    ## 13   rs7657284     4  39688694   A   C 0.2465  0.0044 0.0009  4.888890
    ## 14   rs7683042     4  46999235   A   G 0.4028 -0.0036 0.0008 -4.500000
    ## 15  rs13107325     4 103188709   C   T 0.0707 -0.0076 0.0015 -5.066667
    ## 16  rs35021943     4 121643239   A   C 0.2422  0.0051 0.0009  5.666670
    ## 17     rs40565     5  55828636   C   T 0.8108  0.0048 0.0010  4.800000
    ## 18   rs2744449     6  52951185   G   C 0.9107  0.0059 0.0013  4.538462
    ## 19    rs194833     7 103761274   G   T 0.4771 -0.0035 0.0008 -4.375000
    ## 20   rs6961970     7 113901132   C   A 0.2334  0.0041 0.0009  4.555556
    ## 21    rs724265     8   8219182   G   A 0.6272  0.0041 0.0008  5.125000
    ## 22   rs3200031     8  26227484   C   T 0.0773  0.0071 0.0014  5.071429
    ## 23   rs7824177     8 110585288   A   G 0.1616 -0.0059 0.0010 -5.900000
    ## 24  rs12543282     8 144627241   C   T 0.2395  0.0043 0.0009  4.777778
    ## 25  rs35025323    10  97089991   T   C 0.1210 -0.0054 0.0011 -4.909090
    ## 26   rs4296031    11  42540012   G   A 0.8037 -0.0044 0.0010 -4.400000
    ## 27   rs7957460    12  32945835   G   A 0.6732 -0.0037 0.0008 -4.625000
    ## 28  rs12815451    12  51738706   T   C 0.1519  0.0070 0.0015  4.666670
    ## 29   rs1558801    12 109036359   A   C 0.3852 -0.0041 0.0009 -4.555560
    ## 30   rs4772440    13 102712476   C   T 0.4224 -0.0036 0.0008 -4.500000
    ## 31   rs1742401    16   1971601   G   A 0.3809 -0.0038 0.0008 -4.750000
    ## 32    rs734957    17   2612584   G   A 0.2235  0.0066 0.0012  5.500000
    ## 33  rs11656696    17  10033679   C   A 0.4288  0.0040 0.0008  5.000000
    ## 34   rs7215205    17  29818258   T   C 0.6326 -0.0036 0.0008 -4.500000
    ## 35   rs2316766    17  43919068   G   T 0.2098  0.0069 0.0011  6.272727
    ## 36 rs117826338    19   5904353   C   T 0.1353  0.0062 0.0012  5.166667
    ## 37   rs3816046    19  46118127   C   T 0.3206 -0.0041 0.0008 -5.125000
    ## 38   rs5994871    22  22091244   C   T 0.7171  0.0042 0.0009  4.666667
    ## 39   rs5756894    22  38450136   C   A 0.6043  0.0035 0.0008  4.375000
    ##            P     N              TRAIT
    ## 1  5.299e-07 32872 Cortical_Thickness
    ## 2  1.417e-06 32441 Cortical_Thickness
    ## 3  1.289e-06 33089 Cortical_Thickness
    ## 4  2.503e-06 32872 Cortical_Thickness
    ## 5  7.662e-08 32639 Cortical_Thickness
    ## 6  7.324e-09 32872 Cortical_Thickness
    ## 7  3.170e-07 32872 Cortical_Thickness
    ## 8  3.179e-10 29128 Cortical_Thickness
    ## 9  8.426e-11 32872 Cortical_Thickness
    ## 10 4.070e-06 32872 Cortical_Thickness
    ## 11 2.299e-06 31046 Cortical_Thickness
    ## 12 4.994e-06 32441 Cortical_Thickness
    ## 13 2.680e-07 32872 Cortical_Thickness
    ## 14 3.852e-06 32872 Cortical_Thickness
    ## 15 5.054e-07 32872 Cortical_Thickness
    ## 16 2.979e-09 32872 Cortical_Thickness
    ## 17 5.911e-07 32249 Cortical_Thickness
    ## 18 4.452e-06 33281 Cortical_Thickness
    ## 19 3.614e-06 32486 Cortical_Thickness
    ## 20 2.411e-06 32872 Cortical_Thickness
    ## 21 1.012e-07 32872 Cortical_Thickness
    ## 22 5.526e-07 32872 Cortical_Thickness
    ## 23 8.922e-09 32872 Cortical_Thickness
    ## 24 4.087e-06 32764 Cortical_Thickness
    ## 25 1.762e-06 32872 Cortical_Thickness
    ## 26 3.779e-06 32486 Cortical_Thickness
    ## 27 2.960e-06 32512 Cortical_Thickness
    ## 28 3.201e-06 20004 Cortical_Thickness
    ## 29 2.204e-06 30860 Cortical_Thickness
    ## 30 3.102e-06 32872 Cortical_Thickness
    ## 31 7.050e-07 32764 Cortical_Thickness
    ## 32 6.126e-08 22106 Cortical_Thickness
    ## 33 2.117e-07 32512 Cortical_Thickness
    ## 34 3.115e-06 32680 Cortical_Thickness
    ## 35 2.903e-10 26063 Cortical_Thickness
    ## 36 9.902e-08 30012 Cortical_Thickness
    ## 37 8.464e-07 30344 Cortical_Thickness
    ## 38 8.821e-07 32872 Cortical_Thickness
    ## 39 4.741e-06 32872 Cortical_Thickness

<br>

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Systolic Blood Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE
    ## 1    rs1180331     1  40012184    G    A 0.4582 -0.0932 0.0303
    ## 2     rs556204     1  57595583    G    C 0.1585 -0.0032 0.0421
    ## 3    rs2002058     1  58561329    C    T 0.1898  0.0008 0.0386
    ## 4    rs7549825     1  98554409    A    G 0.3059  0.0487 0.0329
    ## 5    rs7531555     1 196929310    C    T 0.2359  0.1739 0.0356
    ## 6    rs6738528     2  27149258    T    A 0.3919 -0.0633 0.0309
    ## 7    rs3770776     2  37150793    A    G 0.4256 -0.0306 0.0306
    ## 8   rs11692435     2  98275354    G    A 0.0981  0.1352 0.0547
    ## 9     rs533577     3  39489651    C    T 0.4962 -0.0487 0.0303
    ## 10  rs11708974     3  64395184    C    T 0.4738 -0.0210 0.0316
    ## 11   rs2636563     3 183939044    G    C 0.2395  0.0869 0.0355
    ## 12  rs10016059     4   2405007    T    C 0.3412 -0.0659 0.0324
    ## 13   rs7657284     4  39688694    A    C 0.2526  0.0013 0.0349
    ## 14   rs7683042     4  46999235    A    G 0.4009 -0.0595 0.0311
    ## 15  rs13107325     4 103188709    C    T 0.0739 -0.9086 0.0592
    ## 16  rs35021943     4 121643239    A    C 0.2479  0.0598 0.0352
    ## 17     rs40565     5  55828636    C    T 0.8146  0.1259 0.0390
    ## 18   rs2744449     6  52951185    G    C 0.9054 -0.0605 0.0517
    ## 19    rs194833    NA        NA <NA> <NA>     NA      NA     NA
    ## 20   rs6961970     7 113901132    C    A 0.2389  0.0066 0.0355
    ## 21    rs724265     8   8219182    G    A 0.6286  0.1620 0.0315
    ## 22   rs3200031     8  26227484    C    T 0.0758 -0.0159 0.0576
    ## 23   rs7824177     8 110585288    A    G 0.1594 -0.0860 0.0415
    ## 24  rs12543282     8 144627241    C    T 0.2357 -0.0319 0.0361
    ## 25  rs35025323    10  97089991    T    C 0.1201  0.0257 0.0466
    ## 26   rs4296031    NA        NA <NA> <NA>     NA      NA     NA
    ## 27   rs7957460    12  32945835    G    A 0.6752 -0.0016 0.0323
    ## 28  rs12815451    NA        NA <NA> <NA>     NA      NA     NA
    ## 29   rs1558801    12 109036359    A    C 0.3819 -0.0234 0.0323
    ## 30   rs4772440    13 102712476    C    T 0.4204 -0.0044 0.0307
    ## 31   rs1742401    16   1971601    G    A 0.3829  0.1102 0.0312
    ## 32    rs734957    17   2612584    G    A 0.2257  0.0382 0.0400
    ## 33  rs11656696    17  10033679    C    A 0.4293  0.0290 0.0310
    ## 34   rs7215205    17  29818258    T    C 0.6350  0.0280 0.0316
    ## 35   rs2316766    NA        NA <NA> <NA>     NA      NA     NA
    ## 36 rs117826338    19   5904353    C    T 0.1350 -0.0435 0.0457
    ## 37   rs3816046    19  46118127    C    T 0.3236  0.0410 0.0330
    ## 38   rs5994871    22  22091244    C    T 0.7140 -0.0051 0.0341
    ## 39   rs5756894    22  38450136    C    A 0.6034 -0.0180 0.0308
    ##               Z         P      N                   TRAIT
    ## 1   -3.07590759 2.121e-03 738170 Systolic_Blood_Pressure
    ## 2   -0.07600950 9.399e-01 734292 Systolic_Blood_Pressure
    ## 3    0.02072539 9.832e-01 738169 Systolic_Blood_Pressure
    ## 4    1.48024000 1.389e-01 737164 Systolic_Blood_Pressure
    ## 5    4.88483146 1.026e-06 738169 Systolic_Blood_Pressure
    ## 6   -2.04854369 4.021e-02 738169 Systolic_Blood_Pressure
    ## 7   -1.00000000 3.169e-01 738170 Systolic_Blood_Pressure
    ## 8    2.47166362 1.348e-02 729384 Systolic_Blood_Pressure
    ## 9   -1.60726073 1.079e-01 729908 Systolic_Blood_Pressure
    ## 10  -0.66455696 5.072e-01 727331 Systolic_Blood_Pressure
    ## 11   2.44788732 1.426e-02 738169 Systolic_Blood_Pressure
    ## 12  -2.03395000 4.208e-02 737056 Systolic_Blood_Pressure
    ## 13   0.03724930 9.699e-01 735151 Systolic_Blood_Pressure
    ## 14  -1.91318000 5.526e-02 729908 Systolic_Blood_Pressure
    ## 15 -15.34797297 4.219e-53 735152 Systolic_Blood_Pressure
    ## 16   1.69886000 8.994e-02 735152 Systolic_Blood_Pressure
    ## 17   3.22820513 1.258e-03 737055 Systolic_Blood_Pressure
    ## 18  -1.17021277 2.417e-01 738167 Systolic_Blood_Pressure
    ## 19           NA        NA     NA                    <NA>
    ## 20   0.18591549 8.525e-01 737055 Systolic_Blood_Pressure
    ## 21   5.14285714 2.772e-07 737165 Systolic_Blood_Pressure
    ## 22  -0.27604167 7.830e-01 738167 Systolic_Blood_Pressure
    ## 23  -2.07229000 3.823e-02 729908 Systolic_Blood_Pressure
    ## 24  -0.88365651 3.772e-01 735050 Systolic_Blood_Pressure
    ## 25   0.55150200 5.814e-01 738167 Systolic_Blood_Pressure
    ## 26           NA        NA     NA                    <NA>
    ## 27  -0.04953560 9.596e-01 728838 Systolic_Blood_Pressure
    ## 28           NA        NA     NA                    <NA>
    ## 29  -0.72445800 4.682e-01 743700 Systolic_Blood_Pressure
    ## 30  -0.14332248 8.867e-01 744815 Systolic_Blood_Pressure
    ## 31   3.53205128 4.145e-04 742703 Systolic_Blood_Pressure
    ## 32   0.95500000 3.393e-01 742197 Systolic_Blood_Pressure
    ## 33   0.93548387 3.508e-01 744813 Systolic_Blood_Pressure
    ## 34   0.88607600 3.756e-01 744706 Systolic_Blood_Pressure
    ## 35           NA        NA     NA                    <NA>
    ## 36  -0.95185996 3.414e-01 724207 Systolic_Blood_Pressure
    ## 37   1.24242424 2.145e-01 728938 Systolic_Blood_Pressure
    ## 38  -0.14956012 8.817e-01 744813 Systolic_Blood_Pressure
    ## 39  -0.58441558 5.578e-01 745820 Systolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

    ##   target_snp proxy_snp    ld.r2 Dprime PHASE X12 CHROM       POS REF.proxy
    ## 1   rs194833  rs194834 0.996031      1 GG/TA  NA     7 103762313         G
    ## 2  rs4296031 rs1809327 1.000000      1 GG/AA  NA    11  42536345         G
    ## 3 rs12815451 rs7315646 0.863025      1 CA/TT  NA    12  51741617         T
    ## 4  rs2316766 rs2106785 0.994535      1 TT/GC  NA    17  43919105         C
    ##   ALT.proxy     AF    BETA     SE          Z         P      N
    ## 1         A 0.4685 -0.0453 0.0303 -1.4950495 1.350e-01 729908
    ## 2         A 0.8111  0.0200 0.0387  0.5167959 6.055e-01 738170
    ## 3         A 0.1453  0.0583 0.0465  1.2537634 2.095e-01 744813
    ## 4         T 0.2189 -0.2661 0.0383 -6.9477807 3.841e-12 707437
    ##                     TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1 Systolic_Blood_Pressure   G         G   T         A   T   G
    ## 2 Systolic_Blood_Pressure   G         G   A         A   A   G
    ## 3 Systolic_Blood_Pressure   C         A   T         T   C   T
    ## 4 Systolic_Blood_Pressure   T         T   G         C   T   G
    ##   proxy.outcome
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE
    ## 4          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Systolic Blood Pressure
datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10016059                      C                     T
    ## 2   rs11656696                      A                     C
    ## 3   rs11692435                      A                     G
    ## 4   rs11708974                      T                     C
    ## 5  rs117826338                      T                     C
    ## 6    rs1180331                      A                     G
    ## 7   rs12543282                      T                     C
    ## 8   rs12815451                      C                     T
    ## 9   rs13107325                      T                     C
    ## 10   rs1558801                      C                     A
    ## 11   rs1742401                      A                     G
    ## 12    rs194833                      T                     G
    ## 13   rs2002058                      T                     C
    ## 14   rs2316766                      T                     G
    ## 15   rs2636563                      C                     G
    ## 16   rs2744449                      C                     G
    ## 17   rs3200031                      T                     C
    ## 18  rs35021943                      C                     A
    ## 19  rs35025323                      C                     T
    ## 20   rs3770776                      G                     A
    ## 21   rs3816046                      T                     C
    ## 22     rs40565                      T                     C
    ## 23   rs4296031                      A                     G
    ## 24   rs4772440                      T                     C
    ## 25    rs533577                      T                     C
    ## 26    rs556204                      C                     G
    ## 27   rs5756894                      A                     C
    ## 28   rs5994871                      T                     C
    ## 29   rs6738528                      A                     T
    ## 30   rs6961970                      A                     C
    ## 31   rs7215205                      C                     T
    ## 32    rs724265                      A                     G
    ## 33    rs734957                      A                     G
    ## 34   rs7531555                      T                     C
    ## 35   rs7549825                      G                     A
    ## 36   rs7657284                      C                     A
    ## 37   rs7683042                      G                     A
    ## 38   rs7824177                      G                     A
    ## 39   rs7957460                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T        0.0038      -0.0659
    ## 2                      A                    C        0.0040       0.0290
    ## 3                      A                    G       -0.0091       0.1352
    ## 4                      T                    C        0.0035      -0.0210
    ## 5                      T                    C        0.0062      -0.0435
    ## 6                      A                    G        0.0039      -0.0932
    ## 7                      T                    C        0.0043      -0.0319
    ## 8                      C                    T        0.0070       0.0583
    ## 9                      T                    C       -0.0076      -0.9086
    ## 10                     C                    A       -0.0041      -0.0234
    ## 11                     A                    G       -0.0038       0.1102
    ## 12                     T                    G       -0.0035      -0.0453
    ## 13                     T                    C        0.0046       0.0008
    ## 14                     T                    G        0.0069      -0.2661
    ## 15                     C                    G        0.0044       0.0869
    ## 16                     C                    G        0.0059      -0.0605
    ## 17                     T                    C        0.0071      -0.0159
    ## 18                     C                    A        0.0051       0.0598
    ## 19                     C                    T       -0.0054       0.0257
    ## 20                     G                    A        0.0039      -0.0306
    ## 21                     T                    C       -0.0041       0.0410
    ## 22                     T                    C        0.0048       0.1259
    ## 23                     A                    G       -0.0044       0.0200
    ## 24                     T                    C       -0.0036      -0.0044
    ## 25                     T                    C       -0.0050      -0.0487
    ## 26                     C                    G       -0.0050      -0.0032
    ## 27                     A                    C        0.0035      -0.0180
    ## 28                     T                    C        0.0042      -0.0051
    ## 29                     A                    T        0.0045      -0.0633
    ## 30                     A                    C        0.0041       0.0066
    ## 31                     C                    T       -0.0036       0.0280
    ## 32                     A                    G        0.0041       0.1620
    ## 33                     A                    G        0.0066       0.0382
    ## 34                     T                    C        0.0047       0.1739
    ## 35                     G                    A        0.0040       0.0487
    ## 36                     C                    A        0.0044       0.0013
    ## 37                     G                    A       -0.0036      -0.0595
    ## 38                     G                    A       -0.0059      -0.0860
    ## 39                     A                    G       -0.0037      -0.0016
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379      0.3412  FALSE       FALSE     FALSE     DPNW3Y
    ## 2        0.4288      0.4293  FALSE       FALSE     FALSE     DPNW3Y
    ## 3        0.0910      0.0981  FALSE       FALSE     FALSE     DPNW3Y
    ## 4        0.4778      0.4738  FALSE       FALSE     FALSE     DPNW3Y
    ## 5        0.1353      0.1350  FALSE       FALSE     FALSE     DPNW3Y
    ## 6        0.4610      0.4582  FALSE       FALSE     FALSE     DPNW3Y
    ## 7        0.2395      0.2357  FALSE       FALSE     FALSE     DPNW3Y
    ## 8        0.1519      0.1453  FALSE       FALSE     FALSE     DPNW3Y
    ## 9        0.0707      0.0739  FALSE       FALSE     FALSE     DPNW3Y
    ## 10       0.3852      0.3819  FALSE       FALSE     FALSE     DPNW3Y
    ## 11       0.3809      0.3829  FALSE       FALSE     FALSE     DPNW3Y
    ## 12       0.4771      0.4685  FALSE       FALSE     FALSE     DPNW3Y
    ## 13       0.1892      0.1898  FALSE       FALSE     FALSE     DPNW3Y
    ## 14       0.2098      0.2189  FALSE       FALSE     FALSE     DPNW3Y
    ## 15       0.2416      0.2395  FALSE        TRUE     FALSE     DPNW3Y
    ## 16       0.9107      0.9054  FALSE        TRUE     FALSE     DPNW3Y
    ## 17       0.0773      0.0758  FALSE       FALSE     FALSE     DPNW3Y
    ## 18       0.2422      0.2479  FALSE       FALSE     FALSE     DPNW3Y
    ## 19       0.1210      0.1201  FALSE       FALSE     FALSE     DPNW3Y
    ## 20       0.4299      0.4256  FALSE       FALSE     FALSE     DPNW3Y
    ## 21       0.3206      0.3236  FALSE       FALSE     FALSE     DPNW3Y
    ## 22       0.8108      0.8146  FALSE       FALSE     FALSE     DPNW3Y
    ## 23       0.8037      0.8111  FALSE       FALSE     FALSE     DPNW3Y
    ## 24       0.4224      0.4204  FALSE       FALSE     FALSE     DPNW3Y
    ## 25       0.4935      0.4962  FALSE       FALSE     FALSE     DPNW3Y
    ## 26       0.1594      0.1585  FALSE        TRUE     FALSE     DPNW3Y
    ## 27       0.6043      0.6034  FALSE       FALSE     FALSE     DPNW3Y
    ## 28       0.7171      0.7140  FALSE       FALSE     FALSE     DPNW3Y
    ## 29       0.3984      0.3919  FALSE        TRUE     FALSE     DPNW3Y
    ## 30       0.2334      0.2389  FALSE       FALSE     FALSE     DPNW3Y
    ## 31       0.6326      0.6350  FALSE       FALSE     FALSE     DPNW3Y
    ## 32       0.6272      0.6286  FALSE       FALSE     FALSE     DPNW3Y
    ## 33       0.2235      0.2257  FALSE       FALSE     FALSE     DPNW3Y
    ## 34       0.2386      0.2359  FALSE       FALSE     FALSE     DPNW3Y
    ## 35       0.3084      0.3059  FALSE       FALSE     FALSE     DPNW3Y
    ## 36       0.2465      0.2526  FALSE       FALSE     FALSE     DPNW3Y
    ## 37       0.4028      0.4009  FALSE       FALSE     FALSE     DPNW3Y
    ## 38       0.1616      0.1594  FALSE       FALSE     FALSE     DPNW3Y
    ## 39       0.6732      0.6752  FALSE       FALSE     FALSE     DPNW3Y
    ##    chr.outcome pos.outcome se.outcome    z.outcome pval.outcome
    ## 1            4     2405007     0.0324  -2.03395000    4.208e-02
    ## 2           17    10033679     0.0310   0.93548387    3.508e-01
    ## 3            2    98275354     0.0547   2.47166362    1.348e-02
    ## 4            3    64395184     0.0316  -0.66455696    5.072e-01
    ## 5           19     5904353     0.0457  -0.95185996    3.414e-01
    ## 6            1    40012184     0.0303  -3.07590759    2.121e-03
    ## 7            8   144627241     0.0361  -0.88365651    3.772e-01
    ## 8           12    51741617     0.0465   1.25376344    2.095e-01
    ## 9            4   103188709     0.0592 -15.34797297    4.219e-53
    ## 10          12   109036359     0.0323  -0.72445800    4.682e-01
    ## 11          16     1971601     0.0312   3.53205128    4.145e-04
    ## 12           7   103762313     0.0303  -1.49504950    1.350e-01
    ## 13           1    58561329     0.0386   0.02072539    9.832e-01
    ## 14          17    43919105     0.0383  -6.94778068    3.841e-12
    ## 15           3   183939044     0.0355   2.44788732    1.426e-02
    ## 16           6    52951185     0.0517  -1.17021277    2.417e-01
    ## 17           8    26227484     0.0576  -0.27604167    7.830e-01
    ## 18           4   121643239     0.0352   1.69886000    8.994e-02
    ## 19          10    97089991     0.0466   0.55150200    5.814e-01
    ## 20           2    37150793     0.0306  -1.00000000    3.169e-01
    ## 21          19    46118127     0.0330   1.24242424    2.145e-01
    ## 22           5    55828636     0.0390   3.22820513    1.258e-03
    ## 23          11    42536345     0.0387   0.51679587    6.055e-01
    ## 24          13   102712476     0.0307  -0.14332248    8.867e-01
    ## 25           3    39489651     0.0303  -1.60726073    1.079e-01
    ## 26           1    57595583     0.0421  -0.07600950    9.399e-01
    ## 27          22    38450136     0.0308  -0.58441558    5.578e-01
    ## 28          22    22091244     0.0341  -0.14956012    8.817e-01
    ## 29           2    27149258     0.0309  -2.04854369    4.021e-02
    ## 30           7   113901132     0.0355   0.18591549    8.525e-01
    ## 31          17    29818258     0.0316   0.88607600    3.756e-01
    ## 32           8     8219182     0.0315   5.14285714    2.772e-07
    ## 33          17     2612584     0.0400   0.95500000    3.393e-01
    ## 34           1   196929310     0.0356   4.88483146    1.026e-06
    ## 35           1    98554409     0.0329   1.48024000    1.389e-01
    ## 36           4    39688694     0.0349   0.03724930    9.699e-01
    ## 37           4    46999235     0.0311  -1.91318000    5.526e-02
    ## 38           8   110585288     0.0415  -2.07229000    3.823e-02
    ## 39          12    32945835     0.0323  -0.04953560    9.596e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              737056 Evangelou2018sbp            TRUE            reported
    ## 2              744813 Evangelou2018sbp            TRUE            reported
    ## 3              729384 Evangelou2018sbp            TRUE            reported
    ## 4              727331 Evangelou2018sbp            TRUE            reported
    ## 5              724207 Evangelou2018sbp            TRUE            reported
    ## 6              738170 Evangelou2018sbp            TRUE            reported
    ## 7              735050 Evangelou2018sbp            TRUE            reported
    ## 8              744813 Evangelou2018sbp            TRUE            reported
    ## 9              735152 Evangelou2018sbp            TRUE            reported
    ## 10             743700 Evangelou2018sbp            TRUE            reported
    ## 11             742703 Evangelou2018sbp            TRUE            reported
    ## 12             729908 Evangelou2018sbp            TRUE            reported
    ## 13             738169 Evangelou2018sbp            TRUE            reported
    ## 14             707437 Evangelou2018sbp            TRUE            reported
    ## 15             738169 Evangelou2018sbp            TRUE            reported
    ## 16             738167 Evangelou2018sbp            TRUE            reported
    ## 17             738167 Evangelou2018sbp            TRUE            reported
    ## 18             735152 Evangelou2018sbp            TRUE            reported
    ## 19             738167 Evangelou2018sbp            TRUE            reported
    ## 20             738170 Evangelou2018sbp            TRUE            reported
    ## 21             728938 Evangelou2018sbp            TRUE            reported
    ## 22             737055 Evangelou2018sbp            TRUE            reported
    ## 23             738170 Evangelou2018sbp            TRUE            reported
    ## 24             744815 Evangelou2018sbp            TRUE            reported
    ## 25             729908 Evangelou2018sbp            TRUE            reported
    ## 26             734292 Evangelou2018sbp            TRUE            reported
    ## 27             745820 Evangelou2018sbp            TRUE            reported
    ## 28             744813 Evangelou2018sbp            TRUE            reported
    ## 29             738169 Evangelou2018sbp            TRUE            reported
    ## 30             737055 Evangelou2018sbp            TRUE            reported
    ## 31             744706 Evangelou2018sbp            TRUE            reported
    ## 32             737165 Evangelou2018sbp            TRUE            reported
    ## 33             742197 Evangelou2018sbp            TRUE            reported
    ## 34             738169 Evangelou2018sbp            TRUE            reported
    ## 35             737164 Evangelou2018sbp            TRUE            reported
    ## 36             735151 Evangelou2018sbp            TRUE            reported
    ## 37             729908 Evangelou2018sbp            TRUE            reported
    ## 38             729908 Evangelou2018sbp            TRUE            reported
    ## 39             728838 Evangelou2018sbp            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8           TRUE         rs12815451         rs7315646                 C
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12          TRUE           rs194833          rs194834                 T
    ## 13            NA               <NA>              <NA>              <NA>
    ## 14          TRUE          rs2316766         rs2106785                 T
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23          TRUE          rs4296031         rs1809327                 A
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
    ## 35            NA               <NA>              <NA>              <NA>
    ## 36            NA               <NA>              <NA>              <NA>
    ## 37            NA               <NA>              <NA>              <NA>
    ## 38            NA               <NA>              <NA>              <NA>
    ## 39            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            4
    ## 2               <NA>             <NA>             <NA>           17
    ## 3               <NA>             <NA>             <NA>            2
    ## 4               <NA>             <NA>             <NA>            3
    ## 5               <NA>             <NA>             <NA>           19
    ## 6               <NA>             <NA>             <NA>            1
    ## 7               <NA>             <NA>             <NA>            8
    ## 8                  T                A                T           12
    ## 9               <NA>             <NA>             <NA>            4
    ## 10              <NA>             <NA>             <NA>           12
    ## 11              <NA>             <NA>             <NA>           16
    ## 12                 G                A                G            7
    ## 13              <NA>             <NA>             <NA>            1
    ## 14                 G                T                C           17
    ## 15              <NA>             <NA>             <NA>            3
    ## 16              <NA>             <NA>             <NA>            6
    ## 17              <NA>             <NA>             <NA>            8
    ## 18              <NA>             <NA>             <NA>            4
    ## 19              <NA>             <NA>             <NA>           10
    ## 20              <NA>             <NA>             <NA>            2
    ## 21              <NA>             <NA>             <NA>           19
    ## 22              <NA>             <NA>             <NA>            5
    ## 23                 G                A                G           11
    ## 24              <NA>             <NA>             <NA>           13
    ## 25              <NA>             <NA>             <NA>            3
    ## 26              <NA>             <NA>             <NA>            1
    ## 27              <NA>             <NA>             <NA>           22
    ## 28              <NA>             <NA>             <NA>           22
    ## 29              <NA>             <NA>             <NA>            2
    ## 30              <NA>             <NA>             <NA>            7
    ## 31              <NA>             <NA>             <NA>           17
    ## 32              <NA>             <NA>             <NA>            8
    ## 33              <NA>             <NA>             <NA>           17
    ## 34              <NA>             <NA>             <NA>            1
    ## 35              <NA>             <NA>             <NA>            1
    ## 36              <NA>             <NA>             <NA>            4
    ## 37              <NA>             <NA>             <NA>            4
    ## 38              <NA>             <NA>             <NA>            8
    ## 39              <NA>             <NA>             <NA>           12
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1       2405007      0.0008   4.750000     4.994e-06               32441
    ## 2      10033679      0.0008   5.000000     2.117e-07               32512
    ## 3      98275354      0.0015  -6.066667     3.179e-10               29128
    ## 4      64395184      0.0008   4.375000     4.070e-06               32872
    ## 5       5904353      0.0012   5.166667     9.902e-08               30012
    ## 6      40012184      0.0008   4.875000     5.299e-07               32872
    ## 7     144627241      0.0009   4.777778     4.087e-06               32764
    ## 8      51738706      0.0015   4.666670     3.201e-06               20004
    ## 9     103188709      0.0015  -5.066667     5.054e-07               32872
    ## 10    109036359      0.0009  -4.555560     2.204e-06               30860
    ## 11      1971601      0.0008  -4.750000     7.050e-07               32764
    ## 12    103761274      0.0008  -4.375000     3.614e-06               32486
    ## 13     58561329      0.0010   4.600000     1.289e-06               33089
    ## 14     43919068      0.0011   6.272727     2.903e-10               26063
    ## 15    183939044      0.0009   4.888889     2.299e-06               31046
    ## 16     52951185      0.0013   4.538462     4.452e-06               33281
    ## 17     26227484      0.0014   5.071429     5.526e-07               32872
    ## 18    121643239      0.0009   5.666670     2.979e-09               32872
    ## 19     97089991      0.0011  -4.909090     1.762e-06               32872
    ## 20     37150793      0.0008   4.875000     3.170e-07               32872
    ## 21     46118127      0.0008  -5.125000     8.464e-07               30344
    ## 22     55828636      0.0010   4.800000     5.911e-07               32249
    ## 23     42540012      0.0010  -4.400000     3.779e-06               32486
    ## 24    102712476      0.0008  -4.500000     3.102e-06               32872
    ## 25     39489651      0.0008  -6.250000     8.426e-11               32872
    ## 26     57595583      0.0010  -5.000000     1.417e-06               32441
    ## 27     38450136      0.0008   4.375000     4.741e-06               32872
    ## 28     22091244      0.0009   4.666667     8.821e-07               32872
    ## 29     27149258      0.0008   5.625000     7.324e-09               32872
    ## 30    113901132      0.0009   4.555556     2.411e-06               32872
    ## 31     29818258      0.0008  -4.500000     3.115e-06               32680
    ## 32      8219182      0.0008   5.125000     1.012e-07               32872
    ## 33      2612584      0.0012   5.500000     6.126e-08               22106
    ## 34    196929310      0.0009   5.222222     7.662e-08               32639
    ## 35     98554409      0.0008   5.000000     2.503e-06               32872
    ## 36     39688694      0.0009   4.888890     2.680e-07               32872
    ## 37     46999235      0.0008  -4.500000     3.852e-06               32872
    ## 38    110585288      0.0010  -5.900000     8.922e-09               32872
    ## 39     32945835      0.0008  -4.625000     2.960e-06               32512
    ##               exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 2  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 3  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 4  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 5  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 6  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 7  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 8  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 9  Grasby2020thickness             TRUE             reported      JJRSeN
    ## 10 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 11 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 12 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 13 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 14 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 15 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 16 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 17 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 18 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 19 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 20 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 21 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 22 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 23 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 24 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 25 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 26 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 27 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 28 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 29 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 30 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 31 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 32 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 33 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 34 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 35 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 36 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 37 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 38 Grasby2020thickness             TRUE             reported      JJRSeN
    ## 39 Grasby2020thickness             TRUE             reported      JJRSeN
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    5.804413e-03        0.7128
    ## 2       2    TRUE           TRUE 5e-06    4.248628e-04             1
    ## 3       2    TRUE           TRUE 5e-06    2.664124e-02         0.108
    ## 4       2    TRUE           TRUE 5e-06    8.676361e-04             1
    ## 5       2    TRUE           TRUE 5e-06    3.509166e-03             1
    ## 6       2    TRUE           TRUE 5e-06    1.099859e-02        0.0216
    ## 7       2    TRUE           TRUE 5e-06    1.811194e-03             1
    ## 8       2    TRUE           TRUE 5e-06    1.962664e-03             1
    ## 9       2    TRUE          FALSE 5e-06              NA          <NA>
    ## 10      2    TRUE           TRUE 5e-06    2.133376e-04             1
    ## 11      2    TRUE           TRUE 5e-06    1.482699e-02        0.0072
    ## 12      2    TRUE           TRUE 5e-06    1.468165e-03             1
    ## 13      2    TRUE           TRUE 5e-06    9.497219e-05             1
    ## 14      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 15      2    TRUE           TRUE 5e-06    6.254654e-03        0.9144
    ## 16      2    TRUE           TRUE 5e-06    5.682521e-03             1
    ## 17      2    TRUE           TRUE 5e-06    1.066232e-03             1
    ## 18      2    TRUE           TRUE 5e-06    2.514352e-03             1
    ## 19      2    TRUE           TRUE 5e-06    1.496267e-03             1
    ## 20      2    TRUE           TRUE 5e-06    1.636309e-03             1
    ## 21      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 22      2    TRUE           TRUE 5e-06    1.396173e-02        0.0792
    ## 23      2    TRUE           TRUE 5e-06    9.320421e-04             1
    ## 24      2    TRUE           TRUE 5e-06    1.411744e-05             1
    ## 25      2    TRUE           TRUE 5e-06    1.544250e-03             1
    ## 26      2    TRUE           TRUE 5e-06    6.730189e-05             1
    ## 27      2    TRUE           TRUE 5e-06    6.981032e-04             1
    ## 28      2    TRUE           TRUE 5e-06    2.219044e-04             1
    ## 29      2    TRUE           TRUE 5e-06    5.792919e-03         0.468
    ## 30      2    TRUE           TRUE 5e-06    7.025955e-06             1
    ## 31      2    TRUE           TRUE 5e-06    1.359965e-03             1
    ## 32      2    TRUE           TRUE 5e-06    2.474500e-02       <0.0072
    ## 33      2    TRUE           TRUE 5e-06    6.017995e-04             1
    ## 34      2    TRUE           TRUE 5e-06    2.832955e-02       <0.0072
    ## 35      2    TRUE           TRUE 5e-06    1.660521e-03             1
    ## 36      2    TRUE           TRUE 5e-06    7.743117e-05             1
    ## 37      2    TRUE           TRUE 5e-06    2.768810e-03             1
    ## 38      2    TRUE           TRUE 5e-06    5.676617e-03             1
    ## 39      2    TRUE           TRUE 5e-06    4.686611e-05             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6          FALSE
    ## 7           TRUE
    ## 8           TRUE
    ## 9             NA
    ## 10          TRUE
    ## 11         FALSE
    ## 12          TRUE
    ## 13          TRUE
    ## 14            NA
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19          TRUE
    ## 20          TRUE
    ## 21            NA
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
    ## 32         FALSE
    ## 33          TRUE
    ## 34         FALSE
    ## 35          TRUE
    ## 36          TRUE
    ## 37          TRUE
    ## 38          TRUE
    ## 39          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs13107325           4   103188709     5.054e-07    4.219e-53
    ## 2  rs2316766          17    43919105     2.903e-10    3.841e-12
    ## 3  rs3816046          19    46118127     8.464e-07    2.145e-01

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
    ## 1            FALSE   0.02605493 25.02199  0.05 2.872678 0.3956078
    ## 2             TRUE   0.02312145 24.90835  0.05 1.183874 0.1927821

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

Table 6 presents the MR causal estimates of genetically predicted
Cortical Thickness on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Systolic
Blood Pressure

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 2      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 3      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 4      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)   36  2.2417067  1.298941
    ## 2                           Weighted median   36  0.4496839  2.277175
    ## 3                             Weighted mode   36 -0.9082055  5.039801
    ## 4                                  MR Egger   36  2.6112782 11.615333
    ##         pval
    ## 1 0.08438409
    ## 2 0.84345624
    ## 3 0.85802972
    ## 4 0.82347042

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Systolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 2      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 128.2147   34 7.418169e-13
    ## 2 Inverse variance weighted 128.2187   35 1.463723e-12

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1    -0.001705335 0.05231822 0.9741878

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome            exposure    pt
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          4 136.0437 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 2      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 3      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 4      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##                                      method nsnp          b       se
    ## 1 Inverse variance weighted (fixed effects)   32  1.5949946 1.377628
    ## 2                           Weighted median   32  0.4776259 2.283862
    ## 3                             Weighted mode   32 -1.3932651 4.961843
    ## 4                                  MR Egger   32 -1.7620359 8.394809
    ##        pval
    ## 1 0.2469526
    ## 2 0.8343461
    ## 3 0.7807326
    ## 4 0.8351679

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ## 2      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 57.28751   30 0.001936422
    ## 2 Inverse variance weighted 57.60944   31 0.002555028

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      JJRSeN     DPNW3Y Evangelou2018sbp Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1         0.01573 0.03831069 0.6842908

<br>
