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

### Outcome: Insomnia

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Insomnia

    ##            SNP CHROM       POS REF ALT        AF          BETA
    ## 1    rs2490556     1   2021284   T   A 0.2875590 -1.302112e-03
    ## 2    rs4846200     1   9752648   C   T 0.4891980 -7.623917e-05
    ## 3     rs499688     1  61396649   T   C 0.4442830  9.752890e-04
    ## 4    rs6673449     1 160043698   A   G 0.5325170  3.629440e-04
    ## 5   rs12137969     1 242289357   G   A 0.2932540  1.359057e-03
    ## 6   rs10927043     1 243762208   C   T 0.1820490 -3.805342e-03
    ## 7   rs57415181     2  48707841   G   C 0.1311770  8.172742e-04
    ## 8   rs10496091     2  61482261   G   A 0.3320620  4.000782e-03
    ## 9   rs12630663     3  28007315   T   C 0.3748190  1.033510e-03
    ## 10  rs34464850     3 141721762   G   C 0.1518090 -7.291637e-05
    ## 11  rs11938781     4  17924734   T   C 0.1368920  2.422660e-03
    ## 12  rs10029872     4  40350763   T   C 0.5291120 -9.026680e-04
    ## 13   rs2301718     4 106009763   G   A 0.2813290 -6.838907e-04
    ## 14    rs386424     5  81092787   T   G 0.3547040  3.544970e-03
    ## 15   rs7715167     5 170778824   T   C 0.6497260 -3.150380e-03
    ## 16   rs2802295     6 108926496   A   G 0.5612910 -2.254610e-03
    ## 17  rs11759026     6 126792095   A   G 0.2262510 -2.732530e-03
    ## 18 rs139849708     6 127369230   T   C 0.0201233  4.811860e-04
    ## 19   rs6463758     7   8117636   A   G 0.5340610 -1.934300e-03
    ## 20 rs149352678     7  54920906   C   T 0.1115030 -2.584002e-03
    ## 21     rs42035     7  92239531   A   G 0.2618790  1.795470e-03
    ## 22     rs41563     7 104852654   G   A 0.3115710  2.030311e-03
    ## 23  rs10251751     7 156021770   C   T 0.6007640  6.489367e-04
    ## 24  rs76650567     8  78242034   C   T 0.0967332  1.150816e-03
    ## 25  rs66702753     9 103010947   A   C 0.1956680 -1.646410e-03
    ## 26  rs10817864     9 118968579   C   T 0.6296700  3.533147e-04
    ## 27  rs12357321    10  21790476   G   A 0.3057070  4.680887e-03
    ## 28   rs1628768    10 105012994   T   C 0.2167950 -2.440750e-03
    ## 29  rs17543864    11  92556100   G   A 0.3086420  2.447027e-03
    ## 30   rs3217901    12   4405389   A   G 0.4122140  5.053980e-04
    ## 31   rs2066827    12  12871099   T   G 0.2087570  3.454960e-03
    ## 32   rs7975351    12  53902190   G   A 0.4873290 -6.516651e-04
    ## 33  rs10876864    12  56401085   G   A 0.6108670  1.843449e-03
    ## 34  rs10878349    12  66327632   A   G 0.4676720  5.167530e-03
    ## 35  rs35227403    12  68216239   T   A 0.0885020  1.954377e-03
    ## 36 rs111855983    12  80052550   T   C 0.0955965  1.587660e-03
    ## 37   rs2195243    12 102922986   G   C 0.2223430  2.445662e-04
    ## 38  rs34011931    13 111077516   A   G 0.3173740 -3.897530e-04
    ## 39   rs6572878    14  23435333   T   C 0.3754470 -1.795990e-03
    ## 40  rs76801057    14  99728448   C   T 0.0213846 -4.793553e-04
    ## 41   rs4265798    16  70636616   T   A 0.9397680 -2.450810e-04
    ## 42   rs7207463    17  16004259   A   G 0.5573920 -8.632050e-04
    ## 43   rs6505216    17  29206421   G   T 0.2665860 -6.123659e-04
    ## 44  rs79600142    17  43897722   T   C 0.1482560  2.844460e-04
    ## 45  rs12452834    17  47111739   C   T 0.3213290  4.871825e-03
    ## 46   rs1791513    18  22135429   A   G 0.5078210  2.639730e-03
    ## 47    rs743038    22  50884075   C   T 0.5625000  1.351597e-03
    ##              SE      Z         P       N             TRAIT
    ## 1  0.0008663422 -1.503 1.329e-01 1330543 Insomnia_Symptoms
    ## 2  0.0010302590 -0.074 9.408e-01  944267 Insomnia_Symptoms
    ## 3  0.0010287859  0.948 3.430e-01  944267 Insomnia_Symptoms
    ## 4  0.0008682868  0.418 6.759e-01 1327141 Insomnia_Symptoms
    ## 5  0.0008672986  1.567 1.171e-01 1327483 Insomnia_Symptoms
    ## 6  0.0008646539 -4.401 1.078e-05 1330625 Insomnia_Symptoms
    ## 7  0.0008675947  0.942 3.462e-01 1327870 Insomnia_Symptoms
    ## 8  0.0008644732  4.628 3.687e-06 1330800 Insomnia_Symptoms
    ## 9  0.0008677692  1.191 2.338e-01 1326797 Insomnia_Symptoms
    ## 10 0.0008680520 -0.084 9.332e-01 1329560 Insomnia_Symptoms
    ## 11 0.0008667827  2.795 5.192e-03 1326826 Insomnia_Symptoms
    ## 12 0.0008687852 -1.039 2.987e-01 1324017 Insomnia_Symptoms
    ## 13 0.0008700899 -0.786 4.316e-01 1320626 Insomnia_Symptoms
    ## 14 0.0008656815  4.095 4.219e-05 1327976 Insomnia_Symptoms
    ## 15 0.0008650143 -3.642 2.701e-04 1330800 Insomnia_Symptoms
    ## 16 0.0008664921 -2.602 9.256e-03 1328056 Insomnia_Symptoms
    ## 17 0.0008663688 -3.154 1.609e-03 1327471 Insomnia_Symptoms
    ## 18 0.0008685661  0.554 5.796e-01 1325872 Insomnia_Symptoms
    ## 19 0.0008677895 -2.229 2.581e-02 1324748 Insomnia_Symptoms
    ## 20 0.0008662426 -2.983 2.858e-03 1328156 Insomnia_Symptoms
    ## 21 0.0008669593  2.071 3.837e-02 1327577 Insomnia_Symptoms
    ## 22 0.0008661737  2.344 1.908e-02 1329494 Insomnia_Symptoms
    ## 23 0.0008675625  0.748 4.542e-01 1328426 Insomnia_Symptoms
    ## 24 0.0008665781  1.328 1.842e-01 1330166 Insomnia_Symptoms
    ## 25 0.0008669881 -1.899 5.753e-02 1327805 Insomnia_Symptoms
    ## 26 0.0008680951  0.407 6.840e-01 1327764 Insomnia_Symptoms
    ## 27 0.0008681170  5.392 6.985e-08 1318348 Insomnia_Symptoms
    ## 28 0.0008664371 -2.817 4.849e-03 1327848 Insomnia_Symptoms
    ## 29 0.0008702089  2.812 4.920e-03 1316352 Insomnia_Symptoms
    ## 30 0.0010293246  0.491 6.237e-01  944267 Insomnia_Symptoms
    ## 31 0.0008648198  3.995 6.474e-05 1330800 Insomnia_Symptoms
    ## 32 0.0008700469 -0.749 4.538e-01 1320848 Insomnia_Symptoms
    ## 33 0.0008658757  2.129 3.329e-02 1330800 Insomnia_Symptoms
    ## 34 0.0008645697  5.977 2.267e-09 1328248 Insomnia_Symptoms
    ## 35 0.0008674554  2.253 2.424e-02 1325726 Insomnia_Symptoms
    ## 36 0.0008661526  1.833 6.680e-02 1330494 Insomnia_Symptoms
    ## 37 0.0008672559  0.282 7.777e-01 1330800 Insomnia_Symptoms
    ## 38 0.0008680477 -0.449 6.535e-01 1327772 Insomnia_Symptoms
    ## 39 0.0010280407 -1.747 8.068e-02  944267 Insomnia_Symptoms
    ## 40 0.0008683972 -0.552 5.811e-01 1326394 Insomnia_Symptoms
    ## 41 0.0010297521 -0.238 8.121e-01  944267 Insomnia_Symptoms
    ## 42 0.0008666718 -0.996 3.192e-01 1330579 Insomnia_Symptoms
    ## 43 0.0010291864 -0.595 5.520e-01  944267 Insomnia_Symptoms
    ## 44 0.0008672140  0.328 7.432e-01 1330747 Insomnia_Symptoms
    ## 45 0.0010256474  4.750 2.032e-06  944267 Insomnia_Symptoms
    ## 46 0.0008697636  3.035 2.406e-03 1317316 Insomnia_Symptoms
    ## 47 0.0008703138  1.553 1.204e-01 1318321 Insomnia_Symptoms

<br>

**Table 3:** Proxy SNPs for Insomnia

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

**Table 4:** Harmonized Cortical Surface Area and Insomnia datasets

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
    ## 1                      C                    T      508.7590 -9.026680e-04
    ## 2                      T                    C      538.0782  6.489367e-04
    ## 3                      A                    G     -642.6331  4.000782e-03
    ## 4                      T                    C      531.0956  3.533147e-04
    ## 5                      A                    G     -628.5901  1.843449e-03
    ## 6                      G                    A    -1039.9900  5.167530e-03
    ## 7                      T                    C      719.0735 -3.805342e-03
    ## 8                      C                    T     -818.6420  1.587660e-03
    ## 9                      G                    A     1301.5200 -2.732530e-03
    ## 10                     C                    T     -719.1710  2.422660e-03
    ## 11                     A                    G     -585.5512  1.359057e-03
    ## 12                     A                    G     -698.7452  4.680887e-03
    ## 13                     T                    C     -626.4308  4.871825e-03
    ## 14                     C                    T      632.8110  1.033510e-03
    ## 15                     C                    T    -2237.8300  4.811860e-04
    ## 16                     T                    C      967.7266 -2.584002e-03
    ## 17                     C                    T      972.9780 -2.440750e-03
    ## 18                     A                    G     -623.9150  2.447027e-03
    ## 19                     G                    A     -502.3000  2.639730e-03
    ## 20                     G                    T     -862.4130  3.454960e-03
    ## 21                     C                    G     -769.2254  2.445662e-04
    ## 22                     A                    G      737.2212 -6.838907e-04
    ## 23                     A                    T      583.9623 -1.302112e-03
    ## 24                     G                    A      714.5850 -2.254610e-03
    ## 25                     G                    A      593.5960  5.053980e-04
    ## 26                     G                    A      538.2090 -3.897530e-04
    ## 27                     C                    G     1233.1854 -7.291637e-05
    ## 28                     A                    T    -1271.7821  1.954377e-03
    ## 29                     G                    T      656.5430  3.544970e-03
    ## 30                     A                    G      586.6639  2.030311e-03
    ## 31                     G                    A     -610.3230  1.795470e-03
    ## 32                     A                    T    -1221.0588 -2.450810e-04
    ## 33                     T                    C      628.7473 -7.623917e-05
    ## 34                     C                    T     -583.8940  9.752890e-04
    ## 35                     C                    G     -834.6022  8.172742e-04
    ## 36                     G                    A      560.9860 -1.934300e-03
    ## 37                     T                    G      652.8106 -6.123659e-04
    ## 38                     C                    T     -574.9920 -1.795990e-03
    ## 39                     C                    A     -593.2390 -1.646410e-03
    ## 40                     G                    A     -552.9050  3.629440e-04
    ## 41                     G                    A     -519.7640 -8.632050e-04
    ## 42                     T                    C     -532.1045  1.351597e-03
    ## 43                     T                    C     -902.8657  1.150816e-03
    ## 44                     T                    C     2036.7834 -4.793553e-04
    ## 45                     C                    T      662.7540 -3.150380e-03
    ## 46                     C                    T    -1696.8300  2.844460e-04
    ## 47                     A                    G      611.0487 -6.516651e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251   0.5291120  FALSE       FALSE     FALSE     7jquhB
    ## 2        0.6639   0.6007640  FALSE       FALSE     FALSE     7jquhB
    ## 3        0.2777   0.3320620  FALSE       FALSE     FALSE     7jquhB
    ## 4        0.5739   0.6296700  FALSE       FALSE     FALSE     7jquhB
    ## 5        0.5774   0.6108670  FALSE       FALSE     FALSE     7jquhB
    ## 6        0.5100   0.4676720  FALSE       FALSE     FALSE     7jquhB
    ## 7        0.1826   0.1820490  FALSE       FALSE     FALSE     7jquhB
    ## 8        0.1319   0.0955965  FALSE       FALSE     FALSE     7jquhB
    ## 9        0.2376   0.2262510  FALSE       FALSE     FALSE     7jquhB
    ## 10       0.1648   0.1368920  FALSE       FALSE     FALSE     7jquhB
    ## 11       0.2412   0.2932540  FALSE       FALSE     FALSE     7jquhB
    ## 12       0.3206   0.3057070  FALSE       FALSE     FALSE     7jquhB
    ## 13       0.3329   0.3213290  FALSE       FALSE     FALSE     7jquhB
    ## 14       0.4117   0.3748190  FALSE       FALSE     FALSE     7jquhB
    ## 15       0.0297   0.0201233  FALSE       FALSE     FALSE     7jquhB
    ## 16       0.0991   0.1115030  FALSE       FALSE     FALSE     7jquhB
    ## 17       0.2386   0.2167950  FALSE       FALSE     FALSE     7jquhB
    ## 18       0.3264   0.3086420  FALSE       FALSE     FALSE     7jquhB
    ## 19       0.5263   0.5078210  FALSE       FALSE     FALSE     7jquhB
    ## 20       0.2333   0.2087570  FALSE       FALSE     FALSE     7jquhB
    ## 21       0.2196   0.2223430  FALSE        TRUE     FALSE     7jquhB
    ## 22       0.2269   0.2813290  FALSE       FALSE     FALSE     7jquhB
    ## 23       0.3155   0.2875590  FALSE        TRUE     FALSE     7jquhB
    ## 24       0.6207   0.5612910  FALSE       FALSE     FALSE     7jquhB
    ## 25       0.4221   0.4122140  FALSE       FALSE     FALSE     7jquhB
    ## 26       0.3280   0.3173740  FALSE       FALSE     FALSE     7jquhB
    ## 27       0.1534   0.1518090  FALSE        TRUE     FALSE     7jquhB
    ## 28       0.0588   0.0885020  FALSE        TRUE     FALSE     7jquhB
    ## 29       0.3008   0.3547040  FALSE       FALSE     FALSE     7jquhB
    ## 30       0.3385   0.3115710  FALSE       FALSE     FALSE     7jquhB
    ## 31       0.2454   0.2618790  FALSE       FALSE     FALSE     7jquhB
    ## 32       0.9332   0.9397680  FALSE        TRUE     FALSE     7jquhB
    ## 33       0.4191   0.4891980  FALSE       FALSE     FALSE     7jquhB
    ## 34       0.3482   0.4442830  FALSE       FALSE     FALSE     7jquhB
    ## 35       0.1447   0.1311770  FALSE        TRUE     FALSE     7jquhB
    ## 36       0.5382   0.5340610  FALSE       FALSE     FALSE     7jquhB
    ## 37       0.2375   0.2665860  FALSE       FALSE     FALSE     7jquhB
    ## 38       0.3997   0.3754470  FALSE       FALSE     FALSE     7jquhB
    ## 39       0.2493   0.1956680  FALSE       FALSE     FALSE     7jquhB
    ## 40       0.5681   0.5325170  FALSE       FALSE     FALSE     7jquhB
    ## 41       0.5620   0.5573920  FALSE       FALSE     FALSE     7jquhB
    ## 42       0.5560   0.5625000  FALSE       FALSE     FALSE     7jquhB
    ## 43       0.0870   0.0967332  FALSE       FALSE     FALSE     7jquhB
    ## 44       0.0263   0.0213846  FALSE       FALSE     FALSE     7jquhB
    ## 45       0.6143   0.6497260  FALSE       FALSE     FALSE     7jquhB
    ## 46       0.2198   0.1482560  FALSE       FALSE     FALSE     7jquhB
    ## 47       0.4740   0.4873290  FALSE       FALSE     FALSE     7jquhB
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1            4    40350763 0.0008687852    -1.039    2.987e-01
    ## 2            7   156021770 0.0008675625     0.748    4.542e-01
    ## 3            2    61482261 0.0008644732     4.628    3.687e-06
    ## 4            9   118968579 0.0008680951     0.407    6.840e-01
    ## 5           12    56401085 0.0008658757     2.129    3.329e-02
    ## 6           12    66327632 0.0008645697     5.977    2.267e-09
    ## 7            1   243762208 0.0008646539    -4.401    1.078e-05
    ## 8           12    80052550 0.0008661526     1.833    6.680e-02
    ## 9            6   126792095 0.0008663688    -3.154    1.609e-03
    ## 10           4    17924734 0.0008667827     2.795    5.192e-03
    ## 11           1   242289357 0.0008672986     1.567    1.171e-01
    ## 12          10    21790476 0.0008681170     5.392    6.985e-08
    ## 13          17    47111739 0.0010256474     4.750    2.032e-06
    ## 14           3    28007315 0.0008677692     1.191    2.338e-01
    ## 15           6   127369230 0.0008685661     0.554    5.796e-01
    ## 16           7    54920906 0.0008662426    -2.983    2.858e-03
    ## 17          10   105012994 0.0008664371    -2.817    4.849e-03
    ## 18          11    92556100 0.0008702089     2.812    4.920e-03
    ## 19          18    22135429 0.0008697636     3.035    2.406e-03
    ## 20          12    12871099 0.0008648198     3.995    6.474e-05
    ## 21          12   102922986 0.0008672559     0.282    7.777e-01
    ## 22           4   106009763 0.0008700899    -0.786    4.316e-01
    ## 23           1     2021284 0.0008663422    -1.503    1.329e-01
    ## 24           6   108926496 0.0008664921    -2.602    9.256e-03
    ## 25          12     4405389 0.0010293246     0.491    6.237e-01
    ## 26          13   111077516 0.0008680477    -0.449    6.535e-01
    ## 27           3   141721762 0.0008680520    -0.084    9.332e-01
    ## 28          12    68216239 0.0008674554     2.253    2.424e-02
    ## 29           5    81092787 0.0008656815     4.095    4.219e-05
    ## 30           7   104852654 0.0008661737     2.344    1.908e-02
    ## 31           7    92239531 0.0008669593     2.071    3.837e-02
    ## 32          16    70636616 0.0010297521    -0.238    8.121e-01
    ## 33           1     9752648 0.0010302590    -0.074    9.408e-01
    ## 34           1    61396649 0.0010287859     0.948    3.430e-01
    ## 35           2    48707841 0.0008675947     0.942    3.462e-01
    ## 36           7     8117636 0.0008677895    -2.229    2.581e-02
    ## 37          17    29206421 0.0010291864    -0.595    5.520e-01
    ## 38          14    23435333 0.0010280407    -1.747    8.068e-02
    ## 39           9   103010947 0.0008669881    -1.899    5.753e-02
    ## 40           1   160043698 0.0008682868     0.418    6.759e-01
    ## 41          17    16004259 0.0008666718    -0.996    3.192e-01
    ## 42          22    50884075 0.0008703138     1.553    1.204e-01
    ## 43           8    78242034 0.0008665781     1.328    1.842e-01
    ## 44          14    99728448 0.0008683972    -0.552    5.811e-01
    ## 45           5   170778824 0.0008650143    -3.642    2.701e-04
    ## 46          17    43897722 0.0008672140     0.328    7.432e-01
    ## 47          12    53902190 0.0008700469    -0.749    4.538e-01
    ##    samplesize.outcome                   outcome mr_keep.outcome
    ## 1             1324017 Jansen2018insomnia23andMe            TRUE
    ## 2             1328426 Jansen2018insomnia23andMe            TRUE
    ## 3             1330800 Jansen2018insomnia23andMe            TRUE
    ## 4             1327764 Jansen2018insomnia23andMe            TRUE
    ## 5             1330800 Jansen2018insomnia23andMe            TRUE
    ## 6             1328248 Jansen2018insomnia23andMe            TRUE
    ## 7             1330625 Jansen2018insomnia23andMe            TRUE
    ## 8             1330494 Jansen2018insomnia23andMe            TRUE
    ## 9             1327471 Jansen2018insomnia23andMe            TRUE
    ## 10            1326826 Jansen2018insomnia23andMe            TRUE
    ## 11            1327483 Jansen2018insomnia23andMe            TRUE
    ## 12            1318348 Jansen2018insomnia23andMe            TRUE
    ## 13             944267 Jansen2018insomnia23andMe            TRUE
    ## 14            1326797 Jansen2018insomnia23andMe            TRUE
    ## 15            1325872 Jansen2018insomnia23andMe            TRUE
    ## 16            1328156 Jansen2018insomnia23andMe            TRUE
    ## 17            1327848 Jansen2018insomnia23andMe            TRUE
    ## 18            1316352 Jansen2018insomnia23andMe            TRUE
    ## 19            1317316 Jansen2018insomnia23andMe            TRUE
    ## 20            1330800 Jansen2018insomnia23andMe            TRUE
    ## 21            1330800 Jansen2018insomnia23andMe            TRUE
    ## 22            1320626 Jansen2018insomnia23andMe            TRUE
    ## 23            1330543 Jansen2018insomnia23andMe            TRUE
    ## 24            1328056 Jansen2018insomnia23andMe            TRUE
    ## 25             944267 Jansen2018insomnia23andMe            TRUE
    ## 26            1327772 Jansen2018insomnia23andMe            TRUE
    ## 27            1329560 Jansen2018insomnia23andMe            TRUE
    ## 28            1325726 Jansen2018insomnia23andMe            TRUE
    ## 29            1327976 Jansen2018insomnia23andMe            TRUE
    ## 30            1329494 Jansen2018insomnia23andMe            TRUE
    ## 31            1327577 Jansen2018insomnia23andMe            TRUE
    ## 32             944267 Jansen2018insomnia23andMe            TRUE
    ## 33             944267 Jansen2018insomnia23andMe            TRUE
    ## 34             944267 Jansen2018insomnia23andMe            TRUE
    ## 35            1327870 Jansen2018insomnia23andMe            TRUE
    ## 36            1324748 Jansen2018insomnia23andMe            TRUE
    ## 37             944267 Jansen2018insomnia23andMe            TRUE
    ## 38             944267 Jansen2018insomnia23andMe            TRUE
    ## 39            1327805 Jansen2018insomnia23andMe            TRUE
    ## 40            1327141 Jansen2018insomnia23andMe            TRUE
    ## 41            1330579 Jansen2018insomnia23andMe            TRUE
    ## 42            1318321 Jansen2018insomnia23andMe            TRUE
    ## 43            1330166 Jansen2018insomnia23andMe            TRUE
    ## 44            1326394 Jansen2018insomnia23andMe            TRUE
    ## 45            1330800 Jansen2018insomnia23andMe            TRUE
    ## 46            1330747 Jansen2018insomnia23andMe            TRUE
    ## 47            1320848 Jansen2018insomnia23andMe            TRUE
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
    ## 1              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 2              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 3              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 4              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 5              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 6              reported      YB8avh      2    TRUE          FALSE 5e-06
    ## 7              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 8              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 9              reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 10             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 11             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 12             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 13             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 14             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 15             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 16             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 17             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 18             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 19             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 20             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 21             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 22             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 23             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 24             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 25             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 26             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 27             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 28             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 29             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 30             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 31             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 32             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 33             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 34             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 35             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 36             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 37             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 38             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 39             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 40             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 41             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 42             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 43             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 44             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 45             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 46             reported      YB8avh      2    TRUE           TRUE 5e-06
    ## 47             reported      YB8avh      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.040257e-07             1          TRUE
    ## 2     1.627439e-06             1          TRUE
    ## 3     1.092058e-05        0.0092         FALSE
    ## 4     9.395709e-07             1          TRUE
    ## 5     1.292121e-06             1          TRUE
    ## 6               NA          <NA>            NA
    ## 7     9.165635e-06       <0.0092         FALSE
    ## 8     4.397908e-07             1          TRUE
    ## 9     1.706457e-06             1          TRUE
    ## 10    2.635672e-06             1          TRUE
    ## 11    4.836852e-07             1          TRUE
    ## 12    1.549379e-05        0.0092         FALSE
    ## 13    1.754350e-05       <0.0092         FALSE
    ## 14    3.163578e-06             1          TRUE
    ## 15    5.914362e-06             1          TRUE
    ## 16    2.301502e-06             1          TRUE
    ## 17    1.860609e-06             1          TRUE
    ## 18    3.070206e-06             1          TRUE
    ## 19    4.324966e-06        0.8372          TRUE
    ## 20    6.360326e-06        0.2024          TRUE
    ## 21    4.189704e-07             1          TRUE
    ## 22    2.649868e-08             1          TRUE
    ## 23    4.093153e-07             1          TRUE
    ## 24    2.125582e-06             1          TRUE
    ## 25    1.424932e-06             1          TRUE
    ## 26    5.217428e-08             1          TRUE
    ## 27    1.961468e-06             1          TRUE
    ## 28    2.730708e-07             1          TRUE
    ## 29    1.893212e-05       <0.0092         FALSE
    ## 30    7.448854e-06        0.1104          TRUE
    ## 31    1.228934e-06             1          TRUE
    ## 32    2.873044e-06             1          TRUE
    ## 33    4.211267e-07             1          TRUE
    ## 34    9.540587e-08             1          TRUE
    ## 35    1.993860e-08             1          TRUE
    ## 36    1.699885e-06             1          TRUE
    ## 37    1.858019e-08             1          TRUE
    ## 38    6.106661e-06        0.8004          TRUE
    ## 39    5.520549e-06        0.2944          TRUE
    ## 40    7.428158e-08             1          TRUE
    ## 41    2.160410e-06             1          TRUE
    ## 42    5.601079e-07             1          TRUE
    ## 43    1.436156e-08             1          TRUE
    ## 44    4.428223e-06             1          TRUE
    ## 45    5.868061e-06        0.3036          TRUE
    ## 46    3.272257e-06             1          TRUE
    ## 47    2.354193e-09             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs10878349          12    66327632     4.829e-21    2.267e-09

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
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.04240348 32.40418  0.05 4.025329 0.5185242
    ## 2             TRUE   0.03811376 32.53709  0.05 2.552499 0.3587474

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
Cortical Surface Area on Insomnia. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Insomnia

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 2      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 3      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 4      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   46 -1.145024e-06
    ## 2                           Weighted median   46 -2.512376e-07
    ## 3                             Weighted mode   46 -3.731392e-07
    ## 4                                  MR Egger   46 -6.594957e-08
    ##             se         pval
    ## 1 1.474030e-07 7.974793e-15
    ## 2 2.877314e-07 3.825721e-01
    ## 3 2.262135e-07 1.060096e-01
    ## 4 6.811786e-07 9.233115e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Insomnia and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 2      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 176.4548   44 8.887387e-18
    ## 2 Inverse variance weighted 188.8454   45 1.549943e-19

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##   egger_intercept           se       pval
    ## 1    -0.001062381 0.0006043997 0.08574635

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##      pt outliers_removed n_outliers  RSSobs   pval
    ## 1 5e-06            FALSE          5 197.849 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 2      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 3      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 4      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   41 -9.601495e-07
    ## 2                           Weighted median   41 -2.394107e-07
    ## 3                             Weighted mode   41 -3.274296e-07
    ## 4                                  MR Egger   41 -2.136336e-07
    ##             se         pval
    ## 1 1.521733e-07 2.797981e-10
    ## 2 2.718616e-07 3.785156e-01
    ## 3 2.372008e-07 1.751326e-01
    ## 4 5.326586e-07 6.905574e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ## 2      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##                      method         Q Q_df       Q_pval
    ## 1                  MR Egger  94.26918   39 1.783643e-06
    ## 2 Inverse variance weighted 100.18373   40 4.521301e-07

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                   outcome           exposure
    ## 1      YB8avh     7jquhB Jansen2018insomnia23andMe Grasby2020surfarea
    ##   egger_intercept           se      pval
    ## 1   -0.0007580489 0.0004846062 0.1258362

<br>
