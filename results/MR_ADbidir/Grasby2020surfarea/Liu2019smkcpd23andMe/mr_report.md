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

### Outcome: Smoking Quantity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Smoking Quantity

    ##            SNP CHROM       POS REF ALT        AF          BETA          SE
    ## 1    rs2490556     1   2021284   T   A 0.2875590 -1.255203e-03 0.001726552
    ## 2    rs4846200     1   9752648   C   T 0.4891980 -2.922107e-04 0.001729057
    ## 3     rs499688     1  61396649   T   C 0.4442830  1.332090e-04 0.001729985
    ## 4    rs6673449     1 160043698   A   G 0.5325170  5.012050e-04 0.001728293
    ## 5   rs12137969     1 242289357   G   A 0.2932540 -2.163179e-03 0.001725023
    ## 6   rs10927043     1 243762208   C   T 0.1820490 -2.123581e-03 0.001725086
    ## 7   rs57415181     2  48707841   G   C 0.1311770  2.244621e-05 0.001726631
    ## 8   rs10496091     2  61482261   G   A 0.3320620  3.470698e-03 0.001718167
    ## 9   rs12630663     3  28007315   T   C 0.3748190  5.677480e-03 0.001715252
    ## 10  rs34464850     3 141721762   G   C 0.1518090 -2.934188e-03 0.001718915
    ## 11  rs11938781     4  17924734   T   C 0.1368920  2.369800e-03 0.001719737
    ## 12  rs10029872     4  40350763   T   C 0.5291120 -8.799590e-05 0.001725410
    ## 13   rs2301718     4 106009763   G   A 0.2813290  3.040498e-03 0.001718767
    ## 14    rs386424     5  81092787   T   G 0.3547040  1.523160e-03 0.001721089
    ## 15   rs7715167     5 170778824   T   C 0.6497260 -1.540350e-03 0.001721059
    ## 16   rs2802295     6 108926496   A   G 0.5612910  7.768790e-04 0.001722569
    ## 17  rs11759026     6 126792095   A   G 0.2262510 -1.710450e-03 0.001720774
    ## 18 rs139849708     6 127369230   T   C 0.0201233  1.873630e-03 0.001720506
    ## 19   rs6463758     7   8117636   A   G 0.5340610 -4.520220e-03 0.001716757
    ## 20 rs149352678     7  54920906   C   T 0.1115030 -5.941731e-03 0.001840685
    ## 21     rs42035     7  92239531   A   G 0.2618790  4.150580e-03 0.001717246
    ## 22     rs41563     7 104852654   G   A 0.3115710  3.534092e-03 0.001718081
    ## 23  rs10251751     7 156021770   C   T 0.6007640 -9.437630e-04 0.001722195
    ## 24  rs76650567     8  78242034   C   T 0.0967332 -2.251372e-03 0.001719917
    ## 25  rs66702753     9 103010947   A   C 0.1956680 -2.656340e-03 0.001719314
    ## 26  rs10817864     9 118968579   C   T 0.6296700 -3.602617e-03 0.001717986
    ## 27  rs12357321    10  21790476   G   A 0.3057070 -1.081359e-03 0.001721910
    ## 28   rs1628768    10 105012994   T   C 0.2167950 -3.767050e-03 0.001717763
    ## 29  rs17543864    11  92556100   G   A 0.3086420  2.419567e-03 0.001719663
    ## 30   rs3217901    12   4405389   A   G 0.4122140  1.048680e-03 0.001721975
    ## 31   rs2066827    12  12871099   T   G 0.2087570  1.114030e-03 0.001721844
    ## 32   rs7975351    12  53902190   G   A 0.4873290 -1.628552e-03 0.001738049
    ## 33  rs10876864    12  56401085   G   A 0.6108670 -9.097198e-04 0.001739426
    ## 34  rs10878349    12  66327632   A   G 0.4676720  3.033640e-03 0.001718774
    ## 35  rs35227403    12  68216239   T   A 0.0885020  3.859534e-03 0.001717639
    ## 36 rs111855983    12  80052550   T   C 0.0955965  4.053010e-03 0.001717378
    ## 37   rs2195243    12 102922986   G   C 0.2223430 -9.798853e-04 0.001722118
    ## 38  rs34011931    13 111077516   A   G 0.3173740  1.100280e-03 0.001721870
    ## 39   rs6572878    14  23435333   T   C 0.3754470 -1.246120e-03 0.003697682
    ## 40  rs76801057    14  99728448   C   T 0.0213846  3.085957e-04 0.001723998
    ## 41   rs4265798    16  70636616   T   A 0.9397680  6.712227e-03 0.001718880
    ## 42   rs7207463    17  16004259   A   G 0.5573920  2.457320e-03 0.001719608
    ## 43   rs6505216    17  29206421   G   T 0.2665860  4.604837e-03 0.003683870
    ## 44  rs79600142    17  43897722   T   C 0.1482560 -1.812460e-03 0.001737740
    ## 45  rs12452834    17  47111739   C   T 0.3213290 -1.732961e-03 0.003695013
    ## 46   rs1791513    18  22135429   A   G 0.5078210  1.428970e-03 0.001738401
    ## 47    rs743038    22  50884075   C   T 0.5625000  5.565758e-04 0.001723145
    ##         Z         P      N              TRAIT
    ## 1  -0.727 0.4675000 335394 Cigarettes_Per_Day
    ## 2  -0.169 0.8656000 335394 Cigarettes_Per_Day
    ## 3   0.077 0.9388000 335394 Cigarettes_Per_Day
    ## 4   0.290 0.7716000 335394 Cigarettes_Per_Day
    ## 5  -1.254 0.2098000 335394 Cigarettes_Per_Day
    ## 6  -1.231 0.2185000 335394 Cigarettes_Per_Day
    ## 7   0.013 0.9899000 337334 Cigarettes_Per_Day
    ## 8   2.020 0.0433900 337334 Cigarettes_Per_Day
    ## 9   3.310 0.0009343 337334 Cigarettes_Per_Day
    ## 10 -1.707 0.0877400 337334 Cigarettes_Per_Day
    ## 11  1.378 0.1681000 337334 Cigarettes_Per_Day
    ## 12 -0.051 0.9593000 337334 Cigarettes_Per_Day
    ## 13  1.769 0.0769600 337334 Cigarettes_Per_Day
    ## 14  0.885 0.3760000 337334 Cigarettes_Per_Day
    ## 15 -0.895 0.3706000 337334 Cigarettes_Per_Day
    ## 16  0.451 0.6518000 337334 Cigarettes_Per_Day
    ## 17 -0.994 0.3204000 337334 Cigarettes_Per_Day
    ## 18  1.089 0.2761000 337334 Cigarettes_Per_Day
    ## 19 -2.633 0.0084660 337334 Cigarettes_Per_Day
    ## 20 -3.228 0.0012460 292829 Cigarettes_Per_Day
    ## 21  2.417 0.0156300 337334 Cigarettes_Per_Day
    ## 22  2.057 0.0397100 337334 Cigarettes_Per_Day
    ## 23 -0.548 0.5839000 337334 Cigarettes_Per_Day
    ## 24 -1.309 0.1906000 337334 Cigarettes_Per_Day
    ## 25 -1.545 0.1222000 337334 Cigarettes_Per_Day
    ## 26 -2.097 0.0359800 337334 Cigarettes_Per_Day
    ## 27 -0.628 0.5302000 337334 Cigarettes_Per_Day
    ## 28 -2.193 0.0283000 337334 Cigarettes_Per_Day
    ## 29  1.407 0.1594000 337334 Cigarettes_Per_Day
    ## 30  0.609 0.5425000 337334 Cigarettes_Per_Day
    ## 31  0.647 0.5176000 337334 Cigarettes_Per_Day
    ## 32 -0.937 0.3488000 330721 Cigarettes_Per_Day
    ## 33 -0.523 0.6008000 330721 Cigarettes_Per_Day
    ## 34  1.765 0.0775000 337334 Cigarettes_Per_Day
    ## 35  2.247 0.0246600 337334 Cigarettes_Per_Day
    ## 36  2.360 0.0182800 337334 Cigarettes_Per_Day
    ## 37 -0.569 0.5695000 337334 Cigarettes_Per_Day
    ## 38  0.639 0.5227000 337334 Cigarettes_Per_Day
    ## 39 -0.337 0.7362000  73380 Cigarettes_Per_Day
    ## 40  0.179 0.8579000 337334 Cigarettes_Per_Day
    ## 41  3.905 0.0000941 335394 Cigarettes_Per_Day
    ## 42  1.429 0.1530000 337334 Cigarettes_Per_Day
    ## 43  1.250 0.2112000  73380 Cigarettes_Per_Day
    ## 44 -1.043 0.2969000 330721 Cigarettes_Per_Day
    ## 45 -0.469 0.6388000  73380 Cigarettes_Per_Day
    ## 46  0.822 0.4113000 330721 Cigarettes_Per_Day
    ## 47  0.323 0.7468000 337334 Cigarettes_Per_Day

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

**Table 4:** Harmonized Cortical Surface Area and Smoking Quantity
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
    ## 13  rs12452834                      T                     C
    ## 14  rs12630663                      C                     T
    ## 15 rs139849708                      C                     T
    ## 16 rs149352678                      T                     C
    ## 17   rs1628768                      C                     T
    ## 18  rs17543864                      A                     G
    ## 19   rs1791513                      G                     A
    ## 20   rs2066827                      G                     T
    ## 21   rs2195243                      C                     G
    ## 22   rs2301718                      A                     G
    ## 23   rs2490556                      A                     T
    ## 24   rs2802295                      G                     A
    ## 25   rs3217901                      G                     A
    ## 26  rs34011931                      G                     A
    ## 27  rs34464850                      C                     G
    ## 28  rs35227403                      A                     T
    ## 29    rs386424                      G                     T
    ## 30     rs41563                      A                     G
    ## 31     rs42035                      G                     A
    ## 32   rs4265798                      A                     T
    ## 33   rs4846200                      T                     C
    ## 34    rs499688                      C                     T
    ## 35  rs57415181                      C                     G
    ## 36   rs6463758                      G                     A
    ## 37   rs6505216                      T                     G
    ## 38   rs6572878                      C                     T
    ## 39  rs66702753                      C                     A
    ## 40   rs6673449                      G                     A
    ## 41   rs7207463                      G                     A
    ## 42    rs743038                      T                     C
    ## 43  rs76650567                      T                     C
    ## 44  rs76801057                      T                     C
    ## 45   rs7715167                      C                     T
    ## 46  rs79600142                      C                     T
    ## 47   rs7975351                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    T      508.7590 -8.799590e-05
    ## 2                      T                    C      538.0782 -9.437630e-04
    ## 3                      A                    G     -642.6331  3.470698e-03
    ## 4                      T                    C      531.0956 -3.602617e-03
    ## 5                      A                    G     -628.5901 -9.097198e-04
    ## 6                      G                    A    -1039.9900  3.033640e-03
    ## 7                      T                    C      719.0735 -2.123581e-03
    ## 8                      C                    T     -818.6420  4.053010e-03
    ## 9                      G                    A     1301.5200 -1.710450e-03
    ## 10                     C                    T     -719.1710  2.369800e-03
    ## 11                     A                    G     -585.5512 -2.163179e-03
    ## 12                     A                    G     -698.7452 -1.081359e-03
    ## 13                     T                    C     -626.4308 -1.732961e-03
    ## 14                     C                    T      632.8110  5.677480e-03
    ## 15                     C                    T    -2237.8300  1.873630e-03
    ## 16                     T                    C      967.7266 -5.941731e-03
    ## 17                     C                    T      972.9780 -3.767050e-03
    ## 18                     A                    G     -623.9150  2.419567e-03
    ## 19                     G                    A     -502.3000  1.428970e-03
    ## 20                     G                    T     -862.4130  1.114030e-03
    ## 21                     C                    G     -769.2254 -9.798853e-04
    ## 22                     A                    G      737.2212  3.040498e-03
    ## 23                     A                    T      583.9623 -1.255203e-03
    ## 24                     G                    A      714.5850  7.768790e-04
    ## 25                     G                    A      593.5960  1.048680e-03
    ## 26                     G                    A      538.2090  1.100280e-03
    ## 27                     C                    G     1233.1854 -2.934188e-03
    ## 28                     A                    T    -1271.7821  3.859534e-03
    ## 29                     G                    T      656.5430  1.523160e-03
    ## 30                     A                    G      586.6639  3.534092e-03
    ## 31                     G                    A     -610.3230  4.150580e-03
    ## 32                     A                    T    -1221.0588  6.712227e-03
    ## 33                     T                    C      628.7473 -2.922107e-04
    ## 34                     C                    T     -583.8940  1.332090e-04
    ## 35                     C                    G     -834.6022  2.244621e-05
    ## 36                     G                    A      560.9860 -4.520220e-03
    ## 37                     T                    G      652.8106  4.604837e-03
    ## 38                     C                    T     -574.9920 -1.246120e-03
    ## 39                     C                    A     -593.2390 -2.656340e-03
    ## 40                     G                    A     -552.9050  5.012050e-04
    ## 41                     G                    A     -519.7640  2.457320e-03
    ## 42                     T                    C     -532.1045  5.565758e-04
    ## 43                     T                    C     -902.8657 -2.251372e-03
    ## 44                     T                    C     2036.7834  3.085957e-04
    ## 45                     C                    T      662.7540 -1.540350e-03
    ## 46                     C                    T    -1696.8300 -1.812460e-03
    ## 47                     A                    G      611.0487 -1.628552e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251   0.5291120  FALSE       FALSE     FALSE     4YUZAF
    ## 2        0.6639   0.6007640  FALSE       FALSE     FALSE     4YUZAF
    ## 3        0.2777   0.3320620  FALSE       FALSE     FALSE     4YUZAF
    ## 4        0.5739   0.6296700  FALSE       FALSE     FALSE     4YUZAF
    ## 5        0.5774   0.6108670  FALSE       FALSE     FALSE     4YUZAF
    ## 6        0.5100   0.4676720  FALSE       FALSE     FALSE     4YUZAF
    ## 7        0.1826   0.1820490  FALSE       FALSE     FALSE     4YUZAF
    ## 8        0.1319   0.0955965  FALSE       FALSE     FALSE     4YUZAF
    ## 9        0.2376   0.2262510  FALSE       FALSE     FALSE     4YUZAF
    ## 10       0.1648   0.1368920  FALSE       FALSE     FALSE     4YUZAF
    ## 11       0.2412   0.2932540  FALSE       FALSE     FALSE     4YUZAF
    ## 12       0.3206   0.3057070  FALSE       FALSE     FALSE     4YUZAF
    ## 13       0.3329   0.3213290  FALSE       FALSE     FALSE     4YUZAF
    ## 14       0.4117   0.3748190  FALSE       FALSE     FALSE     4YUZAF
    ## 15       0.0297   0.0201233  FALSE       FALSE     FALSE     4YUZAF
    ## 16       0.0991   0.1115030  FALSE       FALSE     FALSE     4YUZAF
    ## 17       0.2386   0.2167950  FALSE       FALSE     FALSE     4YUZAF
    ## 18       0.3264   0.3086420  FALSE       FALSE     FALSE     4YUZAF
    ## 19       0.5263   0.5078210  FALSE       FALSE     FALSE     4YUZAF
    ## 20       0.2333   0.2087570  FALSE       FALSE     FALSE     4YUZAF
    ## 21       0.2196   0.2223430  FALSE        TRUE     FALSE     4YUZAF
    ## 22       0.2269   0.2813290  FALSE       FALSE     FALSE     4YUZAF
    ## 23       0.3155   0.2875590  FALSE        TRUE     FALSE     4YUZAF
    ## 24       0.6207   0.5612910  FALSE       FALSE     FALSE     4YUZAF
    ## 25       0.4221   0.4122140  FALSE       FALSE     FALSE     4YUZAF
    ## 26       0.3280   0.3173740  FALSE       FALSE     FALSE     4YUZAF
    ## 27       0.1534   0.1518090  FALSE        TRUE     FALSE     4YUZAF
    ## 28       0.0588   0.0885020  FALSE        TRUE     FALSE     4YUZAF
    ## 29       0.3008   0.3547040  FALSE       FALSE     FALSE     4YUZAF
    ## 30       0.3385   0.3115710  FALSE       FALSE     FALSE     4YUZAF
    ## 31       0.2454   0.2618790  FALSE       FALSE     FALSE     4YUZAF
    ## 32       0.9332   0.9397680  FALSE        TRUE     FALSE     4YUZAF
    ## 33       0.4191   0.4891980  FALSE       FALSE     FALSE     4YUZAF
    ## 34       0.3482   0.4442830  FALSE       FALSE     FALSE     4YUZAF
    ## 35       0.1447   0.1311770  FALSE        TRUE     FALSE     4YUZAF
    ## 36       0.5382   0.5340610  FALSE       FALSE     FALSE     4YUZAF
    ## 37       0.2375   0.2665860  FALSE       FALSE     FALSE     4YUZAF
    ## 38       0.3997   0.3754470  FALSE       FALSE     FALSE     4YUZAF
    ## 39       0.2493   0.1956680  FALSE       FALSE     FALSE     4YUZAF
    ## 40       0.5681   0.5325170  FALSE       FALSE     FALSE     4YUZAF
    ## 41       0.5620   0.5573920  FALSE       FALSE     FALSE     4YUZAF
    ## 42       0.5560   0.5625000  FALSE       FALSE     FALSE     4YUZAF
    ## 43       0.0870   0.0967332  FALSE       FALSE     FALSE     4YUZAF
    ## 44       0.0263   0.0213846  FALSE       FALSE     FALSE     4YUZAF
    ## 45       0.6143   0.6497260  FALSE       FALSE     FALSE     4YUZAF
    ## 46       0.2198   0.1482560  FALSE       FALSE     FALSE     4YUZAF
    ## 47       0.4740   0.4873290  FALSE       FALSE     FALSE     4YUZAF
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1            4    40350763 0.001725410    -0.051    0.9593000
    ## 2            7   156021770 0.001722195    -0.548    0.5839000
    ## 3            2    61482261 0.001718167     2.020    0.0433900
    ## 4            9   118968579 0.001717986    -2.097    0.0359800
    ## 5           12    56401085 0.001739426    -0.523    0.6008000
    ## 6           12    66327632 0.001718774     1.765    0.0775000
    ## 7            1   243762208 0.001725086    -1.231    0.2185000
    ## 8           12    80052550 0.001717378     2.360    0.0182800
    ## 9            6   126792095 0.001720774    -0.994    0.3204000
    ## 10           4    17924734 0.001719737     1.378    0.1681000
    ## 11           1   242289357 0.001725023    -1.254    0.2098000
    ## 12          10    21790476 0.001721910    -0.628    0.5302000
    ## 13          17    47111739 0.003695013    -0.469    0.6388000
    ## 14           3    28007315 0.001715252     3.310    0.0009343
    ## 15           6   127369230 0.001720506     1.089    0.2761000
    ## 16           7    54920906 0.001840685    -3.228    0.0012460
    ## 17          10   105012994 0.001717763    -2.193    0.0283000
    ## 18          11    92556100 0.001719663     1.407    0.1594000
    ## 19          18    22135429 0.001738401     0.822    0.4113000
    ## 20          12    12871099 0.001721844     0.647    0.5176000
    ## 21          12   102922986 0.001722118    -0.569    0.5695000
    ## 22           4   106009763 0.001718767     1.769    0.0769600
    ## 23           1     2021284 0.001726552    -0.727    0.4675000
    ## 24           6   108926496 0.001722569     0.451    0.6518000
    ## 25          12     4405389 0.001721975     0.609    0.5425000
    ## 26          13   111077516 0.001721870     0.639    0.5227000
    ## 27           3   141721762 0.001718915    -1.707    0.0877400
    ## 28          12    68216239 0.001717639     2.247    0.0246600
    ## 29           5    81092787 0.001721089     0.885    0.3760000
    ## 30           7   104852654 0.001718081     2.057    0.0397100
    ## 31           7    92239531 0.001717246     2.417    0.0156300
    ## 32          16    70636616 0.001718880     3.905    0.0000941
    ## 33           1     9752648 0.001729057    -0.169    0.8656000
    ## 34           1    61396649 0.001729985     0.077    0.9388000
    ## 35           2    48707841 0.001726631     0.013    0.9899000
    ## 36           7     8117636 0.001716757    -2.633    0.0084660
    ## 37          17    29206421 0.003683870     1.250    0.2112000
    ## 38          14    23435333 0.003697682    -0.337    0.7362000
    ## 39           9   103010947 0.001719314    -1.545    0.1222000
    ## 40           1   160043698 0.001728293     0.290    0.7716000
    ## 41          17    16004259 0.001719608     1.429    0.1530000
    ## 42          22    50884075 0.001723145     0.323    0.7468000
    ## 43           8    78242034 0.001719917    -1.309    0.1906000
    ## 44          14    99728448 0.001723998     0.179    0.8579000
    ## 45           5   170778824 0.001721059    -0.895    0.3706000
    ## 46          17    43897722 0.001737740    -1.043    0.2969000
    ## 47          12    53902190 0.001738049    -0.937    0.3488000
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              337334 Liu2019smkcpd23andMe            TRUE
    ## 2              337334 Liu2019smkcpd23andMe            TRUE
    ## 3              337334 Liu2019smkcpd23andMe            TRUE
    ## 4              337334 Liu2019smkcpd23andMe            TRUE
    ## 5              330721 Liu2019smkcpd23andMe            TRUE
    ## 6              337334 Liu2019smkcpd23andMe            TRUE
    ## 7              335394 Liu2019smkcpd23andMe            TRUE
    ## 8              337334 Liu2019smkcpd23andMe            TRUE
    ## 9              337334 Liu2019smkcpd23andMe            TRUE
    ## 10             337334 Liu2019smkcpd23andMe            TRUE
    ## 11             335394 Liu2019smkcpd23andMe            TRUE
    ## 12             337334 Liu2019smkcpd23andMe            TRUE
    ## 13              73380 Liu2019smkcpd23andMe            TRUE
    ## 14             337334 Liu2019smkcpd23andMe            TRUE
    ## 15             337334 Liu2019smkcpd23andMe            TRUE
    ## 16             292829 Liu2019smkcpd23andMe            TRUE
    ## 17             337334 Liu2019smkcpd23andMe            TRUE
    ## 18             337334 Liu2019smkcpd23andMe            TRUE
    ## 19             330721 Liu2019smkcpd23andMe            TRUE
    ## 20             337334 Liu2019smkcpd23andMe            TRUE
    ## 21             337334 Liu2019smkcpd23andMe            TRUE
    ## 22             337334 Liu2019smkcpd23andMe            TRUE
    ## 23             335394 Liu2019smkcpd23andMe            TRUE
    ## 24             337334 Liu2019smkcpd23andMe            TRUE
    ## 25             337334 Liu2019smkcpd23andMe            TRUE
    ## 26             337334 Liu2019smkcpd23andMe            TRUE
    ## 27             337334 Liu2019smkcpd23andMe            TRUE
    ## 28             337334 Liu2019smkcpd23andMe            TRUE
    ## 29             337334 Liu2019smkcpd23andMe            TRUE
    ## 30             337334 Liu2019smkcpd23andMe            TRUE
    ## 31             337334 Liu2019smkcpd23andMe            TRUE
    ## 32             335394 Liu2019smkcpd23andMe            TRUE
    ## 33             335394 Liu2019smkcpd23andMe            TRUE
    ## 34             335394 Liu2019smkcpd23andMe            TRUE
    ## 35             337334 Liu2019smkcpd23andMe            TRUE
    ## 36             337334 Liu2019smkcpd23andMe            TRUE
    ## 37              73380 Liu2019smkcpd23andMe            TRUE
    ## 38              73380 Liu2019smkcpd23andMe            TRUE
    ## 39             337334 Liu2019smkcpd23andMe            TRUE
    ## 40             335394 Liu2019smkcpd23andMe            TRUE
    ## 41             337334 Liu2019smkcpd23andMe            TRUE
    ## 42             337334 Liu2019smkcpd23andMe            TRUE
    ## 43             337334 Liu2019smkcpd23andMe            TRUE
    ## 44             337334 Liu2019smkcpd23andMe            TRUE
    ## 45             337334 Liu2019smkcpd23andMe            TRUE
    ## 46             330721 Liu2019smkcpd23andMe            TRUE
    ## 47             330721 Liu2019smkcpd23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            4     40350763    109.6122   4.641440
    ## 2             reported            7    156021770    116.0343   4.637234
    ## 3             reported            2     61482261    121.0228  -5.310017
    ## 4             reported            9    118968579    111.2505   4.773872
    ## 5             reported           12     56401085    112.6859  -5.578250
    ## 6             reported           12     66327632    110.4866  -9.412850
    ## 7             reported            1    243762208    141.2684   5.090123
    ## 8             reported           12     80052550    177.5492  -4.610790
    ## 9             reported            6    126792095    134.6156   9.668420
    ## 10            reported            4     17924734    150.5519  -4.776900
    ## 11            reported            1    242289357    128.0273  -4.573643
    ## 12            reported           10     21790476    119.6461  -5.840100
    ## 13            reported           17     47111739    123.5899  -5.068625
    ## 14            reported            3     28007315    111.2125   5.690110
    ## 15            reported            6    127369230    422.1224  -5.301370
    ## 16            reported            7     54920906    191.5244   5.052759
    ## 17            reported           10    105012994    132.0048   7.370780
    ## 18            reported           11     92556100    116.9886  -5.333126
    ## 19            reported           18     22135429    109.5062  -4.586950
    ## 20            reported           12     12871099    159.9581  -5.391500
    ## 21            reported           12    102922986    142.2462  -5.407704
    ## 22            reported            4    106009763    132.3556   5.570004
    ## 23            reported            1      2021284    122.1531   4.780577
    ## 24            reported            6    108926496    112.9897   6.324340
    ## 25            reported           12      4405389    114.7165   5.174460
    ## 26            reported           13    111077516    117.7182   4.572010
    ## 27            reported            3    141721762    152.7201   8.074807
    ## 28            reported           12     68216239    253.6458  -5.014008
    ## 29            reported            5     81092787    120.0422   5.469270
    ## 30            reported            7    104852654    116.3776   5.041038
    ## 31            reported            7     92239531    127.8222  -4.774780
    ## 32            reported           16     70636616    263.6357  -4.631614
    ## 33            reported            1      9752648    124.9738   5.031033
    ## 34            reported            1     61396649    123.5536  -4.725840
    ## 35            reported            2     48707841    159.4070  -5.235668
    ## 36            reported            7      8117636    112.3815   4.991800
    ## 37            reported           17     29206421    142.8638   4.569461
    ## 38            reported           14     23435333    113.9565  -5.045710
    ## 39            reported            9    103010947    128.8921  -4.602600
    ## 40            reported            1    160043698    110.5323  -5.002200
    ## 41            reported           17     16004259    110.5676  -4.700870
    ## 42            reported           22     50884075    115.3983  -4.611025
    ## 43            reported            8     78242034    194.8981  -4.632501
    ## 44            reported           14     99728448    429.5486   4.741683
    ## 45            reported            5    170778824    119.1375   5.562930
    ## 46            reported           17     43897722    143.2730 -11.843300
    ## 47            reported           12     53902190    113.5536   5.381148
    ##    pval.exposure samplesize.exposure           exposure mr_keep.exposure
    ## 1      3.460e-06               32176 Grasby2020surfarea             TRUE
    ## 2      3.531e-06               32176 Grasby2020surfarea             TRUE
    ## 3      1.096e-07               32176 Grasby2020surfarea             TRUE
    ## 4      1.807e-06               32176 Grasby2020surfarea             TRUE
    ## 5      2.430e-08               31319 Grasby2020surfarea             TRUE
    ## 6      4.829e-21               32176 Grasby2020surfarea             TRUE
    ## 7      3.578e-07               32176 Grasby2020surfarea             TRUE
    ## 8      4.011e-06               28185 Grasby2020surfarea             TRUE
    ## 9      4.106e-22               31907 Grasby2020surfarea             TRUE
    ## 10     1.780e-06               32176 Grasby2020surfarea             TRUE
    ## 11     4.793e-06               32176 Grasby2020surfarea             TRUE
    ## 12     5.217e-09               32176 Grasby2020surfarea             TRUE
    ## 13     4.007e-07               30867 Grasby2020surfarea             TRUE
    ## 14     1.270e-08               32176 Grasby2020surfarea             TRUE
    ## 15     1.149e-07               22951 Grasby2020surfarea             TRUE
    ## 16     4.355e-07               32176 Grasby2020surfarea             TRUE
    ## 17     1.696e-13               32176 Grasby2020surfarea             TRUE
    ## 18     9.654e-08               32176 Grasby2020surfarea             TRUE
    ## 19     4.498e-06               32176 Grasby2020surfarea             TRUE
    ## 20     6.987e-08               24138 Grasby2020surfarea             TRUE
    ## 21     6.384e-08               29708 Grasby2020surfarea             TRUE
    ## 22     2.547e-08               32176 Grasby2020surfarea             TRUE
    ## 23     1.748e-06               32068 Grasby2020surfarea             TRUE
    ## 24     2.543e-10               32176 Grasby2020surfarea             TRUE
    ## 25     2.286e-07               32176 Grasby2020surfarea             TRUE
    ## 26     4.831e-06               32176 Grasby2020surfarea             TRUE
    ## 27     6.758e-16               31984 Grasby2020surfarea             TRUE
    ## 28     5.331e-07               32176 Grasby2020surfarea             TRUE
    ## 29     4.519e-08               32176 Grasby2020surfarea             TRUE
    ## 30     4.630e-07               32176 Grasby2020surfarea             TRUE
    ## 31     1.799e-06               32176 Grasby2020surfarea             TRUE
    ## 32     3.628e-06               30025 Grasby2020surfarea             TRUE
    ## 33     4.878e-07               32068 Grasby2020surfarea             TRUE
    ## 34     2.292e-06               31582 Grasby2020surfarea             TRUE
    ## 35     1.644e-07               32176 Grasby2020surfarea             TRUE
    ## 36     5.982e-07               32176 Grasby2020surfarea             TRUE
    ## 37     4.890e-06               31430 Grasby2020surfarea             TRUE
    ## 38     4.518e-07               31790 Grasby2020surfarea             TRUE
    ## 39     4.172e-06               32176 Grasby2020surfarea             TRUE
    ## 40     5.668e-07               32176 Grasby2020surfarea             TRUE
    ## 41     2.591e-06               32176 Grasby2020surfarea             TRUE
    ## 42     4.007e-06               31216 Grasby2020surfarea             TRUE
    ## 43     3.613e-06               32176 Grasby2020surfarea             TRUE
    ## 44     2.119e-06               23846 Grasby2020surfarea             TRUE
    ## 45     2.653e-08               32068 Grasby2020surfarea             TRUE
    ## 46     2.331e-32               29435 Grasby2020surfarea             TRUE
    ## 47     7.401e-08               31319 Grasby2020surfarea             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 2              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 3              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 4              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 5              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 6              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 7              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 8              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 9              reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 10             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 11             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 12             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 13             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 14             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 15             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 16             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 17             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 18             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 19             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 20             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 21             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 22             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 23             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 24             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 25             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 26             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 27             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 28             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 29             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 30             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 31             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 32             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 33             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 34             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 35             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 36             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 37             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 38             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 39             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 40             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 41             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 42             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 43             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 44             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 45             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 46             reported      YYmigr      2    TRUE           TRUE 5e-06
    ## 47             reported      YYmigr      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.971121e-07        1.0000          TRUE
    ## 2     1.502831e-07        1.0000          TRUE
    ## 3     8.041209e-06        1.0000          TRUE
    ## 4     9.455717e-06        1.0000          TRUE
    ## 5     2.496873e-06        1.0000          TRUE
    ## 6     4.055876e-06        1.0000          TRUE
    ## 7     1.949812e-06        1.0000          TRUE
    ## 8     1.065172e-05        1.0000          TRUE
    ## 9     1.410532e-07        1.0000          TRUE
    ## 10    2.710075e-06        1.0000          TRUE
    ## 11    7.831652e-06        1.0000          TRUE
    ## 12    3.358494e-06        1.0000          TRUE
    ## 13    5.710787e-06        1.0000          TRUE
    ## 14    4.105644e-05        0.0188         FALSE
    ## 15    2.767128e-07        1.0000          TRUE
    ## 16    2.552057e-05        0.2538          TRUE
    ## 17    8.015491e-06        1.0000          TRUE
    ## 18    3.206499e-06        1.0000          TRUE
    ## 19    8.340105e-07        1.0000          TRUE
    ## 20    4.943000e-08        1.0000          TRUE
    ## 21    3.273601e-06        1.0000          TRUE
    ## 22    1.494374e-05        1.0000          TRUE
    ## 23    4.283531e-07        1.0000          TRUE
    ## 24    2.376452e-06        1.0000          TRUE
    ## 25    2.829809e-06        1.0000          TRUE
    ## 26    2.799655e-06        1.0000          TRUE
    ## 27    2.979815e-06        1.0000          TRUE
    ## 28    7.068457e-06        1.0000          TRUE
    ## 29    4.983939e-06        1.0000          TRUE
    ## 30    1.750839e-05        0.7614          TRUE
    ## 31    1.262731e-05        1.0000          TRUE
    ## 32    3.227359e-05        0.0564          TRUE
    ## 33    1.334221e-07        1.0000          TRUE
    ## 34    2.286430e-07        1.0000          TRUE
    ## 35    7.424928e-07        1.0000          TRUE
    ## 36    1.577966e-05        1.0000          TRUE
    ## 37    2.805948e-05        1.0000          TRUE
    ## 38    3.412999e-06        1.0000          TRUE
    ## 39    1.092671e-05        1.0000          TRUE
    ## 40    5.486757e-09        1.0000          TRUE
    ## 41    3.731685e-06        1.0000          TRUE
    ## 42    1.277235e-11        1.0000          TRUE
    ## 43    1.065612e-05        1.0000          TRUE
    ## 44    7.524689e-06        1.0000          TRUE
    ## 45    7.432829e-07        1.0000          TRUE
    ## 46    1.507910e-05        1.0000          TRUE
    ## 47    1.007546e-06        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Smoking
Quantity GWAS

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

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE   0.04513090 33.85005  0.05  9.230402 0.8595266
    ## 2             TRUE   0.04419069 33.83309  0.05 12.736565 0.9461775

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
Cortical Surface Area on Smoking Quantity. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Smoking
Quantity

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 2      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 3      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 4      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   47 -1.039326e-06
    ## 2                           Weighted median   47 -8.180269e-07
    ## 3                             Weighted mode   47 -5.306362e-07
    ## 4                                  MR Egger   47 -1.048914e-06
    ##             se         pval
    ## 1 2.880290e-07 0.0003080816
    ## 2 5.346171e-07 0.1259876771
    ## 3 5.835341e-07 0.3679060055
    ## 4 9.932524e-07 0.2965868025

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Smoking Quantity and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 2      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 98.55829   45 7.107982e-06
    ## 2 Inverse variance weighted 98.55854   46 1.075595e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##   egger_intercept           se      pval
    ## 1    9.514973e-06 0.0008903316 0.9915204

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome           exposure    pt
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 103.2732 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 2      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 3      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 4      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   46 -1.153662e-06
    ## 2                           Weighted median   46 -8.376984e-07
    ## 3                             Weighted mode   46 -5.252187e-07
    ## 4                                  MR Egger   46 -8.726611e-07
    ##             se         pval
    ## 1 2.896691e-07 6.814005e-05
    ## 2 5.185673e-07 1.062221e-01
    ## 3 5.762459e-07 3.669158e-01
    ## 4 9.326283e-07 3.545347e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ## 2      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 84.54712   44 0.0002297031
    ## 2 Inverse variance weighted 84.76125   45 0.0003096105

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      YYmigr     4YUZAF Liu2019smkcpd23andMe Grasby2020surfarea
    ##   egger_intercept          se      pval
    ## 1   -0.0002806916 0.000840836 0.7400978

<br>
