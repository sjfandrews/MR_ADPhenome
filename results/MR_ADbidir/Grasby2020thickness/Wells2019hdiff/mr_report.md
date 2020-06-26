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

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Hearing Difficulty

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1    rs1180331     1  40012184   G   A 0.456136  1.07793e-03 0.00132237
    ## 2     rs556204     1  57595583   G   C 0.158209  2.18806e-03 0.00181382
    ## 3    rs2002058     1  58561329   C   T 0.194200  1.58944e-03 0.00167842
    ## 4    rs7549825     1  98554409   A   G 0.302307 -2.19772e-03 0.00144063
    ## 5    rs7531555     1 196929310   C   T 0.229441 -3.34331e-04 0.00156783
    ## 6    rs6738528     2  27149258   T   A 0.388156  5.43864e-04 0.00135332
    ## 7    rs3770776     2  37150793   A   G 0.420623  1.08348e-03 0.00133820
    ## 8   rs11692435     2  98275354   G   A 0.084163  2.79245e-03 0.00247687
    ## 9     rs533577     3  39489651   C   T 0.494210 -1.02078e-03 0.00132129
    ## 10  rs11708974     3  64395184   C   T 0.491420  1.44641e-04 0.00131720
    ## 11   rs2636563     3 183939044   G   C 0.239199 -2.94163e-03 0.00154765
    ## 12  rs10016059     4   2405007   T   C 0.342513 -5.15184e-04 0.00138824
    ## 13   rs7657284     4  39688694   A   C 0.248959 -4.92939e-04 0.00152842
    ## 14   rs7683042     4  46999235   A   G 0.404725 -2.30424e-04 0.00134640
    ## 15  rs13107325     4 103188709   C   T 0.074407  5.17833e-03 0.00251572
    ## 16  rs35021943     4 121643239   A   C 0.248446 -3.31520e-03 0.00153457
    ## 17     rs40565     5  55828636   C   T 0.821042  1.60943e-03 0.00171650
    ## 18   rs2744449     6  52951185   G   C 0.903903 -2.04000e-03 0.00224328
    ## 19    rs194833     7 103761274   G   T 0.463459  2.73330e-03 0.00132214
    ## 20   rs6961970     7 113901132   C   A 0.246546  1.37874e-03 0.00153668
    ## 21    rs724265     8   8219182   G   A 0.627354 -1.47405e-03 0.00137181
    ## 22   rs3200031     8  26227484   C   T 0.079128 -1.24820e-04 0.00245965
    ## 23   rs7824177     8 110585288   A   G 0.159439 -2.48285e-03 0.00180448
    ## 24  rs12543282     8 144627241   C   T 0.234990  3.35382e-05 0.00156096
    ## 25  rs35025323    10  97089991   T   C 0.115354  1.20870e-03 0.00206815
    ## 26   rs4296031    11  42540012   G   A 0.820351  1.93575e-03 0.00171867
    ## 27   rs7957460    12  32945835   G   A 0.680296 -1.80385e-03 0.00141321
    ## 28  rs12815451    12  51738706   T   C 0.161993  4.52435e-03 0.00187232
    ## 29   rs1558801    12 109036359   A   C 0.390169  1.36314e-03 0.00136151
    ## 30   rs4772440    13 102712476   C   T 0.415160 -4.09677e-04 0.00135180
    ## 31   rs1742401    16   1971601   G   A 0.379642 -8.81465e-04 0.00135965
    ## 32    rs734957    17   2612584   G   A 0.218613  8.53026e-03 0.00165897
    ## 33  rs11656696    17  10033679   C   A 0.432564  2.08209e-03 0.00134611
    ## 34   rs7215205    17  29818258   T   C 0.631592 -2.08883e-03 0.00137427
    ## 35   rs2316766    17  43919068   G   T 0.220125  7.93720e-03 0.00160648
    ## 36 rs117826338    19   5904353   C   T 0.136705  1.62391e-03 0.00192421
    ## 37   rs3816046    19  46118127   C   T 0.327785  4.43443e-04 0.00140546
    ## 38   rs5994871    22  22091244   C   T 0.720177  1.59581e-03 0.00148693
    ## 39   rs5756894    22  38450136   C   A 0.606168 -5.73373e-03 0.00135186
    ##             Z       P      N              TRAIT
    ## 1   0.8151500 4.1e-01 250389 Hearing_Difficulty
    ## 2   1.2063300 2.3e-01 250389 Hearing_Difficulty
    ## 3   0.9469860 3.4e-01 250389 Hearing_Difficulty
    ## 4  -1.5255300 1.3e-01 250389 Hearing_Difficulty
    ## 5  -0.2132440 8.3e-01 250389 Hearing_Difficulty
    ## 6   0.4018740 6.9e-01 250389 Hearing_Difficulty
    ## 7   0.8096550 4.2e-01 250389 Hearing_Difficulty
    ## 8   1.1274100 2.6e-01 250389 Hearing_Difficulty
    ## 9  -0.7725630 4.4e-01 250389 Hearing_Difficulty
    ## 10  0.1098090 9.1e-01 250389 Hearing_Difficulty
    ## 11 -1.9007100 5.7e-02 250389 Hearing_Difficulty
    ## 12 -0.3711060 7.1e-01 250389 Hearing_Difficulty
    ## 13 -0.3225150 7.5e-01 250389 Hearing_Difficulty
    ## 14 -0.1711410 8.6e-01 250389 Hearing_Difficulty
    ## 15  2.0583900 4.0e-02 250389 Hearing_Difficulty
    ## 16 -2.1603400 3.1e-02 250389 Hearing_Difficulty
    ## 17  0.9376230 3.5e-01 250389 Hearing_Difficulty
    ## 18 -0.9093830 3.6e-01 250389 Hearing_Difficulty
    ## 19  2.0673300 3.9e-02 250389 Hearing_Difficulty
    ## 20  0.8972200 3.7e-01 250389 Hearing_Difficulty
    ## 21 -1.0745300 2.8e-01 250389 Hearing_Difficulty
    ## 22 -0.0507471 9.6e-01 250389 Hearing_Difficulty
    ## 23 -1.3759400 1.7e-01 250389 Hearing_Difficulty
    ## 24  0.0214856 9.8e-01 250389 Hearing_Difficulty
    ## 25  0.5844350 5.6e-01 250389 Hearing_Difficulty
    ## 26  1.1263100 2.6e-01 250389 Hearing_Difficulty
    ## 27 -1.2764200 2.0e-01 250389 Hearing_Difficulty
    ## 28  2.4164400 1.6e-02 250389 Hearing_Difficulty
    ## 29  1.0012000 3.2e-01 250389 Hearing_Difficulty
    ## 30 -0.3030600 7.6e-01 250389 Hearing_Difficulty
    ## 31 -0.6483030 5.2e-01 250389 Hearing_Difficulty
    ## 32  5.1419000 2.7e-07 250389 Hearing_Difficulty
    ## 33  1.5467500 1.2e-01 250389 Hearing_Difficulty
    ## 34 -1.5199600 1.3e-01 250389 Hearing_Difficulty
    ## 35  4.9407400 7.8e-07 250389 Hearing_Difficulty
    ## 36  0.8439360 4.0e-01 250389 Hearing_Difficulty
    ## 37  0.3155140 7.5e-01 250389 Hearing_Difficulty
    ## 38  1.0732200 2.8e-01 250389 Hearing_Difficulty
    ## 39 -4.2413600 2.2e-05 250389 Hearing_Difficulty

<br>

**Table 3:** Proxy SNPs for Hearing Difficulty

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

**Table 4:** Harmonized Cortical Thickness and Hearing Difficulty
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
    ## 1                      C                    T        0.0038 -5.15184e-04
    ## 2                      A                    C        0.0040  2.08209e-03
    ## 3                      A                    G       -0.0091  2.79245e-03
    ## 4                      T                    C        0.0035  1.44641e-04
    ## 5                      T                    C        0.0062  1.62391e-03
    ## 6                      A                    G        0.0039  1.07793e-03
    ## 7                      T                    C        0.0043  3.35382e-05
    ## 8                      C                    T        0.0070  4.52435e-03
    ## 9                      T                    C       -0.0076  5.17833e-03
    ## 10                     C                    A       -0.0041  1.36314e-03
    ## 11                     A                    G       -0.0038 -8.81465e-04
    ## 12                     T                    G       -0.0035  2.73330e-03
    ## 13                     T                    C        0.0046  1.58944e-03
    ## 14                     T                    G        0.0069  7.93720e-03
    ## 15                     C                    G        0.0044 -2.94163e-03
    ## 16                     C                    G        0.0059 -2.04000e-03
    ## 17                     T                    C        0.0071 -1.24820e-04
    ## 18                     C                    A        0.0051 -3.31520e-03
    ## 19                     C                    T       -0.0054  1.20870e-03
    ## 20                     G                    A        0.0039  1.08348e-03
    ## 21                     T                    C       -0.0041  4.43443e-04
    ## 22                     T                    C        0.0048  1.60943e-03
    ## 23                     A                    G       -0.0044  1.93575e-03
    ## 24                     T                    C       -0.0036 -4.09677e-04
    ## 25                     T                    C       -0.0050 -1.02078e-03
    ## 26                     C                    G       -0.0050  2.18806e-03
    ## 27                     A                    C        0.0035 -5.73373e-03
    ## 28                     T                    C        0.0042  1.59581e-03
    ## 29                     A                    T        0.0045  5.43864e-04
    ## 30                     A                    C        0.0041  1.37874e-03
    ## 31                     C                    T       -0.0036 -2.08883e-03
    ## 32                     A                    G        0.0041 -1.47405e-03
    ## 33                     A                    G        0.0066  8.53026e-03
    ## 34                     T                    C        0.0047 -3.34331e-04
    ## 35                     G                    A        0.0040 -2.19772e-03
    ## 36                     C                    A        0.0044 -4.92939e-04
    ## 37                     G                    A       -0.0036 -2.30424e-04
    ## 38                     G                    A       -0.0059 -2.48285e-03
    ## 39                     A                    G       -0.0037 -1.80385e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379    0.342513  FALSE       FALSE     FALSE     hAr70B
    ## 2        0.4288    0.432564  FALSE       FALSE     FALSE     hAr70B
    ## 3        0.0910    0.084163  FALSE       FALSE     FALSE     hAr70B
    ## 4        0.4778    0.491420  FALSE       FALSE     FALSE     hAr70B
    ## 5        0.1353    0.136705  FALSE       FALSE     FALSE     hAr70B
    ## 6        0.4610    0.456136  FALSE       FALSE     FALSE     hAr70B
    ## 7        0.2395    0.234990  FALSE       FALSE     FALSE     hAr70B
    ## 8        0.1519    0.161993  FALSE       FALSE     FALSE     hAr70B
    ## 9        0.0707    0.074407  FALSE       FALSE     FALSE     hAr70B
    ## 10       0.3852    0.390169  FALSE       FALSE     FALSE     hAr70B
    ## 11       0.3809    0.379642  FALSE       FALSE     FALSE     hAr70B
    ## 12       0.4771    0.463459  FALSE       FALSE     FALSE     hAr70B
    ## 13       0.1892    0.194200  FALSE       FALSE     FALSE     hAr70B
    ## 14       0.2098    0.220125  FALSE       FALSE     FALSE     hAr70B
    ## 15       0.2416    0.239199  FALSE        TRUE     FALSE     hAr70B
    ## 16       0.9107    0.903903  FALSE        TRUE     FALSE     hAr70B
    ## 17       0.0773    0.079128  FALSE       FALSE     FALSE     hAr70B
    ## 18       0.2422    0.248446  FALSE       FALSE     FALSE     hAr70B
    ## 19       0.1210    0.115354  FALSE       FALSE     FALSE     hAr70B
    ## 20       0.4299    0.420623  FALSE       FALSE     FALSE     hAr70B
    ## 21       0.3206    0.327785  FALSE       FALSE     FALSE     hAr70B
    ## 22       0.8108    0.821042  FALSE       FALSE     FALSE     hAr70B
    ## 23       0.8037    0.820351  FALSE       FALSE     FALSE     hAr70B
    ## 24       0.4224    0.415160  FALSE       FALSE     FALSE     hAr70B
    ## 25       0.4935    0.494210  FALSE       FALSE     FALSE     hAr70B
    ## 26       0.1594    0.158209  FALSE        TRUE     FALSE     hAr70B
    ## 27       0.6043    0.606168  FALSE       FALSE     FALSE     hAr70B
    ## 28       0.7171    0.720177  FALSE       FALSE     FALSE     hAr70B
    ## 29       0.3984    0.388156  FALSE        TRUE     FALSE     hAr70B
    ## 30       0.2334    0.246546  FALSE       FALSE     FALSE     hAr70B
    ## 31       0.6326    0.631592  FALSE       FALSE     FALSE     hAr70B
    ## 32       0.6272    0.627354  FALSE       FALSE     FALSE     hAr70B
    ## 33       0.2235    0.218613  FALSE       FALSE     FALSE     hAr70B
    ## 34       0.2386    0.229441  FALSE       FALSE     FALSE     hAr70B
    ## 35       0.3084    0.302307  FALSE       FALSE     FALSE     hAr70B
    ## 36       0.2465    0.248959  FALSE       FALSE     FALSE     hAr70B
    ## 37       0.4028    0.404725  FALSE       FALSE     FALSE     hAr70B
    ## 38       0.1616    0.159439  FALSE       FALSE     FALSE     hAr70B
    ## 39       0.6732    0.680296  FALSE       FALSE     FALSE     hAr70B
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            4     2405007 0.00138824 -0.3711060      7.1e-01
    ## 2           17    10033679 0.00134611  1.5467500      1.2e-01
    ## 3            2    98275354 0.00247687  1.1274100      2.6e-01
    ## 4            3    64395184 0.00131720  0.1098090      9.1e-01
    ## 5           19     5904353 0.00192421  0.8439360      4.0e-01
    ## 6            1    40012184 0.00132237  0.8151500      4.1e-01
    ## 7            8   144627241 0.00156096  0.0214856      9.8e-01
    ## 8           12    51738706 0.00187232  2.4164400      1.6e-02
    ## 9            4   103188709 0.00251572  2.0583900      4.0e-02
    ## 10          12   109036359 0.00136151  1.0012000      3.2e-01
    ## 11          16     1971601 0.00135965 -0.6483030      5.2e-01
    ## 12           7   103761274 0.00132214  2.0673300      3.9e-02
    ## 13           1    58561329 0.00167842  0.9469860      3.4e-01
    ## 14          17    43919068 0.00160648  4.9407400      7.8e-07
    ## 15           3   183939044 0.00154765 -1.9007100      5.7e-02
    ## 16           6    52951185 0.00224328 -0.9093830      3.6e-01
    ## 17           8    26227484 0.00245965 -0.0507471      9.6e-01
    ## 18           4   121643239 0.00153457 -2.1603400      3.1e-02
    ## 19          10    97089991 0.00206815  0.5844350      5.6e-01
    ## 20           2    37150793 0.00133820  0.8096550      4.2e-01
    ## 21          19    46118127 0.00140546  0.3155140      7.5e-01
    ## 22           5    55828636 0.00171650  0.9376230      3.5e-01
    ## 23          11    42540012 0.00171867  1.1263100      2.6e-01
    ## 24          13   102712476 0.00135180 -0.3030600      7.6e-01
    ## 25           3    39489651 0.00132129 -0.7725630      4.4e-01
    ## 26           1    57595583 0.00181382  1.2063300      2.3e-01
    ## 27          22    38450136 0.00135186 -4.2413600      2.2e-05
    ## 28          22    22091244 0.00148693  1.0732200      2.8e-01
    ## 29           2    27149258 0.00135332  0.4018740      6.9e-01
    ## 30           7   113901132 0.00153668  0.8972200      3.7e-01
    ## 31          17    29818258 0.00137427 -1.5199600      1.3e-01
    ## 32           8     8219182 0.00137181 -1.0745300      2.8e-01
    ## 33          17     2612584 0.00165897  5.1419000      2.7e-07
    ## 34           1   196929310 0.00156783 -0.2132440      8.3e-01
    ## 35           1    98554409 0.00144063 -1.5255300      1.3e-01
    ## 36           4    39688694 0.00152842 -0.3225150      7.5e-01
    ## 37           4    46999235 0.00134640 -0.1711410      8.6e-01
    ## 38           8   110585288 0.00180448 -1.3759400      1.7e-01
    ## 39          12    32945835 0.00141321 -1.2764200      2.0e-01
    ##    samplesize.outcome        outcome mr_keep.outcome pval_origin.outcome
    ## 1              250389 Wells2019hdiff            TRUE            reported
    ## 2              250389 Wells2019hdiff            TRUE            reported
    ## 3              250389 Wells2019hdiff            TRUE            reported
    ## 4              250389 Wells2019hdiff            TRUE            reported
    ## 5              250389 Wells2019hdiff            TRUE            reported
    ## 6              250389 Wells2019hdiff            TRUE            reported
    ## 7              250389 Wells2019hdiff            TRUE            reported
    ## 8              250389 Wells2019hdiff            TRUE            reported
    ## 9              250389 Wells2019hdiff            TRUE            reported
    ## 10             250389 Wells2019hdiff            TRUE            reported
    ## 11             250389 Wells2019hdiff            TRUE            reported
    ## 12             250389 Wells2019hdiff            TRUE            reported
    ## 13             250389 Wells2019hdiff            TRUE            reported
    ## 14             250389 Wells2019hdiff            TRUE            reported
    ## 15             250389 Wells2019hdiff            TRUE            reported
    ## 16             250389 Wells2019hdiff            TRUE            reported
    ## 17             250389 Wells2019hdiff            TRUE            reported
    ## 18             250389 Wells2019hdiff            TRUE            reported
    ## 19             250389 Wells2019hdiff            TRUE            reported
    ## 20             250389 Wells2019hdiff            TRUE            reported
    ## 21             250389 Wells2019hdiff            TRUE            reported
    ## 22             250389 Wells2019hdiff            TRUE            reported
    ## 23             250389 Wells2019hdiff            TRUE            reported
    ## 24             250389 Wells2019hdiff            TRUE            reported
    ## 25             250389 Wells2019hdiff            TRUE            reported
    ## 26             250389 Wells2019hdiff            TRUE            reported
    ## 27             250389 Wells2019hdiff            TRUE            reported
    ## 28             250389 Wells2019hdiff            TRUE            reported
    ## 29             250389 Wells2019hdiff            TRUE            reported
    ## 30             250389 Wells2019hdiff            TRUE            reported
    ## 31             250389 Wells2019hdiff            TRUE            reported
    ## 32             250389 Wells2019hdiff            TRUE            reported
    ## 33             250389 Wells2019hdiff            TRUE            reported
    ## 34             250389 Wells2019hdiff            TRUE            reported
    ## 35             250389 Wells2019hdiff            TRUE            reported
    ## 36             250389 Wells2019hdiff            TRUE            reported
    ## 37             250389 Wells2019hdiff            TRUE            reported
    ## 38             250389 Wells2019hdiff            TRUE            reported
    ## 39             250389 Wells2019hdiff            TRUE            reported
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
    ## 33           17      2612584      0.0012   5.500000     6.126e-08
    ## 34            1    196929310      0.0009   5.222222     7.662e-08
    ## 35            1     98554409      0.0008   5.000000     2.503e-06
    ## 36            4     39688694      0.0009   4.888890     2.680e-07
    ## 37            4     46999235      0.0008  -4.500000     3.852e-06
    ## 38            8    110585288      0.0010  -5.900000     8.922e-09
    ## 39           12     32945835      0.0008  -4.625000     2.960e-06
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
    ## 33               22106 Grasby2020thickness             TRUE
    ## 34               32639 Grasby2020thickness             TRUE
    ## 35               32872 Grasby2020thickness             TRUE
    ## 36               32872 Grasby2020thickness             TRUE
    ## 37               32872 Grasby2020thickness             TRUE
    ## 38               32872 Grasby2020thickness             TRUE
    ## 39               32512 Grasby2020thickness             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 2              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 3              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 4              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 5              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 6              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 7              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 8              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 9              reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 10             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 11             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 12             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 13             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 14             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 15             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 16             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 17             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 18             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 19             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 20             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 21             reported      YnT0eQ      2    TRUE          FALSE 5e-06
    ## 22             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 23             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 24             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 25             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 26             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 27             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 28             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 29             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 30             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 31             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 32             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 33             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 34             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 35             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 36             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 37             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 38             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ## 39             reported      YnT0eQ      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     7.538962e-07             1          TRUE
    ## 2     3.154046e-06             1          TRUE
    ## 3     1.398407e-05             1          TRUE
    ## 4     2.774236e-08             1          TRUE
    ## 5     1.237200e-06             1          TRUE
    ## 6     5.686010e-07             1          TRUE
    ## 7     1.241652e-07             1          TRUE
    ## 8     1.660136e-05             1          TRUE
    ## 9     3.607350e-05        0.5016          TRUE
    ## 10    3.134276e-06             1          TRUE
    ## 11    3.136338e-07             1          TRUE
    ## 12    9.637115e-06        0.7448          TRUE
    ## 13    1.467492e-06             1          TRUE
    ## 14    6.000311e-05       <0.0076         FALSE
    ## 15    1.161929e-05        0.9728          TRUE
    ## 16    6.819312e-06             1          TRUE
    ## 17    5.894952e-07             1          TRUE
    ## 18    1.512146e-05         0.532          TRUE
    ## 19    2.950245e-06             1          TRUE
    ## 20    5.765165e-07             1          TRUE
    ## 21              NA          <NA>            NA
    ## 22    1.476157e-06             1          TRUE
    ## 23    5.606585e-06             1          TRUE
    ## 24    9.037284e-09             1          TRUE
    ## 25    3.676667e-07             1          TRUE
    ## 26    7.220781e-06             1          TRUE
    ## 27    3.796615e-05       <0.0076         FALSE
    ## 28    1.576577e-06             1          TRUE
    ## 29    2.343057e-08             1          TRUE
    ## 30    1.081040e-06             1          TRUE
    ## 31    3.270158e-06             1          TRUE
    ## 32    3.547725e-06             1          TRUE
    ## 33    6.944896e-05       <0.0076         FALSE
    ## 34    5.893740e-07             1          TRUE
    ## 35    6.801460e-06             1          TRUE
    ## 36    8.128832e-07             1          TRUE
    ## 37    7.740428e-09             1          TRUE
    ## 38    4.108994e-06             1          TRUE
    ## 39    2.275773e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs3816046          19    46118127     8.464e-07         0.75

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
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.02796891 25.49499  0.05 1.37437241 0.21632447
    ## 2             TRUE   0.02538375 25.05740  0.05 0.02858286 0.05328067

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
Cortical Thickness on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Hearing
Difficulty

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 2      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 3      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 4      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)   38 0.08793718 0.05393749
    ## 2                           Weighted median   38 0.10636943 0.08777219
    ## 3                             Weighted mode   38 0.19801015 0.17467602
    ## 4                                  MR Egger   38 0.78091379 0.39164949
    ##         pval
    ## 1 0.10302678
    ## 2 0.22555802
    ## 3 0.26426039
    ## 4 0.05377949

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Hearing Difficulty and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 2      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 104.4395   36 1.377042e-08
    ## 2 Inverse variance weighted 114.0508   37 8.797475e-10

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##   egger_intercept          se       pval
    ## 1    -0.003296894 0.001811317 0.07705641

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome            exposure    pt
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 122.3432 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 2      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 3      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 4      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   35 -0.001551323 0.05747198
    ## 2                           Weighted median   35  0.057144540 0.08873236
    ## 3                             Weighted mode   35  0.227331884 0.19132437
    ## 4                                  MR Egger   35 -0.155162269 0.31584264
    ##        pval
    ## 1 0.9784656
    ## 2 0.5195688
    ## 3 0.2429879
    ## 4 0.6264910

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ## 2      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 47.51129   33 0.04889759
    ## 2 Inverse variance weighted 47.86889   34 0.05771118

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome            exposure
    ## 1      YnT0eQ     hAr70B Wells2019hdiff Grasby2020thickness
    ##   egger_intercept         se     pval
    ## 1    0.0007126039 0.00142985 0.621524

<br>
