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

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Education

    ##            SNP CHROM       POS REF ALT     AF         BETA          SE
    ## 1    rs2490556     1   2021284   T   A 0.3072  3.28120e-03 0.001539202
    ## 2    rs4846200     1   9752648   C   T 0.4158  1.38521e-03 0.001449791
    ## 3     rs499688     1  61396649   T   C 0.3468  1.83270e-03 0.001478213
    ## 4    rs6673449     1 160043698   A   G 0.5723 -3.37595e-03 0.001417276
    ## 5   rs12137969     1 242289357   G   A 0.2411 -2.57619e-03 0.001639258
    ## 6   rs10927043     1 243762208   C   T 0.1833  5.21436e-03 0.001817965
    ## 7   rs57415181     2  48707841   G   C 0.1466 -8.89004e-03 0.001995110
    ## 8   rs10496091     2  61482261   G   A 0.2841 -1.30942e-02 0.001554805
    ## 9   rs12630663     3  28007315   T   C 0.4108  4.74993e-03 0.001425252
    ## 10  rs34464850     3 141721762   G   C 0.1524  8.71554e-03 0.001950958
    ## 11  rs11938781     4  17924734   T   C 0.1637 -5.36376e-03 0.001895096
    ## 12  rs10029872     4  40350763   T   C 0.5213  3.10002e-04 0.001403656
    ## 13   rs2301718     4 106009763   G   A 0.2234  1.02341e-02 0.001692842
    ## 14    rs386424     5  81092787   T   G 0.2953  6.04710e-03 0.001537641
    ## 15   rs7715167     5 170778824   T   C 0.6095  4.23299e-03 0.001454180
    ## 16   rs2802295     6 108926496   A   G 0.6225  7.63436e-03 0.001447565
    ## 17  rs11759026     6 126792095   A   G 0.2331  9.62855e-03 0.001673219
    ## 18 rs139849708     6 127369230   T   C 0.0261 -5.67426e-03 0.004569720
    ## 19   rs6463758     7   8117636   A   G 0.5442  1.16577e-02 0.001408962
    ## 20 rs149352678     7  54920906   C   T 0.0980  7.12573e-03 0.002375996
    ## 21     rs42035     7  92239531   A   G 0.2467 -5.84937e-04 0.001636895
    ## 22     rs41563     7 104852654   G   A 0.3443 -4.53219e-03 0.001475765
    ## 23  rs10251751     7 156021770   C   T 0.6614  5.91089e-04 0.001506276
    ## 24  rs76650567     8  78242034   C   T 0.0841  1.31279e-03 0.002527367
    ## 25  rs66702753     9 103010947   A   C 0.2498  1.45908e-03 0.001630639
    ## 26  rs10817864     9 118968579   C   T 0.5834 -6.54088e-04 0.001422815
    ## 27  rs12357321    10  21790476   G   A 0.3201 -6.97659e-03 0.001512595
    ## 28   rs1628768    10 105012994   T   C 0.2375  8.78912e-03 0.001650800
    ## 29  rs17543864    11  92556100   G   A 0.3239 -6.02136e-03 0.001500009
    ## 30   rs3217901    12   4405389   A   G 0.4244  4.45310e-03 0.001429704
    ## 31   rs2066827    12  12871099   T   G 0.2294 -7.58653e-03 0.001790556
    ## 32   rs7975351    12  53902190   G   A 0.4777 -3.99482e-06 0.001404848
    ## 33  rs10876864    12  56401085   G   A 0.5831 -1.77454e-02 0.001422160
    ## 34  rs10878349    12  66327632   A   G 0.5098 -6.91090e-03 0.001402653
    ## 35  rs35227403    12  68216239   T   A 0.0613 -3.72177e-03 0.002963367
    ## 36 rs111855983    12  80052550   T   C 0.1329  1.98111e-04 0.002090070
    ## 37   rs2195243    12 102922986   G   C 0.2206 -3.02148e-03 0.001692863
    ## 38  rs34011931    13 111077516   A   G 0.3295  7.50506e-04 0.001493932
    ## 39   rs6572878    14  23435333   T   C 0.3961 -1.31348e-02 0.001946516
    ## 40  rs76801057    14  99728448   C   T 0.0273 -9.47232e-03 0.005793213
    ## 41   rs4265798    16  70636616   T   A 0.9380  1.43746e-03 0.002956182
    ## 42   rs7207463    17  16004259   A   G 0.5625  4.53248e-03 0.001413467
    ## 43   rs6505216    17  29206421   G   T 0.2341 -7.64886e-03 0.002282112
    ## 44  rs79600142    17  43897722   T   C 0.2152 -2.05464e-02 0.001726792
    ## 45  rs12452834    17  47111739   C   T 0.3332 -5.56181e-03 0.001965728
    ## 46   rs1791513    18  22135429   A   G 0.5276 -2.37505e-03 0.001404521
    ## 47    rs743038    22  50884075   C   T 0.5566 -4.17189e-03 0.001418415
    ##                Z            P       N     TRAIT
    ## 1    2.131754603 3.302703e-02 1103708 Education
    ## 2    0.955450707 3.393498e-01 1089971 Education
    ## 3    1.239810000 2.150453e-01 1124290 Education
    ## 4   -2.381990000 1.721929e-02 1131881 Education
    ## 5   -1.571564754 1.160515e-01 1131881 Education
    ## 6    2.868247856 4.127520e-03 1124815 Education
    ## 7   -4.455926362 8.353170e-06 1117522 Education
    ## 8   -8.421805090 3.707275e-17 1131881 Education
    ## 9    3.332700000 8.600668e-04 1131881 Education
    ## 10   4.467300776 7.921272e-06 1131881 Education
    ## 11  -2.830330000 4.649956e-03 1131881 Education
    ## 12   0.220853000 8.252067e-01 1131881 Education
    ## 13   6.045500604 1.489468e-09 1119342 Education
    ## 14   3.932700000 8.399587e-05 1131084 Education
    ## 15   2.910900000 3.603871e-03 1105710 Education
    ## 16   5.273940000 1.335283e-07 1130168 Education
    ## 17   5.754510000 8.689593e-09 1111957 Education
    ## 18  -1.241710000 2.143448e-01 1048431 Education
    ## 19   8.273940000 1.296059e-16 1130168 Education
    ## 20   2.999053608 2.708197e-03 1115196 Education
    ## 21  -0.357346000 7.208327e-01 1117629 Education
    ## 22  -3.071091558 2.132777e-03 1131881 Education
    ## 23   0.392417255 6.947499e-01 1095250 Education
    ## 24   0.519431535 6.034598e-01 1131084 Education
    ## 25   0.894787000 3.709009e-01 1116832 Education
    ## 26  -0.459715866 6.457202e-01 1131084 Education
    ## 27  -4.612324544 3.981906e-06 1117629 Education
    ## 28   5.324170000 1.014132e-07 1127676 Education
    ## 29  -4.014219984 5.964270e-05 1129448 Education
    ## 30   3.114690000 1.841362e-03 1114509 Education
    ## 31  -4.236970000 2.265575e-05  981921 Education
    ## 32  -0.002843603 9.977311e-01 1130168 Education
    ## 33 -12.477731256 9.876073e-36 1131881 Education
    ## 34  -4.927020000 8.349465e-07 1131881 Education
    ## 35  -1.255924788 2.091432e-01 1101326 Education
    ## 36   0.094786800 9.244842e-01 1105497 Education
    ## 37  -1.784835001 7.428808e-02 1129448 Education
    ## 38   0.502370000 6.154073e-01 1128651 Education
    ## 39  -6.747870000 1.500306e-11  614028 Education
    ## 40  -1.635071894 1.020340e-01  624444 Education
    ## 41   0.486256163 6.267856e-01 1095006 Education
    ## 42   3.206640000 1.342965e-03 1131881 Education
    ## 43  -3.351660416 8.032849e-04  595975 Education
    ## 44 -11.898600000 1.203722e-32 1105078 Education
    ## 45  -2.829385278 4.663752e-03  648226 Education
    ## 46  -1.691000000 9.083755e-02 1131881 Education
    ## 47  -2.941233674 3.269078e-03 1120801 Education

<br>

**Table 3:** Proxy SNPs for Education

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

**Table 4:** Harmonized Cortical Surface Area and Education datasets

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
    ## 1                      C                    T      508.7590  3.10002e-04
    ## 2                      T                    C      538.0782  5.91089e-04
    ## 3                      A                    G     -642.6331 -1.30942e-02
    ## 4                      T                    C      531.0956 -6.54088e-04
    ## 5                      A                    G     -628.5901 -1.77454e-02
    ## 6                      G                    A    -1039.9900 -6.91090e-03
    ## 7                      T                    C      719.0735  5.21436e-03
    ## 8                      C                    T     -818.6420  1.98111e-04
    ## 9                      G                    A     1301.5200  9.62855e-03
    ## 10                     C                    T     -719.1710 -5.36376e-03
    ## 11                     A                    G     -585.5512 -2.57619e-03
    ## 12                     A                    G     -698.7452 -6.97659e-03
    ## 13                     T                    C     -626.4308 -5.56181e-03
    ## 14                     C                    T      632.8110  4.74993e-03
    ## 15                     C                    T    -2237.8300 -5.67426e-03
    ## 16                     T                    C      967.7266  7.12573e-03
    ## 17                     C                    T      972.9780  8.78912e-03
    ## 18                     A                    G     -623.9150 -6.02136e-03
    ## 19                     G                    A     -502.3000 -2.37505e-03
    ## 20                     G                    T     -862.4130 -7.58653e-03
    ## 21                     C                    G     -769.2254 -3.02148e-03
    ## 22                     A                    G      737.2212  1.02341e-02
    ## 23                     A                    T      583.9623  3.28120e-03
    ## 24                     G                    A      714.5850  7.63436e-03
    ## 25                     G                    A      593.5960  4.45310e-03
    ## 26                     G                    A      538.2090  7.50506e-04
    ## 27                     C                    G     1233.1854  8.71554e-03
    ## 28                     A                    T    -1271.7821 -3.72177e-03
    ## 29                     G                    T      656.5430  6.04710e-03
    ## 30                     A                    G      586.6639 -4.53219e-03
    ## 31                     G                    A     -610.3230 -5.84937e-04
    ## 32                     A                    T    -1221.0588  1.43746e-03
    ## 33                     T                    C      628.7473  1.38521e-03
    ## 34                     C                    T     -583.8940  1.83270e-03
    ## 35                     C                    G     -834.6022 -8.89004e-03
    ## 36                     G                    A      560.9860  1.16577e-02
    ## 37                     T                    G      652.8106 -7.64886e-03
    ## 38                     C                    T     -574.9920 -1.31348e-02
    ## 39                     C                    A     -593.2390  1.45908e-03
    ## 40                     G                    A     -552.9050 -3.37595e-03
    ## 41                     G                    A     -519.7640  4.53248e-03
    ## 42                     T                    C     -532.1045 -4.17189e-03
    ## 43                     T                    C     -902.8657  1.31279e-03
    ## 44                     T                    C     2036.7834 -9.47232e-03
    ## 45                     C                    T      662.7540  4.23299e-03
    ## 46                     C                    T    -1696.8300 -2.05464e-02
    ## 47                     A                    G      611.0487 -3.99482e-06
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251      0.5213  FALSE       FALSE     FALSE     Oka7Ak
    ## 2        0.6639      0.6614  FALSE       FALSE     FALSE     Oka7Ak
    ## 3        0.2777      0.2841  FALSE       FALSE     FALSE     Oka7Ak
    ## 4        0.5739      0.5834  FALSE       FALSE     FALSE     Oka7Ak
    ## 5        0.5774      0.5831  FALSE       FALSE     FALSE     Oka7Ak
    ## 6        0.5100      0.5098  FALSE       FALSE     FALSE     Oka7Ak
    ## 7        0.1826      0.1833  FALSE       FALSE     FALSE     Oka7Ak
    ## 8        0.1319      0.1329  FALSE       FALSE     FALSE     Oka7Ak
    ## 9        0.2376      0.2331  FALSE       FALSE     FALSE     Oka7Ak
    ## 10       0.1648      0.1637  FALSE       FALSE     FALSE     Oka7Ak
    ## 11       0.2412      0.2411  FALSE       FALSE     FALSE     Oka7Ak
    ## 12       0.3206      0.3201  FALSE       FALSE     FALSE     Oka7Ak
    ## 13       0.3329      0.3332  FALSE       FALSE     FALSE     Oka7Ak
    ## 14       0.4117      0.4108  FALSE       FALSE     FALSE     Oka7Ak
    ## 15       0.0297      0.0261  FALSE       FALSE     FALSE     Oka7Ak
    ## 16       0.0991      0.0980  FALSE       FALSE     FALSE     Oka7Ak
    ## 17       0.2386      0.2375  FALSE       FALSE     FALSE     Oka7Ak
    ## 18       0.3264      0.3239  FALSE       FALSE     FALSE     Oka7Ak
    ## 19       0.5263      0.5276  FALSE       FALSE     FALSE     Oka7Ak
    ## 20       0.2333      0.2294  FALSE       FALSE     FALSE     Oka7Ak
    ## 21       0.2196      0.2206  FALSE        TRUE     FALSE     Oka7Ak
    ## 22       0.2269      0.2234  FALSE       FALSE     FALSE     Oka7Ak
    ## 23       0.3155      0.3072  FALSE        TRUE     FALSE     Oka7Ak
    ## 24       0.6207      0.6225  FALSE       FALSE     FALSE     Oka7Ak
    ## 25       0.4221      0.4244  FALSE       FALSE     FALSE     Oka7Ak
    ## 26       0.3280      0.3295  FALSE       FALSE     FALSE     Oka7Ak
    ## 27       0.1534      0.1524  FALSE        TRUE     FALSE     Oka7Ak
    ## 28       0.0588      0.0613  FALSE        TRUE     FALSE     Oka7Ak
    ## 29       0.3008      0.2953  FALSE       FALSE     FALSE     Oka7Ak
    ## 30       0.3385      0.3443  FALSE       FALSE     FALSE     Oka7Ak
    ## 31       0.2454      0.2467  FALSE       FALSE     FALSE     Oka7Ak
    ## 32       0.9332      0.9380  FALSE        TRUE     FALSE     Oka7Ak
    ## 33       0.4191      0.4158  FALSE       FALSE     FALSE     Oka7Ak
    ## 34       0.3482      0.3468  FALSE       FALSE     FALSE     Oka7Ak
    ## 35       0.1447      0.1466  FALSE        TRUE     FALSE     Oka7Ak
    ## 36       0.5382      0.5442  FALSE       FALSE     FALSE     Oka7Ak
    ## 37       0.2375      0.2341  FALSE       FALSE     FALSE     Oka7Ak
    ## 38       0.3997      0.3961  FALSE       FALSE     FALSE     Oka7Ak
    ## 39       0.2493      0.2498  FALSE       FALSE     FALSE     Oka7Ak
    ## 40       0.5681      0.5723  FALSE       FALSE     FALSE     Oka7Ak
    ## 41       0.5620      0.5625  FALSE       FALSE     FALSE     Oka7Ak
    ## 42       0.5560      0.5566  FALSE       FALSE     FALSE     Oka7Ak
    ## 43       0.0870      0.0841  FALSE       FALSE     FALSE     Oka7Ak
    ## 44       0.0263      0.0273  FALSE       FALSE     FALSE     Oka7Ak
    ## 45       0.6143      0.6095  FALSE       FALSE     FALSE     Oka7Ak
    ## 46       0.2198      0.2152  FALSE       FALSE     FALSE     Oka7Ak
    ## 47       0.4740      0.4777  FALSE       FALSE     FALSE     Oka7Ak
    ##    chr.outcome pos.outcome  se.outcome     z.outcome pval.outcome
    ## 1            4    40350763 0.001403656   0.220853000 8.252067e-01
    ## 2            7   156021770 0.001506276   0.392417255 6.947499e-01
    ## 3            2    61482261 0.001554805  -8.421805090 3.707275e-17
    ## 4            9   118968579 0.001422815  -0.459715866 6.457202e-01
    ## 5           12    56401085 0.001422160 -12.477731256 9.876073e-36
    ## 6           12    66327632 0.001402653  -4.927020000 8.349465e-07
    ## 7            1   243762208 0.001817965   2.868247856 4.127520e-03
    ## 8           12    80052550 0.002090070   0.094786800 9.244842e-01
    ## 9            6   126792095 0.001673219   5.754510000 8.689593e-09
    ## 10           4    17924734 0.001895096  -2.830330000 4.649956e-03
    ## 11           1   242289357 0.001639258  -1.571564754 1.160515e-01
    ## 12          10    21790476 0.001512595  -4.612324544 3.981906e-06
    ## 13          17    47111739 0.001965728  -2.829385278 4.663752e-03
    ## 14           3    28007315 0.001425252   3.332700000 8.600668e-04
    ## 15           6   127369230 0.004569720  -1.241710000 2.143448e-01
    ## 16           7    54920906 0.002375996   2.999053608 2.708197e-03
    ## 17          10   105012994 0.001650800   5.324170000 1.014132e-07
    ## 18          11    92556100 0.001500009  -4.014219984 5.964270e-05
    ## 19          18    22135429 0.001404521  -1.691000000 9.083755e-02
    ## 20          12    12871099 0.001790556  -4.236970000 2.265575e-05
    ## 21          12   102922986 0.001692863  -1.784835001 7.428808e-02
    ## 22           4   106009763 0.001692842   6.045500604 1.489468e-09
    ## 23           1     2021284 0.001539202   2.131754603 3.302703e-02
    ## 24           6   108926496 0.001447565   5.273940000 1.335283e-07
    ## 25          12     4405389 0.001429704   3.114690000 1.841362e-03
    ## 26          13   111077516 0.001493932   0.502370000 6.154073e-01
    ## 27           3   141721762 0.001950958   4.467300776 7.921272e-06
    ## 28          12    68216239 0.002963367  -1.255924788 2.091432e-01
    ## 29           5    81092787 0.001537641   3.932700000 8.399587e-05
    ## 30           7   104852654 0.001475765  -3.071091558 2.132777e-03
    ## 31           7    92239531 0.001636895  -0.357346000 7.208327e-01
    ## 32          16    70636616 0.002956182   0.486256163 6.267856e-01
    ## 33           1     9752648 0.001449791   0.955450707 3.393498e-01
    ## 34           1    61396649 0.001478213   1.239810000 2.150453e-01
    ## 35           2    48707841 0.001995110  -4.455926362 8.353170e-06
    ## 36           7     8117636 0.001408962   8.273940000 1.296059e-16
    ## 37          17    29206421 0.002282112  -3.351660416 8.032849e-04
    ## 38          14    23435333 0.001946516  -6.747870000 1.500306e-11
    ## 39           9   103010947 0.001630639   0.894787000 3.709009e-01
    ## 40           1   160043698 0.001417276  -2.381990000 1.721929e-02
    ## 41          17    16004259 0.001413467   3.206640000 1.342965e-03
    ## 42          22    50884075 0.001418415  -2.941233674 3.269078e-03
    ## 43           8    78242034 0.002527367   0.519431535 6.034598e-01
    ## 44          14    99728448 0.005793213  -1.635071894 1.020340e-01
    ## 45           5   170778824 0.001454180   2.910900000 3.603871e-03
    ## 46          17    43897722 0.001726792 -11.898600000 1.203722e-32
    ## 47          12    53902190 0.001404848  -0.002843603 9.977311e-01
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1             1131881 Lee2018education23andMe            TRUE
    ## 2             1095250 Lee2018education23andMe            TRUE
    ## 3             1131881 Lee2018education23andMe            TRUE
    ## 4             1131084 Lee2018education23andMe            TRUE
    ## 5             1131881 Lee2018education23andMe            TRUE
    ## 6             1131881 Lee2018education23andMe            TRUE
    ## 7             1124815 Lee2018education23andMe            TRUE
    ## 8             1105497 Lee2018education23andMe            TRUE
    ## 9             1111957 Lee2018education23andMe            TRUE
    ## 10            1131881 Lee2018education23andMe            TRUE
    ## 11            1131881 Lee2018education23andMe            TRUE
    ## 12            1117629 Lee2018education23andMe            TRUE
    ## 13             648226 Lee2018education23andMe            TRUE
    ## 14            1131881 Lee2018education23andMe            TRUE
    ## 15            1048431 Lee2018education23andMe            TRUE
    ## 16            1115196 Lee2018education23andMe            TRUE
    ## 17            1127676 Lee2018education23andMe            TRUE
    ## 18            1129448 Lee2018education23andMe            TRUE
    ## 19            1131881 Lee2018education23andMe            TRUE
    ## 20             981921 Lee2018education23andMe            TRUE
    ## 21            1129448 Lee2018education23andMe            TRUE
    ## 22            1119342 Lee2018education23andMe            TRUE
    ## 23            1103708 Lee2018education23andMe            TRUE
    ## 24            1130168 Lee2018education23andMe            TRUE
    ## 25            1114509 Lee2018education23andMe            TRUE
    ## 26            1128651 Lee2018education23andMe            TRUE
    ## 27            1131881 Lee2018education23andMe            TRUE
    ## 28            1101326 Lee2018education23andMe            TRUE
    ## 29            1131084 Lee2018education23andMe            TRUE
    ## 30            1131881 Lee2018education23andMe            TRUE
    ## 31            1117629 Lee2018education23andMe            TRUE
    ## 32            1095006 Lee2018education23andMe            TRUE
    ## 33            1089971 Lee2018education23andMe            TRUE
    ## 34            1124290 Lee2018education23andMe            TRUE
    ## 35            1117522 Lee2018education23andMe            TRUE
    ## 36            1130168 Lee2018education23andMe            TRUE
    ## 37             595975 Lee2018education23andMe            TRUE
    ## 38             614028 Lee2018education23andMe            TRUE
    ## 39            1116832 Lee2018education23andMe            TRUE
    ## 40            1131881 Lee2018education23andMe            TRUE
    ## 41            1131881 Lee2018education23andMe            TRUE
    ## 42            1120801 Lee2018education23andMe            TRUE
    ## 43            1131084 Lee2018education23andMe            TRUE
    ## 44             624444 Lee2018education23andMe            TRUE
    ## 45            1105710 Lee2018education23andMe            TRUE
    ## 46            1105078 Lee2018education23andMe            TRUE
    ## 47            1130168 Lee2018education23andMe            TRUE
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
    ## 1              reported      25m116      2    TRUE           TRUE 5e-06
    ## 2              reported      25m116      2    TRUE           TRUE 5e-06
    ## 3              reported      25m116      2    TRUE          FALSE 5e-06
    ## 4              reported      25m116      2    TRUE           TRUE 5e-06
    ## 5              reported      25m116      2    TRUE          FALSE 5e-06
    ## 6              reported      25m116      2    TRUE           TRUE 5e-06
    ## 7              reported      25m116      2    TRUE           TRUE 5e-06
    ## 8              reported      25m116      2    TRUE           TRUE 5e-06
    ## 9              reported      25m116      2    TRUE          FALSE 5e-06
    ## 10             reported      25m116      2    TRUE           TRUE 5e-06
    ## 11             reported      25m116      2    TRUE           TRUE 5e-06
    ## 12             reported      25m116      2    TRUE           TRUE 5e-06
    ## 13             reported      25m116      2    TRUE           TRUE 5e-06
    ## 14             reported      25m116      2    TRUE           TRUE 5e-06
    ## 15             reported      25m116      2    TRUE           TRUE 5e-06
    ## 16             reported      25m116      2    TRUE           TRUE 5e-06
    ## 17             reported      25m116      2    TRUE           TRUE 5e-06
    ## 18             reported      25m116      2    TRUE           TRUE 5e-06
    ## 19             reported      25m116      2    TRUE           TRUE 5e-06
    ## 20             reported      25m116      2    TRUE           TRUE 5e-06
    ## 21             reported      25m116      2    TRUE           TRUE 5e-06
    ## 22             reported      25m116      2    TRUE          FALSE 5e-06
    ## 23             reported      25m116      2    TRUE           TRUE 5e-06
    ## 24             reported      25m116      2    TRUE           TRUE 5e-06
    ## 25             reported      25m116      2    TRUE           TRUE 5e-06
    ## 26             reported      25m116      2    TRUE           TRUE 5e-06
    ## 27             reported      25m116      2    TRUE           TRUE 5e-06
    ## 28             reported      25m116      2    TRUE           TRUE 5e-06
    ## 29             reported      25m116      2    TRUE           TRUE 5e-06
    ## 30             reported      25m116      2    TRUE           TRUE 5e-06
    ## 31             reported      25m116      2    TRUE           TRUE 5e-06
    ## 32             reported      25m116      2    TRUE           TRUE 5e-06
    ## 33             reported      25m116      2    TRUE           TRUE 5e-06
    ## 34             reported      25m116      2    TRUE           TRUE 5e-06
    ## 35             reported      25m116      2    TRUE           TRUE 5e-06
    ## 36             reported      25m116      2    TRUE          FALSE 5e-06
    ## 37             reported      25m116      2    TRUE           TRUE 5e-06
    ## 38             reported      25m116      2    TRUE          FALSE 5e-06
    ## 39             reported      25m116      2    TRUE           TRUE 5e-06
    ## 40             reported      25m116      2    TRUE           TRUE 5e-06
    ## 41             reported      25m116      2    TRUE           TRUE 5e-06
    ## 42             reported      25m116      2    TRUE           TRUE 5e-06
    ## 43             reported      25m116      2    TRUE           TRUE 5e-06
    ## 44             reported      25m116      2    TRUE           TRUE 5e-06
    ## 45             reported      25m116      2    TRUE           TRUE 5e-06
    ## 46             reported      25m116      2    TRUE          FALSE 5e-06
    ## 47             reported      25m116      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     3.753930e-06             1          TRUE
    ## 2     3.168955e-06             1          TRUE
    ## 3               NA          <NA>            NA
    ## 4     9.130316e-06             1          TRUE
    ## 5               NA          <NA>            NA
    ## 6     6.675277e-06             1          TRUE
    ## 7     4.550496e-06             1          TRUE
    ## 8     1.473990e-05             1          TRUE
    ## 9               NA          <NA>            NA
    ## 10    5.205026e-06             1          TRUE
    ## 11    9.172591e-10             1          TRUE
    ## 12    1.645952e-05          0.44          TRUE
    ## 13    8.281814e-06             1          TRUE
    ## 14    4.217611e-06             1          TRUE
    ## 15    1.760682e-05             1          TRUE
    ## 16    8.912885e-06             1          TRUE
    ## 17    2.291217e-05         0.248          TRUE
    ## 18    1.148372e-05             1          TRUE
    ## 19    3.766379e-08             1          TRUE
    ## 20    1.570201e-05             1          TRUE
    ## 21    1.110097e-07             1          TRUE
    ## 22              NA          <NA>            NA
    ## 23    5.725365e-07             1          TRUE
    ## 24    2.193842e-05         0.096          TRUE
    ## 25    3.675486e-06             1          TRUE
    ## 26    2.621041e-06             1          TRUE
    ## 27    1.258642e-05             1          TRUE
    ## 28    3.444643e-06             1          TRUE
    ## 29    1.071956e-05             1          TRUE
    ## 30    5.243102e-05        <0.008         FALSE
    ## 31    4.450336e-06             1          TRUE
    ## 32    4.774539e-05             1          TRUE
    ## 33    1.918000e-06             1          TRUE
    ## 34    1.996171e-05         0.112          TRUE
    ## 35    2.905573e-05         0.408          TRUE
    ## 36              NA          <NA>            NA
    ## 37    1.125133e-04        <0.008         FALSE
    ## 38              NA          <NA>            NA
    ## 39    1.692396e-05         0.792          TRUE
    ## 40    9.845926e-07             1          TRUE
    ## 41    4.790872e-05        <0.008         FALSE
    ## 42    3.589402e-06             1          TRUE
    ## 43    2.843883e-05             1          TRUE
    ## 44    3.477115e-04          0.08          TRUE
    ## 45    1.933664e-06             1          TRUE
    ## 46              NA          <NA>            NA
    ## 47    7.466274e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs10496091           2    61482261     1.096e-07 3.707275e-17
    ## 2 rs10876864          12    56401085     2.430e-08 9.876073e-36
    ## 3 rs11759026           6   126792095     4.106e-22 8.689593e-09
    ## 4  rs2301718           4   106009763     2.547e-08 1.489468e-09
    ## 5  rs6463758           7     8117636     5.982e-07 1.296059e-16
    ## 6  rs6572878          14    23435333     4.518e-07 1.500306e-11
    ## 7 rs79600142          17    43897722     2.331e-32 1.203722e-32

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

    ##   outliers_removed pve.exposure        F Alpha      NCP Power
    ## 1            FALSE   0.03392382 29.55634  0.05 136.5337     1
    ## 2             TRUE   0.03190573 29.99199  0.05 181.2712     1

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
Cortical Surface Area on Education. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Education

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 2      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 3      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 4      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   40 4.348784e-06 3.709529e-07
    ## 2                           Weighted median   40 5.093824e-06 7.095476e-07
    ## 3                             Weighted mode   40 7.016174e-06 1.280680e-06
    ## 4                                  MR Egger   40 7.227234e-06 2.823618e-06
    ##           pval
    ## 1 9.685007e-32
    ## 2 7.023633e-13
    ## 3 2.742209e-06
    ## 4 1.458255e-02

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Education and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 2      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 179.4786   38 2.950039e-20
    ## 2 Inverse variance weighted 184.8225   39 7.672511e-21

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##   egger_intercept          se      pval
    ## 1     -0.00212467 0.001997441 0.2941794

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome           exposure    pt
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 193.9037 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 2      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 3      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 4      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   37 5.072793e-06 3.809132e-07
    ## 2                           Weighted median   37 5.865346e-06 6.950921e-07
    ## 3                             Weighted mode   37 7.280123e-06 1.533954e-06
    ## 4                                  MR Egger   37 5.674301e-06 2.377740e-06
    ##           pval
    ## 1 1.832516e-40
    ## 2 3.221860e-17
    ## 3 3.256632e-05
    ## 4 2.255260e-02

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ## 2      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 113.7287   35 2.958537e-10
    ## 2 Inverse variance weighted 113.9556   36 5.016186e-10

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome           exposure
    ## 1      25m116     Oka7Ak Lee2018education23andMe Grasby2020surfarea
    ##   egger_intercept          se      pval
    ## 1   -0.0004510792 0.001707135 0.7931511

<br>
