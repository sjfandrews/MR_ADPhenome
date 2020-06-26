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

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Education

    ##            SNP CHROM       POS  REF  ALT     AF         BETA          SE
    ## 1    rs1180331     1  40012184    G    A 0.4607  0.000113339 0.001406736
    ## 2     rs556204     1  57595583    G    C 0.1555  0.003551800 0.001938509
    ## 3    rs2002058     1  58561329    C    T 0.1893 -0.013358100 0.001791843
    ## 4    rs7549825     1  98554409    A    G 0.3087  0.005848490 0.001517870
    ## 5    rs7531555     1 196929310    C    T 0.2345 -0.002310200 0.001667068
    ## 6    rs6738528     2  27149258    T    A 0.3949  0.006050950 0.001435517
    ## 7    rs3770776     2  37150793    A    G 0.4252 -0.004004730 0.001427362
    ## 8   rs11692435     2  98275354    G    A 0.0873 -0.012116200 0.002497078
    ## 9     rs533577     3  39489651    C    T 0.4928  0.001748600 0.001402864
    ## 10  rs11708974     3  64395184    C    T 0.4828  0.008145940 0.001461311
    ## 11   rs2636563     3 183939044    G    C 0.2380 -0.004750760 0.001646538
    ## 12  rs10016059     4   2405007    T    C 0.3387  0.000714250 0.001492149
    ## 13   rs7657284     4  39688694    A    C 0.2525 -0.010766400 0.001650230
    ## 14   rs7683042     4  46999235    A    G 0.3989  0.006551270 0.001433048
    ## 15  rs13107325     4 103188709    C    T 0.0721 -0.023937300 0.002733092
    ## 16  rs35021943     4 121643239    A    C 0.2463  0.005539260 0.001627833
    ## 17     rs40565     5  55828636    C    T 0.8146  0.003878010 0.001807109
    ## 18   rs2744449     6  52951185    G    C 0.9074  0.006055470 0.002418977
    ## 19    rs194833     7 103761274    G    T 0.4746  0.001334670 0.001857622
    ## 20   rs6961970     7 113901132    C    A 0.2343  0.001459330 0.001655474
    ## 21    rs724265     8   8219182    G    A 0.6243 -0.000426954 0.001448345
    ## 22   rs3200031     8  26227484    C    T 0.0748  0.013319900 0.002667018
    ## 23   rs7824177     8 110585288    A    G 0.1567  0.001638780 0.001929584
    ## 24  rs12543282     8 144627241    C    T 0.2347 -0.000943223 0.001658501
    ## 25  rs35025323    10  97089991    T    C 0.1199  0.000196487 0.002159310
    ## 26   rs4296031    11  42540012    G    A 0.8020 -0.003345010 0.002330895
    ## 27   rs7957460    12  32945835    G    A 0.6752 -0.000608860 0.001497308
    ## 28  rs12815451    12  51738706    T    C 0.1548  0.001750370 0.002752072
    ## 29   rs1558801    12 109036359    A    C 0.3924  0.006603320 0.001462018
    ## 30   rs4772440    13 102712476    C    T 0.4178 -0.001509860 0.001422224
    ## 31   rs1742401    16   1971601    G    A 0.3812  0.003491060 0.001455762
    ## 32    rs734957    NA        NA <NA> <NA>     NA           NA          NA
    ## 33  rs11656696    17  10033679    C    A 0.4254  0.000832330 0.001420884
    ## 34   rs7215205    17  29818258    T    C 0.6369 -0.002083410 0.001460467
    ## 35   rs2316766    NA        NA <NA> <NA>     NA           NA          NA
    ## 36 rs117826338    19   5904353    C    T 0.1388 -0.001011740 0.002056616
    ## 37   rs3816046    19  46118127    C    T 0.3245  0.005462070 0.001521246
    ## 38   rs5994871    22  22091244    C    T 0.7181  0.000437062 0.001563045
    ## 39   rs5756894    22  38450136    C    A 0.6027  0.002352460 0.001432932
    ##              Z            P       N     TRAIT
    ## 1   0.08056876 9.357849e-01 1131881 Education
    ## 2   1.83222839 6.691740e-02 1127735 Education
    ## 3  -7.45497997 8.988148e-14 1129448 Education
    ## 4   3.85308000 1.166401e-04 1131881 Education
    ## 5  -1.38578267 1.658133e-01 1115523 Education
    ## 6   4.21516795 2.495924e-05 1130168 Education
    ## 7  -2.80569000 5.020919e-03 1117629 Education
    ## 8  -4.85213509 1.221394e-06 1120125 Education
    ## 9   1.24644611 2.126007e-01 1131337 Education
    ## 10  5.57441032 2.483697e-08 1043672 Education
    ## 11 -2.88530948 3.910291e-03 1131881 Education
    ## 12  0.47867300 6.321711e-01 1115934 Education
    ## 13 -6.52417000 6.837737e-11 1082711 Education
    ## 14  4.57157000 4.840922e-06 1130168 Education
    ## 15 -8.75829815 1.982203e-18 1113598 Education
    ## 16  3.40285000 6.668803e-04 1131337 Education
    ## 17  2.14597262 3.187516e-02 1128368 Education
    ## 18  2.50331877 1.230347e-02 1131881 Education
    ## 19  0.71848377 4.724591e-01  646756 Education
    ## 20  0.88151702 3.780380e-01 1131881 Education
    ## 21 -0.29478687 7.681567e-01 1131084 Education
    ## 22  4.99431525 5.904488e-07 1130540 Education
    ## 23  0.84929000 3.957202e-01 1131084 Education
    ## 24 -0.56872066 5.695457e-01 1126417 Education
    ## 25  0.09099530 9.274963e-01 1131084 Education
    ## 26 -1.43507180 1.512666e-01  645043 Education
    ## 27 -0.40663527 6.842759e-01 1131881 Education
    ## 28  0.63601900 5.247639e-01  561598 Education
    ## 29  4.51659000 6.284344e-06 1092004 Education
    ## 30 -1.06161190 2.884119e-01 1131084 Education
    ## 31  2.39810544 1.648012e-02 1113250 Education
    ## 32          NA           NA      NA      <NA>
    ## 33  0.58578228 5.580218e-01 1127698 Education
    ## 34 -1.42654000 1.537122e-01 1128222 Education
    ## 35          NA           NA      NA      <NA>
    ## 36 -0.49194337 6.227594e-01 1100719 Education
    ## 37  3.59052309 3.300150e-04 1097071 Education
    ## 38  0.27962099 7.797683e-01 1125249 Education
    ## 39  1.64170697 1.006507e-01 1131881 Education

<br>

**Table 3:** Proxy SNPs for Education

    ##   target_snp   proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS
    ## 1  rs2316766 rs112155389 0.989115      1 TA/GG  NA    17 43758078
    ## 2   rs734957        <NA>       NA     NA  <NA>  NA    NA       NA
    ##   REF.proxy ALT.proxy     AF       BETA          SE         Z            P
    ## 1         G         A 0.2159 -0.0201318 0.001727319 -11.65498 2.164261e-31
    ## 2      <NA>      <NA>     NA         NA          NA        NA           NA
    ##         N     TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 1101809 Education TRUE         A    G         G TRUE    G          TRUE
    ## 2      NA      <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Education datasets

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
    ## 33   rs7531555                      T                     C
    ## 34   rs7549825                      G                     A
    ## 35   rs7657284                      C                     A
    ## 36   rs7683042                      G                     A
    ## 37   rs7824177                      G                     A
    ## 38   rs7957460                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T        0.0038  0.000714250
    ## 2                      A                    C        0.0040  0.000832330
    ## 3                      A                    G       -0.0091 -0.012116200
    ## 4                      T                    C        0.0035  0.008145940
    ## 5                      T                    C        0.0062 -0.001011740
    ## 6                      A                    G        0.0039  0.000113339
    ## 7                      T                    C        0.0043 -0.000943223
    ## 8                      C                    T        0.0070  0.001750370
    ## 9                      T                    C       -0.0076 -0.023937300
    ## 10                     C                    A       -0.0041  0.006603320
    ## 11                     A                    G       -0.0038  0.003491060
    ## 12                     T                    G       -0.0035  0.001334670
    ## 13                     T                    C        0.0046 -0.013358100
    ## 14                     T                    G        0.0069 -0.020131800
    ## 15                     C                    G        0.0044 -0.004750760
    ## 16                     C                    G        0.0059  0.006055470
    ## 17                     T                    C        0.0071  0.013319900
    ## 18                     C                    A        0.0051  0.005539260
    ## 19                     C                    T       -0.0054  0.000196487
    ## 20                     G                    A        0.0039 -0.004004730
    ## 21                     T                    C       -0.0041  0.005462070
    ## 22                     T                    C        0.0048  0.003878010
    ## 23                     A                    G       -0.0044 -0.003345010
    ## 24                     T                    C       -0.0036 -0.001509860
    ## 25                     T                    C       -0.0050  0.001748600
    ## 26                     C                    G       -0.0050  0.003551800
    ## 27                     A                    C        0.0035  0.002352460
    ## 28                     T                    C        0.0042  0.000437062
    ## 29                     A                    T        0.0045  0.006050950
    ## 30                     A                    C        0.0041  0.001459330
    ## 31                     C                    T       -0.0036 -0.002083410
    ## 32                     A                    G        0.0041 -0.000426954
    ## 33                     T                    C        0.0047 -0.002310200
    ## 34                     G                    A        0.0040  0.005848490
    ## 35                     C                    A        0.0044 -0.010766400
    ## 36                     G                    A       -0.0036  0.006551270
    ## 37                     G                    A       -0.0059  0.001638780
    ## 38                     A                    G       -0.0037 -0.000608860
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379      0.3387  FALSE       FALSE     FALSE     wRVNwJ
    ## 2        0.4288      0.4254  FALSE       FALSE     FALSE     wRVNwJ
    ## 3        0.0910      0.0873  FALSE       FALSE     FALSE     wRVNwJ
    ## 4        0.4778      0.4828  FALSE       FALSE     FALSE     wRVNwJ
    ## 5        0.1353      0.1388  FALSE       FALSE     FALSE     wRVNwJ
    ## 6        0.4610      0.4607  FALSE       FALSE     FALSE     wRVNwJ
    ## 7        0.2395      0.2347  FALSE       FALSE     FALSE     wRVNwJ
    ## 8        0.1519      0.1548  FALSE       FALSE     FALSE     wRVNwJ
    ## 9        0.0707      0.0721  FALSE       FALSE     FALSE     wRVNwJ
    ## 10       0.3852      0.3924  FALSE       FALSE     FALSE     wRVNwJ
    ## 11       0.3809      0.3812  FALSE       FALSE     FALSE     wRVNwJ
    ## 12       0.4771      0.4746  FALSE       FALSE     FALSE     wRVNwJ
    ## 13       0.1892      0.1893  FALSE       FALSE     FALSE     wRVNwJ
    ## 14       0.2098      0.2159  FALSE       FALSE     FALSE     wRVNwJ
    ## 15       0.2416      0.2380  FALSE        TRUE     FALSE     wRVNwJ
    ## 16       0.9107      0.9074  FALSE        TRUE     FALSE     wRVNwJ
    ## 17       0.0773      0.0748  FALSE       FALSE     FALSE     wRVNwJ
    ## 18       0.2422      0.2463  FALSE       FALSE     FALSE     wRVNwJ
    ## 19       0.1210      0.1199  FALSE       FALSE     FALSE     wRVNwJ
    ## 20       0.4299      0.4252  FALSE       FALSE     FALSE     wRVNwJ
    ## 21       0.3206      0.3245  FALSE       FALSE     FALSE     wRVNwJ
    ## 22       0.8108      0.8146  FALSE       FALSE     FALSE     wRVNwJ
    ## 23       0.8037      0.8020  FALSE       FALSE     FALSE     wRVNwJ
    ## 24       0.4224      0.4178  FALSE       FALSE     FALSE     wRVNwJ
    ## 25       0.4935      0.4928  FALSE       FALSE     FALSE     wRVNwJ
    ## 26       0.1594      0.1555  FALSE        TRUE     FALSE     wRVNwJ
    ## 27       0.6043      0.6027  FALSE       FALSE     FALSE     wRVNwJ
    ## 28       0.7171      0.7181  FALSE       FALSE     FALSE     wRVNwJ
    ## 29       0.3984      0.3949  FALSE        TRUE     FALSE     wRVNwJ
    ## 30       0.2334      0.2343  FALSE       FALSE     FALSE     wRVNwJ
    ## 31       0.6326      0.6369  FALSE       FALSE     FALSE     wRVNwJ
    ## 32       0.6272      0.6243  FALSE       FALSE     FALSE     wRVNwJ
    ## 33       0.2386      0.2345  FALSE       FALSE     FALSE     wRVNwJ
    ## 34       0.3084      0.3087  FALSE       FALSE     FALSE     wRVNwJ
    ## 35       0.2465      0.2525  FALSE       FALSE     FALSE     wRVNwJ
    ## 36       0.4028      0.3989  FALSE       FALSE     FALSE     wRVNwJ
    ## 37       0.1616      0.1567  FALSE       FALSE     FALSE     wRVNwJ
    ## 38       0.6732      0.6752  FALSE       FALSE     FALSE     wRVNwJ
    ##    chr.outcome pos.outcome  se.outcome    z.outcome pval.outcome
    ## 1            4     2405007 0.001492149   0.47867300 6.321711e-01
    ## 2           17    10033679 0.001420884   0.58578228 5.580218e-01
    ## 3            2    98275354 0.002497078  -4.85213509 1.221394e-06
    ## 4            3    64395184 0.001461311   5.57441032 2.483697e-08
    ## 5           19     5904353 0.002056616  -0.49194337 6.227594e-01
    ## 6            1    40012184 0.001406736   0.08056876 9.357849e-01
    ## 7            8   144627241 0.001658501  -0.56872066 5.695457e-01
    ## 8           12    51738706 0.002752072   0.63601900 5.247639e-01
    ## 9            4   103188709 0.002733092  -8.75829815 1.982203e-18
    ## 10          12   109036359 0.001462018   4.51659000 6.284344e-06
    ## 11          16     1971601 0.001455762   2.39810544 1.648012e-02
    ## 12           7   103761274 0.001857622   0.71848377 4.724591e-01
    ## 13           1    58561329 0.001791843  -7.45497997 8.988148e-14
    ## 14          17    43758078 0.001727319 -11.65498204 2.164261e-31
    ## 15           3   183939044 0.001646538  -2.88530948 3.910291e-03
    ## 16           6    52951185 0.002418977   2.50331877 1.230347e-02
    ## 17           8    26227484 0.002667018   4.99431525 5.904488e-07
    ## 18           4   121643239 0.001627833   3.40285000 6.668803e-04
    ## 19          10    97089991 0.002159310   0.09099530 9.274963e-01
    ## 20           2    37150793 0.001427362  -2.80569000 5.020919e-03
    ## 21          19    46118127 0.001521246   3.59052309 3.300150e-04
    ## 22           5    55828636 0.001807109   2.14597262 3.187516e-02
    ## 23          11    42540012 0.002330895  -1.43507180 1.512666e-01
    ## 24          13   102712476 0.001422224  -1.06161190 2.884119e-01
    ## 25           3    39489651 0.001402864   1.24644611 2.126007e-01
    ## 26           1    57595583 0.001938509   1.83222839 6.691740e-02
    ## 27          22    38450136 0.001432932   1.64170697 1.006507e-01
    ## 28          22    22091244 0.001563045   0.27962099 7.797683e-01
    ## 29           2    27149258 0.001435517   4.21516795 2.495924e-05
    ## 30           7   113901132 0.001655474   0.88151702 3.780380e-01
    ## 31          17    29818258 0.001460467  -1.42654000 1.537122e-01
    ## 32           8     8219182 0.001448345  -0.29478687 7.681567e-01
    ## 33           1   196929310 0.001667068  -1.38578267 1.658133e-01
    ## 34           1    98554409 0.001517870   3.85308000 1.166401e-04
    ## 35           4    39688694 0.001650230  -6.52417000 6.837737e-11
    ## 36           4    46999235 0.001433048   4.57157000 4.840922e-06
    ## 37           8   110585288 0.001929584   0.84929000 3.957202e-01
    ## 38          12    32945835 0.001497308  -0.40663527 6.842759e-01
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1             1115934 Lee2018education23andMe            TRUE
    ## 2             1127698 Lee2018education23andMe            TRUE
    ## 3             1120125 Lee2018education23andMe            TRUE
    ## 4             1043672 Lee2018education23andMe            TRUE
    ## 5             1100719 Lee2018education23andMe            TRUE
    ## 6             1131881 Lee2018education23andMe            TRUE
    ## 7             1126417 Lee2018education23andMe            TRUE
    ## 8              561598 Lee2018education23andMe            TRUE
    ## 9             1113598 Lee2018education23andMe            TRUE
    ## 10            1092004 Lee2018education23andMe            TRUE
    ## 11            1113250 Lee2018education23andMe            TRUE
    ## 12             646756 Lee2018education23andMe            TRUE
    ## 13            1129448 Lee2018education23andMe            TRUE
    ## 14            1101809 Lee2018education23andMe            TRUE
    ## 15            1131881 Lee2018education23andMe            TRUE
    ## 16            1131881 Lee2018education23andMe            TRUE
    ## 17            1130540 Lee2018education23andMe            TRUE
    ## 18            1131337 Lee2018education23andMe            TRUE
    ## 19            1131084 Lee2018education23andMe            TRUE
    ## 20            1117629 Lee2018education23andMe            TRUE
    ## 21            1097071 Lee2018education23andMe            TRUE
    ## 22            1128368 Lee2018education23andMe            TRUE
    ## 23             645043 Lee2018education23andMe            TRUE
    ## 24            1131084 Lee2018education23andMe            TRUE
    ## 25            1131337 Lee2018education23andMe            TRUE
    ## 26            1127735 Lee2018education23andMe            TRUE
    ## 27            1131881 Lee2018education23andMe            TRUE
    ## 28            1125249 Lee2018education23andMe            TRUE
    ## 29            1130168 Lee2018education23andMe            TRUE
    ## 30            1131881 Lee2018education23andMe            TRUE
    ## 31            1128222 Lee2018education23andMe            TRUE
    ## 32            1131084 Lee2018education23andMe            TRUE
    ## 33            1115523 Lee2018education23andMe            TRUE
    ## 34            1131881 Lee2018education23andMe            TRUE
    ## 35            1082711 Lee2018education23andMe            TRUE
    ## 36            1130168 Lee2018education23andMe            TRUE
    ## 37            1131084 Lee2018education23andMe            TRUE
    ## 38            1131881 Lee2018education23andMe            TRUE
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
    ## 14            reported          TRUE          rs2316766       rs112155389
    ## 15            reported            NA               <NA>              <NA>
    ## 16            reported            NA               <NA>              <NA>
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
    ## 14              TRUE                 G                A                G
    ## 15                NA              <NA>             <NA>             <NA>
    ## 16                NA              <NA>             <NA>             <NA>
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
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             4      2405007      0.0008   4.750000     4.994e-06
    ## 2            17     10033679      0.0008   5.000000     2.117e-07
    ## 3             2     98275354      0.0015  -6.066667     3.179e-10
    ## 4             3     64395184      0.0008   4.375000     4.070e-06
    ## 5            19      5904353      0.0012   5.166667     9.902e-08
    ## 6             1     40012184      0.0008   4.875000     5.299e-07
    ## 7             8    144627241      0.0009   4.777778     4.087e-06
    ## 8            12     51738706      0.0015   4.666670     3.201e-06
    ## 9             4    103188709      0.0015  -5.066667     5.054e-07
    ## 10           12    109036359      0.0009  -4.555560     2.204e-06
    ## 11           16      1971601      0.0008  -4.750000     7.050e-07
    ## 12            7    103761274      0.0008  -4.375000     3.614e-06
    ## 13            1     58561329      0.0010   4.600000     1.289e-06
    ## 14           17     43919068      0.0011   6.272727     2.903e-10
    ## 15            3    183939044      0.0009   4.888889     2.299e-06
    ## 16            6     52951185      0.0013   4.538462     4.452e-06
    ## 17            8     26227484      0.0014   5.071429     5.526e-07
    ## 18            4    121643239      0.0009   5.666670     2.979e-09
    ## 19           10     97089991      0.0011  -4.909090     1.762e-06
    ## 20            2     37150793      0.0008   4.875000     3.170e-07
    ## 21           19     46118127      0.0008  -5.125000     8.464e-07
    ## 22            5     55828636      0.0010   4.800000     5.911e-07
    ## 23           11     42540012      0.0010  -4.400000     3.779e-06
    ## 24           13    102712476      0.0008  -4.500000     3.102e-06
    ## 25            3     39489651      0.0008  -6.250000     8.426e-11
    ## 26            1     57595583      0.0010  -5.000000     1.417e-06
    ## 27           22     38450136      0.0008   4.375000     4.741e-06
    ## 28           22     22091244      0.0009   4.666667     8.821e-07
    ## 29            2     27149258      0.0008   5.625000     7.324e-09
    ## 30            7    113901132      0.0009   4.555556     2.411e-06
    ## 31           17     29818258      0.0008  -4.500000     3.115e-06
    ## 32            8      8219182      0.0008   5.125000     1.012e-07
    ## 33            1    196929310      0.0009   5.222222     7.662e-08
    ## 34            1     98554409      0.0008   5.000000     2.503e-06
    ## 35            4     39688694      0.0009   4.888890     2.680e-07
    ## 36            4     46999235      0.0008  -4.500000     3.852e-06
    ## 37            8    110585288      0.0010  -5.900000     8.922e-09
    ## 38           12     32945835      0.0008  -4.625000     2.960e-06
    ##    samplesize.exposure            exposure mr_keep.exposure
    ## 1                32441 Grasby2020thickness             TRUE
    ## 2                32512 Grasby2020thickness             TRUE
    ## 3                29128 Grasby2020thickness             TRUE
    ## 4                32872 Grasby2020thickness             TRUE
    ## 5                30012 Grasby2020thickness             TRUE
    ## 6                32872 Grasby2020thickness             TRUE
    ## 7                32764 Grasby2020thickness             TRUE
    ## 8                20004 Grasby2020thickness             TRUE
    ## 9                32872 Grasby2020thickness             TRUE
    ## 10               30860 Grasby2020thickness             TRUE
    ## 11               32764 Grasby2020thickness             TRUE
    ## 12               32486 Grasby2020thickness             TRUE
    ## 13               33089 Grasby2020thickness             TRUE
    ## 14               26063 Grasby2020thickness             TRUE
    ## 15               31046 Grasby2020thickness             TRUE
    ## 16               33281 Grasby2020thickness             TRUE
    ## 17               32872 Grasby2020thickness             TRUE
    ## 18               32872 Grasby2020thickness             TRUE
    ## 19               32872 Grasby2020thickness             TRUE
    ## 20               32872 Grasby2020thickness             TRUE
    ## 21               30344 Grasby2020thickness             TRUE
    ## 22               32249 Grasby2020thickness             TRUE
    ## 23               32486 Grasby2020thickness             TRUE
    ## 24               32872 Grasby2020thickness             TRUE
    ## 25               32872 Grasby2020thickness             TRUE
    ## 26               32441 Grasby2020thickness             TRUE
    ## 27               32872 Grasby2020thickness             TRUE
    ## 28               32872 Grasby2020thickness             TRUE
    ## 29               32872 Grasby2020thickness             TRUE
    ## 30               32872 Grasby2020thickness             TRUE
    ## 31               32680 Grasby2020thickness             TRUE
    ## 32               32872 Grasby2020thickness             TRUE
    ## 33               32639 Grasby2020thickness             TRUE
    ## 34               32872 Grasby2020thickness             TRUE
    ## 35               32872 Grasby2020thickness             TRUE
    ## 36               32872 Grasby2020thickness             TRUE
    ## 37               32872 Grasby2020thickness             TRUE
    ## 38               32512 Grasby2020thickness             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 2              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 3              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 4              reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 5              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 6              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 7              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 8              reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 9              reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 10             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 11             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 12             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 13             reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 14             reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 15             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 16             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 17             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 18             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 19             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 20             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 21             reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 22             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 23             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 24             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 25             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 26             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 27             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 28             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 29             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 30             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 31             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 32             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 33             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 34             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 35             reported      q8XuTN      2    TRUE          FALSE 5e-06
    ## 36             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 37             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ## 38             reported      q8XuTN      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.484685e-08             1          TRUE
    ## 2     9.462426e-08             1          TRUE
    ## 3     1.333843e-04       <0.0064         FALSE
    ## 4               NA          <NA>            NA
    ## 5     3.666664e-06             1          TRUE
    ## 6     1.781628e-07             1          TRUE
    ## 7     2.442808e-06             1          TRUE
    ## 8     7.005372e-07             1          TRUE
    ## 9               NA          <NA>            NA
    ## 10    5.473666e-05       <0.0064         FALSE
    ## 11    1.696063e-05        0.1792          TRUE
    ## 12    3.350329e-06             1          TRUE
    ## 13              NA          <NA>            NA
    ## 14              NA          <NA>            NA
    ## 15    3.031618e-05        0.0128         FALSE
    ## 16    2.918722e-05           0.8          TRUE
    ## 17    1.626482e-04       <0.0064         FALSE
    ## 18    2.568425e-05        0.0704          TRUE
    ## 19    8.908259e-07             1          TRUE
    ## 20    2.184958e-05         0.032         FALSE
    ## 21              NA          <NA>            NA
    ## 22    1.112702e-05             1          TRUE
    ## 23    7.832891e-06             1          TRUE
    ## 24    1.117298e-06             1          TRUE
    ## 25    6.528123e-06             1          TRUE
    ## 26    1.886265e-05         0.928          TRUE
    ## 27    3.737198e-06             1          TRUE
    ## 28    1.655972e-08             1          TRUE
    ## 29    3.232936e-05       <0.0064         FALSE
    ## 30    8.746334e-07             1          TRUE
    ## 31    2.703443e-06             1          TRUE
    ## 32    1.019469e-06             1          TRUE
    ## 33    9.249982e-06             1          TRUE
    ## 34    2.997146e-05        0.0128         FALSE
    ## 35              NA          <NA>            NA
    ## 36    5.221729e-05       <0.0064         FALSE
    ## 37    6.391767e-06             1          TRUE
    ## 38    1.368018e-08             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs11708974           3    64395184     4.070e-06 2.483697e-08
    ## 2 rs13107325           4   103188709     5.054e-07 1.982203e-18
    ## 3  rs2002058           1    58561329     1.289e-06 8.988148e-14
    ## 4  rs2316766          17    43758078     2.903e-10 2.164261e-31
    ## 5  rs3816046          19    46118127     8.464e-07 3.300150e-04
    ## 6  rs7657284           4    39688694     2.680e-07 6.837737e-11

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
    ## 1            FALSE   0.02329785 25.10292  0.05 4.414819 0.5561618
    ## 2             TRUE   0.01716080 24.50573  0.05 1.647694 0.2500030

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
Cortical Thickness on Education. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Education

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 2      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 3      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 4      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   32  0.13376368 0.06511169
    ## 2                           Weighted median   32  0.07138639 0.12181470
    ## 3                             Weighted mode   32 -0.02299222 0.19088157
    ## 4                                  MR Egger   32  1.68402544 0.69662379
    ##         pval
    ## 1 0.03993964
    ## 2 0.55785910
    ## 3 0.90490180
    ## 4 0.02191726

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Education and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 2      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 154.5179   30 1.054645e-18
    ## 2 Inverse variance weighted 181.2274   31 3.768099e-23

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##   egger_intercept          se       pval
    ## 1    -0.007098255 0.003117076 0.03006985

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome            exposure    pt
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          8 194.4357 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 2      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 3      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 4      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   24  0.09845391 0.07670681
    ## 2                           Weighted median   24  0.04934991 0.12046317
    ## 3                             Weighted mode   24 -0.03652950 0.22523674
    ## 4                                  MR Egger   24  0.01874283 0.61271440
    ##        pval
    ## 1 0.1993137
    ## 2 0.6820495
    ## 3 0.8725784
    ## 4 0.9758725

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ## 2      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 45.16859   22 0.002526167
    ## 2 Inverse variance weighted 45.20450   23 0.003751480

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome            exposure
    ## 1      q8XuTN     wRVNwJ Lee2018education23andMe Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1    0.0003571698 0.00270092 0.8959964

<br>
