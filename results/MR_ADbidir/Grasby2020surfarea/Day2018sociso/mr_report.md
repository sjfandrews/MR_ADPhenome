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

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Social Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1    rs2490556     1   2021284    T    A 0.301369  0.00221362 0.00223217
    ## 2    rs4846200     1   9752648    C    T 0.418125 -0.00024479 0.00207650
    ## 3     rs499688     1  61396649    T    C 0.343153 -0.00018702 0.00215737
    ## 4    rs6673449     1 160043698    A    G 0.569500  0.00390821 0.00206855
    ## 5   rs12137969     1 242289357    G    A 0.230666  0.00161348 0.00243137
    ## 6   rs10927043     1 243762208    C    T 0.183127 -0.01114540 0.00264818
    ## 7   rs57415181     2  48707841    G    C 0.150108 -0.00330177 0.00286759
    ## 8   rs10496091     2  61482261    G    A 0.281745  0.00280895 0.00227684
    ## 9   rs12630663     3  28007315    T    C 0.413107  0.00075741 0.00208013
    ## 10  rs34464850     3 141721762    G    C 0.151134 -0.00206525 0.00285956
    ## 11  rs11938781     4  17924734    T    C 0.163473  0.00376502 0.00276973
    ## 12  rs10029872     4  40350763    T    C 0.516707 -0.00432246 0.00204962
    ## 13   rs2301718     4 106009763    G    A 0.210320  0.00404480 0.00251324
    ## 14    rs386424     5  81092787    T    G 0.287580  0.00107816 0.00226284
    ## 15   rs7715167     5 170778824    T    C 0.610430 -0.00375893 0.00210034
    ## 16   rs2802295     6 108926496    A    G 0.627093  0.00079744 0.00211804
    ## 17  rs11759026     6 126792095    A    G 0.227214 -0.00268333 0.00244429
    ## 18 rs139849708     6 127369230    T    C 0.029316 -0.00606797 0.00607168
    ## 19   rs6463758     7   8117636    A    G 0.555236 -0.00074486 0.00206109
    ## 20 rs149352678     7  54920906    C    T 0.093733 -0.01380590 0.00351420
    ## 21     rs42035     7  92239531    A    G 0.244536  0.00254228 0.00238299
    ## 22     rs41563     7 104852654    G    A 0.349941  0.00273243 0.00214747
    ## 23  rs10251751     7 156021770    C    T 0.667314  0.00126975 0.00217379
    ## 24  rs76650567     8  78242034    C    T 0.080759 -0.00086932 0.00375915
    ## 25  rs66702753     9 103010947    A    C 0.256874 -0.00077664 0.00234428
    ## 26  rs10817864     9 118968579    C    T 0.580876  0.00116890 0.00207581
    ## 27  rs12357321    10  21790476    G    A 0.312244 -0.00095456 0.00221022
    ## 28   rs1628768    10 105012994    T    C 0.234923 -0.00236899 0.00241593
    ## 29  rs17543864    11  92556100    G    A 0.323407 -0.00092850 0.00218959
    ## 30   rs3217901    12   4405389    A    G 0.432251 -0.00261720 0.00206754
    ## 31   rs2066827    12  12871099    T    G 0.231952  0.00264760 0.00242665
    ## 32   rs7975351    12  53902190    G    A 0.476672  0.00018530 0.00205071
    ## 33  rs10876864    12  56401085    G    A 0.574327  0.00585500 0.00207149
    ## 34  rs10878349    12  66327632    A    G 0.510477  0.00518373 0.00204892
    ## 35  rs35227403    12  68216239    T    A 0.060176  0.01036810 0.00430691
    ## 36 rs111855983    12  80052550    T    C 0.128978 -0.00562728 0.00305582
    ## 37   rs2195243    12 102922986    G    C 0.222476  0.00153068 0.00246265
    ## 38  rs34011931    13 111077516    A    G 0.326978 -0.00092711 0.00218337
    ## 39   rs6572878    NA        NA <NA> <NA>       NA          NA         NA
    ## 40  rs76801057    14  99728448    C    T 0.027996 -0.00142893 0.00620895
    ## 41   rs4265798    16  70636616    T    A 0.936798 -0.00467488 0.00420931
    ## 42   rs7207463    17  16004259    A    G 0.559545  0.00020492 0.00206316
    ## 43   rs6505216    NA        NA <NA> <NA>       NA          NA         NA
    ## 44  rs79600142    17  43897722    T    C 0.224501  0.01041410 0.00245471
    ## 45  rs12452834    NA        NA <NA> <NA>       NA          NA         NA
    ## 46   rs1791513    18  22135429    A    G 0.530941 -0.00005353 0.00205241
    ## 47    rs743038    22  50884075    C    T 0.555755  0.00110638 0.00206133
    ##             Z          P      N            TRAIT
    ## 1   0.9916910 0.32134848 452302 Social_Isolation
    ## 2  -0.1178840 0.90615981 452302 Social_Isolation
    ## 3  -0.0866876 0.93091986 452302 Social_Isolation
    ## 4   1.8893400 0.05884596 452302 Social_Isolation
    ## 5   0.6636100 0.50693970 452302 Social_Isolation
    ## 6  -4.2087100 0.00002568 452302 Social_Isolation
    ## 7  -1.1514100 0.24956319 452302 Social_Isolation
    ## 8   1.2337000 0.21731381 452302 Social_Isolation
    ## 9   0.3641180 0.71577025 452302 Social_Isolation
    ## 10 -0.7222250 0.47015634 452302 Social_Isolation
    ## 11  1.3593500 0.17403730 452302 Social_Isolation
    ## 12 -2.1089100 0.03495216 452302 Social_Isolation
    ## 13  1.6094000 0.10752976 452302 Social_Isolation
    ## 14  0.4764620 0.63374520 452302 Social_Isolation
    ## 15 -1.7896800 0.07350559 452302 Social_Isolation
    ## 16  0.3765010 0.70654428 452302 Social_Isolation
    ## 17 -1.0977900 0.27229410 452302 Social_Isolation
    ## 18 -0.9993890 0.31760635 452302 Social_Isolation
    ## 19 -0.3613910 0.71780711 452302 Social_Isolation
    ## 20 -3.9286100 0.00008544 452302 Social_Isolation
    ## 21  1.0668500 0.28604166 452302 Social_Isolation
    ## 22  1.2724000 0.20323179 452302 Social_Isolation
    ## 23  0.5841160 0.55914251 452302 Social_Isolation
    ## 24 -0.2312530 0.81711796 452302 Social_Isolation
    ## 25 -0.3312930 0.74042339 452302 Social_Isolation
    ## 26  0.5631070 0.57336228 452302 Social_Isolation
    ## 27 -0.4318840 0.66582594 452302 Social_Isolation
    ## 28 -0.9805710 0.32680451 452302 Social_Isolation
    ## 29 -0.4240520 0.67152758 452302 Social_Isolation
    ## 30 -1.2658500 0.20556659 452302 Social_Isolation
    ## 31  1.0910500 0.27525053 452302 Social_Isolation
    ## 32  0.0903588 0.92800208 452302 Social_Isolation
    ## 33  2.8264700 0.00470642 452302 Social_Isolation
    ## 34  2.5299800 0.01140702 452302 Social_Isolation
    ## 35  2.4073100 0.01607057 452302 Social_Isolation
    ## 36 -1.8415000 0.06554880 452302 Social_Isolation
    ## 37  0.6215580 0.53423253 452302 Social_Isolation
    ## 38 -0.4246230 0.67111182 452302 Social_Isolation
    ## 39         NA         NA     NA             <NA>
    ## 40 -0.2301410 0.81798230 452302 Social_Isolation
    ## 41 -1.1106100 0.26673830 452302 Social_Isolation
    ## 42  0.0993237 0.92088124 452302 Social_Isolation
    ## 43         NA         NA     NA             <NA>
    ## 44  4.2424900 0.00002211 452302 Social_Isolation
    ## 45         NA         NA     NA             <NA>
    ## 46 -0.0260822 0.97919178 452302 Social_Isolation
    ## 47  0.5367310 0.59145311 452302 Social_Isolation

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##   target_snp  proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs6572878 rs10146424 0.987642      1 CG/TT  NA    14 23438980      TRUE
    ## 2  rs6505216       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ## 3 rs12452834       <NA>       NA     NA  <NA>  NA    NA       NA        NA
    ##   ALT.proxy     AF       BETA         SE       Z         P      N
    ## 1         G 0.3997 0.00224398 0.00209098 1.07317 0.2831936 452302
    ## 2      <NA>     NA         NA         NA      NA        NA     NA
    ## 3      <NA>     NA         NA         NA      NA        NA     NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Social_Isolation    C         G TRUE      TRUE    C TRUE          TRUE
    ## 2             <NA> <NA>      <NA>   NA        NA <NA>   NA            NA
    ## 3             <NA> <NA>      <NA>   NA        NA <NA>   NA            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and Social Isolation
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
    ## 42  rs76801057                      T                     C
    ## 43   rs7715167                      C                     T
    ## 44  rs79600142                      C                     T
    ## 45   rs7975351                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T      508.7590  -0.00432246
    ## 2                      T                    C      538.0782   0.00126975
    ## 3                      A                    G     -642.6331   0.00280895
    ## 4                      T                    C      531.0956   0.00116890
    ## 5                      A                    G     -628.5901   0.00585500
    ## 6                      G                    A    -1039.9900   0.00518373
    ## 7                      T                    C      719.0735  -0.01114540
    ## 8                      C                    T     -818.6420  -0.00562728
    ## 9                      G                    A     1301.5200  -0.00268333
    ## 10                     C                    T     -719.1710   0.00376502
    ## 11                     A                    G     -585.5512   0.00161348
    ## 12                     A                    G     -698.7452  -0.00095456
    ## 13                     C                    T      632.8110   0.00075741
    ## 14                     C                    T    -2237.8300  -0.00606797
    ## 15                     T                    C      967.7266  -0.01380590
    ## 16                     C                    T      972.9780  -0.00236899
    ## 17                     A                    G     -623.9150  -0.00092850
    ## 18                     G                    A     -502.3000  -0.00005353
    ## 19                     G                    T     -862.4130   0.00264760
    ## 20                     C                    G     -769.2254   0.00153068
    ## 21                     A                    G      737.2212   0.00404480
    ## 22                     A                    T      583.9623   0.00221362
    ## 23                     G                    A      714.5850   0.00079744
    ## 24                     G                    A      593.5960  -0.00261720
    ## 25                     G                    A      538.2090  -0.00092711
    ## 26                     C                    G     1233.1854  -0.00206525
    ## 27                     A                    T    -1271.7821   0.01036810
    ## 28                     G                    T      656.5430   0.00107816
    ## 29                     A                    G      586.6639   0.00273243
    ## 30                     G                    A     -610.3230   0.00254228
    ## 31                     A                    T    -1221.0588  -0.00467488
    ## 32                     T                    C      628.7473  -0.00024479
    ## 33                     C                    T     -583.8940  -0.00018702
    ## 34                     C                    G     -834.6022  -0.00330177
    ## 35                     G                    A      560.9860  -0.00074486
    ## 36                     C                    T     -574.9920   0.00224398
    ## 37                     C                    A     -593.2390  -0.00077664
    ## 38                     G                    A     -552.9050   0.00390821
    ## 39                     G                    A     -519.7640   0.00020492
    ## 40                     T                    C     -532.1045   0.00110638
    ## 41                     T                    C     -902.8657  -0.00086932
    ## 42                     T                    C     2036.7834  -0.00142893
    ## 43                     C                    T      662.7540  -0.00375893
    ## 44                     C                    T    -1696.8300   0.01041410
    ## 45                     A                    G      611.0487   0.00018530
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251    0.516707  FALSE       FALSE     FALSE     T86GeV
    ## 2        0.6639    0.667314  FALSE       FALSE     FALSE     T86GeV
    ## 3        0.2777    0.281745  FALSE       FALSE     FALSE     T86GeV
    ## 4        0.5739    0.580876  FALSE       FALSE     FALSE     T86GeV
    ## 5        0.5774    0.574327  FALSE       FALSE     FALSE     T86GeV
    ## 6        0.5100    0.510477  FALSE       FALSE     FALSE     T86GeV
    ## 7        0.1826    0.183127  FALSE       FALSE     FALSE     T86GeV
    ## 8        0.1319    0.128978  FALSE       FALSE     FALSE     T86GeV
    ## 9        0.2376    0.227214  FALSE       FALSE     FALSE     T86GeV
    ## 10       0.1648    0.163473  FALSE       FALSE     FALSE     T86GeV
    ## 11       0.2412    0.230666  FALSE       FALSE     FALSE     T86GeV
    ## 12       0.3206    0.312244  FALSE       FALSE     FALSE     T86GeV
    ## 13       0.4117    0.413107  FALSE       FALSE     FALSE     T86GeV
    ## 14       0.0297    0.029316  FALSE       FALSE     FALSE     T86GeV
    ## 15       0.0991    0.093733  FALSE       FALSE     FALSE     T86GeV
    ## 16       0.2386    0.234923  FALSE       FALSE     FALSE     T86GeV
    ## 17       0.3264    0.323407  FALSE       FALSE     FALSE     T86GeV
    ## 18       0.5263    0.530941  FALSE       FALSE     FALSE     T86GeV
    ## 19       0.2333    0.231952  FALSE       FALSE     FALSE     T86GeV
    ## 20       0.2196    0.222476  FALSE        TRUE     FALSE     T86GeV
    ## 21       0.2269    0.210320  FALSE       FALSE     FALSE     T86GeV
    ## 22       0.3155    0.301369  FALSE        TRUE     FALSE     T86GeV
    ## 23       0.6207    0.627093  FALSE       FALSE     FALSE     T86GeV
    ## 24       0.4221    0.432251  FALSE       FALSE     FALSE     T86GeV
    ## 25       0.3280    0.326978  FALSE       FALSE     FALSE     T86GeV
    ## 26       0.1534    0.151134  FALSE        TRUE     FALSE     T86GeV
    ## 27       0.0588    0.060176  FALSE        TRUE     FALSE     T86GeV
    ## 28       0.3008    0.287580  FALSE       FALSE     FALSE     T86GeV
    ## 29       0.3385    0.349941  FALSE       FALSE     FALSE     T86GeV
    ## 30       0.2454    0.244536  FALSE       FALSE     FALSE     T86GeV
    ## 31       0.9332    0.936798  FALSE        TRUE     FALSE     T86GeV
    ## 32       0.4191    0.418125  FALSE       FALSE     FALSE     T86GeV
    ## 33       0.3482    0.343153  FALSE       FALSE     FALSE     T86GeV
    ## 34       0.1447    0.150108  FALSE        TRUE     FALSE     T86GeV
    ## 35       0.5382    0.555236  FALSE       FALSE     FALSE     T86GeV
    ## 36       0.3997    0.399700  FALSE       FALSE     FALSE     T86GeV
    ## 37       0.2493    0.256874  FALSE       FALSE     FALSE     T86GeV
    ## 38       0.5681    0.569500  FALSE       FALSE     FALSE     T86GeV
    ## 39       0.5620    0.559545  FALSE       FALSE     FALSE     T86GeV
    ## 40       0.5560    0.555755  FALSE       FALSE     FALSE     T86GeV
    ## 41       0.0870    0.080759  FALSE       FALSE     FALSE     T86GeV
    ## 42       0.0263    0.027996  FALSE       FALSE     FALSE     T86GeV
    ## 43       0.6143    0.610430  FALSE       FALSE     FALSE     T86GeV
    ## 44       0.2198    0.224501  FALSE       FALSE     FALSE     T86GeV
    ## 45       0.4740    0.476672  FALSE       FALSE     FALSE     T86GeV
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            4    40350763 0.00204962 -2.1089100   0.03495216
    ## 2            7   156021770 0.00217379  0.5841160   0.55914251
    ## 3            2    61482261 0.00227684  1.2337000   0.21731381
    ## 4            9   118968579 0.00207581  0.5631070   0.57336228
    ## 5           12    56401085 0.00207149  2.8264700   0.00470642
    ## 6           12    66327632 0.00204892  2.5299800   0.01140702
    ## 7            1   243762208 0.00264818 -4.2087100   0.00002568
    ## 8           12    80052550 0.00305582 -1.8415000   0.06554880
    ## 9            6   126792095 0.00244429 -1.0977900   0.27229410
    ## 10           4    17924734 0.00276973  1.3593500   0.17403730
    ## 11           1   242289357 0.00243137  0.6636100   0.50693970
    ## 12          10    21790476 0.00221022 -0.4318840   0.66582594
    ## 13           3    28007315 0.00208013  0.3641180   0.71577025
    ## 14           6   127369230 0.00607168 -0.9993890   0.31760635
    ## 15           7    54920906 0.00351420 -3.9286100   0.00008544
    ## 16          10   105012994 0.00241593 -0.9805710   0.32680451
    ## 17          11    92556100 0.00218959 -0.4240520   0.67152758
    ## 18          18    22135429 0.00205241 -0.0260822   0.97919178
    ## 19          12    12871099 0.00242665  1.0910500   0.27525053
    ## 20          12   102922986 0.00246265  0.6215580   0.53423253
    ## 21           4   106009763 0.00251324  1.6094000   0.10752976
    ## 22           1     2021284 0.00223217  0.9916910   0.32134848
    ## 23           6   108926496 0.00211804  0.3765010   0.70654428
    ## 24          12     4405389 0.00206754 -1.2658500   0.20556659
    ## 25          13   111077516 0.00218337 -0.4246230   0.67111182
    ## 26           3   141721762 0.00285956 -0.7222250   0.47015634
    ## 27          12    68216239 0.00430691  2.4073100   0.01607057
    ## 28           5    81092787 0.00226284  0.4764620   0.63374520
    ## 29           7   104852654 0.00214747  1.2724000   0.20323179
    ## 30           7    92239531 0.00238299  1.0668500   0.28604166
    ## 31          16    70636616 0.00420931 -1.1106100   0.26673830
    ## 32           1     9752648 0.00207650 -0.1178840   0.90615981
    ## 33           1    61396649 0.00215737 -0.0866876   0.93091986
    ## 34           2    48707841 0.00286759 -1.1514100   0.24956319
    ## 35           7     8117636 0.00206109 -0.3613910   0.71780711
    ## 36          14    23438980 0.00209098  1.0731700   0.28319360
    ## 37           9   103010947 0.00234428 -0.3312930   0.74042339
    ## 38           1   160043698 0.00206855  1.8893400   0.05884596
    ## 39          17    16004259 0.00206316  0.0993237   0.92088124
    ## 40          22    50884075 0.00206133  0.5367310   0.59145311
    ## 41           8    78242034 0.00375915 -0.2312530   0.81711796
    ## 42          14    99728448 0.00620895 -0.2301410   0.81798230
    ## 43           5   170778824 0.00210034 -1.7896800   0.07350559
    ## 44          17    43897722 0.00245471  4.2424900   0.00002211
    ## 45          12    53902190 0.00205071  0.0903588   0.92800208
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
    ## 40             452302 Day2018sociso            TRUE            reported
    ## 41             452302 Day2018sociso            TRUE            reported
    ## 42             452302 Day2018sociso            TRUE            reported
    ## 43             452302 Day2018sociso            TRUE            reported
    ## 44             452302 Day2018sociso            TRUE            reported
    ## 45             452302 Day2018sociso            TRUE            reported
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
    ## 45            NA               <NA>              <NA>              <NA>
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
    ## 42                NA             <NA>               NA           14
    ## 43                NA             <NA>               NA            5
    ## 44                NA             <NA>               NA           17
    ## 45                NA             <NA>               NA           12
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
    ## 42     99728448    429.5486   4.741683     2.119e-06               23846
    ## 43    170778824    119.1375   5.562930     2.653e-08               32068
    ## 44     43897722    143.2730 -11.843300     2.331e-32               29435
    ## 45     53902190    113.5536   5.381148     7.401e-08               31319
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 2  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 3  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 4  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 5  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 6  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 7  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 8  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 9  Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 10 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 11 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 12 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 13 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 14 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 15 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 16 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 17 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 18 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 19 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 20 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 21 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 22 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 23 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 24 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 25 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 26 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 27 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 28 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 29 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 30 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 31 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 32 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 33 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 34 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 35 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 36 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 37 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 38 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 39 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 40 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 41 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 42 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 43 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 44 Grasby2020surfarea             TRUE             reported      qSwAtR
    ## 45 Grasby2020surfarea             TRUE             reported      qSwAtR
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06    1.059581e-05             1
    ## 2       2    TRUE           TRUE 5e-06    6.139658e-06             1
    ## 3       2    TRUE           TRUE 5e-06    2.046065e-06             1
    ## 4       2    TRUE           TRUE 5e-06    5.580690e-06             1
    ## 5       2    TRUE           TRUE 5e-06    2.092159e-05             1
    ## 6       2    TRUE           TRUE 5e-06    9.521748e-06             1
    ## 7       2    TRUE           TRUE 5e-06    9.469884e-05        <0.009
    ## 8       2    TRUE           TRUE 5e-06    5.674143e-05         0.693
    ## 9       2    TRUE           TRUE 5e-06    2.866916e-08             1
    ## 10      2    TRUE           TRUE 5e-06    4.960511e-06             1
    ## 11      2    TRUE           TRUE 5e-06    1.149634e-07             1
    ## 12      2    TRUE           TRUE 5e-06    6.429377e-06             1
    ## 13      2    TRUE           TRUE 5e-06    4.766819e-06             1
    ## 14      2    TRUE           TRUE 5e-06    1.274348e-04             1
    ## 15      2    TRUE           TRUE 5e-06    1.413461e-04         0.018
    ## 16      2    TRUE           TRUE 5e-06    6.410381e-08             1
    ## 17      2    TRUE           TRUE 5e-06    5.439171e-06             1
    ## 18      2    TRUE           TRUE 5e-06    1.358691e-06             1
    ## 19      2    TRUE           TRUE 5e-06    6.176618e-07             1
    ## 20      2    TRUE           TRUE 5e-06    2.321185e-08             1
    ## 21      2    TRUE           TRUE 5e-06    3.320829e-05         0.981
    ## 22      2    TRUE           TRUE 5e-06    1.254308e-05             1
    ## 23      2    TRUE           TRUE 5e-06    5.845925e-06             1
    ## 24      2    TRUE           TRUE 5e-06    1.809218e-06             1
    ## 25      2    TRUE           TRUE 5e-06    6.326884e-08             1
    ## 26      2    TRUE           TRUE 5e-06    4.279921e-07             1
    ## 27      2    TRUE           TRUE 5e-06    5.987253e-05             1
    ## 28      2    TRUE           TRUE 5e-06    6.547377e-06             1
    ## 29      2    TRUE           TRUE 5e-06    1.664518e-05             1
    ## 30      2    TRUE           TRUE 5e-06    1.505550e-06             1
    ## 31      2    TRUE           TRUE 5e-06    5.592616e-05             1
    ## 32      2    TRUE           TRUE 5e-06    1.325303e-06             1
    ## 33      2    TRUE           TRUE 5e-06    2.207589e-06             1
    ## 34      2    TRUE           TRUE 5e-06    2.725482e-05             1
    ## 35      2    TRUE           TRUE 5e-06    2.382090e-07             1
    ## 36      2    TRUE           TRUE 5e-06    1.009790e-06             1
    ## 37      2    TRUE           TRUE 5e-06    4.415990e-06             1
    ## 38      2    TRUE           TRUE 5e-06    7.526660e-06             1
    ## 39      2    TRUE           TRUE 5e-06    8.895286e-07             1
    ## 40      2    TRUE           TRUE 5e-06    3.183578e-09             1
    ## 41      2    TRUE           TRUE 5e-06    8.277641e-06             1
    ## 42      2    TRUE           TRUE 5e-06    9.556298e-06             1
    ## 43      2    TRUE           TRUE 5e-06    5.583111e-06             1
    ## 44      2    TRUE           TRUE 5e-06    5.606402e-05         0.144
    ## 45      2    TRUE           TRUE 5e-06    2.401365e-06             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7          FALSE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15         FALSE
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19          TRUE
    ## 20          TRUE
    ## 21          TRUE
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
    ## 36          TRUE
    ## 37          TRUE
    ## 38          TRUE
    ## 39          TRUE
    ## 40          TRUE
    ## 41          TRUE
    ## 42          TRUE
    ## 43          TRUE
    ## 44          TRUE
    ## 45          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ## [1] SNP           chr.outcome   pos.outcome   pval.exposure pval.outcome 
    ## <0 rows> (or 0-length row.names)

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
    ## 1            FALSE   0.04374419 34.22052  0.05 22.62285 0.9974161
    ## 2             TRUE   0.04223838 34.52709  0.05 14.05727 0.9632199

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
Cortical Surface Area on Social Isolation. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Social
Isolation

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 2      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 3      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 4      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   45 -2.183753e-06
    ## 2                           Weighted median   45 -1.999392e-06
    ## 3                             Weighted mode   45 -1.569567e-06
    ## 4                                  MR Egger   45 -4.137381e-06
    ##             se         pval
    ## 1 4.666003e-07 2.866850e-06
    ## 2 7.696963e-07 9.386745e-03
    ## 3 1.729941e-06 3.691930e-01
    ## 4 1.894682e-06 3.448887e-02

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Social Isolation and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 2      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 84.75742   43 0.0001507867
    ## 2 Inverse variance weighted 87.13761   44 0.0001156206

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome           exposure egger_intercept
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea      0.00157265
    ##            se      pval
    ## 1 0.001431134 0.2779337

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome           exposure    pt
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 92.03683 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 2      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 3      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 4      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   43 -1.756610e-06
    ## 2                           Weighted median   43 -1.919373e-06
    ## 3                             Weighted mode   43 -1.687392e-06
    ## 4                                  MR Egger   43 -3.660018e-06
    ##             se         pval
    ## 1 4.743878e-07 0.0002131504
    ## 2 7.814051e-07 0.0140372164
    ## 3 1.746807e-06 0.3395805472
    ## 4 1.639964e-06 0.0311570547

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ## 2      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 59.93891   41 0.02827933
    ## 2 Inverse variance weighted 62.18273   42 0.02306319

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome           exposure egger_intercept
    ## 1      qSwAtR     T86GeV Day2018sociso Grasby2020surfarea     0.001530865
    ##            se      pval
    ## 1 0.001235679 0.2224335

<br>
