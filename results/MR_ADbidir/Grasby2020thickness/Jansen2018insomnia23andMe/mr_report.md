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

### Outcome: Insomnia

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Insomnia

    ##            SNP CHROM       POS REF ALT        AF          BETA
    ## 1    rs1180331     1  40012184   G   A 0.4954640  4.604968e-04
    ## 2     rs556204     1  57595583   G   C 0.1137930 -5.142658e-04
    ## 3    rs2002058     1  58561329   C   T 0.1728960 -9.325346e-04
    ## 4    rs7549825     1  98554409   A   G 0.3432840 -1.020870e-03
    ## 5    rs7531555     1 196929310   C   T 0.2500000 -2.256815e-05
    ## 6    rs6738528     2  27149258   T   A 0.4217790 -1.104581e-03
    ## 7    rs3770776     2  37150793   A   G 0.4360660 -1.180920e-04
    ## 8   rs11692435     2  98275354   G   A 0.1408810  2.903727e-04
    ## 9     rs533577     3  39489651   C   T 0.4492390 -2.361864e-03
    ## 10  rs11708974     3  64395184   C   T 0.4664220  2.682483e-03
    ## 11   rs2636563     3 183939044   G   C 0.2218770  2.342317e-03
    ## 12  rs10016059     4   2405007   T   C 0.3435910 -1.455130e-03
    ## 13   rs7657284     4  39688694   A   C 0.2721680  2.919760e-03
    ## 14   rs7683042     4  46999235   A   G 0.3111070 -6.991840e-04
    ## 15  rs13107325     4 103188709   C   T 0.0473169  6.943349e-03
    ## 16  rs35021943     4 121643239   A   C 0.2241190 -2.714150e-03
    ## 17     rs40565     5  55828636   C   T 0.7925280  2.148591e-03
    ## 18   rs2744449     6  52951185   G   C 0.8856880  8.815803e-04
    ## 19    rs194833     7 103761274   G   T 0.4821750  2.064884e-03
    ## 20   rs6961970     7 113901132   C   A 0.2094840  4.211224e-03
    ## 21    rs724265     8   8219182   G   A 0.5889940 -1.358323e-04
    ## 22   rs3200031     8  26227484   C   T 0.0469203 -8.823267e-04
    ## 23   rs7824177     8 110585288   A   G 0.1132660  1.005210e-03
    ## 24  rs12543282     8 144627241   C   T 0.2089080  4.730591e-04
    ## 25  rs35025323    10  97089991   T   C 0.1282610  8.350500e-04
    ## 26   rs4296031    11  42540012   G   A 0.7754470  3.068305e-04
    ## 27   rs7957460    12  32945835   G   A 0.6604290 -5.988286e-05
    ## 28  rs12815451    12  51738706   T   C 0.1428310  1.761150e-04
    ## 29   rs1558801    12 109036359   A   C 0.4324470  1.452610e-04
    ## 30   rs4772440    13 102712476   C   T 0.4284900  8.724749e-04
    ## 31   rs1742401    16   1971601   G   A 0.4508910 -2.250261e-03
    ## 32    rs734957    17   2612584   G   A 0.2633310  3.856237e-03
    ## 33  rs11656696    17  10033679   C   A 0.4084370  3.027136e-04
    ## 34   rs7215205    17  29818258   T   C 0.6332610  1.277520e-04
    ## 35   rs2316766    17  43919068   G   T 0.1475710  2.100798e-03
    ## 36 rs117826338    19   5904353   C   T 0.1421840 -7.689516e-04
    ## 37   rs3816046    19  46118127   C   T 0.3054140 -5.556686e-04
    ## 38   rs5994871    22  22091244   C   T 0.7659570 -7.621439e-04
    ## 39   rs5756894    22  38450136   C   A 0.6064680 -2.438951e-04
    ##              SE      Z         P       N             TRAIT
    ## 1  0.0008672257  0.531 5.955e-01 1330040 Insomnia_Symptoms
    ## 2  0.0008672273 -0.593 5.532e-01 1329859 Insomnia_Symptoms
    ## 3  0.0008690910 -1.073 2.833e-01 1323012 Insomnia_Symptoms
    ## 4  0.0008688252 -1.175 2.400e-01 1323605 Insomnia_Symptoms
    ## 5  0.0008680056 -0.026 9.794e-01 1330585 Insomnia_Symptoms
    ## 6  0.0008670178 -1.274 2.026e-01 1328926 Insomnia_Symptoms
    ## 7  0.0008683264 -0.136 8.915e-01 1328288 Insomnia_Symptoms
    ## 8  0.0008719901  0.333 7.390e-01 1316194 Insomnia_Symptoms
    ## 9  0.0008661033 -2.727 6.394e-03 1329031 Insomnia_Symptoms
    ## 10 0.0008653170  3.100 1.935e-03 1330800 Insomnia_Symptoms
    ## 11 0.0008668826  2.702 6.886e-03 1326682 Insomnia_Symptoms
    ## 12 0.0008661469 -1.680 9.288e-02 1330800 Insomnia_Symptoms
    ## 13 0.0008658842  3.372 7.466e-04 1328585 Insomnia_Symptoms
    ## 14 0.0008685518 -0.805 4.210e-01 1325264 Insomnia_Symptoms
    ## 15 0.0008626350  8.049 8.319e-16 1330800 Insomnia_Symptoms
    ## 16 0.0008668640 -3.131 1.744e-03 1325993 Insomnia_Symptoms
    ## 17 0.0008656691  2.482 1.307e-02 1330800 Insomnia_Symptoms
    ## 18 0.0008668440  1.017 3.091e-01 1330004 Insomnia_Symptoms
    ## 19 0.0010278167  2.009 4.455e-02  944267 Insomnia_Symptoms
    ## 20 0.0008654386  4.866 1.140e-06 1327426 Insomnia_Symptoms
    ## 21 0.0008707198 -0.156 8.757e-01 1320870 Insomnia_Symptoms
    ## 22 0.0008675779 -1.017 3.093e-01 1327755 Insomnia_Symptoms
    ## 23 0.0008673048  1.159 2.464e-01 1328285 Insomnia_Symptoms
    ## 24 0.0008679983  0.545 5.856e-01 1327632 Insomnia_Symptoms
    ## 25 0.0008671338  0.963 3.355e-01 1329235 Insomnia_Symptoms
    ## 26 0.0010296325  0.298 7.661e-01  944267 Insomnia_Symptoms
    ## 27 0.0008678675 -0.069 9.450e-01 1330285 Insomnia_Symptoms
    ## 28 0.0010299120  0.171 8.641e-01  944267 Insomnia_Symptoms
    ## 29 0.0008698285  0.167 8.674e-01 1323512 Insomnia_Symptoms
    ## 30 0.0008698653  1.003 3.158e-01 1320809 Insomnia_Symptoms
    ## 31 0.0008658181 -2.599 9.343e-03 1330133 Insomnia_Symptoms
    ## 32 0.0010264140  3.757 1.722e-04  944267 Insomnia_Symptoms
    ## 33 0.0010296381  0.294 7.684e-01  944267 Insomnia_Symptoms
    ## 34 0.0008690615  0.147 8.832e-01 1325973 Insomnia_Symptoms
    ## 35 0.0010277875  2.044 4.099e-02  944267 Insomnia_Symptoms
    ## 36 0.0008669128 -0.887 3.750e-01 1330086 Insomnia_Symptoms
    ## 37 0.0008668778 -0.641 5.212e-01 1330800 Insomnia_Symptoms
    ## 38 0.0008710216 -0.875 3.817e-01 1317593 Insomnia_Symptoms
    ## 39 0.0008679540 -0.281 7.790e-01 1328668 Insomnia_Symptoms

<br>

**Table 3:** Proxy SNPs for Insomnia

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

**Table 4:** Harmonized Cortical Thickness and Insomnia datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    T        0.0038 -1.455130e-03
    ## 2                      A                    C        0.0040  3.027136e-04
    ## 3                      A                    G       -0.0091  2.903727e-04
    ## 4                      T                    C        0.0035  2.682483e-03
    ## 5                      T                    C        0.0062 -7.689516e-04
    ## 6                      A                    G        0.0039  4.604968e-04
    ## 7                      T                    C        0.0043  4.730591e-04
    ## 8                      C                    T        0.0070  1.761150e-04
    ## 9                      T                    C       -0.0076  6.943349e-03
    ## 10                     C                    A       -0.0041  1.452610e-04
    ## 11                     A                    G       -0.0038 -2.250261e-03
    ## 12                     T                    G       -0.0035  2.064884e-03
    ## 13                     T                    C        0.0046 -9.325346e-04
    ## 14                     T                    G        0.0069  2.100798e-03
    ## 15                     C                    G        0.0044  2.342317e-03
    ## 16                     C                    G        0.0059  8.815803e-04
    ## 17                     T                    C        0.0071 -8.823267e-04
    ## 18                     C                    A        0.0051 -2.714150e-03
    ## 19                     C                    T       -0.0054  8.350500e-04
    ## 20                     G                    A        0.0039 -1.180920e-04
    ## 21                     T                    C       -0.0041 -5.556686e-04
    ## 22                     T                    C        0.0048  2.148591e-03
    ## 23                     A                    G       -0.0044  3.068305e-04
    ## 24                     T                    C       -0.0036  8.724749e-04
    ## 25                     T                    C       -0.0050 -2.361864e-03
    ## 26                     C                    G       -0.0050 -5.142658e-04
    ## 27                     A                    C        0.0035 -2.438951e-04
    ## 28                     T                    C        0.0042 -7.621439e-04
    ## 29                     A                    T        0.0045 -1.104581e-03
    ## 30                     A                    C        0.0041  4.211224e-03
    ## 31                     C                    T       -0.0036  1.277520e-04
    ## 32                     A                    G        0.0041 -1.358323e-04
    ## 33                     A                    G        0.0066  3.856237e-03
    ## 34                     T                    C        0.0047 -2.256815e-05
    ## 35                     G                    A        0.0040 -1.020870e-03
    ## 36                     C                    A        0.0044  2.919760e-03
    ## 37                     G                    A       -0.0036 -6.991840e-04
    ## 38                     G                    A       -0.0059  1.005210e-03
    ## 39                     A                    G       -0.0037 -5.988286e-05
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379   0.3435910  FALSE       FALSE     FALSE     CKn8er
    ## 2        0.4288   0.4084370  FALSE       FALSE     FALSE     CKn8er
    ## 3        0.0910   0.1408810  FALSE       FALSE     FALSE     CKn8er
    ## 4        0.4778   0.4664220  FALSE       FALSE     FALSE     CKn8er
    ## 5        0.1353   0.1421840  FALSE       FALSE     FALSE     CKn8er
    ## 6        0.4610   0.4954640  FALSE       FALSE     FALSE     CKn8er
    ## 7        0.2395   0.2089080  FALSE       FALSE     FALSE     CKn8er
    ## 8        0.1519   0.1428310  FALSE       FALSE     FALSE     CKn8er
    ## 9        0.0707   0.0473169  FALSE       FALSE     FALSE     CKn8er
    ## 10       0.3852   0.4324470  FALSE       FALSE     FALSE     CKn8er
    ## 11       0.3809   0.4508910  FALSE       FALSE     FALSE     CKn8er
    ## 12       0.4771   0.4821750  FALSE       FALSE     FALSE     CKn8er
    ## 13       0.1892   0.1728960  FALSE       FALSE     FALSE     CKn8er
    ## 14       0.2098   0.1475710  FALSE       FALSE     FALSE     CKn8er
    ## 15       0.2416   0.2218770  FALSE        TRUE     FALSE     CKn8er
    ## 16       0.9107   0.8856880  FALSE        TRUE     FALSE     CKn8er
    ## 17       0.0773   0.0469203  FALSE       FALSE     FALSE     CKn8er
    ## 18       0.2422   0.2241190  FALSE       FALSE     FALSE     CKn8er
    ## 19       0.1210   0.1282610  FALSE       FALSE     FALSE     CKn8er
    ## 20       0.4299   0.4360660  FALSE       FALSE     FALSE     CKn8er
    ## 21       0.3206   0.3054140  FALSE       FALSE     FALSE     CKn8er
    ## 22       0.8108   0.7925280  FALSE       FALSE     FALSE     CKn8er
    ## 23       0.8037   0.7754470  FALSE       FALSE     FALSE     CKn8er
    ## 24       0.4224   0.4284900  FALSE       FALSE     FALSE     CKn8er
    ## 25       0.4935   0.4492390  FALSE       FALSE     FALSE     CKn8er
    ## 26       0.1594   0.1137930  FALSE        TRUE     FALSE     CKn8er
    ## 27       0.6043   0.6064680  FALSE       FALSE     FALSE     CKn8er
    ## 28       0.7171   0.7659570  FALSE       FALSE     FALSE     CKn8er
    ## 29       0.3984   0.4217790  FALSE        TRUE      TRUE     CKn8er
    ## 30       0.2334   0.2094840  FALSE       FALSE     FALSE     CKn8er
    ## 31       0.6326   0.6332610  FALSE       FALSE     FALSE     CKn8er
    ## 32       0.6272   0.5889940  FALSE       FALSE     FALSE     CKn8er
    ## 33       0.2235   0.2633310  FALSE       FALSE     FALSE     CKn8er
    ## 34       0.2386   0.2500000  FALSE       FALSE     FALSE     CKn8er
    ## 35       0.3084   0.3432840  FALSE       FALSE     FALSE     CKn8er
    ## 36       0.2465   0.2721680  FALSE       FALSE     FALSE     CKn8er
    ## 37       0.4028   0.3111070  FALSE       FALSE     FALSE     CKn8er
    ## 38       0.1616   0.1132660  FALSE       FALSE     FALSE     CKn8er
    ## 39       0.6732   0.6604290  FALSE       FALSE     FALSE     CKn8er
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1            4     2405007 0.0008661469    -1.680    9.288e-02
    ## 2           17    10033679 0.0010296381     0.294    7.684e-01
    ## 3            2    98275354 0.0008719901     0.333    7.390e-01
    ## 4            3    64395184 0.0008653170     3.100    1.935e-03
    ## 5           19     5904353 0.0008669128    -0.887    3.750e-01
    ## 6            1    40012184 0.0008672257     0.531    5.955e-01
    ## 7            8   144627241 0.0008679983     0.545    5.856e-01
    ## 8           12    51738706 0.0010299120     0.171    8.641e-01
    ## 9            4   103188709 0.0008626350     8.049    8.319e-16
    ## 10          12   109036359 0.0008698285     0.167    8.674e-01
    ## 11          16     1971601 0.0008658181    -2.599    9.343e-03
    ## 12           7   103761274 0.0010278167     2.009    4.455e-02
    ## 13           1    58561329 0.0008690910    -1.073    2.833e-01
    ## 14          17    43919068 0.0010277875     2.044    4.099e-02
    ## 15           3   183939044 0.0008668826     2.702    6.886e-03
    ## 16           6    52951185 0.0008668440     1.017    3.091e-01
    ## 17           8    26227484 0.0008675779    -1.017    3.093e-01
    ## 18           4   121643239 0.0008668640    -3.131    1.744e-03
    ## 19          10    97089991 0.0008671338     0.963    3.355e-01
    ## 20           2    37150793 0.0008683264    -0.136    8.915e-01
    ## 21          19    46118127 0.0008668778    -0.641    5.212e-01
    ## 22           5    55828636 0.0008656691     2.482    1.307e-02
    ## 23          11    42540012 0.0010296325     0.298    7.661e-01
    ## 24          13   102712476 0.0008698653     1.003    3.158e-01
    ## 25           3    39489651 0.0008661033    -2.727    6.394e-03
    ## 26           1    57595583 0.0008672273    -0.593    5.532e-01
    ## 27          22    38450136 0.0008679540    -0.281    7.790e-01
    ## 28          22    22091244 0.0008710216    -0.875    3.817e-01
    ## 29           2    27149258 0.0008670178    -1.274    2.026e-01
    ## 30           7   113901132 0.0008654386     4.866    1.140e-06
    ## 31          17    29818258 0.0008690615     0.147    8.832e-01
    ## 32           8     8219182 0.0008707198    -0.156    8.757e-01
    ## 33          17     2612584 0.0010264140     3.757    1.722e-04
    ## 34           1   196929310 0.0008680056    -0.026    9.794e-01
    ## 35           1    98554409 0.0008688252    -1.175    2.400e-01
    ## 36           4    39688694 0.0008658842     3.372    7.466e-04
    ## 37           4    46999235 0.0008685518    -0.805    4.210e-01
    ## 38           8   110585288 0.0008673048     1.159    2.464e-01
    ## 39          12    32945835 0.0008678675    -0.069    9.450e-01
    ##    samplesize.outcome                   outcome mr_keep.outcome
    ## 1             1330800 Jansen2018insomnia23andMe            TRUE
    ## 2              944267 Jansen2018insomnia23andMe            TRUE
    ## 3             1316194 Jansen2018insomnia23andMe            TRUE
    ## 4             1330800 Jansen2018insomnia23andMe            TRUE
    ## 5             1330086 Jansen2018insomnia23andMe            TRUE
    ## 6             1330040 Jansen2018insomnia23andMe            TRUE
    ## 7             1327632 Jansen2018insomnia23andMe            TRUE
    ## 8              944267 Jansen2018insomnia23andMe            TRUE
    ## 9             1330800 Jansen2018insomnia23andMe            TRUE
    ## 10            1323512 Jansen2018insomnia23andMe            TRUE
    ## 11            1330133 Jansen2018insomnia23andMe            TRUE
    ## 12             944267 Jansen2018insomnia23andMe            TRUE
    ## 13            1323012 Jansen2018insomnia23andMe            TRUE
    ## 14             944267 Jansen2018insomnia23andMe            TRUE
    ## 15            1326682 Jansen2018insomnia23andMe            TRUE
    ## 16            1330004 Jansen2018insomnia23andMe            TRUE
    ## 17            1327755 Jansen2018insomnia23andMe            TRUE
    ## 18            1325993 Jansen2018insomnia23andMe            TRUE
    ## 19            1329235 Jansen2018insomnia23andMe            TRUE
    ## 20            1328288 Jansen2018insomnia23andMe            TRUE
    ## 21            1330800 Jansen2018insomnia23andMe            TRUE
    ## 22            1330800 Jansen2018insomnia23andMe            TRUE
    ## 23             944267 Jansen2018insomnia23andMe            TRUE
    ## 24            1320809 Jansen2018insomnia23andMe            TRUE
    ## 25            1329031 Jansen2018insomnia23andMe            TRUE
    ## 26            1329859 Jansen2018insomnia23andMe            TRUE
    ## 27            1328668 Jansen2018insomnia23andMe            TRUE
    ## 28            1317593 Jansen2018insomnia23andMe            TRUE
    ## 29            1328926 Jansen2018insomnia23andMe            TRUE
    ## 30            1327426 Jansen2018insomnia23andMe            TRUE
    ## 31            1325973 Jansen2018insomnia23andMe            TRUE
    ## 32            1320870 Jansen2018insomnia23andMe            TRUE
    ## 33             944267 Jansen2018insomnia23andMe            TRUE
    ## 34            1330585 Jansen2018insomnia23andMe            TRUE
    ## 35            1323605 Jansen2018insomnia23andMe            TRUE
    ## 36            1328585 Jansen2018insomnia23andMe            TRUE
    ## 37            1325264 Jansen2018insomnia23andMe            TRUE
    ## 38            1328285 Jansen2018insomnia23andMe            TRUE
    ## 39            1330285 Jansen2018insomnia23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            4      2405007      0.0008   4.750000
    ## 2             reported           17     10033679      0.0008   5.000000
    ## 3             reported            2     98275354      0.0015  -6.066667
    ## 4             reported            3     64395184      0.0008   4.375000
    ## 5             reported           19      5904353      0.0012   5.166667
    ## 6             reported            1     40012184      0.0008   4.875000
    ## 7             reported            8    144627241      0.0009   4.777778
    ## 8             reported           12     51738706      0.0015   4.666670
    ## 9             reported            4    103188709      0.0015  -5.066667
    ## 10            reported           12    109036359      0.0009  -4.555560
    ## 11            reported           16      1971601      0.0008  -4.750000
    ## 12            reported            7    103761274      0.0008  -4.375000
    ## 13            reported            1     58561329      0.0010   4.600000
    ## 14            reported           17     43919068      0.0011   6.272727
    ## 15            reported            3    183939044      0.0009   4.888889
    ## 16            reported            6     52951185      0.0013   4.538462
    ## 17            reported            8     26227484      0.0014   5.071429
    ## 18            reported            4    121643239      0.0009   5.666670
    ## 19            reported           10     97089991      0.0011  -4.909090
    ## 20            reported            2     37150793      0.0008   4.875000
    ## 21            reported           19     46118127      0.0008  -5.125000
    ## 22            reported            5     55828636      0.0010   4.800000
    ## 23            reported           11     42540012      0.0010  -4.400000
    ## 24            reported           13    102712476      0.0008  -4.500000
    ## 25            reported            3     39489651      0.0008  -6.250000
    ## 26            reported            1     57595583      0.0010  -5.000000
    ## 27            reported           22     38450136      0.0008   4.375000
    ## 28            reported           22     22091244      0.0009   4.666667
    ## 29            reported            2     27149258      0.0008   5.625000
    ## 30            reported            7    113901132      0.0009   4.555556
    ## 31            reported           17     29818258      0.0008  -4.500000
    ## 32            reported            8      8219182      0.0008   5.125000
    ## 33            reported           17      2612584      0.0012   5.500000
    ## 34            reported            1    196929310      0.0009   5.222222
    ## 35            reported            1     98554409      0.0008   5.000000
    ## 36            reported            4     39688694      0.0009   4.888890
    ## 37            reported            4     46999235      0.0008  -4.500000
    ## 38            reported            8    110585288      0.0010  -5.900000
    ## 39            reported           12     32945835      0.0008  -4.625000
    ##    pval.exposure samplesize.exposure            exposure mr_keep.exposure
    ## 1      4.994e-06               32441 Grasby2020thickness             TRUE
    ## 2      2.117e-07               32512 Grasby2020thickness             TRUE
    ## 3      3.179e-10               29128 Grasby2020thickness             TRUE
    ## 4      4.070e-06               32872 Grasby2020thickness             TRUE
    ## 5      9.902e-08               30012 Grasby2020thickness             TRUE
    ## 6      5.299e-07               32872 Grasby2020thickness             TRUE
    ## 7      4.087e-06               32764 Grasby2020thickness             TRUE
    ## 8      3.201e-06               20004 Grasby2020thickness             TRUE
    ## 9      5.054e-07               32872 Grasby2020thickness             TRUE
    ## 10     2.204e-06               30860 Grasby2020thickness             TRUE
    ## 11     7.050e-07               32764 Grasby2020thickness             TRUE
    ## 12     3.614e-06               32486 Grasby2020thickness             TRUE
    ## 13     1.289e-06               33089 Grasby2020thickness             TRUE
    ## 14     2.903e-10               26063 Grasby2020thickness             TRUE
    ## 15     2.299e-06               31046 Grasby2020thickness             TRUE
    ## 16     4.452e-06               33281 Grasby2020thickness             TRUE
    ## 17     5.526e-07               32872 Grasby2020thickness             TRUE
    ## 18     2.979e-09               32872 Grasby2020thickness             TRUE
    ## 19     1.762e-06               32872 Grasby2020thickness             TRUE
    ## 20     3.170e-07               32872 Grasby2020thickness             TRUE
    ## 21     8.464e-07               30344 Grasby2020thickness             TRUE
    ## 22     5.911e-07               32249 Grasby2020thickness             TRUE
    ## 23     3.779e-06               32486 Grasby2020thickness             TRUE
    ## 24     3.102e-06               32872 Grasby2020thickness             TRUE
    ## 25     8.426e-11               32872 Grasby2020thickness             TRUE
    ## 26     1.417e-06               32441 Grasby2020thickness             TRUE
    ## 27     4.741e-06               32872 Grasby2020thickness             TRUE
    ## 28     8.821e-07               32872 Grasby2020thickness             TRUE
    ## 29     7.324e-09               32872 Grasby2020thickness             TRUE
    ## 30     2.411e-06               32872 Grasby2020thickness             TRUE
    ## 31     3.115e-06               32680 Grasby2020thickness             TRUE
    ## 32     1.012e-07               32872 Grasby2020thickness             TRUE
    ## 33     6.126e-08               22106 Grasby2020thickness             TRUE
    ## 34     7.662e-08               32639 Grasby2020thickness             TRUE
    ## 35     2.503e-06               32872 Grasby2020thickness             TRUE
    ## 36     2.680e-07               32872 Grasby2020thickness             TRUE
    ## 37     3.852e-06               32872 Grasby2020thickness             TRUE
    ## 38     8.922e-09               32872 Grasby2020thickness             TRUE
    ## 39     2.960e-06               32512 Grasby2020thickness             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 2              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 3              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 4              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 5              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 6              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 7              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 8              reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 9              reported      XtqdsM      2    TRUE          FALSE 5e-06
    ## 10             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 11             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 12             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 13             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 14             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 15             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 16             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 17             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 18             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 19             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 20             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 21             reported      XtqdsM      2    TRUE          FALSE 5e-06
    ## 22             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 23             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 24             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 25             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 26             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 27             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 28             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 29             reported      XtqdsM      2   FALSE           TRUE 5e-06
    ## 30             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 31             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 32             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 33             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 34             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 35             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 36             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 37             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 38             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ## 39             reported      XtqdsM      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     3.077135e-06             1          TRUE
    ## 2     4.287677e-10             1          TRUE
    ## 3     1.072698e-06             1          TRUE
    ## 4     6.113044e-06        0.1944          TRUE
    ## 5     1.601974e-06             1          TRUE
    ## 6     3.562710e-08             1          TRUE
    ## 7     3.009773e-08             1          TRUE
    ## 8     1.101675e-07             1          TRUE
    ## 9               NA          <NA>            NA
    ## 10    1.968004e-07             1          TRUE
    ## 11    4.070768e-06        0.7848          TRUE
    ## 12    5.459988e-06         0.828          TRUE
    ## 13    1.664657e-06             1          TRUE
    ## 14    2.833158e-06             1          TRUE
    ## 15    4.329744e-06        0.6336          TRUE
    ## 16    2.359748e-07             1          TRUE
    ## 17    2.171570e-06             1          TRUE
    ## 18    1.007763e-05        0.0072         FALSE
    ## 19    1.589737e-06             1          TRUE
    ## 20    1.605745e-07             1          TRUE
    ## 21              NA          <NA>            NA
    ## 22    3.467724e-06             1          TRUE
    ## 23    3.941760e-07             1          TRUE
    ## 24    1.309787e-06             1          TRUE
    ## 25    4.293739e-06        0.6264          TRUE
    ## 26    2.770850e-08             1          TRUE
    ## 27    2.483119e-07             1          TRUE
    ## 28    1.169732e-06             1          TRUE
    ## 29              NA          <NA>            NA
    ## 30    1.603227e-05       <0.0072         FALSE
    ## 31    1.504669e-07             1          TRUE
    ## 32    1.883380e-07             1          TRUE
    ## 33    1.241612e-05        0.0288         FALSE
    ## 34    1.325101e-07             1          TRUE
    ## 35    1.766014e-06             1          TRUE
    ## 36    7.141316e-06        0.0864          TRUE
    ## 37    2.045060e-07             1          TRUE
    ## 38    2.203421e-06             1          TRUE
    ## 39    4.187683e-08             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs13107325           4   103188709     5.054e-07    8.319e-16
    ## 2  rs3816046          19    46118127     8.464e-07    5.212e-01

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
    ## 1            FALSE   0.02628052 25.24449  0.05 0.3337096 0.08902178
    ## 2             TRUE   0.02385696 24.93993  0.05 0.1546255 0.06789440

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
Cortical Thickness on Insomnia. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Insomnia

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 2      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 3      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 4      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   36  0.07057315 0.03023630
    ## 2                           Weighted median   36 -0.03152014 0.04890347
    ## 3                             Weighted mode   36 -0.05931885 0.06462694
    ## 4                                  MR Egger   36 -0.03438370 0.21344523
    ##         pval
    ## 1 0.01959292
    ## 2 0.51922675
    ## 3 0.36497132
    ## 4 0.87297660

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Insomnia and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 2      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 112.4613   34 2.510117e-10
    ## 2 Inverse variance weighted 113.3180   35 3.427215e-10

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1    0.0005325257 0.001046411 0.6141044

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##      pt outliers_removed n_outliers   RSSobs   pval
    ## 1 5e-06            FALSE          3 119.7402 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 2      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 3      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 4      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   33  0.04862688 0.03169563
    ## 2                           Weighted median   33 -0.03167398 0.05013890
    ## 3                             Weighted mode   33 -0.05976468 0.07365413
    ## 4                                  MR Egger   33 -0.05908589 0.17884092
    ##        pval
    ## 1 0.1249847
    ## 2 0.5275668
    ## 3 0.4231173
    ## 4 0.7433336

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ## 2      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 67.96184   31 0.0001405662
    ## 2 Inverse variance weighted 68.81590   32 0.0001675844

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                   outcome            exposure
    ## 1      XtqdsM     CKn8er Jansen2018insomnia23andMe Grasby2020thickness
    ##   egger_intercept           se     pval
    ## 1    0.0005440986 0.0008717354 0.537092

<br>
