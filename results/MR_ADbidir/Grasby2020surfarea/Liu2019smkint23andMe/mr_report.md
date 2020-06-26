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

### Outcome: Somking Initiation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Somking Initiation

    ##            SNP CHROM       POS REF ALT        AF          BETA
    ## 1    rs2490556     1   2021284   T   A 0.2875590  2.803052e-04
    ## 2    rs4846200     1   9752648   C   T 0.4891980 -2.631514e-03
    ## 3     rs499688     1  61396649   T   C 0.4442830 -1.523030e-03
    ## 4    rs6673449     1 160043698   A   G 0.5325170  1.343360e-04
    ## 5   rs12137969     1 242289357   G   A 0.2932540  2.625231e-03
    ## 6   rs10927043     1 243762208   C   T 0.1820490 -4.651713e-03
    ## 7   rs57415181     2  48707841   G   C 0.1311770 -5.937057e-04
    ## 8   rs10496091     2  61482261   G   A 0.3320620  2.714084e-03
    ## 9   rs12630663     3  28007315   T   C 0.3748190 -5.639940e-04
    ## 10  rs34464850     3 141721762   G   C 0.1518090  1.249681e-03
    ## 11  rs11938781     4  17924734   T   C 0.1368920  1.452910e-03
    ## 12  rs10029872     4  40350763   T   C 0.5291120 -8.403390e-04
    ## 13   rs2301718     4 106009763   G   A 0.2813290 -8.862338e-04
    ## 14    rs386424     5  81092787   T   G 0.3547040 -5.468870e-04
    ## 15   rs7715167     5 170778824   T   C 0.6497260 -5.031980e-03
    ## 16   rs2802295     6 108926496   A   G 0.5612910  3.037100e-03
    ## 17  rs11759026     6 126792095   A   G 0.2262510 -3.307050e-03
    ## 18 rs139849708     6 127369230   T   C 0.0201233 -5.978180e-04
    ## 19   rs6463758     7   8117636   A   G 0.5340610 -1.900510e-03
    ## 20 rs149352678     7  54920906   C   T 0.1115030  9.065837e-04
    ## 21     rs42035     7  92239531   A   G 0.2618790  3.462170e-03
    ## 22     rs41563     7 104852654   G   A 0.3115710  1.166033e-03
    ## 23  rs10251751     7 156021770   C   T 0.6007640 -3.910983e-04
    ## 24  rs76650567     8  78242034   C   T 0.0967332  2.494172e-03
    ## 25  rs66702753     9 103010947   A   C 0.1956680 -1.231690e-03
    ## 26  rs10817864     9 118968579   C   T 0.6296700  5.414408e-06
    ## 27  rs12357321    10  21790476   G   A 0.3057070  7.130027e-03
    ## 28   rs1628768    10 105012994   T   C 0.2167950 -6.961450e-03
    ## 29  rs17543864    11  92556100   G   A 0.3086420  5.275243e-03
    ## 30   rs3217901    12   4405389   A   G 0.4122140 -2.992230e-04
    ## 31   rs2066827    12  12871099   T   G 0.2087570  1.183120e-03
    ## 32   rs7975351    12  53902190   G   A 0.4873290  1.072972e-04
    ## 33  rs10876864    12  56401085   G   A 0.6108670  4.488808e-03
    ## 34  rs10878349    12  66327632   A   G 0.4676720  1.010400e-03
    ## 35  rs35227403    12  68216239   T   A 0.0885020  9.645180e-04
    ## 36 rs111855983    12  80052550   T   C 0.0955965 -9.708160e-04
    ## 37   rs2195243    12 102922986   G   C 0.2223430  2.784980e-03
    ## 38  rs34011931    13 111077516   A   G 0.3173740  6.036090e-04
    ## 39   rs6572878    14  23435333   T   C 0.3754470 -4.742380e-03
    ## 40  rs76801057    14  99728448   C   T 0.0213846  1.346005e-03
    ## 41   rs4265798    16  70636616   T   A 0.9397680  2.741009e-03
    ## 42   rs7207463    17  16004259   A   G 0.5573920 -2.506740e-03
    ## 43   rs6505216    17  29206421   G   T 0.2665860  4.658969e-03
    ## 44  rs79600142    17  43897722   T   C 0.1482560 -3.581390e-03
    ## 45  rs12452834    17  47111739   C   T 0.3213290  1.337624e-03
    ## 46   rs1791513    18  22135429   A   G 0.5078210 -2.128690e-03
    ## 47    rs743038    22  50884075   C   T 0.5625000  1.776505e-03
    ##              SE      Z         P       N              TRAIT
    ## 1  0.0009013028  0.311 7.561e-01 1232091 Smoking_Initiation
    ## 2  0.0008993554 -2.926 3.436e-03 1232091 Smoking_Initiation
    ## 3  0.0009001379 -1.692 9.068e-02 1232091 Smoking_Initiation
    ## 4  0.0009015838  0.149 8.816e-01 1232091 Smoking_Initiation
    ## 5  0.0008993598  2.919 3.516e-03 1232091 Smoking_Initiation
    ## 6  0.0008980141 -5.180 2.213e-07 1232091 Smoking_Initiation
    ## 7  0.0009009191 -0.659 5.102e-01 1232091 Smoking_Initiation
    ## 8  0.0008992989  3.018 2.542e-03 1232091 Smoking_Initiation
    ## 9  0.0009009491 -0.626 5.310e-01 1232091 Smoking_Initiation
    ## 10 0.0009003464  1.388 1.653e-01 1232091 Smoking_Initiation
    ## 11 0.0009001905  1.614 1.066e-01 1232091 Smoking_Initiation
    ## 12 0.0009006850 -0.933 3.511e-01 1232091 Smoking_Initiation
    ## 13 0.0009006441 -0.984 3.250e-01 1232091 Smoking_Initiation
    ## 14 0.0009009679 -0.607 5.440e-01 1232091 Smoking_Initiation
    ## 15 0.0008977665 -5.605 2.084e-08 1232091 Smoking_Initiation
    ## 16 0.0008990812  3.378 7.308e-04 1232091 Smoking_Initiation
    ## 17 0.0008989004 -3.679 2.340e-04 1232091 Smoking_Initiation
    ## 18 0.0009225592 -0.648 5.168e-01 1174994 Smoking_Initiation
    ## 19 0.0008998630 -2.112 3.465e-02 1232091 Smoking_Initiation
    ## 20 0.0009222622  0.983 3.258e-01 1174994 Smoking_Initiation
    ## 21 0.0008987973  3.852 1.172e-04 1232091 Smoking_Initiation
    ## 22 0.0009004117  1.295 1.952e-01 1232091 Smoking_Initiation
    ## 23 0.0009011481 -0.434 6.644e-01 1232091 Smoking_Initiation
    ## 24 0.0008994490  2.773 5.553e-03 1232091 Smoking_Initiation
    ## 25 0.0009003598 -1.368 1.712e-01 1232091 Smoking_Initiation
    ## 26 0.0009024013  0.006 9.954e-01 1232091 Smoking_Initiation
    ## 27 0.0008964077  7.954 1.801e-15 1232091 Smoking_Initiation
    ## 28 0.0008965164 -7.765 8.134e-15 1232091 Smoking_Initiation
    ## 29 0.0008976081  5.877 4.177e-09 1232091 Smoking_Initiation
    ## 30 0.0009012734 -0.332 7.398e-01 1232091 Smoking_Initiation
    ## 31 0.0009003985  1.314 1.889e-01 1232091 Smoking_Initiation
    ## 32 0.0009016575  0.119 9.051e-01 1232091 Smoking_Initiation
    ## 33 0.0008981209  4.998 5.790e-07 1232091 Smoking_Initiation
    ## 34 0.0009005385  1.122 2.618e-01 1232091 Smoking_Initiation
    ## 35 0.0009005770  1.071 2.841e-01 1232091 Smoking_Initiation
    ## 36 0.0009005716 -1.078 2.809e-01 1232091 Smoking_Initiation
    ## 37 0.0008992508  3.097 1.952e-03 1232091 Smoking_Initiation
    ## 38 0.0009009090  0.670 5.032e-01 1232091 Smoking_Initiation
    ## 39 0.0012876394 -3.683 2.307e-04  599289 Smoking_Initiation
    ## 40 0.0009009405  1.494 1.351e-01 1230262 Smoking_Initiation
    ## 41 0.0008992811  3.048 2.307e-03 1232091 Smoking_Initiation
    ## 42 0.0008994406 -2.787 5.323e-03 1232091 Smoking_Initiation
    ## 43 0.0012877195  3.618 2.974e-04  599289 Smoking_Initiation
    ## 44 0.0008987182 -3.985 6.752e-05 1232091 Smoking_Initiation
    ## 45 0.0012911426  1.036 3.001e-01  599289 Smoking_Initiation
    ## 46 0.0008997019 -2.366 1.797e-02 1232091 Smoking_Initiation
    ## 47 0.0008999520  1.974 4.836e-02 1232091 Smoking_Initiation

<br>

**Table 3:** Proxy SNPs for Somking Initiation

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

**Table 4:** Harmonized Cortical Surface Area and Somking Initiation
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
    ## 1                      C                    T      508.7590 -8.403390e-04
    ## 2                      T                    C      538.0782 -3.910983e-04
    ## 3                      A                    G     -642.6331  2.714084e-03
    ## 4                      T                    C      531.0956  5.414408e-06
    ## 5                      A                    G     -628.5901  4.488808e-03
    ## 6                      G                    A    -1039.9900  1.010400e-03
    ## 7                      T                    C      719.0735 -4.651713e-03
    ## 8                      C                    T     -818.6420 -9.708160e-04
    ## 9                      G                    A     1301.5200 -3.307050e-03
    ## 10                     C                    T     -719.1710  1.452910e-03
    ## 11                     A                    G     -585.5512  2.625231e-03
    ## 12                     A                    G     -698.7452  7.130027e-03
    ## 13                     T                    C     -626.4308  1.337624e-03
    ## 14                     C                    T      632.8110 -5.639940e-04
    ## 15                     C                    T    -2237.8300 -5.978180e-04
    ## 16                     T                    C      967.7266  9.065837e-04
    ## 17                     C                    T      972.9780 -6.961450e-03
    ## 18                     A                    G     -623.9150  5.275243e-03
    ## 19                     G                    A     -502.3000 -2.128690e-03
    ## 20                     G                    T     -862.4130  1.183120e-03
    ## 21                     C                    G     -769.2254  2.784980e-03
    ## 22                     A                    G      737.2212 -8.862338e-04
    ## 23                     A                    T      583.9623  2.803052e-04
    ## 24                     G                    A      714.5850  3.037100e-03
    ## 25                     G                    A      593.5960 -2.992230e-04
    ## 26                     G                    A      538.2090  6.036090e-04
    ## 27                     C                    G     1233.1854  1.249681e-03
    ## 28                     A                    T    -1271.7821  9.645180e-04
    ## 29                     G                    T      656.5430 -5.468870e-04
    ## 30                     A                    G      586.6639  1.166033e-03
    ## 31                     G                    A     -610.3230  3.462170e-03
    ## 32                     A                    T    -1221.0588  2.741009e-03
    ## 33                     T                    C      628.7473 -2.631514e-03
    ## 34                     C                    T     -583.8940 -1.523030e-03
    ## 35                     C                    G     -834.6022 -5.937057e-04
    ## 36                     G                    A      560.9860 -1.900510e-03
    ## 37                     T                    G      652.8106  4.658969e-03
    ## 38                     C                    T     -574.9920 -4.742380e-03
    ## 39                     C                    A     -593.2390 -1.231690e-03
    ## 40                     G                    A     -552.9050  1.343360e-04
    ## 41                     G                    A     -519.7640 -2.506740e-03
    ## 42                     T                    C     -532.1045  1.776505e-03
    ## 43                     T                    C     -902.8657  2.494172e-03
    ## 44                     T                    C     2036.7834  1.346005e-03
    ## 45                     C                    T      662.7540 -5.031980e-03
    ## 46                     C                    T    -1696.8300 -3.581390e-03
    ## 47                     A                    G      611.0487  1.072972e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251   0.5291120  FALSE       FALSE     FALSE     AAI0hz
    ## 2        0.6639   0.6007640  FALSE       FALSE     FALSE     AAI0hz
    ## 3        0.2777   0.3320620  FALSE       FALSE     FALSE     AAI0hz
    ## 4        0.5739   0.6296700  FALSE       FALSE     FALSE     AAI0hz
    ## 5        0.5774   0.6108670  FALSE       FALSE     FALSE     AAI0hz
    ## 6        0.5100   0.4676720  FALSE       FALSE     FALSE     AAI0hz
    ## 7        0.1826   0.1820490  FALSE       FALSE     FALSE     AAI0hz
    ## 8        0.1319   0.0955965  FALSE       FALSE     FALSE     AAI0hz
    ## 9        0.2376   0.2262510  FALSE       FALSE     FALSE     AAI0hz
    ## 10       0.1648   0.1368920  FALSE       FALSE     FALSE     AAI0hz
    ## 11       0.2412   0.2932540  FALSE       FALSE     FALSE     AAI0hz
    ## 12       0.3206   0.3057070  FALSE       FALSE     FALSE     AAI0hz
    ## 13       0.3329   0.3213290  FALSE       FALSE     FALSE     AAI0hz
    ## 14       0.4117   0.3748190  FALSE       FALSE     FALSE     AAI0hz
    ## 15       0.0297   0.0201233  FALSE       FALSE     FALSE     AAI0hz
    ## 16       0.0991   0.1115030  FALSE       FALSE     FALSE     AAI0hz
    ## 17       0.2386   0.2167950  FALSE       FALSE     FALSE     AAI0hz
    ## 18       0.3264   0.3086420  FALSE       FALSE     FALSE     AAI0hz
    ## 19       0.5263   0.5078210  FALSE       FALSE     FALSE     AAI0hz
    ## 20       0.2333   0.2087570  FALSE       FALSE     FALSE     AAI0hz
    ## 21       0.2196   0.2223430  FALSE        TRUE     FALSE     AAI0hz
    ## 22       0.2269   0.2813290  FALSE       FALSE     FALSE     AAI0hz
    ## 23       0.3155   0.2875590  FALSE        TRUE     FALSE     AAI0hz
    ## 24       0.6207   0.5612910  FALSE       FALSE     FALSE     AAI0hz
    ## 25       0.4221   0.4122140  FALSE       FALSE     FALSE     AAI0hz
    ## 26       0.3280   0.3173740  FALSE       FALSE     FALSE     AAI0hz
    ## 27       0.1534   0.1518090  FALSE        TRUE     FALSE     AAI0hz
    ## 28       0.0588   0.0885020  FALSE        TRUE     FALSE     AAI0hz
    ## 29       0.3008   0.3547040  FALSE       FALSE     FALSE     AAI0hz
    ## 30       0.3385   0.3115710  FALSE       FALSE     FALSE     AAI0hz
    ## 31       0.2454   0.2618790  FALSE       FALSE     FALSE     AAI0hz
    ## 32       0.9332   0.9397680  FALSE        TRUE     FALSE     AAI0hz
    ## 33       0.4191   0.4891980  FALSE       FALSE     FALSE     AAI0hz
    ## 34       0.3482   0.4442830  FALSE       FALSE     FALSE     AAI0hz
    ## 35       0.1447   0.1311770  FALSE        TRUE     FALSE     AAI0hz
    ## 36       0.5382   0.5340610  FALSE       FALSE     FALSE     AAI0hz
    ## 37       0.2375   0.2665860  FALSE       FALSE     FALSE     AAI0hz
    ## 38       0.3997   0.3754470  FALSE       FALSE     FALSE     AAI0hz
    ## 39       0.2493   0.1956680  FALSE       FALSE     FALSE     AAI0hz
    ## 40       0.5681   0.5325170  FALSE       FALSE     FALSE     AAI0hz
    ## 41       0.5620   0.5573920  FALSE       FALSE     FALSE     AAI0hz
    ## 42       0.5560   0.5625000  FALSE       FALSE     FALSE     AAI0hz
    ## 43       0.0870   0.0967332  FALSE       FALSE     FALSE     AAI0hz
    ## 44       0.0263   0.0213846  FALSE       FALSE     FALSE     AAI0hz
    ## 45       0.6143   0.6497260  FALSE       FALSE     FALSE     AAI0hz
    ## 46       0.2198   0.1482560  FALSE       FALSE     FALSE     AAI0hz
    ## 47       0.4740   0.4873290  FALSE       FALSE     FALSE     AAI0hz
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1            4    40350763 0.0009006850    -0.933    3.511e-01
    ## 2            7   156021770 0.0009011481    -0.434    6.644e-01
    ## 3            2    61482261 0.0008992989     3.018    2.542e-03
    ## 4            9   118968579 0.0009024013     0.006    9.954e-01
    ## 5           12    56401085 0.0008981209     4.998    5.790e-07
    ## 6           12    66327632 0.0009005385     1.122    2.618e-01
    ## 7            1   243762208 0.0008980141    -5.180    2.213e-07
    ## 8           12    80052550 0.0009005716    -1.078    2.809e-01
    ## 9            6   126792095 0.0008989004    -3.679    2.340e-04
    ## 10           4    17924734 0.0009001905     1.614    1.066e-01
    ## 11           1   242289357 0.0008993598     2.919    3.516e-03
    ## 12          10    21790476 0.0008964077     7.954    1.801e-15
    ## 13          17    47111739 0.0012911426     1.036    3.001e-01
    ## 14           3    28007315 0.0009009491    -0.626    5.310e-01
    ## 15           6   127369230 0.0009225592    -0.648    5.168e-01
    ## 16           7    54920906 0.0009222622     0.983    3.258e-01
    ## 17          10   105012994 0.0008965164    -7.765    8.134e-15
    ## 18          11    92556100 0.0008976081     5.877    4.177e-09
    ## 19          18    22135429 0.0008997019    -2.366    1.797e-02
    ## 20          12    12871099 0.0009003985     1.314    1.889e-01
    ## 21          12   102922986 0.0008992508     3.097    1.952e-03
    ## 22           4   106009763 0.0009006441    -0.984    3.250e-01
    ## 23           1     2021284 0.0009013028     0.311    7.561e-01
    ## 24           6   108926496 0.0008990812     3.378    7.308e-04
    ## 25          12     4405389 0.0009012734    -0.332    7.398e-01
    ## 26          13   111077516 0.0009009090     0.670    5.032e-01
    ## 27           3   141721762 0.0009003464     1.388    1.653e-01
    ## 28          12    68216239 0.0009005770     1.071    2.841e-01
    ## 29           5    81092787 0.0009009679    -0.607    5.440e-01
    ## 30           7   104852654 0.0009004117     1.295    1.952e-01
    ## 31           7    92239531 0.0008987973     3.852    1.172e-04
    ## 32          16    70636616 0.0008992811     3.048    2.307e-03
    ## 33           1     9752648 0.0008993554    -2.926    3.436e-03
    ## 34           1    61396649 0.0009001379    -1.692    9.068e-02
    ## 35           2    48707841 0.0009009191    -0.659    5.102e-01
    ## 36           7     8117636 0.0008998630    -2.112    3.465e-02
    ## 37          17    29206421 0.0012877195     3.618    2.974e-04
    ## 38          14    23435333 0.0012876394    -3.683    2.307e-04
    ## 39           9   103010947 0.0009003598    -1.368    1.712e-01
    ## 40           1   160043698 0.0009015838     0.149    8.816e-01
    ## 41          17    16004259 0.0008994406    -2.787    5.323e-03
    ## 42          22    50884075 0.0008999520     1.974    4.836e-02
    ## 43           8    78242034 0.0008994490     2.773    5.553e-03
    ## 44          14    99728448 0.0009009405     1.494    1.351e-01
    ## 45           5   170778824 0.0008977665    -5.605    2.084e-08
    ## 46          17    43897722 0.0008987182    -3.985    6.752e-05
    ## 47          12    53902190 0.0009016575     0.119    9.051e-01
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1             1232091 Liu2019smkint23andMe            TRUE
    ## 2             1232091 Liu2019smkint23andMe            TRUE
    ## 3             1232091 Liu2019smkint23andMe            TRUE
    ## 4             1232091 Liu2019smkint23andMe            TRUE
    ## 5             1232091 Liu2019smkint23andMe            TRUE
    ## 6             1232091 Liu2019smkint23andMe            TRUE
    ## 7             1232091 Liu2019smkint23andMe            TRUE
    ## 8             1232091 Liu2019smkint23andMe            TRUE
    ## 9             1232091 Liu2019smkint23andMe            TRUE
    ## 10            1232091 Liu2019smkint23andMe            TRUE
    ## 11            1232091 Liu2019smkint23andMe            TRUE
    ## 12            1232091 Liu2019smkint23andMe            TRUE
    ## 13             599289 Liu2019smkint23andMe            TRUE
    ## 14            1232091 Liu2019smkint23andMe            TRUE
    ## 15            1174994 Liu2019smkint23andMe            TRUE
    ## 16            1174994 Liu2019smkint23andMe            TRUE
    ## 17            1232091 Liu2019smkint23andMe            TRUE
    ## 18            1232091 Liu2019smkint23andMe            TRUE
    ## 19            1232091 Liu2019smkint23andMe            TRUE
    ## 20            1232091 Liu2019smkint23andMe            TRUE
    ## 21            1232091 Liu2019smkint23andMe            TRUE
    ## 22            1232091 Liu2019smkint23andMe            TRUE
    ## 23            1232091 Liu2019smkint23andMe            TRUE
    ## 24            1232091 Liu2019smkint23andMe            TRUE
    ## 25            1232091 Liu2019smkint23andMe            TRUE
    ## 26            1232091 Liu2019smkint23andMe            TRUE
    ## 27            1232091 Liu2019smkint23andMe            TRUE
    ## 28            1232091 Liu2019smkint23andMe            TRUE
    ## 29            1232091 Liu2019smkint23andMe            TRUE
    ## 30            1232091 Liu2019smkint23andMe            TRUE
    ## 31            1232091 Liu2019smkint23andMe            TRUE
    ## 32            1232091 Liu2019smkint23andMe            TRUE
    ## 33            1232091 Liu2019smkint23andMe            TRUE
    ## 34            1232091 Liu2019smkint23andMe            TRUE
    ## 35            1232091 Liu2019smkint23andMe            TRUE
    ## 36            1232091 Liu2019smkint23andMe            TRUE
    ## 37             599289 Liu2019smkint23andMe            TRUE
    ## 38             599289 Liu2019smkint23andMe            TRUE
    ## 39            1232091 Liu2019smkint23andMe            TRUE
    ## 40            1232091 Liu2019smkint23andMe            TRUE
    ## 41            1232091 Liu2019smkint23andMe            TRUE
    ## 42            1232091 Liu2019smkint23andMe            TRUE
    ## 43            1232091 Liu2019smkint23andMe            TRUE
    ## 44            1230262 Liu2019smkint23andMe            TRUE
    ## 45            1232091 Liu2019smkint23andMe            TRUE
    ## 46            1232091 Liu2019smkint23andMe            TRUE
    ## 47            1232091 Liu2019smkint23andMe            TRUE
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
    ## 1              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 2              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 3              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 4              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 5              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 6              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 7              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 8              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 9              reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 10             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 11             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 12             reported      dCF1So      2    TRUE          FALSE 5e-06
    ## 13             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 14             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 15             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 16             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 17             reported      dCF1So      2    TRUE          FALSE 5e-06
    ## 18             reported      dCF1So      2    TRUE          FALSE 5e-06
    ## 19             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 20             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 21             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 22             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 23             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 24             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 25             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 26             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 27             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 28             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 29             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 30             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 31             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 32             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 33             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 34             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 35             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 36             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 37             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 38             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 39             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 40             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 41             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 42             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 43             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 44             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 45             reported      dCF1So      2    TRUE          FALSE 5e-06
    ## 46             reported      dCF1So      2    TRUE           TRUE 5e-06
    ## 47             reported      dCF1So      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.751052e-07             1          TRUE
    ## 2     5.184190e-08             1          TRUE
    ## 3     6.491807e-06        0.2838          TRUE
    ## 4     2.891703e-08             1          TRUE
    ## 5     1.889534e-05       <0.0086         FALSE
    ## 6     5.093622e-07             1          TRUE
    ## 7     2.025155e-05       <0.0086         FALSE
    ## 8     1.555529e-06             1          TRUE
    ## 9     9.373022e-06        0.0344         FALSE
    ## 10    1.565279e-06             1          TRUE
    ## 11    6.103285e-06         0.215          TRUE
    ## 12              NA          <NA>            NA
    ## 13    1.326255e-06             1          TRUE
    ## 14    1.398437e-07             1          TRUE
    ## 15    2.242939e-06             1          TRUE
    ## 16    1.529581e-06             1          TRUE
    ## 17              NA          <NA>            NA
    ## 18              NA          <NA>            NA
    ## 19    5.291450e-06        0.4816          TRUE
    ## 20    8.813635e-07             1          TRUE
    ## 21    6.730221e-06        0.1634          TRUE
    ## 22    4.495446e-07             1          TRUE
    ## 23    2.157259e-07             1          TRUE
    ## 24    1.093617e-05       <0.0086         FALSE
    ## 25    1.393094e-08             1          TRUE
    ## 26    6.016733e-07             1          TRUE
    ## 27    2.909355e-06             1          TRUE
    ## 28    3.631187e-07             1          TRUE
    ## 29    1.222090e-07             1          TRUE
    ## 30    1.850216e-06             1          TRUE
    ## 31    1.096506e-05       <0.0086         FALSE
    ## 32    6.128599e-06        0.2924          TRUE
    ## 33    6.087615e-06         0.301          TRUE
    ## 34    2.958029e-06             1          TRUE
    ## 35    7.536494e-07             1          TRUE
    ## 36    3.043012e-06             1          TRUE
    ## 37    2.391053e-05       <0.0086         FALSE
    ## 38    2.443138e-05        0.0086         FALSE
    ## 39    2.041861e-06             1          TRUE
    ## 40    1.289500e-09             1          TRUE
    ## 41    7.225777e-06        0.1118          TRUE
    ## 42    2.646035e-06             1          TRUE
    ## 43    5.161052e-06        0.5762          TRUE
    ## 44    5.055981e-06        0.8772          TRUE
    ## 45              NA          <NA>            NA
    ## 46    2.014139e-05       <0.0086         FALSE
    ## 47    8.903361e-08             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Somking
Initiation GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs12357321          10    21790476     5.217e-09    1.801e-15
    ## 2  rs1628768          10   105012994     1.696e-13    8.134e-15
    ## 3 rs17543864          11    92556100     9.654e-08    4.177e-09
    ## 4  rs7715167           5   170778824     2.653e-08    2.084e-08

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.04076420 33.27083  0.05 0.3575360 0.09186087
    ## 2             TRUE   0.02882486 28.55508  0.05 0.2747375 0.08202185

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
Cortical Surface Area on Somking Initiation. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Somking
Initiation

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 2      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 3      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 4      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   43 -3.073232e-07
    ## 2                           Weighted median   43  2.641732e-07
    ## 3                             Weighted mode   43  4.010424e-07
    ## 4                                  MR Egger   43  6.879305e-07
    ##             se       pval
    ## 1 1.551394e-07 0.04759695
    ## 2 3.020407e-07 0.38177643
    ## 3 3.309848e-07 0.23241396
    ## 4 8.215030e-07 0.40722009

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Somking Initiation and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 2      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 219.8049   41 2.633503e-26
    ## 2 Inverse variance weighted 229.5337   42 1.121514e-27

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkint23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkint23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##   egger_intercept           se      pval
    ## 1   -0.0009983197 0.0007410825 0.1853434

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
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          8 242.3423 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 2      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 3      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 4      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   35 -3.272771e-07
    ## 2                           Weighted median   35  2.453780e-07
    ## 3                             Weighted mode   35  3.307756e-07
    ## 4                                  MR Egger   35  3.574019e-07
    ##             se       pval
    ## 1 1.735339e-07 0.05930096
    ## 2 3.111777e-07 0.43037718
    ## 3 2.992639e-07 0.27679109
    ## 4 6.548501e-07 0.58889024

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ## 2      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 91.98159   33 1.797247e-07
    ## 2 Inverse variance weighted 95.77019   34 8.644318e-08

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome           exposure
    ## 1      dCF1So     AAI0hz Liu2019smkint23andMe Grasby2020surfarea
    ##   egger_intercept           se     pval
    ## 1   -0.0006754991 0.0005794005 0.252029

<br>
