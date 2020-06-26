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

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in Social
Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1    rs1180331     1  40012184    G    A 0.457851  0.00630811 0.00205579
    ## 2     rs556204     1  57595583    G    C 0.158741 -0.00033616 0.00280279
    ## 3    rs2002058     1  58561329    C    T 0.194242  0.00385139 0.00258897
    ## 4    rs7549825     1  98554409    A    G 0.303692  0.00675299 0.00222732
    ## 5    rs7531555     1 196929310    C    T 0.229052 -0.00316094 0.00243737
    ## 6    rs6738528     2  27149258    T    A 0.388370 -0.00088449 0.00210152
    ## 7    rs3770776     2  37150793    A    G 0.419825  0.00265205 0.00207533
    ## 8   rs11692435     2  98275354    G    A 0.083717  0.00136172 0.00369810
    ## 9     rs533577     3  39489651    C    T 0.494260 -0.00539806 0.00204861
    ## 10  rs11708974     3  64395184    C    T 0.490324 -0.00056151 0.00204886
    ## 11   rs2636563     3 183939044    G    C 0.238702 -0.00155328 0.00240267
    ## 12  rs10016059     4   2405007    T    C 0.342482 -0.00127743 0.00215838
    ## 13   rs7657284     4  39688694    A    C 0.249909  0.01036260 0.00236566
    ## 14   rs7683042     4  46999235    A    G 0.404880 -0.00304990 0.00208658
    ## 15  rs13107325     4 103188709    C    T 0.074422  0.00832478 0.00390250
    ## 16  rs35021943     4 121643239    A    C 0.248628 -0.00436570 0.00236972
    ## 17     rs40565     5  55828636    C    T 0.821573  0.00268483 0.00267514
    ## 18   rs2744449     6  52951185    G    C 0.902991 -0.00329359 0.00346060
    ## 19    rs194833    NA        NA <NA> <NA>       NA          NA         NA
    ## 20   rs6961970     7 113901132    C    A 0.247155  0.00874936 0.00237445
    ## 21    rs724265     8   8219182    G    A 0.626373 -0.00222894 0.00211721
    ## 22   rs3200031     8  26227484    C    T 0.078477  0.00567484 0.00380869
    ## 23   rs7824177     8 110585288    A    G 0.160511 -0.00768218 0.00279023
    ## 24  rs12543282     8 144627241    C    T 0.235324 -0.00196761 0.00241451
    ## 25  rs35025323    10  97089991    T    C 0.116053  0.00381330 0.00319786
    ## 26   rs4296031    NA        NA <NA> <NA>       NA          NA         NA
    ## 27   rs7957460    12  32945835    G    A 0.679658  0.00077032 0.00219507
    ## 28  rs12815451    NA        NA <NA> <NA>       NA          NA         NA
    ## 29   rs1558801    12 109036359    A    C 0.390822  0.00257038 0.00209913
    ## 30   rs4772440    13 102712476    C    T 0.415187 -0.00172480 0.00207860
    ## 31   rs1742401    16   1971601    G    A 0.380187 -0.00509631 0.00210995
    ## 32    rs734957    17   2612584    G    A 0.219785  0.00497224 0.00247340
    ## 33  rs11656696    17  10033679    C    A 0.431376  0.00302018 0.00206804
    ## 34   rs7215205    17  29818258    T    C 0.632021 -0.00126969 0.00212385
    ## 35   rs2316766    NA        NA <NA> <NA>       NA          NA         NA
    ## 36 rs117826338    19   5904353    C    T 0.136288  0.00672111 0.00298529
    ## 37   rs3816046    19  46118127    C    T 0.327927 -0.00126563 0.00218174
    ## 38   rs5994871    22  22091244    C    T 0.718783 -0.00159713 0.00227814
    ## 39   rs5756894    22  38450136    C    A 0.604912 -0.00157031 0.00209511
    ##            Z          P      N            TRAIT
    ## 1   3.068460 0.00215165 452302 Social_Isolation
    ## 2  -0.119937 0.90453269 452302 Social_Isolation
    ## 3   1.487620 0.13685186 452302 Social_Isolation
    ## 4   3.031890 0.00243029 452302 Social_Isolation
    ## 5  -1.296870 0.19467738 452302 Social_Isolation
    ## 6  -0.420881 0.67384176 452302 Social_Isolation
    ## 7   1.277900 0.20128646 452302 Social_Isolation
    ## 8   0.368222 0.71270799 452302 Social_Isolation
    ## 9  -2.634990 0.00841401 452302 Social_Isolation
    ## 10 -0.274062 0.78403660 452302 Social_Isolation
    ## 11 -0.646480 0.51796861 452302 Social_Isolation
    ## 12 -0.591849 0.55395179 452302 Social_Isolation
    ## 13  4.380420 0.00001184 452302 Social_Isolation
    ## 14 -1.461680 0.14382984 452302 Social_Isolation
    ## 15  2.133190 0.03290906 452302 Social_Isolation
    ## 16 -1.842280 0.06543409 452302 Social_Isolation
    ## 17  1.003620 0.31556061 452302 Social_Isolation
    ## 18 -0.951739 0.34122934 452302 Social_Isolation
    ## 19        NA         NA     NA             <NA>
    ## 20  3.684800 0.00022889 452302 Social_Isolation
    ## 21 -1.052770 0.29244630 452302 Social_Isolation
    ## 22  1.489970 0.13623202 452302 Social_Isolation
    ## 23 -2.753240 0.00590084 452302 Social_Isolation
    ## 24 -0.814912 0.41512285 452302 Social_Isolation
    ## 25  1.192450 0.23308303 452302 Social_Isolation
    ## 26        NA         NA     NA             <NA>
    ## 27  0.350931 0.72564017 452302 Social_Isolation
    ## 28        NA         NA     NA             <NA>
    ## 29  1.224500 0.22076437 452302 Social_Isolation
    ## 30 -0.829793 0.40665568 452302 Social_Isolation
    ## 31 -2.415370 0.01571909 452302 Social_Isolation
    ## 32  2.010290 0.04440102 452302 Social_Isolation
    ## 33  1.460400 0.14417926 452302 Social_Isolation
    ## 34 -0.597824 0.54995731 452302 Social_Isolation
    ## 35        NA         NA     NA             <NA>
    ## 36  2.251410 0.02435970 452302 Social_Isolation
    ## 37 -0.580102 0.56184600 452302 Social_Isolation
    ## 38 -0.701068 0.48326070 452302 Social_Isolation
    ## 39 -0.749513 0.45354817 452302 Social_Isolation

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##   target_snp proxy_snp    ld.r2 Dprime PHASE X12 CHROM       POS REF.proxy
    ## 1   rs194833  rs194834 0.996031      1 GG/TA  NA     7 103762313         G
    ## 2  rs4296031 rs1809327 1.000000      1 GG/AA  NA    11  42536345         G
    ## 3 rs12815451 rs7315646 0.863025      1 CA/TT  NA    12  51741617         T
    ## 4  rs2316766 rs2106785 0.994535      1 TT/GC  NA    17  43919105         C
    ##   ALT.proxy       AF        BETA         SE         Z         P      N
    ## 1         A 0.462672 -0.00127436 0.00205421 -0.620366 0.5350167 452302
    ## 2         A 0.820464 -0.00089469 0.00266867 -0.335257 0.7374311 452302
    ## 3         A 0.135838  0.00093249 0.00298946  0.311928 0.7550956 452302
    ## 4         T 0.221676  0.01051370 0.00246582  4.263770 0.0000201 452302
    ##              TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 Social_Isolation   G         G   T         A   T   G          TRUE
    ## 2 Social_Isolation   G         G   A         A   A   G          TRUE
    ## 3 Social_Isolation   C         A   T         T   C   T          TRUE
    ## 4 Social_Isolation   T         T   G         C   T   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Social Isolation datasets

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
    ## 1                      C                    T        0.0038  -0.00127743
    ## 2                      A                    C        0.0040   0.00302018
    ## 3                      A                    G       -0.0091   0.00136172
    ## 4                      T                    C        0.0035  -0.00056151
    ## 5                      T                    C        0.0062   0.00672111
    ## 6                      A                    G        0.0039   0.00630811
    ## 7                      T                    C        0.0043  -0.00196761
    ## 8                      C                    T        0.0070   0.00093249
    ## 9                      T                    C       -0.0076   0.00832478
    ## 10                     C                    A       -0.0041   0.00257038
    ## 11                     A                    G       -0.0038  -0.00509631
    ## 12                     T                    G       -0.0035  -0.00127436
    ## 13                     T                    C        0.0046   0.00385139
    ## 14                     T                    G        0.0069   0.01051370
    ## 15                     C                    G        0.0044  -0.00155328
    ## 16                     C                    G        0.0059  -0.00329359
    ## 17                     T                    C        0.0071   0.00567484
    ## 18                     C                    A        0.0051  -0.00436570
    ## 19                     C                    T       -0.0054   0.00381330
    ## 20                     G                    A        0.0039   0.00265205
    ## 21                     T                    C       -0.0041  -0.00126563
    ## 22                     T                    C        0.0048   0.00268483
    ## 23                     A                    G       -0.0044  -0.00089469
    ## 24                     T                    C       -0.0036  -0.00172480
    ## 25                     T                    C       -0.0050  -0.00539806
    ## 26                     C                    G       -0.0050  -0.00033616
    ## 27                     A                    C        0.0035  -0.00157031
    ## 28                     T                    C        0.0042  -0.00159713
    ## 29                     A                    T        0.0045  -0.00088449
    ## 30                     A                    C        0.0041   0.00874936
    ## 31                     C                    T       -0.0036  -0.00126969
    ## 32                     A                    G        0.0041  -0.00222894
    ## 33                     A                    G        0.0066   0.00497224
    ## 34                     T                    C        0.0047  -0.00316094
    ## 35                     G                    A        0.0040   0.00675299
    ## 36                     C                    A        0.0044   0.01036260
    ## 37                     G                    A       -0.0036  -0.00304990
    ## 38                     G                    A       -0.0059  -0.00768218
    ## 39                     A                    G       -0.0037   0.00077032
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.3379    0.342482  FALSE       FALSE     FALSE     WdotXP
    ## 2        0.4288    0.431376  FALSE       FALSE     FALSE     WdotXP
    ## 3        0.0910    0.083717  FALSE       FALSE     FALSE     WdotXP
    ## 4        0.4778    0.490324  FALSE       FALSE     FALSE     WdotXP
    ## 5        0.1353    0.136288  FALSE       FALSE     FALSE     WdotXP
    ## 6        0.4610    0.457851  FALSE       FALSE     FALSE     WdotXP
    ## 7        0.2395    0.235324  FALSE       FALSE     FALSE     WdotXP
    ## 8        0.1519    0.135838  FALSE       FALSE     FALSE     WdotXP
    ## 9        0.0707    0.074422  FALSE       FALSE     FALSE     WdotXP
    ## 10       0.3852    0.390822  FALSE       FALSE     FALSE     WdotXP
    ## 11       0.3809    0.380187  FALSE       FALSE     FALSE     WdotXP
    ## 12       0.4771    0.462672  FALSE       FALSE     FALSE     WdotXP
    ## 13       0.1892    0.194242  FALSE       FALSE     FALSE     WdotXP
    ## 14       0.2098    0.221676  FALSE       FALSE     FALSE     WdotXP
    ## 15       0.2416    0.238702  FALSE        TRUE     FALSE     WdotXP
    ## 16       0.9107    0.902991  FALSE        TRUE     FALSE     WdotXP
    ## 17       0.0773    0.078477  FALSE       FALSE     FALSE     WdotXP
    ## 18       0.2422    0.248628  FALSE       FALSE     FALSE     WdotXP
    ## 19       0.1210    0.116053  FALSE       FALSE     FALSE     WdotXP
    ## 20       0.4299    0.419825  FALSE       FALSE     FALSE     WdotXP
    ## 21       0.3206    0.327927  FALSE       FALSE     FALSE     WdotXP
    ## 22       0.8108    0.821573  FALSE       FALSE     FALSE     WdotXP
    ## 23       0.8037    0.820464  FALSE       FALSE     FALSE     WdotXP
    ## 24       0.4224    0.415187  FALSE       FALSE     FALSE     WdotXP
    ## 25       0.4935    0.494260  FALSE       FALSE     FALSE     WdotXP
    ## 26       0.1594    0.158741  FALSE        TRUE     FALSE     WdotXP
    ## 27       0.6043    0.604912  FALSE       FALSE     FALSE     WdotXP
    ## 28       0.7171    0.718783  FALSE       FALSE     FALSE     WdotXP
    ## 29       0.3984    0.388370  FALSE        TRUE     FALSE     WdotXP
    ## 30       0.2334    0.247155  FALSE       FALSE     FALSE     WdotXP
    ## 31       0.6326    0.632021  FALSE       FALSE     FALSE     WdotXP
    ## 32       0.6272    0.626373  FALSE       FALSE     FALSE     WdotXP
    ## 33       0.2235    0.219785  FALSE       FALSE     FALSE     WdotXP
    ## 34       0.2386    0.229052  FALSE       FALSE     FALSE     WdotXP
    ## 35       0.3084    0.303692  FALSE       FALSE     FALSE     WdotXP
    ## 36       0.2465    0.249909  FALSE       FALSE     FALSE     WdotXP
    ## 37       0.4028    0.404880  FALSE       FALSE     FALSE     WdotXP
    ## 38       0.1616    0.160511  FALSE       FALSE     FALSE     WdotXP
    ## 39       0.6732    0.679658  FALSE       FALSE     FALSE     WdotXP
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1            4     2405007 0.00215838 -0.591849   0.55395179
    ## 2           17    10033679 0.00206804  1.460400   0.14417926
    ## 3            2    98275354 0.00369810  0.368222   0.71270799
    ## 4            3    64395184 0.00204886 -0.274062   0.78403660
    ## 5           19     5904353 0.00298529  2.251410   0.02435970
    ## 6            1    40012184 0.00205579  3.068460   0.00215165
    ## 7            8   144627241 0.00241451 -0.814912   0.41512285
    ## 8           12    51741617 0.00298946  0.311928   0.75509560
    ## 9            4   103188709 0.00390250  2.133190   0.03290906
    ## 10          12   109036359 0.00209913  1.224500   0.22076437
    ## 11          16     1971601 0.00210995 -2.415370   0.01571909
    ## 12           7   103762313 0.00205421 -0.620366   0.53501670
    ## 13           1    58561329 0.00258897  1.487620   0.13685186
    ## 14          17    43919105 0.00246582  4.263770   0.00002010
    ## 15           3   183939044 0.00240267 -0.646480   0.51796861
    ## 16           6    52951185 0.00346060 -0.951739   0.34122934
    ## 17           8    26227484 0.00380869  1.489970   0.13623202
    ## 18           4   121643239 0.00236972 -1.842280   0.06543409
    ## 19          10    97089991 0.00319786  1.192450   0.23308303
    ## 20           2    37150793 0.00207533  1.277900   0.20128646
    ## 21          19    46118127 0.00218174 -0.580102   0.56184600
    ## 22           5    55828636 0.00267514  1.003620   0.31556061
    ## 23          11    42536345 0.00266867 -0.335257   0.73743106
    ## 24          13   102712476 0.00207860 -0.829793   0.40665568
    ## 25           3    39489651 0.00204861 -2.634990   0.00841401
    ## 26           1    57595583 0.00280279 -0.119937   0.90453269
    ## 27          22    38450136 0.00209511 -0.749513   0.45354817
    ## 28          22    22091244 0.00227814 -0.701068   0.48326070
    ## 29           2    27149258 0.00210152 -0.420881   0.67384176
    ## 30           7   113901132 0.00237445  3.684800   0.00022889
    ## 31          17    29818258 0.00212385 -0.597824   0.54995731
    ## 32           8     8219182 0.00211721 -1.052770   0.29244630
    ## 33          17     2612584 0.00247340  2.010290   0.04440102
    ## 34           1   196929310 0.00243737 -1.296870   0.19467738
    ## 35           1    98554409 0.00222732  3.031890   0.00243029
    ## 36           4    39688694 0.00236566  4.380420   0.00001184
    ## 37           4    46999235 0.00208658 -1.461680   0.14382984
    ## 38           8   110585288 0.00279023 -2.753240   0.00590084
    ## 39          12    32945835 0.00219507  0.350931   0.72564017
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1              452302 Day2018sociso            TRUE            reported
    ## 2              452302 Day2018sociso            TRUE            reported
    ## 3              452302 Day2018sociso            TRUE            reported
    ## 4              452302 Day2018sociso            TRUE            reported
    ## 5              452302 Day2018sociso            TRUE            reported
    ## 6              452302 Day2018sociso            TRUE            reported
    ## 7              452302 Day2018sociso            TRUE            reported
    ## 8              452302 Day2018sociso            TRUE            reported
    ## 9              452302 Day2018sociso            TRUE            reported
    ## 10             452302 Day2018sociso            TRUE            reported
    ## 11             452302 Day2018sociso            TRUE            reported
    ## 12             452302 Day2018sociso            TRUE            reported
    ## 13             452302 Day2018sociso            TRUE            reported
    ## 14             452302 Day2018sociso            TRUE            reported
    ## 15             452302 Day2018sociso            TRUE            reported
    ## 16             452302 Day2018sociso            TRUE            reported
    ## 17             452302 Day2018sociso            TRUE            reported
    ## 18             452302 Day2018sociso            TRUE            reported
    ## 19             452302 Day2018sociso            TRUE            reported
    ## 20             452302 Day2018sociso            TRUE            reported
    ## 21             452302 Day2018sociso            TRUE            reported
    ## 22             452302 Day2018sociso            TRUE            reported
    ## 23             452302 Day2018sociso            TRUE            reported
    ## 24             452302 Day2018sociso            TRUE            reported
    ## 25             452302 Day2018sociso            TRUE            reported
    ## 26             452302 Day2018sociso            TRUE            reported
    ## 27             452302 Day2018sociso            TRUE            reported
    ## 28             452302 Day2018sociso            TRUE            reported
    ## 29             452302 Day2018sociso            TRUE            reported
    ## 30             452302 Day2018sociso            TRUE            reported
    ## 31             452302 Day2018sociso            TRUE            reported
    ## 32             452302 Day2018sociso            TRUE            reported
    ## 33             452302 Day2018sociso            TRUE            reported
    ## 34             452302 Day2018sociso            TRUE            reported
    ## 35             452302 Day2018sociso            TRUE            reported
    ## 36             452302 Day2018sociso            TRUE            reported
    ## 37             452302 Day2018sociso            TRUE            reported
    ## 38             452302 Day2018sociso            TRUE            reported
    ## 39             452302 Day2018sociso            TRUE            reported
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
    ## 1  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 2  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 3  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 4  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 5  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 6  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 7  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 8  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 9  Grasby2020thickness             TRUE             reported      r4kjbS
    ## 10 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 11 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 12 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 13 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 14 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 15 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 16 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 17 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 18 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 19 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 20 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 21 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 22 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 23 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 24 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 25 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 26 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 27 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 28 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 29 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 30 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 31 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 32 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 33 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 34 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 35 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 36 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 37 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 38 Grasby2020thickness             TRUE             reported      r4kjbS
    ## 39 Grasby2020thickness             TRUE             reported      r4kjbS
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    8.003626e-06             1
    ## 2       2    TRUE           TRUE 5e-06    2.218840e-06             1
    ## 3       2    TRUE           TRUE 5e-06    2.650251e-05             1
    ## 4       2    TRUE           TRUE 5e-06    3.899015e-06             1
    ## 5       2    TRUE           TRUE 5e-06    1.954565e-05             1
    ## 6       2    TRUE           TRUE 5e-06    2.401423e-05        0.7524
    ## 7       2    TRUE           TRUE 5e-06    1.396361e-05             1
    ## 8       2    TRUE           TRUE 5e-06    3.554891e-06             1
    ## 9       2    TRUE           TRUE 5e-06    1.348366e-04        0.1368
    ## 10      2    TRUE           TRUE 5e-06    1.842542e-05             1
    ## 11      2    TRUE           TRUE 5e-06    1.360511e-05             1
    ## 12      2    TRUE           TRUE 5e-06    1.015579e-08             1
    ## 13      2    TRUE           TRUE 5e-06    4.378834e-06             1
    ## 14      2    TRUE           TRUE 5e-06    6.814780e-05        0.0304
    ## 15      2    TRUE           TRUE 5e-06    1.127341e-05             1
    ## 16      2    TRUE           TRUE 5e-06    3.276048e-05             1
    ## 17      2    TRUE           TRUE 5e-06    8.766200e-06             1
    ## 18      2    TRUE           TRUE 5e-06    4.326854e-05         0.266
    ## 19      2    TRUE           TRUE 5e-06    3.662091e-05             1
    ## 20      2    TRUE           TRUE 5e-06    1.322953e-06             1
    ## 21      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 22      2    TRUE           TRUE 5e-06    6.724472e-07             1
    ## 23      2    TRUE           TRUE 5e-06    7.182288e-07             1
    ## 24      2    TRUE           TRUE 5e-06    1.018265e-07             1
    ## 25      2    TRUE           TRUE 5e-06    1.284951e-05             1
    ## 26      2    TRUE           TRUE 5e-06    2.762635e-06             1
    ## 27      2    TRUE           TRUE 5e-06    9.009181e-06             1
    ## 28      2    TRUE           TRUE 5e-06    1.104379e-05             1
    ## 29      2    TRUE           TRUE 5e-06    7.491042e-06             1
    ## 30      2    TRUE           TRUE 5e-06    5.316877e-05        0.1064
    ## 31      2    TRUE           TRUE 5e-06    2.118454e-08             1
    ## 32      2    TRUE           TRUE 5e-06    1.552313e-05             1
    ## 33      2    TRUE           TRUE 5e-06    6.283968e-06             1
    ## 34      2    TRUE           TRUE 5e-06    2.639239e-05             1
    ## 35      2    TRUE           TRUE 5e-06    2.811510e-05        0.7524
    ## 36      2    TRUE           TRUE 5e-06    7.830092e-05       <0.0076
    ## 37      2    TRUE           TRUE 5e-06    2.795895e-06             1
    ## 38      2    TRUE           TRUE 5e-06    3.068432e-05             1
    ## 39      2    TRUE           TRUE 5e-06    5.137325e-06             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14         FALSE
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
    ## 32          TRUE
    ## 33          TRUE
    ## 34          TRUE
    ## 35          TRUE
    ## 36         FALSE
    ## 37          TRUE
    ## 38          TRUE
    ## 39          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs3816046          19    46118127     8.464e-07     0.561846

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

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE   0.02796891 25.49499  0.05 21.202381 0.9959111
    ## 2             TRUE   0.02612646 25.09253  0.05  9.801208 0.8791453

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
Cortical Thickness on Social Isolation. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Social
Isolation

    ##   id.exposure id.outcome       outcome            exposure
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 2      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 3      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 4      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)   38  0.3923161 0.08329252
    ## 2                           Weighted median   38  0.1896483 0.14482018
    ## 3                             Weighted mode   38 -0.2853571 0.41046017
    ## 4                                  MR Egger   38  0.3910512 0.60994864
    ##           pval
    ## 1 2.475956e-06
    ## 2 1.903503e-01
    ## 3 4.912654e-01
    ## 4 5.255045e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Social Isolation and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome            exposure
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 2      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 107.3918   36 4.992851e-09
    ## 2 Inverse variance weighted 107.3918   37 8.797755e-09

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome            exposure egger_intercept
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness    6.029172e-06
    ##            se      pval
    ## 1 0.002825399 0.9983092

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome            exposure    pt
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 113.7974 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome            exposure
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 2      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 3      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 4      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   36  0.27452000 0.08675944
    ## 2                           Weighted median   36  0.12781586 0.14665185
    ## 3                             Weighted mode   36 -0.30350936 0.36948392
    ## 4                                  MR Egger   36 -0.04748957 0.58291370
    ##         pval
    ## 1 0.00155536
    ## 2 0.38344855
    ## 3 0.41695549
    ## 4 0.93554645

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome            exposure
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ## 2      r4kjbS     WdotXP Day2018sociso Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 81.42536   34 9.131539e-06
    ## 2 Inverse variance weighted 82.19712   35 1.145806e-05

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome            exposure egger_intercept
    ## 1      r4kjbS     WdotXP Day2018sociso Grasby2020thickness     0.001510662
    ##            se      pval
    ## 1 0.002661129 0.5739839

<br>
