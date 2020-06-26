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

### Outcome: Smoking Quantity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Smoking Quantity

    ##            SNP CHROM       POS REF ALT        AF          BETA          SE
    ## 1    rs1180331     1  40012184   G   A 0.4954640 -0.0040389333 0.001722360
    ## 2     rs556204     1  57595583   G   C 0.1137930 -0.0034257124 0.001723195
    ## 3    rs2002058     1  58561329   C   T 0.1728960  0.0024556671 0.001851936
    ## 4    rs7549825     1  98554409   A   G 0.3432840 -0.0012155400 0.001726625
    ## 5    rs7531555     1 196929310   C   T 0.2500000 -0.0016636946 0.001725824
    ## 6    rs6738528     2  27149258   T   A 0.4217790 -0.0018753499 0.001720505
    ## 7    rs3770776     2  37150793   A   G 0.4360660 -0.0033096200 0.001718390
    ## 8   rs11692435     2  98275354   G   A 0.1408810 -0.0009255668 0.001726804
    ## 9     rs533577     3  39489651   C   T 0.4492390 -0.0021638235 0.001720050
    ## 10  rs11708974     3  64395184   C   T 0.4664220 -0.0012289193 0.001847999
    ## 11   rs2636563     3 183939044   G   C 0.2218770  0.0022513716 0.001719917
    ## 12  rs10016059     4   2405007   T   C 0.3435910  0.0010899600 0.001721893
    ## 13   rs7657284     4  39688694   A   C 0.2721680 -0.0010280400 0.001722017
    ## 14   rs7683042     4  46999235   A   G 0.3111070  0.0003327130 0.001723901
    ## 15  rs13107325     4 103188709   C   T 0.0473169  0.0025465437 0.001719476
    ## 16  rs35021943     4 121643239   A   C 0.2241190 -0.0028124300 0.001719090
    ## 17     rs40565     5  55828636   C   T 0.7925280  0.0016554706 0.001720863
    ## 18   rs2744449     6  52951185   G   C 0.8856880 -0.0021071690 0.001720138
    ## 19    rs194833     7 103761274   G   T 0.4821750 -0.0032128958 0.003688744
    ## 20   rs6961970     7 113901132   C   A 0.2094840 -0.0004842655 0.001723365
    ## 21    rs724265     8   8219182   G   A 0.5889940  0.0025757103 0.001719433
    ## 22   rs3200031     8  26227484   C   T 0.0469203 -0.0005910048 0.001723046
    ## 23   rs7824177     8 110585288   A   G 0.1132660 -0.0008284990 0.001722451
    ## 24  rs12543282     8 144627241   C   T 0.2089080 -0.0013359460 0.001847781
    ## 25  rs35025323    10  97089991   T   C 0.1282610 -0.0007803210 0.001722563
    ## 26   rs4296031    11  42540012   G   A 0.7754470  0.0090220974 0.003670503
    ## 27   rs7957460    12  32945835   G   A 0.6604290 -0.0004084963 0.001723613
    ## 28  rs12815451    12  51738706   T   C 0.1428310  0.0003853190 0.003704988
    ## 29   rs1558801    12 109036359   A   C 0.4324470  0.0001966000 0.001724558
    ## 30   rs4772440    13 102712476   C   T 0.4284900  0.0003447703 0.001723852
    ## 31   rs1742401    16   1971601   G   A 0.4508910 -0.0003474950 0.001728831
    ## 32    rs734957    17   2612584   G   A 0.2633310  0.0068389986 0.003676881
    ## 33  rs11656696    17  10033679   C   A 0.4084370 -0.0018942401 0.001720472
    ## 34   rs7215205    17  29818258   T   C 0.6332610 -0.0005308200 0.001740394
    ## 35   rs2316766    17  43919068   G   T 0.1475710  0.0007513337 0.003701151
    ## 36 rs117826338    19   5904353   C   T 0.1421840  0.0008371009 0.001722430
    ## 37   rs3816046    19  46118127   C   T 0.3054140  0.0048086269 0.001733463
    ## 38   rs5994871    22  22091244   C   T 0.7659570 -0.0019148512 0.001720441
    ## 39   rs5756894    22  38450136   C   A 0.6064680  0.0009506435 0.001722180
    ##         Z        P      N              TRAIT
    ## 1  -2.345 0.019030 335394 Cigarettes_Per_Day
    ## 2  -1.988 0.046840 335394 Cigarettes_Per_Day
    ## 3   1.326 0.184700 290889 Cigarettes_Per_Day
    ## 4  -0.704 0.481300 335394 Cigarettes_Per_Day
    ## 5  -0.964 0.334800 335394 Cigarettes_Per_Day
    ## 6  -1.090 0.275900 337334 Cigarettes_Per_Day
    ## 7  -1.926 0.054140 337334 Cigarettes_Per_Day
    ## 8  -0.536 0.591800 335553 Cigarettes_Per_Day
    ## 9  -1.258 0.208400 337334 Cigarettes_Per_Day
    ## 10 -0.665 0.505800 292829 Cigarettes_Per_Day
    ## 11  1.309 0.190600 337334 Cigarettes_Per_Day
    ## 12  0.633 0.526900 337334 Cigarettes_Per_Day
    ## 13 -0.597 0.550400 337334 Cigarettes_Per_Day
    ## 14  0.193 0.847200 337334 Cigarettes_Per_Day
    ## 15  1.481 0.138600 337334 Cigarettes_Per_Day
    ## 16 -1.636 0.101800 337334 Cigarettes_Per_Day
    ## 17  0.962 0.335900 337334 Cigarettes_Per_Day
    ## 18 -1.225 0.220600 337334 Cigarettes_Per_Day
    ## 19 -0.871 0.383900  73380 Cigarettes_Per_Day
    ## 20 -0.281 0.779100 337334 Cigarettes_Per_Day
    ## 21  1.498 0.134100 337334 Cigarettes_Per_Day
    ## 22 -0.343 0.731500 337334 Cigarettes_Per_Day
    ## 23 -0.481 0.630700 337334 Cigarettes_Per_Day
    ## 24 -0.723 0.469900 292829 Cigarettes_Per_Day
    ## 25 -0.453 0.650700 337334 Cigarettes_Per_Day
    ## 26  2.458 0.013960  73380 Cigarettes_Per_Day
    ## 27 -0.237 0.812600 337334 Cigarettes_Per_Day
    ## 28  0.104 0.917200  73380 Cigarettes_Per_Day
    ## 29  0.114 0.909400 337334 Cigarettes_Per_Day
    ## 30  0.200 0.841600 337334 Cigarettes_Per_Day
    ## 31 -0.201 0.841000 335394 Cigarettes_Per_Day
    ## 32  1.860 0.062860  73380 Cigarettes_Per_Day
    ## 33 -1.101 0.270800 337334 Cigarettes_Per_Day
    ## 34 -0.305 0.760500 330721 Cigarettes_Per_Day
    ## 35  0.203 0.839000  73380 Cigarettes_Per_Day
    ## 36  0.486 0.626900 337334 Cigarettes_Per_Day
    ## 37  2.774 0.005543 330721 Cigarettes_Per_Day
    ## 38 -1.113 0.265900 337334 Cigarettes_Per_Day
    ## 39  0.552 0.581100 337334 Cigarettes_Per_Day

<br>

**Table 3:** Proxy SNPs for Smoking Quantity

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

**Table 4:** Harmonized Cortical Thickness and Smoking Quantity datasets

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
    ## 1                      C                    T        0.0038  0.0010899600
    ## 2                      A                    C        0.0040 -0.0018942401
    ## 3                      A                    G       -0.0091 -0.0009255668
    ## 4                      T                    C        0.0035 -0.0012289193
    ## 5                      T                    C        0.0062  0.0008371009
    ## 6                      A                    G        0.0039 -0.0040389333
    ## 7                      T                    C        0.0043 -0.0013359460
    ## 8                      C                    T        0.0070  0.0003853190
    ## 9                      T                    C       -0.0076  0.0025465437
    ## 10                     C                    A       -0.0041  0.0001966000
    ## 11                     A                    G       -0.0038 -0.0003474950
    ## 12                     T                    G       -0.0035 -0.0032128958
    ## 13                     T                    C        0.0046  0.0024556671
    ## 14                     T                    G        0.0069  0.0007513337
    ## 15                     C                    G        0.0044  0.0022513716
    ## 16                     C                    G        0.0059 -0.0021071690
    ## 17                     T                    C        0.0071 -0.0005910048
    ## 18                     C                    A        0.0051 -0.0028124300
    ## 19                     C                    T       -0.0054 -0.0007803210
    ## 20                     G                    A        0.0039 -0.0033096200
    ## 21                     T                    C       -0.0041  0.0048086269
    ## 22                     T                    C        0.0048  0.0016554706
    ## 23                     A                    G       -0.0044  0.0090220974
    ## 24                     T                    C       -0.0036  0.0003447703
    ## 25                     T                    C       -0.0050 -0.0021638235
    ## 26                     C                    G       -0.0050 -0.0034257124
    ## 27                     A                    C        0.0035  0.0009506435
    ## 28                     T                    C        0.0042 -0.0019148512
    ## 29                     A                    T        0.0045 -0.0018753499
    ## 30                     A                    C        0.0041 -0.0004842655
    ## 31                     C                    T       -0.0036 -0.0005308200
    ## 32                     A                    G        0.0041  0.0025757103
    ## 33                     A                    G        0.0066  0.0068389986
    ## 34                     T                    C        0.0047 -0.0016636946
    ## 35                     G                    A        0.0040 -0.0012155400
    ## 36                     C                    A        0.0044 -0.0010280400
    ## 37                     G                    A       -0.0036  0.0003327130
    ## 38                     G                    A       -0.0059 -0.0008284990
    ## 39                     A                    G       -0.0037 -0.0004084963
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379   0.3435910  FALSE       FALSE     FALSE     3KrKqi
    ## 2        0.4288   0.4084370  FALSE       FALSE     FALSE     3KrKqi
    ## 3        0.0910   0.1408810  FALSE       FALSE     FALSE     3KrKqi
    ## 4        0.4778   0.4664220  FALSE       FALSE     FALSE     3KrKqi
    ## 5        0.1353   0.1421840  FALSE       FALSE     FALSE     3KrKqi
    ## 6        0.4610   0.4954640  FALSE       FALSE     FALSE     3KrKqi
    ## 7        0.2395   0.2089080  FALSE       FALSE     FALSE     3KrKqi
    ## 8        0.1519   0.1428310  FALSE       FALSE     FALSE     3KrKqi
    ## 9        0.0707   0.0473169  FALSE       FALSE     FALSE     3KrKqi
    ## 10       0.3852   0.4324470  FALSE       FALSE     FALSE     3KrKqi
    ## 11       0.3809   0.4508910  FALSE       FALSE     FALSE     3KrKqi
    ## 12       0.4771   0.4821750  FALSE       FALSE     FALSE     3KrKqi
    ## 13       0.1892   0.1728960  FALSE       FALSE     FALSE     3KrKqi
    ## 14       0.2098   0.1475710  FALSE       FALSE     FALSE     3KrKqi
    ## 15       0.2416   0.2218770  FALSE        TRUE     FALSE     3KrKqi
    ## 16       0.9107   0.8856880  FALSE        TRUE     FALSE     3KrKqi
    ## 17       0.0773   0.0469203  FALSE       FALSE     FALSE     3KrKqi
    ## 18       0.2422   0.2241190  FALSE       FALSE     FALSE     3KrKqi
    ## 19       0.1210   0.1282610  FALSE       FALSE     FALSE     3KrKqi
    ## 20       0.4299   0.4360660  FALSE       FALSE     FALSE     3KrKqi
    ## 21       0.3206   0.3054140  FALSE       FALSE     FALSE     3KrKqi
    ## 22       0.8108   0.7925280  FALSE       FALSE     FALSE     3KrKqi
    ## 23       0.8037   0.7754470  FALSE       FALSE     FALSE     3KrKqi
    ## 24       0.4224   0.4284900  FALSE       FALSE     FALSE     3KrKqi
    ## 25       0.4935   0.4492390  FALSE       FALSE     FALSE     3KrKqi
    ## 26       0.1594   0.1137930  FALSE        TRUE     FALSE     3KrKqi
    ## 27       0.6043   0.6064680  FALSE       FALSE     FALSE     3KrKqi
    ## 28       0.7171   0.7659570  FALSE       FALSE     FALSE     3KrKqi
    ## 29       0.3984   0.4217790  FALSE        TRUE      TRUE     3KrKqi
    ## 30       0.2334   0.2094840  FALSE       FALSE     FALSE     3KrKqi
    ## 31       0.6326   0.6332610  FALSE       FALSE     FALSE     3KrKqi
    ## 32       0.6272   0.5889940  FALSE       FALSE     FALSE     3KrKqi
    ## 33       0.2235   0.2633310  FALSE       FALSE     FALSE     3KrKqi
    ## 34       0.2386   0.2500000  FALSE       FALSE     FALSE     3KrKqi
    ## 35       0.3084   0.3432840  FALSE       FALSE     FALSE     3KrKqi
    ## 36       0.2465   0.2721680  FALSE       FALSE     FALSE     3KrKqi
    ## 37       0.4028   0.3111070  FALSE       FALSE     FALSE     3KrKqi
    ## 38       0.1616   0.1132660  FALSE       FALSE     FALSE     3KrKqi
    ## 39       0.6732   0.6604290  FALSE       FALSE     FALSE     3KrKqi
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1            4     2405007 0.001721893     0.633     0.526900
    ## 2           17    10033679 0.001720472    -1.101     0.270800
    ## 3            2    98275354 0.001726804    -0.536     0.591800
    ## 4            3    64395184 0.001847999    -0.665     0.505800
    ## 5           19     5904353 0.001722430     0.486     0.626900
    ## 6            1    40012184 0.001722360    -2.345     0.019030
    ## 7            8   144627241 0.001847781    -0.723     0.469900
    ## 8           12    51738706 0.003704988     0.104     0.917200
    ## 9            4   103188709 0.001719476     1.481     0.138600
    ## 10          12   109036359 0.001724558     0.114     0.909400
    ## 11          16     1971601 0.001728831    -0.201     0.841000
    ## 12           7   103761274 0.003688744    -0.871     0.383900
    ## 13           1    58561329 0.001851936     1.326     0.184700
    ## 14          17    43919068 0.003701151     0.203     0.839000
    ## 15           3   183939044 0.001719917     1.309     0.190600
    ## 16           6    52951185 0.001720138    -1.225     0.220600
    ## 17           8    26227484 0.001723046    -0.343     0.731500
    ## 18           4   121643239 0.001719090    -1.636     0.101800
    ## 19          10    97089991 0.001722563    -0.453     0.650700
    ## 20           2    37150793 0.001718390    -1.926     0.054140
    ## 21          19    46118127 0.001733463     2.774     0.005543
    ## 22           5    55828636 0.001720863     0.962     0.335900
    ## 23          11    42540012 0.003670503     2.458     0.013960
    ## 24          13   102712476 0.001723852     0.200     0.841600
    ## 25           3    39489651 0.001720050    -1.258     0.208400
    ## 26           1    57595583 0.001723195    -1.988     0.046840
    ## 27          22    38450136 0.001722180     0.552     0.581100
    ## 28          22    22091244 0.001720441    -1.113     0.265900
    ## 29           2    27149258 0.001720505    -1.090     0.275900
    ## 30           7   113901132 0.001723365    -0.281     0.779100
    ## 31          17    29818258 0.001740394    -0.305     0.760500
    ## 32           8     8219182 0.001719433     1.498     0.134100
    ## 33          17     2612584 0.003676881     1.860     0.062860
    ## 34           1   196929310 0.001725824    -0.964     0.334800
    ## 35           1    98554409 0.001726625    -0.704     0.481300
    ## 36           4    39688694 0.001722017    -0.597     0.550400
    ## 37           4    46999235 0.001723901     0.193     0.847200
    ## 38           8   110585288 0.001722451    -0.481     0.630700
    ## 39          12    32945835 0.001723613    -0.237     0.812600
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              337334 Liu2019smkcpd23andMe            TRUE
    ## 2              337334 Liu2019smkcpd23andMe            TRUE
    ## 3              335553 Liu2019smkcpd23andMe            TRUE
    ## 4              292829 Liu2019smkcpd23andMe            TRUE
    ## 5              337334 Liu2019smkcpd23andMe            TRUE
    ## 6              335394 Liu2019smkcpd23andMe            TRUE
    ## 7              292829 Liu2019smkcpd23andMe            TRUE
    ## 8               73380 Liu2019smkcpd23andMe            TRUE
    ## 9              337334 Liu2019smkcpd23andMe            TRUE
    ## 10             337334 Liu2019smkcpd23andMe            TRUE
    ## 11             335394 Liu2019smkcpd23andMe            TRUE
    ## 12              73380 Liu2019smkcpd23andMe            TRUE
    ## 13             290889 Liu2019smkcpd23andMe            TRUE
    ## 14              73380 Liu2019smkcpd23andMe            TRUE
    ## 15             337334 Liu2019smkcpd23andMe            TRUE
    ## 16             337334 Liu2019smkcpd23andMe            TRUE
    ## 17             337334 Liu2019smkcpd23andMe            TRUE
    ## 18             337334 Liu2019smkcpd23andMe            TRUE
    ## 19             337334 Liu2019smkcpd23andMe            TRUE
    ## 20             337334 Liu2019smkcpd23andMe            TRUE
    ## 21             330721 Liu2019smkcpd23andMe            TRUE
    ## 22             337334 Liu2019smkcpd23andMe            TRUE
    ## 23              73380 Liu2019smkcpd23andMe            TRUE
    ## 24             337334 Liu2019smkcpd23andMe            TRUE
    ## 25             337334 Liu2019smkcpd23andMe            TRUE
    ## 26             335394 Liu2019smkcpd23andMe            TRUE
    ## 27             337334 Liu2019smkcpd23andMe            TRUE
    ## 28             337334 Liu2019smkcpd23andMe            TRUE
    ## 29             337334 Liu2019smkcpd23andMe            TRUE
    ## 30             337334 Liu2019smkcpd23andMe            TRUE
    ## 31             330721 Liu2019smkcpd23andMe            TRUE
    ## 32             337334 Liu2019smkcpd23andMe            TRUE
    ## 33              73380 Liu2019smkcpd23andMe            TRUE
    ## 34             335394 Liu2019smkcpd23andMe            TRUE
    ## 35             335394 Liu2019smkcpd23andMe            TRUE
    ## 36             337334 Liu2019smkcpd23andMe            TRUE
    ## 37             337334 Liu2019smkcpd23andMe            TRUE
    ## 38             337334 Liu2019smkcpd23andMe            TRUE
    ## 39             337334 Liu2019smkcpd23andMe            TRUE
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
    ## 1              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 2              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 3              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 4              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 5              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 6              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 7              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 8              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 9              reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 10             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 11             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 12             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 13             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 14             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 15             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 16             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 17             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 18             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 19             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 20             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 21             reported      UDNYUZ      2    TRUE          FALSE 5e-06
    ## 22             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 23             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 24             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 25             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 26             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 27             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 28             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 29             reported      UDNYUZ      2   FALSE           TRUE 5e-06
    ## 30             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 31             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 32             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 33             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 34             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 35             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 36             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 37             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 38             reported      UDNYUZ      2    TRUE           TRUE 5e-06
    ## 39             reported      UDNYUZ      2    TRUE           TRUE 5e-06
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
    ## 23              NA            NA          TRUE
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Smoking
Quantity GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs3816046          19    46118127     8.464e-07     0.005543

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
    ## 1            FALSE   0.02704977 25.30039  0.05 0.09958619 0.06148459

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
Cortical Thickness on Smoking Quantity. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Smoking
Quantity

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 2      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 3      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 4      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   37 -0.02464324 0.06111498
    ## 2                           Weighted median   37  0.09173766 0.09357136
    ## 3                             Weighted mode   37  0.02355977 0.14111868
    ## 4                                  MR Egger   37  0.10874137 0.26188684
    ##        pval
    ## 1 0.6867808
    ## 2 0.3268871
    ## 3 0.8683436
    ## 4 0.6805134

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Smoking Quantity and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 2      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 44.88582   35 0.1222597
    ## 2 Inverse variance weighted 45.24348   36 0.1389359

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1    -0.000681909 0.001291258 0.6007648

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
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 47.55236 0.1404

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 2      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 3      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 4      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   37 -0.02464324 0.06111498
    ## 2                           Weighted median   37  0.09173766 0.09267187
    ## 3                             Weighted mode   37  0.02355977 0.15283503
    ## 4                                  MR Egger   37  0.10874137 0.26188684
    ##        pval
    ## 1 0.6867808
    ## 2 0.3222136
    ## 3 0.8783511
    ## 4 0.6805134

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ## 2      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 44.88582   35 0.1222597
    ## 2 Inverse variance weighted 45.24348   36 0.1389359

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      UDNYUZ     3KrKqi Liu2019smkcpd23andMe Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1    -0.000681909 0.001291258 0.6007648

<br>
