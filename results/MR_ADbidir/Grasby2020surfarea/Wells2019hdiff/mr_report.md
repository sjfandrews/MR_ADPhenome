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

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Hearing Difficulty

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1    rs2490556     1   2021284   T   A 0.300820 -6.33877e-04 0.00143602
    ## 2    rs4846200     1   9752648   C   T 0.415772 -4.21868e-04 0.00136913
    ## 3     rs499688     1  61396649   T   C 0.344532 -2.10384e-03 0.00142310
    ## 4    rs6673449     1 160043698   A   G 0.569595  8.69799e-04 0.00133293
    ## 5   rs12137969     1 242289357   G   A 0.230088 -1.34007e-03 0.00156846
    ## 6   rs10927043     1 243762208   C   T 0.183752 -6.08125e-03 0.00170130
    ## 7   rs57415181     2  48707841   G   C 0.150605  2.34916e-03 0.00185191
    ## 8   rs10496091     2  61482261   G   A 0.281086 -1.80441e-03 0.00146959
    ## 9   rs12630663     3  28007315   T   C 0.413328 -2.42475e-04 0.00134247
    ## 10  rs34464850     3 141721762   G   C 0.150847 -4.21444e-03 0.00184390
    ## 11  rs11938781     4  17924734   T   C 0.162711  7.80381e-04 0.00179464
    ## 12  rs10029872     4  40350763   T   C 0.516383  3.42548e-03 0.00132678
    ## 13   rs2301718     4 106009763   G   A 0.209271 -1.21464e-03 0.00163516
    ## 14    rs386424     5  81092787   T   G 0.288275  6.76806e-04 0.00146173
    ## 15   rs7715167     5 170778824   T   C 0.609256 -1.78420e-03 0.00135151
    ## 16   rs2802295     6 108926496   A   G 0.628578 -5.46264e-04 0.00136691
    ## 17  rs11759026     6 126792095   A   G 0.226964  5.86438e-04 0.00158170
    ## 18 rs139849708     6 127369230   T   C 0.029238  2.55730e-03 0.00404486
    ## 19   rs6463758     7   8117636   A   G 0.553896 -2.82109e-04 0.00133150
    ## 20 rs149352678     7  54920906   C   T 0.094182 -8.55997e-03 0.00226951
    ## 21     rs42035     7  92239531   A   G 0.244416  5.26486e-03 0.00153959
    ## 22     rs41563     7 104852654   G   A 0.349881  5.18549e-03 0.00138379
    ## 23  rs10251751     7 156021770   C   T 0.666699  2.41456e-03 0.00139996
    ## 24  rs76650567     8  78242034   C   T 0.080822  3.13189e-03 0.00242481
    ## 25  rs66702753     9 103010947   A   C 0.258301 -7.82537e-04 0.00151010
    ## 26  rs10817864     9 118968579   C   T 0.580781 -1.46885e-03 0.00134012
    ## 27  rs12357321    10  21790476   G   A 0.312635  1.44767e-03 0.00143543
    ## 28   rs1628768    10 105012994   T   C 0.235799 -4.68817e-04 0.00155934
    ## 29  rs17543864    11  92556100   G   A 0.323391 -6.34418e-04 0.00142564
    ## 30   rs3217901    12   4405389   A   G 0.431761  4.41326e-04 0.00136465
    ## 31   rs2066827    12  12871099   T   G 0.232793 -1.89812e-03 0.00155804
    ## 32   rs7975351    12  53902190   G   A 0.476403  1.00665e-03 0.00133045
    ## 33  rs10876864    12  56401085   G   A 0.572250  2.41702e-03 0.00133471
    ## 34  rs10878349    12  66327632   A   G 0.510475  6.83717e-04 0.00132494
    ## 35  rs35227403    12  68216239   T   A 0.059726  3.69509e-03 0.00281777
    ## 36 rs111855983    12  80052550   T   C 0.128078  7.51683e-03 0.00197261
    ## 37   rs2195243    12 102922986   G   C 0.220117  3.07077e-03 0.00159388
    ## 38  rs34011931    13 111077516   A   G 0.327466  3.42518e-03 0.00140520
    ## 39   rs6572878    14  23435333   T   C 0.398169 -4.31139e-04 0.00135769
    ## 40  rs76801057    14  99728448   C   T 0.027870 -2.72466e-03 0.00411239
    ## 41   rs4265798    16  70636616   T   A 0.936643  2.73021e-03 0.00286275
    ## 42   rs7207463    17  16004259   A   G 0.559275 -9.13259e-04 0.00133026
    ## 43   rs6505216    17  29206421   G   T 0.232811  4.48552e-03 0.00162299
    ## 44  rs79600142    17  43897722   T   C 0.225652  7.83811e-03 0.00157688
    ## 45  rs12452834    17  47111739   C   T 0.329349  2.28035e-03 0.00141637
    ## 46   rs1791513    18  22135429   A   G 0.530879  9.13215e-05 0.00133481
    ## 47    rs743038    22  50884075   C   T 0.556352  7.94577e-04 0.00133798
    ##             Z       P      N              TRAIT
    ## 1  -0.4414120 6.6e-01 250389 Hearing_Difficulty
    ## 2  -0.3081290 7.6e-01 250389 Hearing_Difficulty
    ## 3  -1.4783500 1.4e-01 250389 Hearing_Difficulty
    ## 4   0.6525470 5.1e-01 250389 Hearing_Difficulty
    ## 5  -0.8543860 3.9e-01 250389 Hearing_Difficulty
    ## 6  -3.5744700 3.5e-04 250389 Hearing_Difficulty
    ## 7   1.2685100 2.0e-01 250389 Hearing_Difficulty
    ## 8  -1.2278300 2.2e-01 250389 Hearing_Difficulty
    ## 9  -0.1806190 8.6e-01 250389 Hearing_Difficulty
    ## 10 -2.2856100 2.2e-02 250389 Hearing_Difficulty
    ## 11  0.4348400 6.6e-01 250389 Hearing_Difficulty
    ## 12  2.5818000 9.8e-03 250389 Hearing_Difficulty
    ## 13 -0.7428260 4.6e-01 250389 Hearing_Difficulty
    ## 14  0.4630170 6.4e-01 250389 Hearing_Difficulty
    ## 15 -1.3201500 1.9e-01 250389 Hearing_Difficulty
    ## 16 -0.3996340 6.9e-01 250389 Hearing_Difficulty
    ## 17  0.3707640 7.1e-01 250389 Hearing_Difficulty
    ## 18  0.6322340 5.3e-01 250389 Hearing_Difficulty
    ## 19 -0.2118730 8.3e-01 250389 Hearing_Difficulty
    ## 20 -3.7717300 1.6e-04 250389 Hearing_Difficulty
    ## 21  3.4196500 6.3e-04 250389 Hearing_Difficulty
    ## 22  3.7473100 1.8e-04 250389 Hearing_Difficulty
    ## 23  1.7247300 8.5e-02 250389 Hearing_Difficulty
    ## 24  1.2916000 2.0e-01 250389 Hearing_Difficulty
    ## 25 -0.5182020 6.0e-01 250389 Hearing_Difficulty
    ## 26 -1.0960600 2.7e-01 250389 Hearing_Difficulty
    ## 27  1.0085300 3.1e-01 250389 Hearing_Difficulty
    ## 28 -0.3006510 7.6e-01 250389 Hearing_Difficulty
    ## 29 -0.4450060 6.6e-01 250389 Hearing_Difficulty
    ## 30  0.3233990 7.5e-01 250389 Hearing_Difficulty
    ## 31 -1.2182700 2.2e-01 250389 Hearing_Difficulty
    ## 32  0.7566240 4.5e-01 250389 Hearing_Difficulty
    ## 33  1.8109000 7.0e-02 250389 Hearing_Difficulty
    ## 34  0.5160360 6.1e-01 250389 Hearing_Difficulty
    ## 35  1.3113500 1.9e-01 250389 Hearing_Difficulty
    ## 36  3.8106000 1.4e-04 250389 Hearing_Difficulty
    ## 37  1.9266000 5.4e-02 250389 Hearing_Difficulty
    ## 38  2.4375000 1.5e-02 250389 Hearing_Difficulty
    ## 39 -0.3175530 7.5e-01 250389 Hearing_Difficulty
    ## 40 -0.6625490 5.1e-01 250389 Hearing_Difficulty
    ## 41  0.9537020 3.4e-01 250389 Hearing_Difficulty
    ## 42 -0.6865270 4.9e-01 250389 Hearing_Difficulty
    ## 43  2.7637400 5.7e-03 250389 Hearing_Difficulty
    ## 44  4.9706400 6.7e-07 250389 Hearing_Difficulty
    ## 45  1.6100000 1.1e-01 250389 Hearing_Difficulty
    ## 46  0.0684154 9.5e-01 250389 Hearing_Difficulty
    ## 47  0.5938630 5.5e-01 250389 Hearing_Difficulty

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

**Table 4:** Harmonized Cortical Surface Area and Hearing Difficulty
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
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T      508.7590  3.42548e-03
    ## 2                      T                    C      538.0782  2.41456e-03
    ## 3                      A                    G     -642.6331 -1.80441e-03
    ## 4                      T                    C      531.0956 -1.46885e-03
    ## 5                      A                    G     -628.5901  2.41702e-03
    ## 6                      G                    A    -1039.9900  6.83717e-04
    ## 7                      T                    C      719.0735 -6.08125e-03
    ## 8                      C                    T     -818.6420  7.51683e-03
    ## 9                      G                    A     1301.5200  5.86438e-04
    ## 10                     C                    T     -719.1710  7.80381e-04
    ## 11                     A                    G     -585.5512 -1.34007e-03
    ## 12                     A                    G     -698.7452  1.44767e-03
    ## 13                     T                    C     -626.4308  2.28035e-03
    ## 14                     C                    T      632.8110 -2.42475e-04
    ## 15                     C                    T    -2237.8300  2.55730e-03
    ## 16                     T                    C      967.7266 -8.55997e-03
    ## 17                     C                    T      972.9780 -4.68817e-04
    ## 18                     A                    G     -623.9150 -6.34418e-04
    ## 19                     G                    A     -502.3000  9.13215e-05
    ## 20                     G                    T     -862.4130 -1.89812e-03
    ## 21                     C                    G     -769.2254  3.07077e-03
    ## 22                     A                    G      737.2212 -1.21464e-03
    ## 23                     A                    T      583.9623 -6.33877e-04
    ## 24                     G                    A      714.5850 -5.46264e-04
    ## 25                     G                    A      593.5960  4.41326e-04
    ## 26                     G                    A      538.2090  3.42518e-03
    ## 27                     C                    G     1233.1854 -4.21444e-03
    ## 28                     A                    T    -1271.7821  3.69509e-03
    ## 29                     G                    T      656.5430  6.76806e-04
    ## 30                     A                    G      586.6639  5.18549e-03
    ## 31                     G                    A     -610.3230  5.26486e-03
    ## 32                     A                    T    -1221.0588  2.73021e-03
    ## 33                     T                    C      628.7473 -4.21868e-04
    ## 34                     C                    T     -583.8940 -2.10384e-03
    ## 35                     C                    G     -834.6022  2.34916e-03
    ## 36                     G                    A      560.9860 -2.82109e-04
    ## 37                     T                    G      652.8106  4.48552e-03
    ## 38                     C                    T     -574.9920 -4.31139e-04
    ## 39                     C                    A     -593.2390 -7.82537e-04
    ## 40                     G                    A     -552.9050  8.69799e-04
    ## 41                     G                    A     -519.7640 -9.13259e-04
    ## 42                     T                    C     -532.1045  7.94577e-04
    ## 43                     T                    C     -902.8657  3.13189e-03
    ## 44                     T                    C     2036.7834 -2.72466e-03
    ## 45                     C                    T      662.7540 -1.78420e-03
    ## 46                     C                    T    -1696.8300  7.83811e-03
    ## 47                     A                    G      611.0487  1.00665e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251    0.516383  FALSE       FALSE     FALSE     qtJLaq
    ## 2        0.6639    0.666699  FALSE       FALSE     FALSE     qtJLaq
    ## 3        0.2777    0.281086  FALSE       FALSE     FALSE     qtJLaq
    ## 4        0.5739    0.580781  FALSE       FALSE     FALSE     qtJLaq
    ## 5        0.5774    0.572250  FALSE       FALSE     FALSE     qtJLaq
    ## 6        0.5100    0.510475  FALSE       FALSE     FALSE     qtJLaq
    ## 7        0.1826    0.183752  FALSE       FALSE     FALSE     qtJLaq
    ## 8        0.1319    0.128078  FALSE       FALSE     FALSE     qtJLaq
    ## 9        0.2376    0.226964  FALSE       FALSE     FALSE     qtJLaq
    ## 10       0.1648    0.162711  FALSE       FALSE     FALSE     qtJLaq
    ## 11       0.2412    0.230088  FALSE       FALSE     FALSE     qtJLaq
    ## 12       0.3206    0.312635  FALSE       FALSE     FALSE     qtJLaq
    ## 13       0.3329    0.329349  FALSE       FALSE     FALSE     qtJLaq
    ## 14       0.4117    0.413328  FALSE       FALSE     FALSE     qtJLaq
    ## 15       0.0297    0.029238  FALSE       FALSE     FALSE     qtJLaq
    ## 16       0.0991    0.094182  FALSE       FALSE     FALSE     qtJLaq
    ## 17       0.2386    0.235799  FALSE       FALSE     FALSE     qtJLaq
    ## 18       0.3264    0.323391  FALSE       FALSE     FALSE     qtJLaq
    ## 19       0.5263    0.530879  FALSE       FALSE     FALSE     qtJLaq
    ## 20       0.2333    0.232793  FALSE       FALSE     FALSE     qtJLaq
    ## 21       0.2196    0.220117  FALSE        TRUE     FALSE     qtJLaq
    ## 22       0.2269    0.209271  FALSE       FALSE     FALSE     qtJLaq
    ## 23       0.3155    0.300820  FALSE        TRUE     FALSE     qtJLaq
    ## 24       0.6207    0.628578  FALSE       FALSE     FALSE     qtJLaq
    ## 25       0.4221    0.431761  FALSE       FALSE     FALSE     qtJLaq
    ## 26       0.3280    0.327466  FALSE       FALSE     FALSE     qtJLaq
    ## 27       0.1534    0.150847  FALSE        TRUE     FALSE     qtJLaq
    ## 28       0.0588    0.059726  FALSE        TRUE     FALSE     qtJLaq
    ## 29       0.3008    0.288275  FALSE       FALSE     FALSE     qtJLaq
    ## 30       0.3385    0.349881  FALSE       FALSE     FALSE     qtJLaq
    ## 31       0.2454    0.244416  FALSE       FALSE     FALSE     qtJLaq
    ## 32       0.9332    0.936643  FALSE        TRUE     FALSE     qtJLaq
    ## 33       0.4191    0.415772  FALSE       FALSE     FALSE     qtJLaq
    ## 34       0.3482    0.344532  FALSE       FALSE     FALSE     qtJLaq
    ## 35       0.1447    0.150605  FALSE        TRUE     FALSE     qtJLaq
    ## 36       0.5382    0.553896  FALSE       FALSE     FALSE     qtJLaq
    ## 37       0.2375    0.232811  FALSE       FALSE     FALSE     qtJLaq
    ## 38       0.3997    0.398169  FALSE       FALSE     FALSE     qtJLaq
    ## 39       0.2493    0.258301  FALSE       FALSE     FALSE     qtJLaq
    ## 40       0.5681    0.569595  FALSE       FALSE     FALSE     qtJLaq
    ## 41       0.5620    0.559275  FALSE       FALSE     FALSE     qtJLaq
    ## 42       0.5560    0.556352  FALSE       FALSE     FALSE     qtJLaq
    ## 43       0.0870    0.080822  FALSE       FALSE     FALSE     qtJLaq
    ## 44       0.0263    0.027870  FALSE       FALSE     FALSE     qtJLaq
    ## 45       0.6143    0.609256  FALSE       FALSE     FALSE     qtJLaq
    ## 46       0.2198    0.225652  FALSE       FALSE     FALSE     qtJLaq
    ## 47       0.4740    0.476403  FALSE       FALSE     FALSE     qtJLaq
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            4    40350763 0.00132678  2.5818000      9.8e-03
    ## 2            7   156021770 0.00139996  1.7247300      8.5e-02
    ## 3            2    61482261 0.00146959 -1.2278300      2.2e-01
    ## 4            9   118968579 0.00134012 -1.0960600      2.7e-01
    ## 5           12    56401085 0.00133471  1.8109000      7.0e-02
    ## 6           12    66327632 0.00132494  0.5160360      6.1e-01
    ## 7            1   243762208 0.00170130 -3.5744700      3.5e-04
    ## 8           12    80052550 0.00197261  3.8106000      1.4e-04
    ## 9            6   126792095 0.00158170  0.3707640      7.1e-01
    ## 10           4    17924734 0.00179464  0.4348400      6.6e-01
    ## 11           1   242289357 0.00156846 -0.8543860      3.9e-01
    ## 12          10    21790476 0.00143543  1.0085300      3.1e-01
    ## 13          17    47111739 0.00141637  1.6100000      1.1e-01
    ## 14           3    28007315 0.00134247 -0.1806190      8.6e-01
    ## 15           6   127369230 0.00404486  0.6322340      5.3e-01
    ## 16           7    54920906 0.00226951 -3.7717300      1.6e-04
    ## 17          10   105012994 0.00155934 -0.3006510      7.6e-01
    ## 18          11    92556100 0.00142564 -0.4450060      6.6e-01
    ## 19          18    22135429 0.00133481  0.0684154      9.5e-01
    ## 20          12    12871099 0.00155804 -1.2182700      2.2e-01
    ## 21          12   102922986 0.00159388  1.9266000      5.4e-02
    ## 22           4   106009763 0.00163516 -0.7428260      4.6e-01
    ## 23           1     2021284 0.00143602 -0.4414120      6.6e-01
    ## 24           6   108926496 0.00136691 -0.3996340      6.9e-01
    ## 25          12     4405389 0.00136465  0.3233990      7.5e-01
    ## 26          13   111077516 0.00140520  2.4375000      1.5e-02
    ## 27           3   141721762 0.00184390 -2.2856100      2.2e-02
    ## 28          12    68216239 0.00281777  1.3113500      1.9e-01
    ## 29           5    81092787 0.00146173  0.4630170      6.4e-01
    ## 30           7   104852654 0.00138379  3.7473100      1.8e-04
    ## 31           7    92239531 0.00153959  3.4196500      6.3e-04
    ## 32          16    70636616 0.00286275  0.9537020      3.4e-01
    ## 33           1     9752648 0.00136913 -0.3081290      7.6e-01
    ## 34           1    61396649 0.00142310 -1.4783500      1.4e-01
    ## 35           2    48707841 0.00185191  1.2685100      2.0e-01
    ## 36           7     8117636 0.00133150 -0.2118730      8.3e-01
    ## 37          17    29206421 0.00162299  2.7637400      5.7e-03
    ## 38          14    23435333 0.00135769 -0.3175530      7.5e-01
    ## 39           9   103010947 0.00151010 -0.5182020      6.0e-01
    ## 40           1   160043698 0.00133293  0.6525470      5.1e-01
    ## 41          17    16004259 0.00133026 -0.6865270      4.9e-01
    ## 42          22    50884075 0.00133798  0.5938630      5.5e-01
    ## 43           8    78242034 0.00242481  1.2916000      2.0e-01
    ## 44          14    99728448 0.00411239 -0.6625490      5.1e-01
    ## 45           5   170778824 0.00135151 -1.3201500      1.9e-01
    ## 46          17    43897722 0.00157688  4.9706400      6.7e-07
    ## 47          12    53902190 0.00133045  0.7566240      4.5e-01
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
    ## 40             250389 Wells2019hdiff            TRUE            reported
    ## 41             250389 Wells2019hdiff            TRUE            reported
    ## 42             250389 Wells2019hdiff            TRUE            reported
    ## 43             250389 Wells2019hdiff            TRUE            reported
    ## 44             250389 Wells2019hdiff            TRUE            reported
    ## 45             250389 Wells2019hdiff            TRUE            reported
    ## 46             250389 Wells2019hdiff            TRUE            reported
    ## 47             250389 Wells2019hdiff            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             4     40350763    109.6122   4.641440     3.460e-06
    ## 2             7    156021770    116.0343   4.637234     3.531e-06
    ## 3             2     61482261    121.0228  -5.310017     1.096e-07
    ## 4             9    118968579    111.2505   4.773872     1.807e-06
    ## 5            12     56401085    112.6859  -5.578250     2.430e-08
    ## 6            12     66327632    110.4866  -9.412850     4.829e-21
    ## 7             1    243762208    141.2684   5.090123     3.578e-07
    ## 8            12     80052550    177.5492  -4.610790     4.011e-06
    ## 9             6    126792095    134.6156   9.668420     4.106e-22
    ## 10            4     17924734    150.5519  -4.776900     1.780e-06
    ## 11            1    242289357    128.0273  -4.573643     4.793e-06
    ## 12           10     21790476    119.6461  -5.840100     5.217e-09
    ## 13           17     47111739    123.5899  -5.068625     4.007e-07
    ## 14            3     28007315    111.2125   5.690110     1.270e-08
    ## 15            6    127369230    422.1224  -5.301370     1.149e-07
    ## 16            7     54920906    191.5244   5.052759     4.355e-07
    ## 17           10    105012994    132.0048   7.370780     1.696e-13
    ## 18           11     92556100    116.9886  -5.333126     9.654e-08
    ## 19           18     22135429    109.5062  -4.586950     4.498e-06
    ## 20           12     12871099    159.9581  -5.391500     6.987e-08
    ## 21           12    102922986    142.2462  -5.407704     6.384e-08
    ## 22            4    106009763    132.3556   5.570004     2.547e-08
    ## 23            1      2021284    122.1531   4.780577     1.748e-06
    ## 24            6    108926496    112.9897   6.324340     2.543e-10
    ## 25           12      4405389    114.7165   5.174460     2.286e-07
    ## 26           13    111077516    117.7182   4.572010     4.831e-06
    ## 27            3    141721762    152.7201   8.074807     6.758e-16
    ## 28           12     68216239    253.6458  -5.014008     5.331e-07
    ## 29            5     81092787    120.0422   5.469270     4.519e-08
    ## 30            7    104852654    116.3776   5.041038     4.630e-07
    ## 31            7     92239531    127.8222  -4.774780     1.799e-06
    ## 32           16     70636616    263.6357  -4.631614     3.628e-06
    ## 33            1      9752648    124.9738   5.031033     4.878e-07
    ## 34            1     61396649    123.5536  -4.725840     2.292e-06
    ## 35            2     48707841    159.4070  -5.235668     1.644e-07
    ## 36            7      8117636    112.3815   4.991800     5.982e-07
    ## 37           17     29206421    142.8638   4.569461     4.890e-06
    ## 38           14     23435333    113.9565  -5.045710     4.518e-07
    ## 39            9    103010947    128.8921  -4.602600     4.172e-06
    ## 40            1    160043698    110.5323  -5.002200     5.668e-07
    ## 41           17     16004259    110.5676  -4.700870     2.591e-06
    ## 42           22     50884075    115.3983  -4.611025     4.007e-06
    ## 43            8     78242034    194.8981  -4.632501     3.613e-06
    ## 44           14     99728448    429.5486   4.741683     2.119e-06
    ## 45            5    170778824    119.1375   5.562930     2.653e-08
    ## 46           17     43897722    143.2730 -11.843300     2.331e-32
    ## 47           12     53902190    113.5536   5.381148     7.401e-08
    ##    samplesize.exposure           exposure mr_keep.exposure
    ## 1                32176 Grasby2020surfarea             TRUE
    ## 2                32176 Grasby2020surfarea             TRUE
    ## 3                32176 Grasby2020surfarea             TRUE
    ## 4                32176 Grasby2020surfarea             TRUE
    ## 5                31319 Grasby2020surfarea             TRUE
    ## 6                32176 Grasby2020surfarea             TRUE
    ## 7                32176 Grasby2020surfarea             TRUE
    ## 8                28185 Grasby2020surfarea             TRUE
    ## 9                31907 Grasby2020surfarea             TRUE
    ## 10               32176 Grasby2020surfarea             TRUE
    ## 11               32176 Grasby2020surfarea             TRUE
    ## 12               32176 Grasby2020surfarea             TRUE
    ## 13               30867 Grasby2020surfarea             TRUE
    ## 14               32176 Grasby2020surfarea             TRUE
    ## 15               22951 Grasby2020surfarea             TRUE
    ## 16               32176 Grasby2020surfarea             TRUE
    ## 17               32176 Grasby2020surfarea             TRUE
    ## 18               32176 Grasby2020surfarea             TRUE
    ## 19               32176 Grasby2020surfarea             TRUE
    ## 20               24138 Grasby2020surfarea             TRUE
    ## 21               29708 Grasby2020surfarea             TRUE
    ## 22               32176 Grasby2020surfarea             TRUE
    ## 23               32068 Grasby2020surfarea             TRUE
    ## 24               32176 Grasby2020surfarea             TRUE
    ## 25               32176 Grasby2020surfarea             TRUE
    ## 26               32176 Grasby2020surfarea             TRUE
    ## 27               31984 Grasby2020surfarea             TRUE
    ## 28               32176 Grasby2020surfarea             TRUE
    ## 29               32176 Grasby2020surfarea             TRUE
    ## 30               32176 Grasby2020surfarea             TRUE
    ## 31               32176 Grasby2020surfarea             TRUE
    ## 32               30025 Grasby2020surfarea             TRUE
    ## 33               32068 Grasby2020surfarea             TRUE
    ## 34               31582 Grasby2020surfarea             TRUE
    ## 35               32176 Grasby2020surfarea             TRUE
    ## 36               32176 Grasby2020surfarea             TRUE
    ## 37               31430 Grasby2020surfarea             TRUE
    ## 38               31790 Grasby2020surfarea             TRUE
    ## 39               32176 Grasby2020surfarea             TRUE
    ## 40               32176 Grasby2020surfarea             TRUE
    ## 41               32176 Grasby2020surfarea             TRUE
    ## 42               31216 Grasby2020surfarea             TRUE
    ## 43               32176 Grasby2020surfarea             TRUE
    ## 44               23846 Grasby2020surfarea             TRUE
    ## 45               32068 Grasby2020surfarea             TRUE
    ## 46               29435 Grasby2020surfarea             TRUE
    ## 47               31319 Grasby2020surfarea             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 2              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 3              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 4              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 5              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 6              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 7              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 8              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 9              reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 10             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 11             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 12             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 13             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 14             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 15             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 16             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 17             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 18             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 19             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 20             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 21             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 22             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 23             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 24             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 25             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 26             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 27             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 28             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 29             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 30             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 31             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 32             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 33             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 34             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 35             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 36             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 37             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 38             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 39             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 40             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 41             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 42             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 43             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 44             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 45             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 46             reported      c90b0e      2    TRUE           TRUE 5e-06
    ## 47             reported      c90b0e      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.645774e-05         0.141          TRUE
    ## 2     9.403598e-06             1          TRUE
    ## 3     6.650322e-06             1          TRUE
    ## 4     7.693544e-07             1          TRUE
    ## 5     3.014867e-06             1          TRUE
    ## 6     2.784252e-07             1          TRUE
    ## 7     2.860293e-05        0.0564          TRUE
    ## 8     4.472831e-05        0.0658          TRUE
    ## 9     4.832109e-06             1          TRUE
    ## 10    1.439551e-09             1          TRUE
    ## 11    4.124856e-06             1          TRUE
    ## 12    4.450357e-07             1          TRUE
    ## 13    2.546130e-06             1          TRUE
    ## 14    2.368585e-07             1          TRUE
    ## 15    1.682928e-10             1          TRUE
    ## 16    5.748069e-05        0.0752          TRUE
    ## 17    4.360462e-07             1          TRUE
    ## 18    1.868870e-06             1          TRUE
    ## 19    2.361437e-07             1          TRUE
    ## 20    8.756032e-06             1          TRUE
    ## 21    5.027959e-06             1          TRUE
    ## 22    1.468645e-07             1          TRUE
    ## 23    9.367085e-10             1          TRUE
    ## 24    7.447868e-08             1          TRUE
    ## 25    1.288986e-06             1          TRUE
    ## 26    1.673068e-05        0.2632          TRUE
    ## 27    8.573907e-06             1          TRUE
    ## 28    5.245157e-06             1          TRUE
    ## 29    2.100356e-06             1          TRUE
    ## 30    3.536968e-05       <0.0094         FALSE
    ## 31    2.148644e-05        0.1222          TRUE
    ## 32    1.859644e-06             1          TRUE
    ## 33    8.920341e-08             1          TRUE
    ## 34    7.894279e-06             1          TRUE
    ## 35    2.032784e-06             1          TRUE
    ## 36    1.306679e-07             1          TRUE
    ## 37    2.813050e-05        0.0658          TRUE
    ## 38    1.215465e-06             1          TRUE
    ## 39    2.182436e-06             1          TRUE
    ## 40    5.993186e-08             1          TRUE
    ## 41    2.325334e-06             1          TRUE
    ## 42    3.694177e-08             1          TRUE
    ## 43    4.542814e-06             1          TRUE
    ## 44    1.744453e-07             1          TRUE
    ## 45    1.108788e-06             1          TRUE
    ## 46    4.334358e-05        0.0094         FALSE
    ## 47    3.006298e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

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
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE    0.0451309 33.85005  0.05 14.061632 0.9632666
    ## 2             TRUE    0.0400659 31.22294  0.05  8.247244 0.8190736

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
Cortical Surface Area on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Hearing
Difficulty

    ##   id.exposure id.outcome        outcome           exposure
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 2      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 3      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 4      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   47 -1.137119e-06
    ## 2                           Weighted median   47 -8.098975e-07
    ## 3                             Weighted mode   47 -7.481590e-07
    ## 4                                  MR Egger   47 -5.013385e-06
    ##             se         pval
    ## 1 2.975582e-07 0.0001326417
    ## 2 5.069992e-07 0.1101690886
    ## 3 9.862675e-07 0.4519755372
    ## 4 1.395559e-06 0.0008075432

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Hearing Difficulty and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome           exposure
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 2      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 114.3210   45 5.945280e-08
    ## 2 Inverse variance weighted 136.4797   46 6.709841e-11

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome           exposure egger_intercept
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea     0.003091228
    ##            se        pval
    ## 1 0.001046685 0.004982821

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome           exposure    pt
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 144.0696 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome           exposure
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 2      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 3      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 4      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   45 -9.122436e-07
    ## 2                           Weighted median   45 -6.656237e-07
    ## 3                             Weighted mode   45 -7.179305e-07
    ## 4                                  MR Egger   45 -3.619166e-06
    ##             se        pval
    ## 1 3.169168e-07 0.003995774
    ## 2 4.943180e-07 0.178125356
    ## 3 7.712612e-07 0.357009217
    ## 4 1.585523e-06 0.027457476

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome           exposure
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ## 2      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea
    ##                      method         Q Q_df       Q_pval
    ## 1                  MR Egger  96.83517   43 5.005055e-06
    ## 2 Inverse variance weighted 104.04819   44 8.998049e-07

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome           exposure egger_intercept
    ## 1      c90b0e     qtJLaq Wells2019hdiff Grasby2020surfarea     0.002045869
    ##            se       pval
    ## 1 0.001143146 0.08054902

<br>
