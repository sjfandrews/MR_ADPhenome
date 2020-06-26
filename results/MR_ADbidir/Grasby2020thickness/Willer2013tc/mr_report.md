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

### Outcome: Total cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in Total
cholesterol

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1    rs1180331    NA        NA <NA> <NA>        NA      NA     NA
    ## 2     rs556204     1  57595583    G    C 0.1137930 -0.0011 0.0074
    ## 3    rs2002058     1  58561329    C    T 0.1728960  0.0040 0.0046
    ## 4    rs7549825     1  98554409    A    G 0.3432840 -0.0151 0.0055
    ## 5    rs7531555    NA        NA <NA> <NA>        NA      NA     NA
    ## 6    rs6738528     2  27149258    T    A 0.4217790  0.0042 0.0053
    ## 7    rs3770776    NA        NA <NA> <NA>        NA      NA     NA
    ## 8   rs11692435     2  98275354    G    A 0.1408810 -0.0018 0.0087
    ## 9     rs533577     3  39489651    C    T 0.4492390  0.0023 0.0051
    ## 10  rs11708974    NA        NA <NA> <NA>        NA      NA     NA
    ## 11   rs2636563    NA        NA <NA> <NA>        NA      NA     NA
    ## 12  rs10016059    NA        NA <NA> <NA>        NA      NA     NA
    ## 13   rs7657284     4  39688694    A    C 0.2721680 -0.0078 0.0058
    ## 14   rs7683042     4  46999235    A    G 0.3111070 -0.0009 0.0055
    ## 15  rs13107325     4 103188709    C    T 0.0473169 -0.0328 0.0081
    ## 16  rs35021943    NA        NA <NA> <NA>        NA      NA     NA
    ## 17     rs40565     5  55828636    C    T 0.7925280 -0.0013 0.0066
    ## 18   rs2744449    NA        NA <NA> <NA>        NA      NA     NA
    ## 19    rs194833    NA        NA <NA> <NA>        NA      NA     NA
    ## 20   rs6961970    NA        NA <NA> <NA>        NA      NA     NA
    ## 21    rs724265    NA        NA <NA> <NA>        NA      NA     NA
    ## 22   rs3200031    NA        NA <NA> <NA>        NA      NA     NA
    ## 23   rs7824177     8 110585288    A    G 0.1132660 -0.0102 0.0069
    ## 24  rs12543282    NA        NA <NA> <NA>        NA      NA     NA
    ## 25  rs35025323    NA        NA <NA> <NA>        NA      NA     NA
    ## 26   rs4296031    NA        NA <NA> <NA>        NA      NA     NA
    ## 27   rs7957460    NA        NA <NA> <NA>        NA      NA     NA
    ## 28  rs12815451    NA        NA <NA> <NA>        NA      NA     NA
    ## 29   rs1558801    NA        NA <NA> <NA>        NA      NA     NA
    ## 30   rs4772440    13 102712476    C    T 0.4284900 -0.0048 0.0053
    ## 31   rs1742401    NA        NA <NA> <NA>        NA      NA     NA
    ## 32    rs734957    NA        NA <NA> <NA>        NA      NA     NA
    ## 33  rs11656696    17  10033679    C    A 0.4084370 -0.0030 0.0058
    ## 34   rs7215205    NA        NA <NA> <NA>        NA      NA     NA
    ## 35   rs2316766    NA        NA <NA> <NA>        NA      NA     NA
    ## 36 rs117826338    NA        NA <NA> <NA>        NA      NA     NA
    ## 37   rs3816046    19  46118127    C    T 0.3054140 -0.0146 0.0066
    ## 38   rs5994871    NA        NA <NA> <NA>        NA      NA     NA
    ## 39   rs5756894    NA        NA <NA> <NA>        NA      NA     NA
    ##             Z         P        N             TRAIT
    ## 1          NA        NA       NA              <NA>
    ## 2  -0.1486490 0.8320000  94494.0 Total_Cholesterol
    ## 3   0.8695652 0.4161000 187189.0 Total_Cholesterol
    ## 4  -2.7454500 0.0269400  94380.0 Total_Cholesterol
    ## 5          NA        NA       NA              <NA>
    ## 6   0.7924528 0.1880000  94595.0 Total_Cholesterol
    ## 7          NA        NA       NA              <NA>
    ## 8  -0.2068970 0.9082000  94595.0 Total_Cholesterol
    ## 9   0.4509804 0.6001000  94595.0 Total_Cholesterol
    ## 10         NA        NA       NA              <NA>
    ## 11         NA        NA       NA              <NA>
    ## 12         NA        NA       NA              <NA>
    ## 13 -1.3448300 0.2898000  94595.0 Total_Cholesterol
    ## 14 -0.1636360 0.7952000  94595.0 Total_Cholesterol
    ## 15 -4.0493800 0.0001158 179512.1 Total_Cholesterol
    ## 16         NA        NA       NA              <NA>
    ## 17 -0.1969700 0.9860000  94526.0 Total_Cholesterol
    ## 18         NA        NA       NA              <NA>
    ## 19         NA        NA       NA              <NA>
    ## 20         NA        NA       NA              <NA>
    ## 21         NA        NA       NA              <NA>
    ## 22         NA        NA       NA              <NA>
    ## 23 -1.4782600 0.3370000  94336.0 Total_Cholesterol
    ## 24         NA        NA       NA              <NA>
    ## 25         NA        NA       NA              <NA>
    ## 26         NA        NA       NA              <NA>
    ## 27         NA        NA       NA              <NA>
    ## 28         NA        NA       NA              <NA>
    ## 29         NA        NA       NA              <NA>
    ## 30 -0.9056600 0.4525000  93623.0 Total_Cholesterol
    ## 31         NA        NA       NA              <NA>
    ## 32         NA        NA       NA              <NA>
    ## 33 -0.5172410 0.9218000  93067.0 Total_Cholesterol
    ## 34         NA        NA       NA              <NA>
    ## 35         NA        NA       NA              <NA>
    ## 36         NA        NA       NA              <NA>
    ## 37 -2.2121200 0.0454700  77530.0 Total_Cholesterol
    ## 38         NA        NA       NA              <NA>
    ## 39         NA        NA       NA              <NA>

<br>

**Table 3:** Proxy SNPs for Total cholesterol

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1    rs7531555  rs4085749 1.000000 1.000000 TT/CC  NA     1 196920148
    ## 2    rs3770776   rs888083 0.856718 0.929358 GT/AC  NA     2  37117073
    ## 3    rs2636563 rs13315366 0.831668 0.993562 CT/GC  NA     3 183940200
    ## 4   rs10016059  rs4257708 0.826687 0.990109 CA/TG  NA     4   2385384
    ## 5   rs35021943 rs11721741 0.926024 0.970667 CG/AA  NA     4 121629986
    ## 6    rs2744449   rs222451 0.988497 1.000000 GC/CG  NA     6  52909609
    ## 7     rs194833   rs194834 0.996031 1.000000 GG/TA  NA     7 103762313
    ## 8     rs724265  rs4840932 0.925904 0.995533 GG/AT  NA     8   8209191
    ## 9    rs3200031 rs17055142 1.000000 1.000000 TT/CC  NA     8  26201601
    ## 10  rs12543282  rs7837369 0.871553 0.952496 TT/CG  NA     8 144605598
    ## 11  rs35025323  rs7085635 1.000000 1.000000 CT/TC  NA    10  97087522
    ## 12   rs4296031  rs6485318 0.920459 1.000000 GG/AA  NA    11  42511130
    ## 13   rs7957460    rs12612 1.000000 1.000000 GG/AC  NA    12  32945107
    ## 14   rs1558801  rs7300215 0.811396 0.952704 CA/AG  NA    12 109089394
    ## 15   rs1742401  rs2974863 0.934600 0.982930 AG/GC  NA    16   1963152
    ## 16   rs7215205  rs2097719 0.830986 0.935708 TG/CA  NA    17  29827429
    ## 17   rs2316766 rs17687534 0.989115 1.000000 TC/GT  NA    17  43749579
    ## 18   rs5756894  rs4821733 0.899090 1.000000 CG/AA  NA    22  38449394
    ## 19   rs1180331       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20  rs11708974       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21   rs6961970       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22  rs12815451       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23    rs734957       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24 rs117826338       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25   rs5994871       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy       AF    BETA     SE           Z         P     N
    ## 1          C         T 0.249818  0.0128 0.0060  2.13333333 0.1041000 94595
    ## 2          C         T 0.424528 -0.0090 0.0051 -1.76471000 0.2140000 94595
    ## 3          C         T 0.205666  0.0029 0.0089  0.32584270 0.6754000 94595
    ## 4          G         A 0.428780 -0.0042 0.0052 -0.80769200 0.4378000 94593
    ## 5          A         G 0.224764 -0.0007 0.0059 -0.11864400 0.5696000 94595
    ## 6          C         G 0.885118 -0.0050 0.0090 -0.55555600 0.6740000 91525
    ## 7          G         A 0.482583 -0.0033 0.0051 -0.64705900 0.4474000 94595
    ## 8          G         T 0.574135  0.0002 0.0053  0.03773585 0.8087000 94595
    ## 9          C         T 0.046790  0.0180 0.0099  1.81818182 0.1380000 89529
    ## 10         G         T 0.214130  0.0069 0.0061  1.13114754 0.2005000 94595
    ## 11         C         T 0.127137 -0.0007 0.0078 -0.08974360 0.9420000 94595
    ## 12         G         A 0.787785  0.0088 0.0067  1.31343284 0.1931000 94595
    ## 13         G         C 0.660196  0.0078 0.0055  1.41818182 0.3324000 94595
    ## 14         G         A 0.399416  0.0169 0.0055  3.07272727 0.0019370 94594
    ## 15         C         G 0.434838 -0.0172 0.0053 -3.24528000 0.0008216 93067
    ## 16         G         A 0.608000  0.0092 0.0056  1.64285714 0.0594900 93067
    ## 17         T         C 0.147123  0.0075 0.0064  1.17187500 0.1361000 91559
    ## 18         G         A 0.571869  0.0049 0.0052  0.94230769 0.2872000 92954
    ## 19      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 20      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 21      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 22      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 23      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 24      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ## 25      <NA>      <NA>       NA      NA     NA          NA        NA    NA
    ##                TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1  Total_Cholesterol    T         T    C         C    T    C          TRUE
    ## 2  Total_Cholesterol    G         T    A         C    G    A          TRUE
    ## 3  Total_Cholesterol    C         T    G         C    C    G          TRUE
    ## 4  Total_Cholesterol    C         A    T         G    C    T          TRUE
    ## 5  Total_Cholesterol    C         G    A         A    C    A          TRUE
    ## 6  Total_Cholesterol    G         C    C         G    C    G          TRUE
    ## 7  Total_Cholesterol    G         G    T         A    T    G          TRUE
    ## 8  Total_Cholesterol    G         G    A         T    A    G          TRUE
    ## 9  Total_Cholesterol    T         T    C         C    T    C          TRUE
    ## 10 Total_Cholesterol    T         T    C         G    T    C          TRUE
    ## 11 Total_Cholesterol    C         T    T         C    C    T          TRUE
    ## 12 Total_Cholesterol    G         G    A         A    A    G          TRUE
    ## 13 Total_Cholesterol    G         G    A         C    A    G          TRUE
    ## 14 Total_Cholesterol    C         A    A         G    C    A          TRUE
    ## 15 Total_Cholesterol    A         G    G         C    A    G          TRUE
    ## 16 Total_Cholesterol    T         G    C         A    C    T          TRUE
    ## 17 Total_Cholesterol    T         C    G         T    T    G          TRUE
    ## 18 Total_Cholesterol    C         G    A         A    A    C          TRUE
    ## 19              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 20              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 21              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 22              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 23              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 24              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 25              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Total cholesterol
datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10016059                      C                     T
    ## 2  rs11656696                      A                     C
    ## 3  rs11692435                      A                     G
    ## 4  rs12543282                      T                     C
    ## 5  rs13107325                      T                     C
    ## 6   rs1558801                      C                     A
    ## 7   rs1742401                      A                     G
    ## 8    rs194833                      T                     G
    ## 9   rs2002058                      T                     C
    ## 10  rs2316766                      T                     G
    ## 11  rs2636563                      C                     G
    ## 12  rs2744449                      C                     G
    ## 13  rs3200031                      T                     C
    ## 14 rs35021943                      C                     A
    ## 15 rs35025323                      C                     T
    ## 16  rs3770776                      G                     A
    ## 17  rs3816046                      T                     C
    ## 18    rs40565                      T                     C
    ## 19  rs4296031                      A                     G
    ## 20  rs4772440                      T                     C
    ## 21   rs533577                      T                     C
    ## 22   rs556204                      C                     G
    ## 23  rs5756894                      A                     C
    ## 24  rs6738528                      A                     T
    ## 25  rs7215205                      C                     T
    ## 26   rs724265                      A                     G
    ## 27  rs7531555                      T                     C
    ## 28  rs7549825                      G                     A
    ## 29  rs7657284                      C                     A
    ## 30  rs7683042                      G                     A
    ## 31  rs7824177                      G                     A
    ## 32  rs7957460                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T        0.0038      -0.0042
    ## 2                      A                    C        0.0040      -0.0030
    ## 3                      A                    G       -0.0091      -0.0018
    ## 4                      T                    C        0.0043       0.0069
    ## 5                      T                    C       -0.0076      -0.0328
    ## 6                      C                    A       -0.0041       0.0169
    ## 7                      A                    G       -0.0038      -0.0172
    ## 8                      T                    G       -0.0035      -0.0033
    ## 9                      T                    C        0.0046       0.0040
    ## 10                     T                    G        0.0069       0.0075
    ## 11                     C                    G        0.0044       0.0029
    ## 12                     C                    G        0.0059      -0.0050
    ## 13                     T                    C        0.0071       0.0180
    ## 14                     C                    A        0.0051      -0.0007
    ## 15                     C                    T       -0.0054      -0.0007
    ## 16                     G                    A        0.0039      -0.0090
    ## 17                     T                    C       -0.0041      -0.0146
    ## 18                     T                    C        0.0048      -0.0013
    ## 19                     A                    G       -0.0044       0.0088
    ## 20                     T                    C       -0.0036      -0.0048
    ## 21                     T                    C       -0.0050       0.0023
    ## 22                     C                    G       -0.0050      -0.0011
    ## 23                     A                    C        0.0035       0.0049
    ## 24                     A                    T        0.0045       0.0042
    ## 25                     C                    T       -0.0036       0.0092
    ## 26                     A                    G        0.0041       0.0002
    ## 27                     T                    C        0.0047       0.0128
    ## 28                     G                    A        0.0040      -0.0151
    ## 29                     C                    A        0.0044      -0.0078
    ## 30                     G                    A       -0.0036      -0.0009
    ## 31                     G                    A       -0.0059      -0.0102
    ## 32                     A                    G       -0.0037       0.0078
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379   0.4287800  FALSE       FALSE     FALSE     afMIzu
    ## 2        0.4288   0.4084370  FALSE       FALSE     FALSE     afMIzu
    ## 3        0.0910   0.1408810  FALSE       FALSE     FALSE     afMIzu
    ## 4        0.2395   0.2141300  FALSE       FALSE     FALSE     afMIzu
    ## 5        0.0707   0.0473169  FALSE       FALSE     FALSE     afMIzu
    ## 6        0.3852   0.3994160  FALSE       FALSE     FALSE     afMIzu
    ## 7        0.3809   0.4348380  FALSE       FALSE     FALSE     afMIzu
    ## 8        0.4771   0.4825830  FALSE       FALSE     FALSE     afMIzu
    ## 9        0.1892   0.1728960  FALSE       FALSE     FALSE     afMIzu
    ## 10       0.2098   0.1471230  FALSE       FALSE     FALSE     afMIzu
    ## 11       0.2416   0.2056660  FALSE        TRUE     FALSE     afMIzu
    ## 12       0.9107   0.8851180  FALSE        TRUE     FALSE     afMIzu
    ## 13       0.0773   0.0467900  FALSE       FALSE     FALSE     afMIzu
    ## 14       0.2422   0.2247640  FALSE       FALSE     FALSE     afMIzu
    ## 15       0.1210   0.1271370  FALSE       FALSE     FALSE     afMIzu
    ## 16       0.4299   0.4245280  FALSE       FALSE     FALSE     afMIzu
    ## 17       0.3206   0.3054140  FALSE       FALSE     FALSE     afMIzu
    ## 18       0.8108   0.7925280  FALSE       FALSE     FALSE     afMIzu
    ## 19       0.8037   0.7877850  FALSE       FALSE     FALSE     afMIzu
    ## 20       0.4224   0.4284900  FALSE       FALSE     FALSE     afMIzu
    ## 21       0.4935   0.4492390  FALSE       FALSE     FALSE     afMIzu
    ## 22       0.1594   0.1137930  FALSE        TRUE     FALSE     afMIzu
    ## 23       0.6043   0.5718690  FALSE       FALSE     FALSE     afMIzu
    ## 24       0.3984   0.4217790  FALSE        TRUE      TRUE     afMIzu
    ## 25       0.6326   0.6080000  FALSE       FALSE     FALSE     afMIzu
    ## 26       0.6272   0.5741350  FALSE       FALSE     FALSE     afMIzu
    ## 27       0.2386   0.2498180  FALSE       FALSE     FALSE     afMIzu
    ## 28       0.3084   0.3432840  FALSE       FALSE     FALSE     afMIzu
    ## 29       0.2465   0.2721680  FALSE       FALSE     FALSE     afMIzu
    ## 30       0.4028   0.3111070  FALSE       FALSE     FALSE     afMIzu
    ## 31       0.1616   0.1132660  FALSE       FALSE     FALSE     afMIzu
    ## 32       0.6732   0.6601960  FALSE       FALSE     FALSE     afMIzu
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            4     2385384     0.0052 -0.80769200    0.4378000
    ## 2           17    10033679     0.0058 -0.51724100    0.9218000
    ## 3            2    98275354     0.0087 -0.20689700    0.9082000
    ## 4            8   144605598     0.0061  1.13114754    0.2005000
    ## 5            4   103188709     0.0081 -4.04938000    0.0001158
    ## 6           12   109089394     0.0055  3.07272727    0.0019370
    ## 7           16     1963152     0.0053 -3.24528000    0.0008216
    ## 8            7   103762313     0.0051 -0.64705900    0.4474000
    ## 9            1    58561329     0.0046  0.86956522    0.4161000
    ## 10          17    43749579     0.0064  1.17187500    0.1361000
    ## 11           3   183940200     0.0089  0.32584270    0.6754000
    ## 12           6    52909609     0.0090 -0.55555600    0.6740000
    ## 13           8    26201601     0.0099  1.81818182    0.1380000
    ## 14           4   121629986     0.0059 -0.11864400    0.5696000
    ## 15          10    97087522     0.0078 -0.08974360    0.9420000
    ## 16           2    37117073     0.0051 -1.76471000    0.2140000
    ## 17          19    46118127     0.0066 -2.21212000    0.0454700
    ## 18           5    55828636     0.0066 -0.19697000    0.9860000
    ## 19          11    42511130     0.0067  1.31343284    0.1931000
    ## 20          13   102712476     0.0053 -0.90566000    0.4525000
    ## 21           3    39489651     0.0051  0.45098039    0.6001000
    ## 22           1    57595583     0.0074 -0.14864900    0.8320000
    ## 23          22    38449394     0.0052  0.94230769    0.2872000
    ## 24           2    27149258     0.0053  0.79245283    0.1880000
    ## 25          17    29827429     0.0056  1.64285714    0.0594900
    ## 26           8     8209191     0.0053  0.03773585    0.8087000
    ## 27           1   196920148     0.0060  2.13333333    0.1041000
    ## 28           1    98554409     0.0055 -2.74545000    0.0269400
    ## 29           4    39688694     0.0058 -1.34483000    0.2898000
    ## 30           4    46999235     0.0055 -0.16363600    0.7952000
    ## 31           8   110585288     0.0069 -1.47826000    0.3370000
    ## 32          12    32945107     0.0055  1.41818182    0.3324000
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1             94593.0 Willer2013tc            TRUE            reported
    ## 2             93067.0 Willer2013tc            TRUE            reported
    ## 3             94595.0 Willer2013tc            TRUE            reported
    ## 4             94595.0 Willer2013tc            TRUE            reported
    ## 5            179512.1 Willer2013tc            TRUE            reported
    ## 6             94594.0 Willer2013tc            TRUE            reported
    ## 7             93067.0 Willer2013tc            TRUE            reported
    ## 8             94595.0 Willer2013tc            TRUE            reported
    ## 9            187189.0 Willer2013tc            TRUE            reported
    ## 10            91559.0 Willer2013tc            TRUE            reported
    ## 11            94595.0 Willer2013tc            TRUE            reported
    ## 12            91525.0 Willer2013tc            TRUE            reported
    ## 13            89529.0 Willer2013tc            TRUE            reported
    ## 14            94595.0 Willer2013tc            TRUE            reported
    ## 15            94595.0 Willer2013tc            TRUE            reported
    ## 16            94595.0 Willer2013tc            TRUE            reported
    ## 17            77530.0 Willer2013tc            TRUE            reported
    ## 18            94526.0 Willer2013tc            TRUE            reported
    ## 19            94595.0 Willer2013tc            TRUE            reported
    ## 20            93623.0 Willer2013tc            TRUE            reported
    ## 21            94595.0 Willer2013tc            TRUE            reported
    ## 22            94494.0 Willer2013tc            TRUE            reported
    ## 23            92954.0 Willer2013tc            TRUE            reported
    ## 24            94595.0 Willer2013tc            TRUE            reported
    ## 25            93067.0 Willer2013tc            TRUE            reported
    ## 26            94595.0 Willer2013tc            TRUE            reported
    ## 27            94595.0 Willer2013tc            TRUE            reported
    ## 28            94380.0 Willer2013tc            TRUE            reported
    ## 29            94595.0 Willer2013tc            TRUE            reported
    ## 30            94595.0 Willer2013tc            TRUE            reported
    ## 31            94336.0 Willer2013tc            TRUE            reported
    ## 32            94595.0 Willer2013tc            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1           TRUE         rs10016059         rs4257708                 C
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4           TRUE         rs12543282         rs7837369                 T
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6           TRUE          rs1558801         rs7300215                 C
    ## 7           TRUE          rs1742401         rs2974863                 A
    ## 8           TRUE           rs194833          rs194834                 T
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10          TRUE          rs2316766        rs17687534                 T
    ## 11          TRUE          rs2636563        rs13315366                 C
    ## 12          TRUE          rs2744449          rs222451                 C
    ## 13          TRUE          rs3200031        rs17055142                 T
    ## 14          TRUE         rs35021943        rs11721741                 C
    ## 15          TRUE         rs35025323         rs7085635                 C
    ## 16          TRUE          rs3770776          rs888083                 G
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19          TRUE          rs4296031         rs6485318                 A
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23          TRUE          rs5756894         rs4821733                 A
    ## 24            NA               <NA>              <NA>              <NA>
    ## 25          TRUE          rs7215205         rs2097719                 C
    ## 26          TRUE           rs724265         rs4840932                 A
    ## 27          TRUE          rs7531555         rs4085749                 T
    ## 28            NA               <NA>              <NA>              <NA>
    ## 29            NA               <NA>              <NA>              <NA>
    ## 30            NA               <NA>              <NA>              <NA>
    ## 31            NA               <NA>              <NA>              <NA>
    ## 32          TRUE          rs7957460           rs12612                 A
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                  T                A                G            4
    ## 2               <NA>             <NA>             <NA>           17
    ## 3               <NA>             <NA>             <NA>            2
    ## 4                  C                T                G            8
    ## 5               <NA>             <NA>             <NA>            4
    ## 6                  A                A                G           12
    ## 7                  G                G                C           16
    ## 8                  G                A                G            7
    ## 9               <NA>             <NA>             <NA>            1
    ## 10                 G                C                T           17
    ## 11                 G                T                C            3
    ## 12                 G                G                C            6
    ## 13                 C                T                C            8
    ## 14                 A                G                A            4
    ## 15                 T                T                C           10
    ## 16                 A                T                C            2
    ## 17              <NA>             <NA>             <NA>           19
    ## 18              <NA>             <NA>             <NA>            5
    ## 19                 G                A                G           11
    ## 20              <NA>             <NA>             <NA>           13
    ## 21              <NA>             <NA>             <NA>            3
    ## 22              <NA>             <NA>             <NA>            1
    ## 23                 C                A                G           22
    ## 24              <NA>             <NA>             <NA>            2
    ## 25                 T                A                G           17
    ## 26                 G                T                G            8
    ## 27                 C                T                C            1
    ## 28              <NA>             <NA>             <NA>            1
    ## 29              <NA>             <NA>             <NA>            4
    ## 30              <NA>             <NA>             <NA>            4
    ## 31              <NA>             <NA>             <NA>            8
    ## 32                 G                C                G           12
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1       2405007      0.0008   4.750000     4.994e-06               32441
    ## 2      10033679      0.0008   5.000000     2.117e-07               32512
    ## 3      98275354      0.0015  -6.066667     3.179e-10               29128
    ## 4     144627241      0.0009   4.777778     4.087e-06               32764
    ## 5     103188709      0.0015  -5.066667     5.054e-07               32872
    ## 6     109036359      0.0009  -4.555560     2.204e-06               30860
    ## 7       1971601      0.0008  -4.750000     7.050e-07               32764
    ## 8     103761274      0.0008  -4.375000     3.614e-06               32486
    ## 9      58561329      0.0010   4.600000     1.289e-06               33089
    ## 10     43919068      0.0011   6.272727     2.903e-10               26063
    ## 11    183939044      0.0009   4.888889     2.299e-06               31046
    ## 12     52951185      0.0013   4.538462     4.452e-06               33281
    ## 13     26227484      0.0014   5.071429     5.526e-07               32872
    ## 14    121643239      0.0009   5.666670     2.979e-09               32872
    ## 15     97089991      0.0011  -4.909090     1.762e-06               32872
    ## 16     37150793      0.0008   4.875000     3.170e-07               32872
    ## 17     46118127      0.0008  -5.125000     8.464e-07               30344
    ## 18     55828636      0.0010   4.800000     5.911e-07               32249
    ## 19     42540012      0.0010  -4.400000     3.779e-06               32486
    ## 20    102712476      0.0008  -4.500000     3.102e-06               32872
    ## 21     39489651      0.0008  -6.250000     8.426e-11               32872
    ## 22     57595583      0.0010  -5.000000     1.417e-06               32441
    ## 23     38450136      0.0008   4.375000     4.741e-06               32872
    ## 24     27149258      0.0008   5.625000     7.324e-09               32872
    ## 25     29818258      0.0008  -4.500000     3.115e-06               32680
    ## 26      8219182      0.0008   5.125000     1.012e-07               32872
    ## 27    196929310      0.0009   5.222222     7.662e-08               32639
    ## 28     98554409      0.0008   5.000000     2.503e-06               32872
    ## 29     39688694      0.0009   4.888890     2.680e-07               32872
    ## 30     46999235      0.0008  -4.500000     3.852e-06               32872
    ## 31    110585288      0.0010  -5.900000     8.922e-09               32872
    ## 32     32945835      0.0008  -4.625000     2.960e-06               32512
    ##               exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 2  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 3  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 4  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 5  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 6  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 7  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 8  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 9  Grasby2020thickness             TRUE             reported      4eYLpv
    ## 10 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 11 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 12 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 13 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 14 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 15 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 16 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 17 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 18 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 19 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 20 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 21 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 22 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 23 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 24 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 25 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 26 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 27 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 28 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 29 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 30 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 31 Grasby2020thickness             TRUE             reported      4eYLpv
    ## 32 Grasby2020thickness             TRUE             reported      4eYLpv
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    2.744975e-05             1
    ## 2       2    TRUE           TRUE 5e-06    1.629255e-05             1
    ## 3       2    TRUE           TRUE 5e-06    1.109913e-07             1
    ## 4       2    TRUE           TRUE 5e-06    3.685705e-05             1
    ## 5       2    TRUE           TRUE 5e-06    1.065935e-03         <0.03
    ## 6       2    TRUE           TRUE 5e-06    3.395379e-04         <0.03
    ## 7       2    TRUE           TRUE 5e-06    2.823253e-04          0.03
    ## 8       2    TRUE           TRUE 5e-06    6.527809e-06             1
    ## 9       2    TRUE           TRUE 5e-06    9.649612e-06             1
    ## 10      2    TRUE           TRUE 5e-06    3.981199e-05             1
    ## 11      2    TRUE           TRUE 5e-06    3.627508e-06             1
    ## 12      2    TRUE           TRUE 5e-06    4.260434e-05             1
    ## 13      2    TRUE           TRUE 5e-06    2.835071e-04             1
    ## 14      2    TRUE           TRUE 5e-06    3.867140e-06             1
    ## 15      2    TRUE           TRUE 5e-06    3.237541e-07             1
    ## 16      2    TRUE           TRUE 5e-06    1.048896e-04             1
    ## 17      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 18      2    TRUE           TRUE 5e-06    6.191404e-06             1
    ## 19      2    TRUE           TRUE 5e-06    1.013072e-04             1
    ## 20      2    TRUE           TRUE 5e-06    1.656152e-05             1
    ## 21      2    TRUE           TRUE 5e-06    1.338211e-05             1
    ## 22      2    TRUE           TRUE 5e-06    3.896512e-09             1
    ## 23      2    TRUE           TRUE 5e-06    1.759014e-05             1
    ## 24      2   FALSE           TRUE 5e-06              NA          <NA>
    ## 25      2    TRUE           TRUE 5e-06    1.055568e-04             1
    ## 26      2    TRUE           TRUE 5e-06    6.052910e-07             1
    ## 27      2    TRUE           TRUE 5e-06    1.470504e-04             1
    ## 28      2    TRUE           TRUE 5e-06    2.728781e-04          0.12
    ## 29      2    TRUE           TRUE 5e-06    8.310074e-05             1
    ## 30      2    TRUE           TRUE 5e-06    4.328269e-09             1
    ## 31      2    TRUE           TRUE 5e-06    8.478865e-05             1
    ## 32      2    TRUE           TRUE 5e-06    7.893739e-05             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5          FALSE
    ## 6          FALSE
    ## 7          FALSE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17            NA
    ## 18          TRUE
    ## 19          TRUE
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE
    ## 23          TRUE
    ## 24            NA
    ## 25          TRUE
    ## 26          TRUE
    ## 27          TRUE
    ## 28          TRUE
    ## 29          TRUE
    ## 30          TRUE
    ## 31          TRUE
    ## 32          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Total
cholesterol GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs3816046          19    46118127     8.464e-07      0.04547

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
    ## 1            FALSE   0.02225598 25.55328  0.05 0.23230818 0.07701065
    ## 2             TRUE   0.02017893 25.69051  0.05 0.04949208 0.05568867

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
Cortical Thickness on Total cholesterol. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Total
cholesterol

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 2      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 3      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 4      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ##                                      method nsnp         b        se
    ## 1 Inverse variance weighted (fixed effects)   30 0.2321645 0.2369028
    ## 2                           Weighted median   30 0.1910660 0.3556815
    ## 3                             Weighted mode   30 0.3212981 0.5958723
    ## 4                                  MR Egger   30 3.2326865 1.4903568
    ##         pval
    ## 1 0.32708649
    ## 2 0.59114140
    ## 3 0.59386049
    ## 4 0.03872282

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Total cholesterol and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tc/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 2      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 62.05945   28 2.207814e-04
    ## 2 Inverse variance weighted 71.57628   29 1.839794e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tc/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tc/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome            exposure egger_intercept
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness     -0.01422934
    ##            se       pval
    ## 1 0.006866947 0.04757473

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome            exposure    pt
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 76.81304 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 2      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 3      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 4      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)   27 0.01897326 0.2510384
    ## 2                           Weighted median   27 0.16913267 0.3715098
    ## 3                             Weighted mode   27 0.26868038 0.6163909
    ## 4                                  MR Egger   27 2.25010054 1.2396489
    ##         pval
    ## 1 0.93975393
    ## 2 0.64892388
    ## 3 0.66651229
    ## 4 0.08152297

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tc/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ## 2      4eYLpv     afMIzu Willer2013tc Grasby2020thickness
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 31.81118   25 0.16354841
    ## 2 Inverse variance weighted 36.15995   26 0.08876658

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome            exposure egger_intercept
    ## 1      4eYLpv     afMIzu Willer2013tc Grasby2020thickness     -0.01050354
    ##            se       pval
    ## 1 0.005681622 0.07636446

<br>
