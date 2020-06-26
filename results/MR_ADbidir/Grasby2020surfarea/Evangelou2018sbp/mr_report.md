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

### Exposure: Cortical Surface Area

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Surface Area

    ##            SNP CHROM       POS REF ALT     AF       BETA       SE
    ## 1    rs2490556     1   2021284   T   A 0.3155   583.9623 122.1531
    ## 2    rs4846200     1   9752648   C   T 0.4191   628.7473 124.9738
    ## 3     rs499688     1  61396649   T   C 0.3482  -583.8940 123.5536
    ## 4    rs6673449     1 160043698   A   G 0.5681  -552.9050 110.5323
    ## 5   rs12137969     1 242289357   G   A 0.2412  -585.5512 128.0273
    ## 6   rs10927043     1 243762208   C   T 0.1826   719.0735 141.2684
    ## 7   rs57415181     2  48707841   G   C 0.1447  -834.6022 159.4070
    ## 8   rs10496091     2  61482261   G   A 0.2777  -642.6331 121.0228
    ## 9   rs12630663     3  28007315   T   C 0.4117   632.8110 111.2125
    ## 10  rs34464850     3 141721762   G   C 0.1534  1233.1854 152.7201
    ## 11  rs11938781     4  17924734   T   C 0.1648  -719.1710 150.5519
    ## 12  rs10029872     4  40350763   T   C 0.5251   508.7590 109.6122
    ## 13   rs2301718     4 106009763   G   A 0.2269   737.2212 132.3556
    ## 14    rs386424     5  81092787   T   G 0.3008   656.5430 120.0422
    ## 15   rs7715167     5 170778824   T   C 0.6143   662.7540 119.1375
    ## 16   rs2802295     6 108926496   A   G 0.6207   714.5850 112.9897
    ## 17  rs11759026     6 126792095   A   G 0.2376  1301.5200 134.6156
    ## 18 rs139849708     6 127369230   T   C 0.0297 -2237.8300 422.1224
    ## 19   rs6463758     7   8117636   A   G 0.5382   560.9860 112.3815
    ## 20 rs149352678     7  54920906   C   T 0.0991   967.7266 191.5244
    ## 21     rs42035     7  92239531   A   G 0.2454  -610.3230 127.8222
    ## 22     rs41563     7 104852654   G   A 0.3385   586.6639 116.3776
    ## 23  rs10251751     7 156021770   C   T 0.6639   538.0782 116.0343
    ## 24  rs76650567     8  78242034   C   T 0.0870  -902.8657 194.8981
    ## 25  rs66702753     9 103010947   A   C 0.2493  -593.2390 128.8921
    ## 26  rs10817864     9 118968579   C   T 0.5739   531.0956 111.2505
    ## 27  rs12357321    10  21790476   G   A 0.3206  -698.7452 119.6461
    ## 28   rs1628768    10 105012994   T   C 0.2386   972.9780 132.0048
    ## 29  rs17543864    11  92556100   G   A 0.3264  -623.9150 116.9886
    ## 30   rs3217901    12   4405389   A   G 0.4221   593.5960 114.7165
    ## 31   rs2066827    12  12871099   T   G 0.2333  -862.4130 159.9581
    ## 32   rs7975351    12  53902190   G   A 0.4740   611.0487 113.5536
    ## 33  rs10876864    12  56401085   G   A 0.5774  -628.5901 112.6859
    ## 34  rs10878349    12  66327632   A   G 0.5100 -1039.9900 110.4866
    ## 35  rs35227403    12  68216239   T   A 0.0588 -1271.7821 253.6458
    ## 36 rs111855983    12  80052550   T   C 0.1319  -818.6420 177.5492
    ## 37   rs2195243    12 102922986   G   C 0.2196  -769.2254 142.2462
    ## 38  rs34011931    13 111077516   A   G 0.3280   538.2090 117.7182
    ## 39   rs6572878    14  23435333   T   C 0.3997  -574.9920 113.9565
    ## 40  rs76801057    14  99728448   C   T 0.0263  2036.7834 429.5486
    ## 41   rs4265798    16  70636616   T   A 0.9332 -1221.0588 263.6357
    ## 42   rs7207463    17  16004259   A   G 0.5620  -519.7640 110.5676
    ## 43   rs6505216    17  29206421   G   T 0.2375   652.8106 142.8638
    ## 44  rs79600142    17  43897722   T   C 0.2198 -1696.8300 143.2730
    ## 45  rs12452834    17  47111739   C   T 0.3329  -626.4308 123.5899
    ## 46   rs1791513    18  22135429   A   G 0.5263  -502.3000 109.5062
    ## 47    rs743038    22  50884075   C   T 0.5560  -532.1045 115.3983
    ##             Z         P     N                 TRAIT
    ## 1    4.780577 1.748e-06 32068 Cortical_Surface_Area
    ## 2    5.031033 4.878e-07 32068 Cortical_Surface_Area
    ## 3   -4.725840 2.292e-06 31582 Cortical_Surface_Area
    ## 4   -5.002200 5.668e-07 32176 Cortical_Surface_Area
    ## 5   -4.573643 4.793e-06 32176 Cortical_Surface_Area
    ## 6    5.090123 3.578e-07 32176 Cortical_Surface_Area
    ## 7   -5.235668 1.644e-07 32176 Cortical_Surface_Area
    ## 8   -5.310017 1.096e-07 32176 Cortical_Surface_Area
    ## 9    5.690110 1.270e-08 32176 Cortical_Surface_Area
    ## 10   8.074807 6.758e-16 31984 Cortical_Surface_Area
    ## 11  -4.776900 1.780e-06 32176 Cortical_Surface_Area
    ## 12   4.641440 3.460e-06 32176 Cortical_Surface_Area
    ## 13   5.570004 2.547e-08 32176 Cortical_Surface_Area
    ## 14   5.469270 4.519e-08 32176 Cortical_Surface_Area
    ## 15   5.562930 2.653e-08 32068 Cortical_Surface_Area
    ## 16   6.324340 2.543e-10 32176 Cortical_Surface_Area
    ## 17   9.668420 4.106e-22 31907 Cortical_Surface_Area
    ## 18  -5.301370 1.149e-07 22951 Cortical_Surface_Area
    ## 19   4.991800 5.982e-07 32176 Cortical_Surface_Area
    ## 20   5.052759 4.355e-07 32176 Cortical_Surface_Area
    ## 21  -4.774780 1.799e-06 32176 Cortical_Surface_Area
    ## 22   5.041038 4.630e-07 32176 Cortical_Surface_Area
    ## 23   4.637234 3.531e-06 32176 Cortical_Surface_Area
    ## 24  -4.632501 3.613e-06 32176 Cortical_Surface_Area
    ## 25  -4.602600 4.172e-06 32176 Cortical_Surface_Area
    ## 26   4.773872 1.807e-06 32176 Cortical_Surface_Area
    ## 27  -5.840100 5.217e-09 32176 Cortical_Surface_Area
    ## 28   7.370780 1.696e-13 32176 Cortical_Surface_Area
    ## 29  -5.333126 9.654e-08 32176 Cortical_Surface_Area
    ## 30   5.174460 2.286e-07 32176 Cortical_Surface_Area
    ## 31  -5.391500 6.987e-08 24138 Cortical_Surface_Area
    ## 32   5.381148 7.401e-08 31319 Cortical_Surface_Area
    ## 33  -5.578250 2.430e-08 31319 Cortical_Surface_Area
    ## 34  -9.412850 4.829e-21 32176 Cortical_Surface_Area
    ## 35  -5.014008 5.331e-07 32176 Cortical_Surface_Area
    ## 36  -4.610790 4.011e-06 28185 Cortical_Surface_Area
    ## 37  -5.407704 6.384e-08 29708 Cortical_Surface_Area
    ## 38   4.572010 4.831e-06 32176 Cortical_Surface_Area
    ## 39  -5.045710 4.518e-07 31790 Cortical_Surface_Area
    ## 40   4.741683 2.119e-06 23846 Cortical_Surface_Area
    ## 41  -4.631614 3.628e-06 30025 Cortical_Surface_Area
    ## 42  -4.700870 2.591e-06 32176 Cortical_Surface_Area
    ## 43   4.569461 4.890e-06 31430 Cortical_Surface_Area
    ## 44 -11.843300 2.331e-32 29435 Cortical_Surface_Area
    ## 45  -5.068625 4.007e-07 30867 Cortical_Surface_Area
    ## 46  -4.586950 4.498e-06 32176 Cortical_Surface_Area
    ## 47  -4.611025 4.007e-06 31216 Cortical_Surface_Area

<br>

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Systolic Blood Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1    rs2490556     1   2021284    T    A 0.3087 -0.0238 0.0337 -0.70623145
    ## 2    rs4846200     1   9752648    C    T 0.4144 -0.0567 0.0325 -1.74461538
    ## 3     rs499688     1  61396649    T    C 0.3523  0.0157 0.0331  0.47432000
    ## 4    rs6673449     1 160043698    A    G 0.5720  0.0713 0.0304  2.34539000
    ## 5   rs12137969     1 242289357    G    A 0.2374  0.0056 0.0355  0.15774648
    ## 6   rs10927043     1 243762208    C    T 0.1858 -0.0357 0.0391 -0.91304348
    ## 7   rs57415181     2  48707841    G    C 0.1477  0.0025 0.0433  0.05773672
    ## 8   rs10496091     2  61482261    G    A 0.2818  0.1150 0.0334  3.44311377
    ## 9   rs12630663     3  28007315    T    C 0.4114 -0.0179 0.0307 -0.58306200
    ## 10  rs34464850     3 141721762    G    C 0.1517 -0.1385 0.0420 -3.29761905
    ## 11  rs11938781     4  17924734    T    C 0.1641  0.2082 0.0413  5.04116000
    ## 12  rs10029872     4  40350763    T    C 0.5191 -0.0707 0.0302 -2.34106000
    ## 13   rs2301718     4 106009763    G    A 0.2193  0.0099 0.0370  0.26756757
    ## 14    rs386424     5  81092787    T    G 0.2948  0.0315 0.0332  0.94879500
    ## 15   rs7715167     5 170778824    T    C 0.6088 -0.1222 0.0313 -3.90415000
    ## 16   rs2802295     6 108926496    A    G 0.6214 -0.1851 0.0311 -5.95177000
    ## 17  rs11759026     6 126792095    A    G 0.2337 -0.2205 0.0365 -6.04110000
    ## 18 rs139849708     6 127369230    T    C 0.0279  0.3811 0.1024  3.72168000
    ## 19   rs6463758     7   8117636    A    G 0.5426 -0.0531 0.0306 -1.73529000
    ## 20 rs149352678     7  54920906    C    T 0.0986 -0.0112 0.0521 -0.21497121
    ## 21     rs42035     7  92239531    A    G 0.2478 -0.2709 0.0352 -7.69602000
    ## 22     rs41563     7 104852654    G    A 0.3454  0.0330 0.0317  1.04100946
    ## 23  rs10251751     7 156021770    C    T 0.6606 -0.0844 0.0319 -2.64576803
    ## 24  rs76650567     8  78242034    C    T 0.0834 -0.0910 0.0549 -1.65755920
    ## 25  rs66702753     9 103010947    A    C 0.2537  0.0914 0.0348  2.62644000
    ## 26  rs10817864     9 118968579    C    T 0.5795  0.0225 0.0306  0.73529412
    ## 27  rs12357321    10  21790476    G    A 0.3150  0.0988 0.0331  2.98489426
    ## 28   rs1628768    10 105012994    T    C 0.2402  0.0222 0.0357  0.62184900
    ## 29  rs17543864    11  92556100    G    A 0.3242 -0.0967 0.0324 -2.98456790
    ## 30   rs3217901    12   4405389    A    G 0.4276 -0.0621 0.0311 -1.99678000
    ## 31   rs2066827    12  12871099    T    G 0.2302  0.0709 0.0380  1.86579000
    ## 32   rs7975351    12  53902190    G    A 0.4773 -0.0245 0.0307 -0.79804560
    ## 33  rs10876864    12  56401085    G    A 0.5799  0.1171 0.0303  3.86468647
    ## 34  rs10878349    12  66327632    A    G 0.5119  0.2327 0.0300  7.75667000
    ## 35  rs35227403    12  68216239    T    A 0.0602  0.0276 0.0664  0.41566265
    ## 36 rs111855983    12  80052550    T    C 0.1347  0.1139 0.0448  2.54241000
    ## 37   rs2195243    12 102922986    G    C 0.2211 -0.1752 0.0367 -4.77384196
    ## 38  rs34011931    13 111077516    A    G 0.3285 -0.0170 0.0320 -0.53125000
    ## 39   rs6572878    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 40  rs76801057    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 41   rs4265798    16  70636616    T    A 0.9350 -0.0117 0.0672 -0.17410714
    ## 42   rs7207463    17  16004259    A    G 0.5634 -0.0981 0.0302 -3.24834000
    ## 43   rs6505216    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 44  rs79600142    17  43897722    T    C 0.2205 -0.2530 0.0376 -6.72872000
    ## 45  rs12452834    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 46   rs1791513    18  22135429    A    G 0.5299  0.0992 0.0303  3.27393000
    ## 47    rs743038    22  50884075    C    T 0.5575 -0.1130 0.0313 -3.61022364
    ##            P      N                   TRAIT
    ## 1  4.809e-01 709451 Systolic_Blood_Pressure
    ## 2  8.124e-02 737165 Systolic_Blood_Pressure
    ## 3  6.367e-01 728445 Systolic_Blood_Pressure
    ## 4  1.901e-02 738170 Systolic_Blood_Pressure
    ## 5  8.751e-01 737053 Systolic_Blood_Pressure
    ## 6  3.616e-01 734719 Systolic_Blood_Pressure
    ## 7  9.543e-01 738169 Systolic_Blood_Pressure
    ## 8  5.760e-04 738170 Systolic_Blood_Pressure
    ## 9  5.593e-01 738170 Systolic_Blood_Pressure
    ## 10 9.825e-04 738168 Systolic_Blood_Pressure
    ## 11 4.504e-07 735151 Systolic_Blood_Pressure
    ## 12 1.933e-02 735152 Systolic_Blood_Pressure
    ## 13 7.891e-01 726888 Systolic_Blood_Pressure
    ## 14 3.428e-01 738168 Systolic_Blood_Pressure
    ## 15 9.623e-05 735151 Systolic_Blood_Pressure
    ## 16 2.699e-09 738170 Systolic_Blood_Pressure
    ## 17 1.592e-09 737163 Systolic_Blood_Pressure
    ## 18 1.976e-04 728508 Systolic_Blood_Pressure
    ## 19 8.284e-02 737163 Systolic_Blood_Pressure
    ## 20 8.304e-01 737164 Systolic_Blood_Pressure
    ## 21 1.313e-14 736048 Systolic_Blood_Pressure
    ## 22 2.982e-01 738168 Systolic_Blood_Pressure
    ## 23 8.088e-03 738168 Systolic_Blood_Pressure
    ## 24 9.753e-02 738168 Systolic_Blood_Pressure
    ## 25 8.663e-03 745820 Systolic_Blood_Pressure
    ## 26 4.632e-01 737101 Systolic_Blood_Pressure
    ## 27 2.846e-03 737165 Systolic_Blood_Pressure
    ## 28 5.339e-01 738169 Systolic_Blood_Pressure
    ## 29 2.853e-03 738170 Systolic_Blood_Pressure
    ## 30 4.568e-02 745820 Systolic_Blood_Pressure
    ## 31 6.181e-02 722429 Systolic_Blood_Pressure
    ## 32 4.249e-01 737101 Systolic_Blood_Pressure
    ## 33 1.097e-04 745820 Systolic_Blood_Pressure
    ## 34 8.502e-15 745820 Systolic_Blood_Pressure
    ## 35 6.778e-01 745816 Systolic_Blood_Pressure
    ## 36 1.102e-02 743482 Systolic_Blood_Pressure
    ## 37 1.797e-06 742755 Systolic_Blood_Pressure
    ## 38 5.950e-01 745819 Systolic_Blood_Pressure
    ## 39        NA     NA                    <NA>
    ## 40        NA     NA                    <NA>
    ## 41 8.615e-01 726894 Systolic_Blood_Pressure
    ## 42 1.154e-03 745819 Systolic_Blood_Pressure
    ## 43        NA     NA                    <NA>
    ## 44 1.762e-11 739914 Systolic_Blood_Pressure
    ## 45        NA     NA                    <NA>
    ## 46 1.079e-03 745820 Systolic_Blood_Pressure
    ## 47 3.030e-04 730215 Systolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

    ##   target_snp  proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs6572878 rs10146424 0.987642      1 CG/TT  NA    14 23438980      TRUE
    ## 2 rs76801057       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ## 3  rs6505216       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ## 4 rs12452834       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ##   ALT.proxy     AF   BETA    SE       Z         P      N
    ## 1         G 0.4004 0.1202 0.031 3.87742 0.0001058 744815
    ## 2      <NA>     NA     NA    NA      NA        NA     NA
    ## 3      <NA>     NA     NA    NA      NA        NA     NA
    ## 4      <NA>     NA     NA    NA      NA        NA     NA
    ##                     TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1 Systolic_Blood_Pressure    C         G TRUE      TRUE    C TRUE
    ## 2                    <NA> <NA>      <NA>   NA        NA <NA>   NA
    ## 3                    <NA> <NA>      <NA>   NA        NA <NA>   NA
    ## 4                    <NA> <NA>      <NA>   NA        NA <NA>   NA
    ##   proxy.outcome
    ## 1          TRUE
    ## 2            NA
    ## 3            NA
    ## 4            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and Systolic Blood
Pressure datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10029872                      C                     T
    ## 2   rs10251751                      T                     C
    ## 3   rs10496091                      A                     G
    ## 4   rs10817864                      T                     C
    ## 5   rs10876864                      A                     G
    ## 6   rs10878349                      G                     A
    ## 7   rs10927043                      T                     C
    ## 8  rs111855983                      C                     T
    ## 9   rs11759026                      G                     A
    ## 10  rs11938781                      C                     T
    ## 11  rs12137969                      A                     G
    ## 12  rs12357321                      A                     G
    ## 13  rs12630663                      C                     T
    ## 14 rs139849708                      C                     T
    ## 15 rs149352678                      T                     C
    ## 16   rs1628768                      C                     T
    ## 17  rs17543864                      A                     G
    ## 18   rs1791513                      G                     A
    ## 19   rs2066827                      G                     T
    ## 20   rs2195243                      C                     G
    ## 21   rs2301718                      A                     G
    ## 22   rs2490556                      A                     T
    ## 23   rs2802295                      G                     A
    ## 24   rs3217901                      G                     A
    ## 25  rs34011931                      G                     A
    ## 26  rs34464850                      C                     G
    ## 27  rs35227403                      A                     T
    ## 28    rs386424                      G                     T
    ## 29     rs41563                      A                     G
    ## 30     rs42035                      G                     A
    ## 31   rs4265798                      A                     T
    ## 32   rs4846200                      T                     C
    ## 33    rs499688                      C                     T
    ## 34  rs57415181                      C                     G
    ## 35   rs6463758                      G                     A
    ## 36   rs6572878                      C                     T
    ## 37  rs66702753                      C                     A
    ## 38   rs6673449                      G                     A
    ## 39   rs7207463                      G                     A
    ## 40    rs743038                      T                     C
    ## 41  rs76650567                      T                     C
    ## 42   rs7715167                      C                     T
    ## 43  rs79600142                      C                     T
    ## 44   rs7975351                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T      508.7590      -0.0707
    ## 2                      T                    C      538.0782      -0.0844
    ## 3                      A                    G     -642.6331       0.1150
    ## 4                      T                    C      531.0956       0.0225
    ## 5                      A                    G     -628.5901       0.1171
    ## 6                      G                    A    -1039.9900       0.2327
    ## 7                      T                    C      719.0735      -0.0357
    ## 8                      C                    T     -818.6420       0.1139
    ## 9                      G                    A     1301.5200      -0.2205
    ## 10                     C                    T     -719.1710       0.2082
    ## 11                     A                    G     -585.5512       0.0056
    ## 12                     A                    G     -698.7452       0.0988
    ## 13                     C                    T      632.8110      -0.0179
    ## 14                     C                    T    -2237.8300       0.3811
    ## 15                     T                    C      967.7266      -0.0112
    ## 16                     C                    T      972.9780       0.0222
    ## 17                     A                    G     -623.9150      -0.0967
    ## 18                     G                    A     -502.3000       0.0992
    ## 19                     G                    T     -862.4130       0.0709
    ## 20                     C                    G     -769.2254      -0.1752
    ## 21                     A                    G      737.2212       0.0099
    ## 22                     A                    T      583.9623      -0.0238
    ## 23                     G                    A      714.5850      -0.1851
    ## 24                     G                    A      593.5960      -0.0621
    ## 25                     G                    A      538.2090      -0.0170
    ## 26                     C                    G     1233.1854      -0.1385
    ## 27                     A                    T    -1271.7821       0.0276
    ## 28                     G                    T      656.5430       0.0315
    ## 29                     A                    G      586.6639       0.0330
    ## 30                     G                    A     -610.3230      -0.2709
    ## 31                     A                    T    -1221.0588      -0.0117
    ## 32                     T                    C      628.7473      -0.0567
    ## 33                     C                    T     -583.8940       0.0157
    ## 34                     C                    G     -834.6022       0.0025
    ## 35                     G                    A      560.9860      -0.0531
    ## 36                     C                    T     -574.9920       0.1202
    ## 37                     C                    A     -593.2390       0.0914
    ## 38                     G                    A     -552.9050       0.0713
    ## 39                     G                    A     -519.7640      -0.0981
    ## 40                     T                    C     -532.1045      -0.1130
    ## 41                     T                    C     -902.8657      -0.0910
    ## 42                     C                    T      662.7540      -0.1222
    ## 43                     C                    T    -1696.8300      -0.2530
    ## 44                     A                    G      611.0487      -0.0245
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251      0.5191  FALSE       FALSE     FALSE     R7nCBd
    ## 2        0.6639      0.6606  FALSE       FALSE     FALSE     R7nCBd
    ## 3        0.2777      0.2818  FALSE       FALSE     FALSE     R7nCBd
    ## 4        0.5739      0.5795  FALSE       FALSE     FALSE     R7nCBd
    ## 5        0.5774      0.5799  FALSE       FALSE     FALSE     R7nCBd
    ## 6        0.5100      0.5119  FALSE       FALSE     FALSE     R7nCBd
    ## 7        0.1826      0.1858  FALSE       FALSE     FALSE     R7nCBd
    ## 8        0.1319      0.1347  FALSE       FALSE     FALSE     R7nCBd
    ## 9        0.2376      0.2337  FALSE       FALSE     FALSE     R7nCBd
    ## 10       0.1648      0.1641  FALSE       FALSE     FALSE     R7nCBd
    ## 11       0.2412      0.2374  FALSE       FALSE     FALSE     R7nCBd
    ## 12       0.3206      0.3150  FALSE       FALSE     FALSE     R7nCBd
    ## 13       0.4117      0.4114  FALSE       FALSE     FALSE     R7nCBd
    ## 14       0.0297      0.0279  FALSE       FALSE     FALSE     R7nCBd
    ## 15       0.0991      0.0986  FALSE       FALSE     FALSE     R7nCBd
    ## 16       0.2386      0.2402  FALSE       FALSE     FALSE     R7nCBd
    ## 17       0.3264      0.3242  FALSE       FALSE     FALSE     R7nCBd
    ## 18       0.5263      0.5299  FALSE       FALSE     FALSE     R7nCBd
    ## 19       0.2333      0.2302  FALSE       FALSE     FALSE     R7nCBd
    ## 20       0.2196      0.2211  FALSE        TRUE     FALSE     R7nCBd
    ## 21       0.2269      0.2193  FALSE       FALSE     FALSE     R7nCBd
    ## 22       0.3155      0.3087  FALSE        TRUE     FALSE     R7nCBd
    ## 23       0.6207      0.6214  FALSE       FALSE     FALSE     R7nCBd
    ## 24       0.4221      0.4276  FALSE       FALSE     FALSE     R7nCBd
    ## 25       0.3280      0.3285  FALSE       FALSE     FALSE     R7nCBd
    ## 26       0.1534      0.1517  FALSE        TRUE     FALSE     R7nCBd
    ## 27       0.0588      0.0602  FALSE        TRUE     FALSE     R7nCBd
    ## 28       0.3008      0.2948  FALSE       FALSE     FALSE     R7nCBd
    ## 29       0.3385      0.3454  FALSE       FALSE     FALSE     R7nCBd
    ## 30       0.2454      0.2478  FALSE       FALSE     FALSE     R7nCBd
    ## 31       0.9332      0.9350  FALSE        TRUE     FALSE     R7nCBd
    ## 32       0.4191      0.4144  FALSE       FALSE     FALSE     R7nCBd
    ## 33       0.3482      0.3523  FALSE       FALSE     FALSE     R7nCBd
    ## 34       0.1447      0.1477  FALSE        TRUE     FALSE     R7nCBd
    ## 35       0.5382      0.5426  FALSE       FALSE     FALSE     R7nCBd
    ## 36       0.3997      0.4004  FALSE       FALSE     FALSE     R7nCBd
    ## 37       0.2493      0.2537  FALSE       FALSE     FALSE     R7nCBd
    ## 38       0.5681      0.5720  FALSE       FALSE     FALSE     R7nCBd
    ## 39       0.5620      0.5634  FALSE       FALSE     FALSE     R7nCBd
    ## 40       0.5560      0.5575  FALSE       FALSE     FALSE     R7nCBd
    ## 41       0.0870      0.0834  FALSE       FALSE     FALSE     R7nCBd
    ## 42       0.6143      0.6088  FALSE       FALSE     FALSE     R7nCBd
    ## 43       0.2198      0.2205  FALSE       FALSE     FALSE     R7nCBd
    ## 44       0.4740      0.4773  FALSE       FALSE     FALSE     R7nCBd
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            4    40350763     0.0302 -2.34106000    1.933e-02
    ## 2            7   156021770     0.0319 -2.64576803    8.088e-03
    ## 3            2    61482261     0.0334  3.44311377    5.760e-04
    ## 4            9   118968579     0.0306  0.73529412    4.632e-01
    ## 5           12    56401085     0.0303  3.86468647    1.097e-04
    ## 6           12    66327632     0.0300  7.75667000    8.502e-15
    ## 7            1   243762208     0.0391 -0.91304348    3.616e-01
    ## 8           12    80052550     0.0448  2.54241000    1.102e-02
    ## 9            6   126792095     0.0365 -6.04110000    1.592e-09
    ## 10           4    17924734     0.0413  5.04116000    4.504e-07
    ## 11           1   242289357     0.0355  0.15774648    8.751e-01
    ## 12          10    21790476     0.0331  2.98489426    2.846e-03
    ## 13           3    28007315     0.0307 -0.58306200    5.593e-01
    ## 14           6   127369230     0.1024  3.72168000    1.976e-04
    ## 15           7    54920906     0.0521 -0.21497121    8.304e-01
    ## 16          10   105012994     0.0357  0.62184900    5.339e-01
    ## 17          11    92556100     0.0324 -2.98456790    2.853e-03
    ## 18          18    22135429     0.0303  3.27393000    1.079e-03
    ## 19          12    12871099     0.0380  1.86579000    6.181e-02
    ## 20          12   102922986     0.0367 -4.77384196    1.797e-06
    ## 21           4   106009763     0.0370  0.26756757    7.891e-01
    ## 22           1     2021284     0.0337 -0.70623145    4.809e-01
    ## 23           6   108926496     0.0311 -5.95177000    2.699e-09
    ## 24          12     4405389     0.0311 -1.99678000    4.568e-02
    ## 25          13   111077516     0.0320 -0.53125000    5.950e-01
    ## 26           3   141721762     0.0420 -3.29761905    9.825e-04
    ## 27          12    68216239     0.0664  0.41566265    6.778e-01
    ## 28           5    81092787     0.0332  0.94879500    3.428e-01
    ## 29           7   104852654     0.0317  1.04100946    2.982e-01
    ## 30           7    92239531     0.0352 -7.69602000    1.313e-14
    ## 31          16    70636616     0.0672 -0.17410714    8.615e-01
    ## 32           1     9752648     0.0325 -1.74461538    8.124e-02
    ## 33           1    61396649     0.0331  0.47432000    6.367e-01
    ## 34           2    48707841     0.0433  0.05773672    9.543e-01
    ## 35           7     8117636     0.0306 -1.73529000    8.284e-02
    ## 36          14    23438980     0.0310  3.87742000    1.058e-04
    ## 37           9   103010947     0.0348  2.62644000    8.663e-03
    ## 38           1   160043698     0.0304  2.34539000    1.901e-02
    ## 39          17    16004259     0.0302 -3.24834000    1.154e-03
    ## 40          22    50884075     0.0313 -3.61022364    3.030e-04
    ## 41           8    78242034     0.0549 -1.65755920    9.753e-02
    ## 42           5   170778824     0.0313 -3.90415000    9.623e-05
    ## 43          17    43897722     0.0376 -6.72872000    1.762e-11
    ## 44          12    53902190     0.0307 -0.79804560    4.249e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              735152 Evangelou2018sbp            TRUE            reported
    ## 2              738168 Evangelou2018sbp            TRUE            reported
    ## 3              738170 Evangelou2018sbp            TRUE            reported
    ## 4              737101 Evangelou2018sbp            TRUE            reported
    ## 5              745820 Evangelou2018sbp            TRUE            reported
    ## 6              745820 Evangelou2018sbp            TRUE            reported
    ## 7              734719 Evangelou2018sbp            TRUE            reported
    ## 8              743482 Evangelou2018sbp            TRUE            reported
    ## 9              737163 Evangelou2018sbp            TRUE            reported
    ## 10             735151 Evangelou2018sbp            TRUE            reported
    ## 11             737053 Evangelou2018sbp            TRUE            reported
    ## 12             737165 Evangelou2018sbp            TRUE            reported
    ## 13             738170 Evangelou2018sbp            TRUE            reported
    ## 14             728508 Evangelou2018sbp            TRUE            reported
    ## 15             737164 Evangelou2018sbp            TRUE            reported
    ## 16             738169 Evangelou2018sbp            TRUE            reported
    ## 17             738170 Evangelou2018sbp            TRUE            reported
    ## 18             745820 Evangelou2018sbp            TRUE            reported
    ## 19             722429 Evangelou2018sbp            TRUE            reported
    ## 20             742755 Evangelou2018sbp            TRUE            reported
    ## 21             726888 Evangelou2018sbp            TRUE            reported
    ## 22             709451 Evangelou2018sbp            TRUE            reported
    ## 23             738170 Evangelou2018sbp            TRUE            reported
    ## 24             745820 Evangelou2018sbp            TRUE            reported
    ## 25             745819 Evangelou2018sbp            TRUE            reported
    ## 26             738168 Evangelou2018sbp            TRUE            reported
    ## 27             745816 Evangelou2018sbp            TRUE            reported
    ## 28             738168 Evangelou2018sbp            TRUE            reported
    ## 29             738168 Evangelou2018sbp            TRUE            reported
    ## 30             736048 Evangelou2018sbp            TRUE            reported
    ## 31             726894 Evangelou2018sbp            TRUE            reported
    ## 32             737165 Evangelou2018sbp            TRUE            reported
    ## 33             728445 Evangelou2018sbp            TRUE            reported
    ## 34             738169 Evangelou2018sbp            TRUE            reported
    ## 35             737163 Evangelou2018sbp            TRUE            reported
    ## 36             744815 Evangelou2018sbp            TRUE            reported
    ## 37             745820 Evangelou2018sbp            TRUE            reported
    ## 38             738170 Evangelou2018sbp            TRUE            reported
    ## 39             745819 Evangelou2018sbp            TRUE            reported
    ## 40             730215 Evangelou2018sbp            TRUE            reported
    ## 41             738168 Evangelou2018sbp            TRUE            reported
    ## 42             735151 Evangelou2018sbp            TRUE            reported
    ## 43             739914 Evangelou2018sbp            TRUE            reported
    ## 44             737101 Evangelou2018sbp            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13            NA               <NA>              <NA>              <NA>
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23            NA               <NA>              <NA>              <NA>
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
    ## 36          TRUE          rs6572878        rs10146424                 C
    ## 37            NA               <NA>              <NA>              <NA>
    ## 38            NA               <NA>              <NA>              <NA>
    ## 39            NA               <NA>              <NA>              <NA>
    ## 40            NA               <NA>              <NA>              <NA>
    ## 41            NA               <NA>              <NA>              <NA>
    ## 42            NA               <NA>              <NA>              <NA>
    ## 43            NA               <NA>              <NA>              <NA>
    ## 44            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 NA             <NA>               NA            4
    ## 2                 NA             <NA>               NA            7
    ## 3                 NA             <NA>               NA            2
    ## 4                 NA             <NA>               NA            9
    ## 5                 NA             <NA>               NA           12
    ## 6                 NA             <NA>               NA           12
    ## 7                 NA             <NA>               NA            1
    ## 8                 NA             <NA>               NA           12
    ## 9                 NA             <NA>               NA            6
    ## 10                NA             <NA>               NA            4
    ## 11                NA             <NA>               NA            1
    ## 12                NA             <NA>               NA           10
    ## 13                NA             <NA>               NA            3
    ## 14                NA             <NA>               NA            6
    ## 15                NA             <NA>               NA            7
    ## 16                NA             <NA>               NA           10
    ## 17                NA             <NA>               NA           11
    ## 18                NA             <NA>               NA           18
    ## 19                NA             <NA>               NA           12
    ## 20                NA             <NA>               NA           12
    ## 21                NA             <NA>               NA            4
    ## 22                NA             <NA>               NA            1
    ## 23                NA             <NA>               NA            6
    ## 24                NA             <NA>               NA           12
    ## 25                NA             <NA>               NA           13
    ## 26                NA             <NA>               NA            3
    ## 27                NA             <NA>               NA           12
    ## 28                NA             <NA>               NA            5
    ## 29                NA             <NA>               NA            7
    ## 30                NA             <NA>               NA            7
    ## 31                NA             <NA>               NA           16
    ## 32                NA             <NA>               NA            1
    ## 33                NA             <NA>               NA            1
    ## 34                NA             <NA>               NA            2
    ## 35                NA             <NA>               NA            7
    ## 36              TRUE                G             TRUE           14
    ## 37                NA             <NA>               NA            9
    ## 38                NA             <NA>               NA            1
    ## 39                NA             <NA>               NA           17
    ## 40                NA             <NA>               NA           22
    ## 41                NA             <NA>               NA            8
    ## 42                NA             <NA>               NA            5
    ## 43                NA             <NA>               NA           17
    ## 44                NA             <NA>               NA           12
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      40350763    109.6122   4.641440     3.460e-06               32176
    ## 2     156021770    116.0343   4.637234     3.531e-06               32176
    ## 3      61482261    121.0228  -5.310017     1.096e-07               32176
    ## 4     118968579    111.2505   4.773872     1.807e-06               32176
    ## 5      56401085    112.6859  -5.578250     2.430e-08               31319
    ## 6      66327632    110.4866  -9.412850     4.829e-21               32176
    ## 7     243762208    141.2684   5.090123     3.578e-07               32176
    ## 8      80052550    177.5492  -4.610790     4.011e-06               28185
    ## 9     126792095    134.6156   9.668420     4.106e-22               31907
    ## 10     17924734    150.5519  -4.776900     1.780e-06               32176
    ## 11    242289357    128.0273  -4.573643     4.793e-06               32176
    ## 12     21790476    119.6461  -5.840100     5.217e-09               32176
    ## 13     28007315    111.2125   5.690110     1.270e-08               32176
    ## 14    127369230    422.1224  -5.301370     1.149e-07               22951
    ## 15     54920906    191.5244   5.052759     4.355e-07               32176
    ## 16    105012994    132.0048   7.370780     1.696e-13               32176
    ## 17     92556100    116.9886  -5.333126     9.654e-08               32176
    ## 18     22135429    109.5062  -4.586950     4.498e-06               32176
    ## 19     12871099    159.9581  -5.391500     6.987e-08               24138
    ## 20    102922986    142.2462  -5.407704     6.384e-08               29708
    ## 21    106009763    132.3556   5.570004     2.547e-08               32176
    ## 22      2021284    122.1531   4.780577     1.748e-06               32068
    ## 23    108926496    112.9897   6.324340     2.543e-10               32176
    ## 24      4405389    114.7165   5.174460     2.286e-07               32176
    ## 25    111077516    117.7182   4.572010     4.831e-06               32176
    ## 26    141721762    152.7201   8.074807     6.758e-16               31984
    ## 27     68216239    253.6458  -5.014008     5.331e-07               32176
    ## 28     81092787    120.0422   5.469270     4.519e-08               32176
    ## 29    104852654    116.3776   5.041038     4.630e-07               32176
    ## 30     92239531    127.8222  -4.774780     1.799e-06               32176
    ## 31     70636616    263.6357  -4.631614     3.628e-06               30025
    ## 32      9752648    124.9738   5.031033     4.878e-07               32068
    ## 33     61396649    123.5536  -4.725840     2.292e-06               31582
    ## 34     48707841    159.4070  -5.235668     1.644e-07               32176
    ## 35      8117636    112.3815   4.991800     5.982e-07               32176
    ## 36     23435333    113.9565  -5.045710     4.518e-07               31790
    ## 37    103010947    128.8921  -4.602600     4.172e-06               32176
    ## 38    160043698    110.5323  -5.002200     5.668e-07               32176
    ## 39     16004259    110.5676  -4.700870     2.591e-06               32176
    ## 40     50884075    115.3983  -4.611025     4.007e-06               31216
    ## 41     78242034    194.8981  -4.632501     3.613e-06               32176
    ## 42    170778824    119.1375   5.562930     2.653e-08               32068
    ## 43     43897722    143.2730 -11.843300     2.331e-32               29435
    ## 44     53902190    113.5536   5.381148     7.401e-08               31319
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 2  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 3  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 4  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 5  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 6  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 7  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 8  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 9  Grasby2020surfarea             TRUE             reported      orCcRk
    ## 10 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 11 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 12 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 13 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 14 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 15 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 16 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 17 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 18 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 19 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 20 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 21 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 22 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 23 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 24 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 25 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 26 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 27 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 28 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 29 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 30 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 31 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 32 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 33 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 34 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 35 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 36 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 37 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 38 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 39 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 40 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 41 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 42 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 43 Grasby2020surfarea             TRUE             reported      orCcRk
    ## 44 Grasby2020surfarea             TRUE             reported      orCcRk
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    2.041945e-03             1
    ## 2       2    TRUE           TRUE 5e-06    3.318992e-03             1
    ## 3       2    TRUE           TRUE 5e-06    7.020131e-03         0.468
    ## 4       2    TRUE           TRUE 5e-06    2.610879e-03             1
    ## 5       2    TRUE           TRUE 5e-06    7.578540e-03        0.1794
    ## 6       2    TRUE          FALSE 5e-06              NA          <NA>
    ## 7       2    TRUE           TRUE 5e-06    2.668389e-06             1
    ## 8       2    TRUE           TRUE 5e-06    5.344530e-03             1
    ## 9       2    TRUE          FALSE 5e-06              NA          <NA>
    ## 10      2    TRUE           TRUE 5e-06    3.045421e-02       <0.0078
    ## 11      2    TRUE           TRUE 5e-06    6.370180e-04             1
    ## 12      2    TRUE           TRUE 5e-06    4.163000e-03             1
    ## 13      2    TRUE           TRUE 5e-06    2.361566e-04             1
    ## 14      2    TRUE           TRUE 5e-06    7.505587e-02        0.3354
    ## 15      2    TRUE           TRUE 5e-06    1.594647e-03             1
    ## 16      2    TRUE           TRUE 5e-06    5.859326e-03             1
    ## 17      2    TRUE           TRUE 5e-06    1.753294e-02       <0.0078
    ## 18      2    TRUE           TRUE 5e-06    5.557095e-03        0.6396
    ## 19      2    TRUE           TRUE 5e-06    7.356751e-04             1
    ## 20      2    TRUE           TRUE 5e-06    4.917170e-02       <0.0078
    ## 21      2    TRUE           TRUE 5e-06    2.448066e-03             1
    ## 22      2    TRUE           TRUE 5e-06    4.387519e-05             1
    ## 23      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 24      2    TRUE           TRUE 5e-06    1.031104e-03             1
    ## 25      2    TRUE           TRUE 5e-06    1.238752e-04             1
    ## 26      2    TRUE           TRUE 5e-06    6.272622e-03             1
    ## 27      2    TRUE           TRUE 5e-06    1.548282e-03             1
    ## 28      2    TRUE           TRUE 5e-06    4.536091e-03             1
    ## 29      2    TRUE           TRUE 5e-06    4.218066e-03             1
    ## 30      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 31      2    TRUE           TRUE 5e-06    5.892418e-03             1
    ## 32      2    TRUE           TRUE 5e-06    6.111118e-04             1
    ## 33      2    TRUE           TRUE 5e-06    2.220413e-04             1
    ## 34      2    TRUE           TRUE 5e-06    1.751357e-03             1
    ## 35      2    TRUE           TRUE 5e-06    6.035510e-04             1
    ## 36      2    TRUE           TRUE 5e-06    8.565634e-03        0.1014
    ## 37      2    TRUE           TRUE 5e-06    3.826398e-03             1
    ## 38      2    TRUE           TRUE 5e-06    1.901610e-03             1
    ## 39      2    TRUE           TRUE 5e-06    1.629176e-02       <0.0078
    ## 40      2    TRUE           TRUE 5e-06    2.057158e-02       <0.0078
    ## 41      2    TRUE           TRUE 5e-06    1.971804e-02        0.4758
    ## 42      2    TRUE           TRUE 5e-06    8.208013e-03        0.1326
    ## 43      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 44      2    TRUE           TRUE 5e-06    5.465450e-05             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6             NA
    ## 7           TRUE
    ## 8           TRUE
    ## 9             NA
    ## 10         FALSE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17         FALSE
    ## 18          TRUE
    ## 19          TRUE
    ## 20         FALSE
    ## 21          TRUE
    ## 22          TRUE
    ## 23            NA
    ## 24          TRUE
    ## 25          TRUE
    ## 26          TRUE
    ## 27          TRUE
    ## 28          TRUE
    ## 29          TRUE
    ## 30            NA
    ## 31          TRUE
    ## 32          TRUE
    ## 33          TRUE
    ## 34          TRUE
    ## 35          TRUE
    ## 36          TRUE
    ## 37          TRUE
    ## 38          TRUE
    ## 39         FALSE
    ## 40         FALSE
    ## 41          TRUE
    ## 42          TRUE
    ## 43            NA
    ## 44          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs10878349          12    66327632     4.829e-21    8.502e-15
    ## 2 rs11759026           6   126792095     4.106e-22    1.592e-09
    ## 3  rs2802295           6   108926496     2.543e-10    2.699e-09
    ## 4    rs42035           7    92239531     1.799e-06    1.313e-14
    ## 5 rs79600142          17    43897722     2.331e-32    1.762e-11

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

    ##   outliers_removed pve.exposure        F Alpha      NCP   Power
    ## 1            FALSE   0.03149480 28.07388  0.05 38.74924 0.99999
    ## 2             TRUE   0.02775578 28.27443  0.05 67.86969 1.00000

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
Cortical Surface Area on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Systolic
Blood Pressure

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 2      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 3      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 4      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   39 -5.186647e-05
    ## 2                           Weighted median   39 -4.014508e-05
    ## 3                             Weighted mode   39 -2.843095e-05
    ## 4                                  MR Egger   39 -6.794768e-05
    ##             se         pval
    ## 1 8.262125e-06 3.437965e-10
    ## 2 1.557530e-05 9.952260e-03
    ## 3 3.520386e-05 4.243425e-01
    ## 4 7.325529e-05 3.596544e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Systolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 2      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 196.1257   37 1.484966e-23
    ## 2 Inverse variance weighted 196.3996   38 3.095801e-23

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##   egger_intercept         se     pval
    ## 1      0.01129486 0.04968698 0.821426

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome           exposure    pt
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          5 206.8942 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 2      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 3      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 4      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   34 -7.311068e-05
    ## 2                           Weighted median   34 -4.269598e-05
    ## 3                             Weighted mode   34 -1.485111e-05
    ## 4                                  MR Egger   34 -3.566202e-05
    ##             se         pval
    ## 1 8.787252e-06 8.790084e-17
    ## 2 1.597853e-05 7.538154e-03
    ## 3 4.364359e-05 7.358012e-01
    ## 4 5.304640e-05 5.062311e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ## 2      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 84.47004   32 1.284769e-06
    ## 2 Inverse variance weighted 85.88834   33 1.351680e-06

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      orCcRk     R7nCBd Evangelou2018sbp Grasby2020surfarea
    ##   egger_intercept         se      pval
    ## 1     -0.02671074 0.03643996 0.4688902

<br>
