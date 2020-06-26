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

### Outcome: Somking Initiation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Somking Initiation

    ##            SNP CHROM       POS REF ALT        AF          BETA
    ## 1    rs1180331     1  40012184   G   A 0.4954640  2.343336e-03
    ## 2     rs556204     1  57595583   G   C 0.1137930 -8.340392e-04
    ## 3    rs2002058     1  58561329   C   T 0.1728960 -1.613721e-04
    ## 4    rs7549825     1  98554409   A   G 0.3432840 -1.057190e-03
    ## 5    rs7531555     1 196929310   C   T 0.2500000  9.591199e-04
    ## 6    rs6738528     2  27149258   T   A 0.4217790 -2.920159e-04
    ## 7    rs3770776     2  37150793   A   G 0.4360660  8.448390e-04
    ## 8   rs11692435     2  98275354   G   A 0.1408810  5.359933e-03
    ## 9     rs533577     3  39489651   C   T 0.4492390 -3.433615e-04
    ## 10  rs11708974     3  64395184   C   T 0.4664220  1.992185e-04
    ## 11   rs2636563     3 183939044   G   C 0.2218770  1.971490e-03
    ## 12  rs10016059     4   2405007   T   C 0.3435910  6.729270e-04
    ## 13   rs7657284     4  39688694   A   C 0.2721680  4.532390e-04
    ## 14   rs7683042     4  46999235   A   G 0.3111070  2.597410e-03
    ## 15  rs13107325     4 103188709   C   T 0.0473169 -1.173230e-03
    ## 16  rs35021943     4 121643239   A   C 0.2241190 -4.267660e-03
    ## 17     rs40565     5  55828636   C   T 0.7925280  9.663179e-04
    ## 18   rs2744449     6  52951185   G   C 0.8856880 -3.466650e-03
    ## 19    rs194833     7 103761274   G   T 0.4821750  4.141007e-05
    ## 20   rs6961970     7 113901132   C   A 0.2094840  1.799871e-03
    ## 21    rs724265     8   8219182   G   A 0.5889940  2.526765e-03
    ## 22   rs3200031     8  26227484   C   T 0.0469203 -3.289120e-03
    ## 23   rs7824177     8 110585288   A   G 0.1132660  1.772010e-03
    ## 24  rs12543282     8 144627241   C   T 0.2089080  1.900894e-03
    ## 25  rs35025323    10  97089991   T   C 0.1282610  1.612930e-03
    ## 26   rs4296031    11  42540012   G   A 0.7754470 -9.041992e-04
    ## 27   rs7957460    12  32945835   G   A 0.6604290 -1.253278e-03
    ## 28  rs12815451    12  51738706   T   C 0.1428310  3.482500e-03
    ## 29   rs1558801    12 109036359   A   C 0.4324470 -2.302030e-03
    ## 30   rs4772440    13 102712476   C   T 0.4284900  1.958013e-03
    ## 31   rs1742401    16   1971601   G   A 0.4508910 -2.855869e-03
    ## 32    rs734957    17   2612584   G   A 0.2633310  3.647018e-03
    ## 33  rs11656696    17  10033679   C   A 0.4084370 -2.213122e-03
    ## 34   rs7215205    17  29818258   T   C 0.6332610  9.654180e-04
    ## 35   rs2316766    17  43919068   G   T 0.1475710 -3.368087e-03
    ## 36 rs117826338    19   5904353   C   T 0.1421840  7.773398e-04
    ## 37   rs3816046    19  46118127   C   T 0.3054140 -1.059886e-03
    ## 38   rs5994871    22  22091244   C   T 0.7659570 -5.411170e-05
    ## 39   rs5756894    22  38450136   C   A 0.6064680  3.870874e-03
    ##              SE      Z         P       N              TRAIT
    ## 1  0.0008995530  2.605 9.193e-03 1232091 Smoking_Initiation
    ## 2  0.0009006903 -0.926 3.545e-01 1232091 Smoking_Initiation
    ## 3  0.0009015199 -0.179 8.581e-01 1232091 Smoking_Initiation
    ## 4  0.0009004998 -1.174 2.403e-01 1232091 Smoking_Initiation
    ## 5  0.0009005821  1.065 2.871e-01 1232091 Smoking_Initiation
    ## 6  0.0009012838 -0.324 7.456e-01 1232091 Smoking_Initiation
    ## 7  0.0009006809  0.938 3.484e-01 1232091 Smoking_Initiation
    ## 8  0.0008991668  5.961 2.503e-09 1227673 Smoking_Initiation
    ## 9  0.0009012113 -0.381 7.035e-01 1232091 Smoking_Initiation
    ## 10 0.0009014411  0.221 8.250e-01 1232091 Smoking_Initiation
    ## 11 0.0008998130  2.191 2.848e-02 1232091 Smoking_Initiation
    ## 12 0.0009008394  0.747 4.549e-01 1232091 Smoking_Initiation
    ## 13 0.0009010721  0.503 6.149e-01 1232091 Smoking_Initiation
    ## 14 0.0008993786  2.888 3.878e-03 1232091 Smoking_Initiation
    ## 15 0.0009004065 -1.303 1.927e-01 1232091 Smoking_Initiation
    ## 16 0.0008982659 -4.751 2.025e-06 1232091 Smoking_Initiation
    ## 17 0.0009005758  1.073 2.834e-01 1232091 Smoking_Initiation
    ## 18 0.0008987944 -3.857 1.149e-04 1232091 Smoking_Initiation
    ## 19 0.0012940648  0.032 9.744e-01  599289 Smoking_Initiation
    ## 20 0.0008999355  2.000 4.553e-02 1232091 Smoking_Initiation
    ## 21 0.0012898239  1.959 5.013e-02  599289 Smoking_Initiation
    ## 22 0.0008989122 -3.659 2.528e-04 1232091 Smoking_Initiation
    ## 23 0.0008999554  1.969 4.896e-02 1232091 Smoking_Initiation
    ## 24 0.0012904914  1.473 1.408e-01  599289 Smoking_Initiation
    ## 25 0.0009000714  1.792 7.316e-02 1232091 Smoking_Initiation
    ## 26 0.0012917131 -0.700 4.839e-01  599289 Smoking_Initiation
    ## 27 0.0009003431 -1.392 1.639e-01 1232091 Smoking_Initiation
    ## 28 0.0012888608  2.702 6.901e-03  599289 Smoking_Initiation
    ## 29 0.0008995813 -2.559 1.049e-02 1232091 Smoking_Initiation
    ## 30 0.0008998222  2.176 2.954e-02 1232091 Smoking_Initiation
    ## 31 0.0008992031 -3.176 1.493e-03 1232091 Smoking_Initiation
    ## 32 0.0012886989  2.830 4.659e-03  599289 Smoking_Initiation
    ## 33 0.0008996433 -2.460 1.390e-02 1232091 Smoking_Initiation
    ## 34 0.0009005767  1.072 2.839e-01 1232091 Smoking_Initiation
    ## 35 0.0012889731 -2.613 8.970e-03  599289 Smoking_Initiation
    ## 36 0.0009007413  0.863 3.881e-01 1232091 Smoking_Initiation
    ## 37 0.0009004978 -1.177 2.392e-01 1232091 Smoking_Initiation
    ## 38 0.0009018617 -0.060 9.522e-01 1232091 Smoking_Initiation
    ## 39 0.0009201032  4.207 2.585e-05 1174994 Smoking_Initiation

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

**Table 4:** Harmonized Cortical Thickness and Somking Initiation
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
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    T        0.0038  6.729270e-04
    ## 2                      A                    C        0.0040 -2.213122e-03
    ## 3                      A                    G       -0.0091  5.359933e-03
    ## 4                      T                    C        0.0035  1.992185e-04
    ## 5                      T                    C        0.0062  7.773398e-04
    ## 6                      A                    G        0.0039  2.343336e-03
    ## 7                      T                    C        0.0043  1.900894e-03
    ## 8                      C                    T        0.0070  3.482500e-03
    ## 9                      T                    C       -0.0076 -1.173230e-03
    ## 10                     C                    A       -0.0041 -2.302030e-03
    ## 11                     A                    G       -0.0038 -2.855869e-03
    ## 12                     T                    G       -0.0035  4.141007e-05
    ## 13                     T                    C        0.0046 -1.613721e-04
    ## 14                     T                    G        0.0069 -3.368087e-03
    ## 15                     C                    G        0.0044  1.971490e-03
    ## 16                     C                    G        0.0059 -3.466650e-03
    ## 17                     T                    C        0.0071 -3.289120e-03
    ## 18                     C                    A        0.0051 -4.267660e-03
    ## 19                     C                    T       -0.0054  1.612930e-03
    ## 20                     G                    A        0.0039  8.448390e-04
    ## 21                     T                    C       -0.0041 -1.059886e-03
    ## 22                     T                    C        0.0048  9.663179e-04
    ## 23                     A                    G       -0.0044 -9.041992e-04
    ## 24                     T                    C       -0.0036  1.958013e-03
    ## 25                     T                    C       -0.0050 -3.433615e-04
    ## 26                     C                    G       -0.0050 -8.340392e-04
    ## 27                     A                    C        0.0035  3.870874e-03
    ## 28                     T                    C        0.0042 -5.411170e-05
    ## 29                     A                    T        0.0045 -2.920159e-04
    ## 30                     A                    C        0.0041  1.799871e-03
    ## 31                     C                    T       -0.0036  9.654180e-04
    ## 32                     A                    G        0.0041  2.526765e-03
    ## 33                     A                    G        0.0066  3.647018e-03
    ## 34                     T                    C        0.0047  9.591199e-04
    ## 35                     G                    A        0.0040 -1.057190e-03
    ## 36                     C                    A        0.0044  4.532390e-04
    ## 37                     G                    A       -0.0036  2.597410e-03
    ## 38                     G                    A       -0.0059  1.772010e-03
    ## 39                     A                    G       -0.0037 -1.253278e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379   0.3435910  FALSE       FALSE     FALSE     KMXuk3
    ## 2        0.4288   0.4084370  FALSE       FALSE     FALSE     KMXuk3
    ## 3        0.0910   0.1408810  FALSE       FALSE     FALSE     KMXuk3
    ## 4        0.4778   0.4664220  FALSE       FALSE     FALSE     KMXuk3
    ## 5        0.1353   0.1421840  FALSE       FALSE     FALSE     KMXuk3
    ## 6        0.4610   0.4954640  FALSE       FALSE     FALSE     KMXuk3
    ## 7        0.2395   0.2089080  FALSE       FALSE     FALSE     KMXuk3
    ## 8        0.1519   0.1428310  FALSE       FALSE     FALSE     KMXuk3
    ## 9        0.0707   0.0473169  FALSE       FALSE     FALSE     KMXuk3
    ## 10       0.3852   0.4324470  FALSE       FALSE     FALSE     KMXuk3
    ## 11       0.3809   0.4508910  FALSE       FALSE     FALSE     KMXuk3
    ## 12       0.4771   0.4821750  FALSE       FALSE     FALSE     KMXuk3
    ## 13       0.1892   0.1728960  FALSE       FALSE     FALSE     KMXuk3
    ## 14       0.2098   0.1475710  FALSE       FALSE     FALSE     KMXuk3
    ## 15       0.2416   0.2218770  FALSE        TRUE     FALSE     KMXuk3
    ## 16       0.9107   0.8856880  FALSE        TRUE     FALSE     KMXuk3
    ## 17       0.0773   0.0469203  FALSE       FALSE     FALSE     KMXuk3
    ## 18       0.2422   0.2241190  FALSE       FALSE     FALSE     KMXuk3
    ## 19       0.1210   0.1282610  FALSE       FALSE     FALSE     KMXuk3
    ## 20       0.4299   0.4360660  FALSE       FALSE     FALSE     KMXuk3
    ## 21       0.3206   0.3054140  FALSE       FALSE     FALSE     KMXuk3
    ## 22       0.8108   0.7925280  FALSE       FALSE     FALSE     KMXuk3
    ## 23       0.8037   0.7754470  FALSE       FALSE     FALSE     KMXuk3
    ## 24       0.4224   0.4284900  FALSE       FALSE     FALSE     KMXuk3
    ## 25       0.4935   0.4492390  FALSE       FALSE     FALSE     KMXuk3
    ## 26       0.1594   0.1137930  FALSE        TRUE     FALSE     KMXuk3
    ## 27       0.6043   0.6064680  FALSE       FALSE     FALSE     KMXuk3
    ## 28       0.7171   0.7659570  FALSE       FALSE     FALSE     KMXuk3
    ## 29       0.3984   0.4217790  FALSE        TRUE      TRUE     KMXuk3
    ## 30       0.2334   0.2094840  FALSE       FALSE     FALSE     KMXuk3
    ## 31       0.6326   0.6332610  FALSE       FALSE     FALSE     KMXuk3
    ## 32       0.6272   0.5889940  FALSE       FALSE     FALSE     KMXuk3
    ## 33       0.2235   0.2633310  FALSE       FALSE     FALSE     KMXuk3
    ## 34       0.2386   0.2500000  FALSE       FALSE     FALSE     KMXuk3
    ## 35       0.3084   0.3432840  FALSE       FALSE     FALSE     KMXuk3
    ## 36       0.2465   0.2721680  FALSE       FALSE     FALSE     KMXuk3
    ## 37       0.4028   0.3111070  FALSE       FALSE     FALSE     KMXuk3
    ## 38       0.1616   0.1132660  FALSE       FALSE     FALSE     KMXuk3
    ## 39       0.6732   0.6604290  FALSE       FALSE     FALSE     KMXuk3
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1            4     2405007 0.0009008394     0.747    4.549e-01
    ## 2           17    10033679 0.0008996433    -2.460    1.390e-02
    ## 3            2    98275354 0.0008991668     5.961    2.503e-09
    ## 4            3    64395184 0.0009014411     0.221    8.250e-01
    ## 5           19     5904353 0.0009007413     0.863    3.881e-01
    ## 6            1    40012184 0.0008995530     2.605    9.193e-03
    ## 7            8   144627241 0.0012904914     1.473    1.408e-01
    ## 8           12    51738706 0.0012888608     2.702    6.901e-03
    ## 9            4   103188709 0.0009004065    -1.303    1.927e-01
    ## 10          12   109036359 0.0008995813    -2.559    1.049e-02
    ## 11          16     1971601 0.0008992031    -3.176    1.493e-03
    ## 12           7   103761274 0.0012940648     0.032    9.744e-01
    ## 13           1    58561329 0.0009015199    -0.179    8.581e-01
    ## 14          17    43919068 0.0012889731    -2.613    8.970e-03
    ## 15           3   183939044 0.0008998130     2.191    2.848e-02
    ## 16           6    52951185 0.0008987944    -3.857    1.149e-04
    ## 17           8    26227484 0.0008989122    -3.659    2.528e-04
    ## 18           4   121643239 0.0008982659    -4.751    2.025e-06
    ## 19          10    97089991 0.0009000714     1.792    7.316e-02
    ## 20           2    37150793 0.0009006809     0.938    3.484e-01
    ## 21          19    46118127 0.0009004978    -1.177    2.392e-01
    ## 22           5    55828636 0.0009005758     1.073    2.834e-01
    ## 23          11    42540012 0.0012917131    -0.700    4.839e-01
    ## 24          13   102712476 0.0008998222     2.176    2.954e-02
    ## 25           3    39489651 0.0009012113    -0.381    7.035e-01
    ## 26           1    57595583 0.0009006903    -0.926    3.545e-01
    ## 27          22    38450136 0.0009201032     4.207    2.585e-05
    ## 28          22    22091244 0.0009018617    -0.060    9.522e-01
    ## 29           2    27149258 0.0009012838    -0.324    7.456e-01
    ## 30           7   113901132 0.0008999355     2.000    4.553e-02
    ## 31          17    29818258 0.0009005767     1.072    2.839e-01
    ## 32           8     8219182 0.0012898239     1.959    5.013e-02
    ## 33          17     2612584 0.0012886989     2.830    4.659e-03
    ## 34           1   196929310 0.0009005821     1.065    2.871e-01
    ## 35           1    98554409 0.0009004998    -1.174    2.403e-01
    ## 36           4    39688694 0.0009010721     0.503    6.149e-01
    ## 37           4    46999235 0.0008993786     2.888    3.878e-03
    ## 38           8   110585288 0.0008999554     1.969    4.896e-02
    ## 39          12    32945835 0.0009003431    -1.392    1.639e-01
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1             1232091 Liu2019smkint23andMe            TRUE
    ## 2             1232091 Liu2019smkint23andMe            TRUE
    ## 3             1227673 Liu2019smkint23andMe            TRUE
    ## 4             1232091 Liu2019smkint23andMe            TRUE
    ## 5             1232091 Liu2019smkint23andMe            TRUE
    ## 6             1232091 Liu2019smkint23andMe            TRUE
    ## 7              599289 Liu2019smkint23andMe            TRUE
    ## 8              599289 Liu2019smkint23andMe            TRUE
    ## 9             1232091 Liu2019smkint23andMe            TRUE
    ## 10            1232091 Liu2019smkint23andMe            TRUE
    ## 11            1232091 Liu2019smkint23andMe            TRUE
    ## 12             599289 Liu2019smkint23andMe            TRUE
    ## 13            1232091 Liu2019smkint23andMe            TRUE
    ## 14             599289 Liu2019smkint23andMe            TRUE
    ## 15            1232091 Liu2019smkint23andMe            TRUE
    ## 16            1232091 Liu2019smkint23andMe            TRUE
    ## 17            1232091 Liu2019smkint23andMe            TRUE
    ## 18            1232091 Liu2019smkint23andMe            TRUE
    ## 19            1232091 Liu2019smkint23andMe            TRUE
    ## 20            1232091 Liu2019smkint23andMe            TRUE
    ## 21            1232091 Liu2019smkint23andMe            TRUE
    ## 22            1232091 Liu2019smkint23andMe            TRUE
    ## 23             599289 Liu2019smkint23andMe            TRUE
    ## 24            1232091 Liu2019smkint23andMe            TRUE
    ## 25            1232091 Liu2019smkint23andMe            TRUE
    ## 26            1232091 Liu2019smkint23andMe            TRUE
    ## 27            1174994 Liu2019smkint23andMe            TRUE
    ## 28            1232091 Liu2019smkint23andMe            TRUE
    ## 29            1232091 Liu2019smkint23andMe            TRUE
    ## 30            1232091 Liu2019smkint23andMe            TRUE
    ## 31            1232091 Liu2019smkint23andMe            TRUE
    ## 32             599289 Liu2019smkint23andMe            TRUE
    ## 33             599289 Liu2019smkint23andMe            TRUE
    ## 34            1232091 Liu2019smkint23andMe            TRUE
    ## 35            1232091 Liu2019smkint23andMe            TRUE
    ## 36            1232091 Liu2019smkint23andMe            TRUE
    ## 37            1232091 Liu2019smkint23andMe            TRUE
    ## 38            1232091 Liu2019smkint23andMe            TRUE
    ## 39            1232091 Liu2019smkint23andMe            TRUE
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
    ## 1              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 2              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 3              reported      9KiZS8      2    TRUE          FALSE 5e-06
    ## 4              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 5              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 6              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 7              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 8              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 9              reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 10             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 11             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 12             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 13             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 14             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 15             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 16             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 17             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 18             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 19             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 20             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 21             reported      9KiZS8      2    TRUE          FALSE 5e-06
    ## 22             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 23             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 24             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 25             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 26             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 27             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 28             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 29             reported      9KiZS8      2   FALSE           TRUE 5e-06
    ## 30             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 31             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 32             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 33             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 34             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 35             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 36             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 37             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 38             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ## 39             reported      9KiZS8      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.380187e-07             1          TRUE
    ## 2     5.231952e-06        0.3528          TRUE
    ## 3               NA          <NA>            NA
    ## 4     3.246166e-08             1          TRUE
    ## 5     6.059229e-07             1          TRUE
    ## 6     5.603282e-06         0.288          TRUE
    ## 7     3.597586e-06             1          TRUE
    ## 8     1.261850e-05        0.1584          TRUE
    ## 9     1.487924e-06             1          TRUE
    ## 10    5.423196e-06        0.4104          TRUE
    ## 11    8.340400e-06         0.036         FALSE
    ## 12    4.084911e-09             1          TRUE
    ## 13    3.834348e-08             1          TRUE
    ## 14    1.239727e-05        0.2736          TRUE
    ## 15    3.982572e-06        0.9648          TRUE
    ## 16    1.351050e-05       <0.0072         FALSE
    ## 17    1.278709e-05       <0.0072         FALSE
    ## 18    1.985259e-05       <0.0072         FALSE
    ## 19    2.937216e-06             1          TRUE
    ## 20    7.011929e-07             1          TRUE
    ## 21              NA          <NA>            NA
    ## 22    9.330399e-07             1          TRUE
    ## 23    7.880625e-07             1          TRUE
    ## 24    4.062886e-06        0.7992          TRUE
    ## 25    1.041498e-07             1          TRUE
    ## 26    6.895573e-07             1          TRUE
    ## 27    1.529044e-05       <0.0072         FALSE
    ## 28    6.797610e-09             1          TRUE
    ## 29              NA          <NA>            NA
    ## 30    3.294222e-06             1          TRUE
    ## 31    1.010997e-06             1          TRUE
    ## 32    6.394502e-06             1          TRUE
    ## 33    1.377307e-05        0.1224          TRUE
    ## 34    9.175805e-07             1          TRUE
    ## 35    1.223275e-06             1          TRUE
    ## 36    1.908780e-07             1          TRUE
    ## 37    7.109741e-06        0.1368          TRUE
    ## 38    3.600975e-06             1          TRUE
    ## 39    1.569999e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Somking
Initiation GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs11692435           2    98275354     3.179e-10    2.503e-09
    ## 2  rs3816046          19    46118127     8.464e-07    2.392e-01

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
    ## 1            FALSE   0.02594306 24.91170  0.05 0.00225353 0.05025818
    ## 2             TRUE   0.02240779 24.90078  0.05 0.32750041 0.08828293

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
Cortical Thickness on Somking Initiation. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Somking
Initiation

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 2      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 3      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 4      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   36  0.006284488 0.03294745
    ## 2                           Weighted median   36  0.120003608 0.06004255
    ## 3                             Weighted mode   36  0.149915161 0.09820110
    ## 4                                  MR Egger   36 -0.394680255 0.30668936
    ##         pval
    ## 1 0.84872711
    ## 2 0.04564703
    ## 3 0.13584425
    ## 4 0.20682016

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Somking Initiation and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 2      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 159.0892   34 4.357607e-18
    ## 2 Inverse variance weighted 167.5437   35 3.240104e-19

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkint23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkint23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1     0.001979941 0.001472956 0.1877862

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome            exposure    pt
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers  RSSobs   pval
    ## 1            FALSE          5 178.584 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 2      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 3      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 4      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)   31 0.07662481 0.03648650
    ## 2                           Weighted median   31 0.13779948 0.06117002
    ## 3                             Weighted mode   31 0.14629539 0.09549431
    ## 4                                  MR Egger   31 0.18805859 0.27767800
    ##         pval
    ## 1 0.03572122
    ## 2 0.02427624
    ## 3 0.13600590
    ## 4 0.50361206

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ## 2      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 84.05577   29 2.907745e-07
    ## 2 Inverse variance weighted 84.54715   30 4.297295e-07

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      9KiZS8     KMXuk3 Liu2019smkint23andMe Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1   -0.0005389494 0.001308954 0.6835571

<br>
