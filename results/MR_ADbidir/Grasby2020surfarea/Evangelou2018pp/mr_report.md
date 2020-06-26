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

### Outcome: Pulse Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Pulse Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE
    ## 1    rs2490556     1   2021284    T    A 0.3086 -0.0016 0.0229
    ## 2    rs4846200     1   9752648    C    T 0.4143 -0.0358 0.0221
    ## 3     rs499688     1  61396649    T    C 0.3513  0.0195 0.0225
    ## 4    rs6673449     1 160043698    A    G 0.5723  0.0488 0.0206
    ## 5   rs12137969     1 242289357    G    A 0.2371  0.0132 0.0241
    ## 6   rs10927043     1 243762208    C    T 0.1857 -0.0114 0.0265
    ## 7   rs57415181     2  48707841    G    C 0.1478 -0.0012 0.0294
    ## 8   rs10496091     2  61482261    G    A 0.2814  0.0748 0.0227
    ## 9   rs12630663     3  28007315    T    C 0.4114 -0.0084 0.0208
    ## 10  rs34464850     3 141721762    G    C 0.1518 -0.0927 0.0285
    ## 11  rs11938781     4  17924734    T    C 0.1643  0.0734 0.0280
    ## 12  rs10029872     4  40350763    T    C 0.5188 -0.0522 0.0205
    ## 13   rs2301718     4 106009763    G    A 0.2186 -0.0075 0.0251
    ## 14    rs386424     5  81092787    T    G 0.2942  0.0087 0.0225
    ## 15   rs7715167     5 170778824    T    C 0.6091 -0.0366 0.0213
    ## 16   rs2802295     6 108926496    A    G 0.6219 -0.1147 0.0211
    ## 17  rs11759026     6 126792095    A    G 0.2335 -0.1399 0.0248
    ## 18 rs139849708     6 127369230    T    C 0.0280  0.1225 0.0693
    ## 19   rs6463758     7   8117636    A    G 0.5436  0.0054 0.0208
    ## 20 rs149352678     7  54920906    C    T 0.0983  0.0247 0.0354
    ## 21     rs42035     7  92239531    A    G 0.2476 -0.3044 0.0239
    ## 22     rs41563     7 104852654    G    A 0.3458 -0.0046 0.0215
    ## 23  rs10251751     7 156021770    C    T 0.6612 -0.0539 0.0217
    ## 24  rs76650567     8  78242034    C    T 0.0831 -0.1263 0.0373
    ## 25  rs66702753     9 103010947    A    C 0.2540  0.0781 0.0237
    ## 26  rs10817864     9 118968579    C    T 0.5792 -0.0246 0.0208
    ## 27  rs12357321    10  21790476    G    A 0.3156  0.0262 0.0225
    ## 28   rs1628768    10 105012994    T    C 0.2396 -0.0197 0.0243
    ## 29  rs17543864    11  92556100    G    A 0.3243 -0.0604 0.0220
    ## 30   rs3217901    12   4405389    A    G 0.4270 -0.0230 0.0212
    ## 31   rs2066827    12  12871099    T    G 0.2306  0.1036 0.0258
    ## 32   rs7975351    12  53902190    G    A 0.4775 -0.0099 0.0209
    ## 33  rs10876864    12  56401085    G    A 0.5800  0.0357 0.0206
    ## 34  rs10878349    12  66327632    A    G 0.5125  0.1742 0.0205
    ## 35  rs35227403    12  68216239    T    A 0.0601  0.0240 0.0453
    ## 36 rs111855983    12  80052550    T    C 0.1346  0.0889 0.0305
    ## 37   rs2195243    12 102922986    G    C 0.2207 -0.1149 0.0250
    ## 38  rs34011931    13 111077516    A    G 0.3289  0.0111 0.0218
    ## 39   rs6572878    NA        NA <NA> <NA>     NA      NA     NA
    ## 40  rs76801057    NA        NA <NA> <NA>     NA      NA     NA
    ## 41   rs4265798    16  70636616    T    A 0.9352 -0.0836 0.0458
    ## 42   rs7207463    17  16004259    A    G 0.5633 -0.0188 0.0206
    ## 43   rs6505216    NA        NA <NA> <NA>     NA      NA     NA
    ## 44  rs79600142    17  43897722    T    C 0.2210 -0.1146 0.0256
    ## 45  rs12452834    NA        NA <NA> <NA>     NA      NA     NA
    ## 46   rs1791513    18  22135429    A    G 0.5299  0.0531 0.0207
    ## 47    rs743038    22  50884075    C    T 0.5577 -0.0577 0.0214
    ##               Z         P      N          TRAIT
    ## 1   -0.06986900 9.458e-01 709451 Pulse_Pressure
    ## 2   -1.61990950 1.044e-01 737165 Pulse_Pressure
    ## 3    0.86666700 3.854e-01 728445 Pulse_Pressure
    ## 4    2.36893000 1.802e-02 738170 Pulse_Pressure
    ## 5    0.54771784 5.829e-01 737053 Pulse_Pressure
    ## 6   -0.43018868 6.667e-01 734719 Pulse_Pressure
    ## 7   -0.04081633 9.677e-01 738169 Pulse_Pressure
    ## 8    3.29515419 9.734e-04 738170 Pulse_Pressure
    ## 9   -0.40384600 6.866e-01 738170 Pulse_Pressure
    ## 10  -3.25263158 1.155e-03 738168 Pulse_Pressure
    ## 11   2.62143000 8.662e-03 735151 Pulse_Pressure
    ## 12  -2.54634000 1.109e-02 735152 Pulse_Pressure
    ## 13  -0.29880478 7.661e-01 726888 Pulse_Pressure
    ## 14   0.38666700 6.980e-01 738168 Pulse_Pressure
    ## 15  -1.71831000 8.521e-02 735151 Pulse_Pressure
    ## 16  -5.43602000 5.637e-08 738170 Pulse_Pressure
    ## 17  -5.64113000 1.720e-08 737163 Pulse_Pressure
    ## 18   1.76768000 7.684e-02 730844 Pulse_Pressure
    ## 19   0.25961500 7.942e-01 737163 Pulse_Pressure
    ## 20   0.69774011 4.858e-01 737164 Pulse_Pressure
    ## 21 -12.73640000 3.206e-37 736048 Pulse_Pressure
    ## 22  -0.21395349 8.304e-01 738168 Pulse_Pressure
    ## 23  -2.48387097 1.286e-02 738168 Pulse_Pressure
    ## 24  -3.38605898 7.062e-04 738168 Pulse_Pressure
    ## 25   3.29536000 9.830e-04 745820 Pulse_Pressure
    ## 26  -1.18269231 2.379e-01 737101 Pulse_Pressure
    ## 27   1.16444444 2.428e-01 737165 Pulse_Pressure
    ## 28  -0.81070000 4.170e-01 738169 Pulse_Pressure
    ## 29  -2.74545455 6.080e-03 738170 Pulse_Pressure
    ## 30  -1.08491000 2.788e-01 745820 Pulse_Pressure
    ## 31   4.01550000 6.104e-05 722429 Pulse_Pressure
    ## 32  -0.47368421 6.352e-01 737101 Pulse_Pressure
    ## 33   1.73300971 8.390e-02 745820 Pulse_Pressure
    ## 34   8.49756000 1.619e-17 745820 Pulse_Pressure
    ## 35   0.52980132 5.965e-01 745816 Pulse_Pressure
    ## 36   2.91475000 3.532e-03 743482 Pulse_Pressure
    ## 37  -4.59600000 4.247e-06 742755 Pulse_Pressure
    ## 38   0.50917400 6.104e-01 745819 Pulse_Pressure
    ## 39           NA        NA     NA           <NA>
    ## 40           NA        NA     NA           <NA>
    ## 41  -1.82532751 6.781e-02 726894 Pulse_Pressure
    ## 42  -0.91262100 3.597e-01 745819 Pulse_Pressure
    ## 43           NA        NA     NA           <NA>
    ## 44  -4.47656000 7.757e-06 739914 Pulse_Pressure
    ## 45           NA        NA     NA           <NA>
    ## 46   2.56522000 1.018e-02 745820 Pulse_Pressure
    ## 47  -2.69626168 6.893e-03 730215 Pulse_Pressure

<br>

**Table 3:** Proxy SNPs for Pulse Pressure

    ##   target_snp  proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs6572878 rs10146424 0.987642      1 CG/TT  NA    14 23438980      TRUE
    ## 2 rs76801057       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ## 3  rs6505216       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ## 4 rs12452834       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ##   ALT.proxy  AF BETA     SE      Z        P      N          TRAIT  ref
    ## 1         G 0.4 0.06 0.0211 2.8436 0.004498 744815 Pulse_Pressure    C
    ## 2      <NA>  NA   NA     NA     NA       NA     NA           <NA> <NA>
    ## 3      <NA>  NA   NA     NA     NA       NA     NA           <NA> <NA>
    ## 4      <NA>  NA   NA     NA     NA       NA     NA           <NA> <NA>
    ##   ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1         G TRUE      TRUE    C TRUE          TRUE
    ## 2      <NA>   NA        NA <NA>   NA            NA
    ## 3      <NA>   NA        NA <NA>   NA            NA
    ## 4      <NA>   NA        NA <NA>   NA            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and Pulse Pressure
datasets

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
    ## 1                      C                    T      508.7590      -0.0522
    ## 2                      T                    C      538.0782      -0.0539
    ## 3                      A                    G     -642.6331       0.0748
    ## 4                      T                    C      531.0956      -0.0246
    ## 5                      A                    G     -628.5901       0.0357
    ## 6                      G                    A    -1039.9900       0.1742
    ## 7                      T                    C      719.0735      -0.0114
    ## 8                      C                    T     -818.6420       0.0889
    ## 9                      G                    A     1301.5200      -0.1399
    ## 10                     C                    T     -719.1710       0.0734
    ## 11                     A                    G     -585.5512       0.0132
    ## 12                     A                    G     -698.7452       0.0262
    ## 13                     C                    T      632.8110      -0.0084
    ## 14                     C                    T    -2237.8300       0.1225
    ## 15                     T                    C      967.7266       0.0247
    ## 16                     C                    T      972.9780      -0.0197
    ## 17                     A                    G     -623.9150      -0.0604
    ## 18                     G                    A     -502.3000       0.0531
    ## 19                     G                    T     -862.4130       0.1036
    ## 20                     C                    G     -769.2254      -0.1149
    ## 21                     A                    G      737.2212      -0.0075
    ## 22                     A                    T      583.9623      -0.0016
    ## 23                     G                    A      714.5850      -0.1147
    ## 24                     G                    A      593.5960      -0.0230
    ## 25                     G                    A      538.2090       0.0111
    ## 26                     C                    G     1233.1854      -0.0927
    ## 27                     A                    T    -1271.7821       0.0240
    ## 28                     G                    T      656.5430       0.0087
    ## 29                     A                    G      586.6639      -0.0046
    ## 30                     G                    A     -610.3230      -0.3044
    ## 31                     A                    T    -1221.0588      -0.0836
    ## 32                     T                    C      628.7473      -0.0358
    ## 33                     C                    T     -583.8940       0.0195
    ## 34                     C                    G     -834.6022      -0.0012
    ## 35                     G                    A      560.9860       0.0054
    ## 36                     C                    T     -574.9920       0.0600
    ## 37                     C                    A     -593.2390       0.0781
    ## 38                     G                    A     -552.9050       0.0488
    ## 39                     G                    A     -519.7640      -0.0188
    ## 40                     T                    C     -532.1045      -0.0577
    ## 41                     T                    C     -902.8657      -0.1263
    ## 42                     C                    T      662.7540      -0.0366
    ## 43                     C                    T    -1696.8300      -0.1146
    ## 44                     A                    G      611.0487      -0.0099
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251      0.5188  FALSE       FALSE     FALSE     xQ2EoU
    ## 2        0.6639      0.6612  FALSE       FALSE     FALSE     xQ2EoU
    ## 3        0.2777      0.2814  FALSE       FALSE     FALSE     xQ2EoU
    ## 4        0.5739      0.5792  FALSE       FALSE     FALSE     xQ2EoU
    ## 5        0.5774      0.5800  FALSE       FALSE     FALSE     xQ2EoU
    ## 6        0.5100      0.5125  FALSE       FALSE     FALSE     xQ2EoU
    ## 7        0.1826      0.1857  FALSE       FALSE     FALSE     xQ2EoU
    ## 8        0.1319      0.1346  FALSE       FALSE     FALSE     xQ2EoU
    ## 9        0.2376      0.2335  FALSE       FALSE     FALSE     xQ2EoU
    ## 10       0.1648      0.1643  FALSE       FALSE     FALSE     xQ2EoU
    ## 11       0.2412      0.2371  FALSE       FALSE     FALSE     xQ2EoU
    ## 12       0.3206      0.3156  FALSE       FALSE     FALSE     xQ2EoU
    ## 13       0.4117      0.4114  FALSE       FALSE     FALSE     xQ2EoU
    ## 14       0.0297      0.0280  FALSE       FALSE     FALSE     xQ2EoU
    ## 15       0.0991      0.0983  FALSE       FALSE     FALSE     xQ2EoU
    ## 16       0.2386      0.2396  FALSE       FALSE     FALSE     xQ2EoU
    ## 17       0.3264      0.3243  FALSE       FALSE     FALSE     xQ2EoU
    ## 18       0.5263      0.5299  FALSE       FALSE     FALSE     xQ2EoU
    ## 19       0.2333      0.2306  FALSE       FALSE     FALSE     xQ2EoU
    ## 20       0.2196      0.2207  FALSE        TRUE     FALSE     xQ2EoU
    ## 21       0.2269      0.2186  FALSE       FALSE     FALSE     xQ2EoU
    ## 22       0.3155      0.3086  FALSE        TRUE     FALSE     xQ2EoU
    ## 23       0.6207      0.6219  FALSE       FALSE     FALSE     xQ2EoU
    ## 24       0.4221      0.4270  FALSE       FALSE     FALSE     xQ2EoU
    ## 25       0.3280      0.3289  FALSE       FALSE     FALSE     xQ2EoU
    ## 26       0.1534      0.1518  FALSE        TRUE     FALSE     xQ2EoU
    ## 27       0.0588      0.0601  FALSE        TRUE     FALSE     xQ2EoU
    ## 28       0.3008      0.2942  FALSE       FALSE     FALSE     xQ2EoU
    ## 29       0.3385      0.3458  FALSE       FALSE     FALSE     xQ2EoU
    ## 30       0.2454      0.2476  FALSE       FALSE     FALSE     xQ2EoU
    ## 31       0.9332      0.9352  FALSE        TRUE     FALSE     xQ2EoU
    ## 32       0.4191      0.4143  FALSE       FALSE     FALSE     xQ2EoU
    ## 33       0.3482      0.3513  FALSE       FALSE     FALSE     xQ2EoU
    ## 34       0.1447      0.1478  FALSE        TRUE     FALSE     xQ2EoU
    ## 35       0.5382      0.5436  FALSE       FALSE     FALSE     xQ2EoU
    ## 36       0.3997      0.4000  FALSE       FALSE     FALSE     xQ2EoU
    ## 37       0.2493      0.2540  FALSE       FALSE     FALSE     xQ2EoU
    ## 38       0.5681      0.5723  FALSE       FALSE     FALSE     xQ2EoU
    ## 39       0.5620      0.5633  FALSE       FALSE     FALSE     xQ2EoU
    ## 40       0.5560      0.5577  FALSE       FALSE     FALSE     xQ2EoU
    ## 41       0.0870      0.0831  FALSE       FALSE     FALSE     xQ2EoU
    ## 42       0.6143      0.6091  FALSE       FALSE     FALSE     xQ2EoU
    ## 43       0.2198      0.2210  FALSE       FALSE     FALSE     xQ2EoU
    ## 44       0.4740      0.4775  FALSE       FALSE     FALSE     xQ2EoU
    ##    chr.outcome pos.outcome se.outcome    z.outcome pval.outcome
    ## 1            4    40350763     0.0205  -2.54634000    1.109e-02
    ## 2            7   156021770     0.0217  -2.48387097    1.286e-02
    ## 3            2    61482261     0.0227   3.29515419    9.734e-04
    ## 4            9   118968579     0.0208  -1.18269231    2.379e-01
    ## 5           12    56401085     0.0206   1.73300971    8.390e-02
    ## 6           12    66327632     0.0205   8.49756000    1.619e-17
    ## 7            1   243762208     0.0265  -0.43018868    6.667e-01
    ## 8           12    80052550     0.0305   2.91475000    3.532e-03
    ## 9            6   126792095     0.0248  -5.64113000    1.720e-08
    ## 10           4    17924734     0.0280   2.62143000    8.662e-03
    ## 11           1   242289357     0.0241   0.54771784    5.829e-01
    ## 12          10    21790476     0.0225   1.16444444    2.428e-01
    ## 13           3    28007315     0.0208  -0.40384600    6.866e-01
    ## 14           6   127369230     0.0693   1.76768000    7.684e-02
    ## 15           7    54920906     0.0354   0.69774011    4.858e-01
    ## 16          10   105012994     0.0243  -0.81070000    4.170e-01
    ## 17          11    92556100     0.0220  -2.74545455    6.080e-03
    ## 18          18    22135429     0.0207   2.56522000    1.018e-02
    ## 19          12    12871099     0.0258   4.01550000    6.104e-05
    ## 20          12   102922986     0.0250  -4.59600000    4.247e-06
    ## 21           4   106009763     0.0251  -0.29880478    7.661e-01
    ## 22           1     2021284     0.0229  -0.06986900    9.458e-01
    ## 23           6   108926496     0.0211  -5.43602000    5.637e-08
    ## 24          12     4405389     0.0212  -1.08491000    2.788e-01
    ## 25          13   111077516     0.0218   0.50917400    6.104e-01
    ## 26           3   141721762     0.0285  -3.25263158    1.155e-03
    ## 27          12    68216239     0.0453   0.52980132    5.965e-01
    ## 28           5    81092787     0.0225   0.38666700    6.980e-01
    ## 29           7   104852654     0.0215  -0.21395349    8.304e-01
    ## 30           7    92239531     0.0239 -12.73640000    3.206e-37
    ## 31          16    70636616     0.0458  -1.82532751    6.781e-02
    ## 32           1     9752648     0.0221  -1.61990950    1.044e-01
    ## 33           1    61396649     0.0225   0.86666700    3.854e-01
    ## 34           2    48707841     0.0294  -0.04081633    9.677e-01
    ## 35           7     8117636     0.0208   0.25961500    7.942e-01
    ## 36          14    23438980     0.0211   2.84360000    4.498e-03
    ## 37           9   103010947     0.0237   3.29536000    9.830e-04
    ## 38           1   160043698     0.0206   2.36893000    1.802e-02
    ## 39          17    16004259     0.0206  -0.91262100    3.597e-01
    ## 40          22    50884075     0.0214  -2.69626168    6.893e-03
    ## 41           8    78242034     0.0373  -3.38605898    7.062e-04
    ## 42           5   170778824     0.0213  -1.71831000    8.521e-02
    ## 43          17    43897722     0.0256  -4.47656000    7.757e-06
    ## 44          12    53902190     0.0209  -0.47368421    6.352e-01
    ##    samplesize.outcome         outcome mr_keep.outcome pval_origin.outcome
    ## 1              735152 Evangelou2018pp            TRUE            reported
    ## 2              738168 Evangelou2018pp            TRUE            reported
    ## 3              738170 Evangelou2018pp            TRUE            reported
    ## 4              737101 Evangelou2018pp            TRUE            reported
    ## 5              745820 Evangelou2018pp            TRUE            reported
    ## 6              745820 Evangelou2018pp            TRUE            reported
    ## 7              734719 Evangelou2018pp            TRUE            reported
    ## 8              743482 Evangelou2018pp            TRUE            reported
    ## 9              737163 Evangelou2018pp            TRUE            reported
    ## 10             735151 Evangelou2018pp            TRUE            reported
    ## 11             737053 Evangelou2018pp            TRUE            reported
    ## 12             737165 Evangelou2018pp            TRUE            reported
    ## 13             738170 Evangelou2018pp            TRUE            reported
    ## 14             730844 Evangelou2018pp            TRUE            reported
    ## 15             737164 Evangelou2018pp            TRUE            reported
    ## 16             738169 Evangelou2018pp            TRUE            reported
    ## 17             738170 Evangelou2018pp            TRUE            reported
    ## 18             745820 Evangelou2018pp            TRUE            reported
    ## 19             722429 Evangelou2018pp            TRUE            reported
    ## 20             742755 Evangelou2018pp            TRUE            reported
    ## 21             726888 Evangelou2018pp            TRUE            reported
    ## 22             709451 Evangelou2018pp            TRUE            reported
    ## 23             738170 Evangelou2018pp            TRUE            reported
    ## 24             745820 Evangelou2018pp            TRUE            reported
    ## 25             745819 Evangelou2018pp            TRUE            reported
    ## 26             738168 Evangelou2018pp            TRUE            reported
    ## 27             745816 Evangelou2018pp            TRUE            reported
    ## 28             738168 Evangelou2018pp            TRUE            reported
    ## 29             738168 Evangelou2018pp            TRUE            reported
    ## 30             736048 Evangelou2018pp            TRUE            reported
    ## 31             726894 Evangelou2018pp            TRUE            reported
    ## 32             737165 Evangelou2018pp            TRUE            reported
    ## 33             728445 Evangelou2018pp            TRUE            reported
    ## 34             738169 Evangelou2018pp            TRUE            reported
    ## 35             737163 Evangelou2018pp            TRUE            reported
    ## 36             744815 Evangelou2018pp            TRUE            reported
    ## 37             745820 Evangelou2018pp            TRUE            reported
    ## 38             738170 Evangelou2018pp            TRUE            reported
    ## 39             745819 Evangelou2018pp            TRUE            reported
    ## 40             730215 Evangelou2018pp            TRUE            reported
    ## 41             738168 Evangelou2018pp            TRUE            reported
    ## 42             735151 Evangelou2018pp            TRUE            reported
    ## 43             739914 Evangelou2018pp            TRUE            reported
    ## 44             737101 Evangelou2018pp            TRUE            reported
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
    ## 1  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 2  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 3  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 4  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 5  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 6  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 7  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 8  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 9  Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 10 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 11 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 12 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 13 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 14 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 15 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 16 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 17 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 18 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 19 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 20 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 21 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 22 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 23 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 24 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 25 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 26 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 27 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 28 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 29 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 30 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 31 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 32 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 33 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 34 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 35 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 36 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 37 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 38 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 39 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 40 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 41 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 42 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 43 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ## 44 Grasby2020surfarea             TRUE             reported      Hsd2tE
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    1.803018e-03             1
    ## 2       2    TRUE           TRUE 5e-06    1.899000e-03             1
    ## 3       2    TRUE           TRUE 5e-06    3.964905e-03         0.246
    ## 4       2    TRUE           TRUE 5e-06    1.944779e-04             1
    ## 5       2    TRUE           TRUE 5e-06    5.468752e-04             1
    ## 6       2    TRUE          FALSE 5e-06              NA          <NA>
    ## 7       2    TRUE           TRUE 5e-06    1.172193e-05             1
    ## 8       2    TRUE           TRUE 5e-06    5.405605e-03        0.6068
    ## 9       2    TRUE          FALSE 5e-06              NA          <NA>
    ## 10      2    TRUE           TRUE 5e-06    3.564012e-03             1
    ## 11      2    TRUE           TRUE 5e-06    1.447257e-06             1
    ## 12      2    TRUE           TRUE 5e-06    1.482647e-04             1
    ## 13      2    TRUE           TRUE 5e-06    2.211566e-05             1
    ## 14      2    TRUE           TRUE 5e-06    6.206817e-03             1
    ## 15      2    TRUE           TRUE 5e-06    2.067609e-03             1
    ## 16      2    TRUE           TRUE 5e-06    7.749732e-08             1
    ## 17      2    TRUE           TRUE 5e-06    5.597871e-03        0.0574
    ## 18      2    TRUE           TRUE 5e-06    1.890486e-03             1
    ## 19      2    TRUE           TRUE 5e-06    7.842734e-03        0.0738
    ## 20      2    TRUE           TRUE 5e-06    1.798111e-02       <0.0082
    ## 21      2    TRUE           TRUE 5e-06    6.098566e-05             1
    ## 22      2    TRUE           TRUE 5e-06    1.116815e-04             1
    ## 23      2    TRUE           TRUE 5e-06    1.065322e-02       <0.0082
    ## 24      2    TRUE           TRUE 5e-06    1.221354e-04             1
    ## 25      2    TRUE           TRUE 5e-06    5.068334e-04             1
    ## 26      2    TRUE           TRUE 5e-06    5.035454e-03        0.7134
    ## 27      2    TRUE           TRUE 5e-06    4.594569e-06             1
    ## 28      2    TRUE           TRUE 5e-06    5.149088e-04             1
    ## 29      2    TRUE           TRUE 5e-06    5.761753e-05             1
    ## 30      2    TRUE          FALSE 5e-06              NA          <NA>
    ## 31      2    TRUE           TRUE 5e-06    1.227025e-02        0.5658
    ## 32      2    TRUE           TRUE 5e-06    5.478492e-04             1
    ## 33      2    TRUE           TRUE 5e-06    5.862039e-05             1
    ## 34      2    TRUE           TRUE 5e-06    3.508915e-04             1
    ## 35      2    TRUE           TRUE 5e-06    2.975216e-04             1
    ## 36      2    TRUE           TRUE 5e-06    2.418791e-03        0.8774
    ## 37      2    TRUE           TRUE 5e-06    4.496265e-03        0.1804
    ## 38      2    TRUE           TRUE 5e-06    1.458673e-03             1
    ## 39      2    TRUE           TRUE 5e-06    8.987064e-04             1
    ## 40      2    TRUE           TRUE 5e-06    4.868903e-03        0.0082
    ## 41      2    TRUE           TRUE 5e-06    2.165085e-02        0.0082
    ## 42      2    TRUE           TRUE 5e-06    5.575964e-04             1
    ## 43      2    TRUE           TRUE 5e-06    2.869718e-02       <0.0082
    ## 44      2    TRUE           TRUE 5e-06    7.296878e-06             1
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
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19          TRUE
    ## 20         FALSE
    ## 21          TRUE
    ## 22          TRUE
    ## 23         FALSE
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
    ## 39          TRUE
    ## 40         FALSE
    ## 41         FALSE
    ## 42          TRUE
    ## 43         FALSE
    ## 44          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Pulse
Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs10878349          12    66327632     4.829e-21    1.619e-17
    ## 2 rs11759026           6   126792095     4.106e-22    1.720e-08
    ## 3    rs42035           7    92239531     1.799e-06    3.206e-37

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
    ## 1            FALSE   0.03697866 31.53086  0.05 15.83498 0.9782748
    ## 2             TRUE   0.02932688 28.25916  0.05 45.10027 0.9999990

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
Cortical Surface Area on Pulse Pressure. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Pulse
Pressure

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 2      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 3      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 4      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   41 -2.052092e-05
    ## 2                           Weighted median   41 -1.916345e-05
    ## 3                             Weighted mode   41 -2.274309e-05
    ## 4                                  MR Egger   41  4.359551e-05
    ##             se         pval
    ## 1 5.181557e-06 7.483165e-05
    ## 2 9.579354e-06 4.544688e-02
    ## 3 2.115992e-05 2.888964e-01
    ## 4 3.543559e-05 2.259636e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Pulse Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 2      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 184.2812   39 9.532846e-21
    ## 2 Inverse variance weighted 201.4893   40 2.055152e-23

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018pp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018pp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##   egger_intercept         se       pval
    ## 1     -0.04841865 0.02537203 0.06372679

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome         outcome           exposure    pt
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          5 219.2693 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 2      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 3      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 4      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   36 -3.949807e-05
    ## 2                           Weighted median   36 -2.737616e-05
    ## 3                             Weighted mode   36 -2.145235e-05
    ## 4                                  MR Egger   36 -3.211369e-05
    ##             se         pval
    ## 1 5.816826e-06 1.118900e-11
    ## 2 9.783406e-06 5.138442e-03
    ## 3 1.761044e-05 2.313111e-01
    ## 4 3.426028e-05 3.551924e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ## 2      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 81.49754   34 8.929031e-06
    ## 2 Inverse variance weighted 81.61716   35 1.368212e-05

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome         outcome           exposure
    ## 1      Hsd2tE     xQ2EoU Evangelou2018pp Grasby2020surfarea
    ##   egger_intercept        se      pval
    ## 1    -0.005185707 0.0232133 0.8245659

<br>
