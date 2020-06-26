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

### Outcome: Total cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Total cholesterol

    ##            SNP CHROM       POS  REF  ALT       AF    BETA     SE
    ## 1    rs2490556    NA        NA <NA> <NA>       NA      NA     NA
    ## 2    rs4846200    NA        NA <NA> <NA>       NA      NA     NA
    ## 3     rs499688     1  61396649    T    C 0.444283  0.0044 0.0066
    ## 4    rs6673449    NA        NA <NA> <NA>       NA      NA     NA
    ## 5   rs12137969    NA        NA <NA> <NA>       NA      NA     NA
    ## 6   rs10927043    NA        NA <NA> <NA>       NA      NA     NA
    ## 7   rs57415181    NA        NA <NA> <NA>       NA      NA     NA
    ## 8   rs10496091     2  61482261    G    A 0.332062  0.0082 0.0039
    ## 9   rs12630663     3  28007315    T    C 0.374819 -0.0057 0.0052
    ## 10  rs34464850    NA        NA <NA> <NA>       NA      NA     NA
    ## 11  rs11938781     4  17924734    T    C 0.136892 -0.0010 0.0071
    ## 12  rs10029872     4  40350763    T    C 0.529112 -0.0092 0.0052
    ## 13   rs2301718     4 106009763    G    A 0.281329  0.0044 0.0060
    ## 14    rs386424     5  81092787    T    G 0.354704 -0.0140 0.0056
    ## 15   rs7715167     5 170778824    T    C 0.649726 -0.0117 0.0055
    ## 16   rs2802295    NA        NA <NA> <NA>       NA      NA     NA
    ## 17  rs11759026    NA        NA <NA> <NA>       NA      NA     NA
    ## 18 rs139849708    NA        NA <NA> <NA>       NA      NA     NA
    ## 19   rs6463758    NA        NA <NA> <NA>       NA      NA     NA
    ## 20 rs149352678    NA        NA <NA> <NA>       NA      NA     NA
    ## 21     rs42035    NA        NA <NA> <NA>       NA      NA     NA
    ## 22     rs41563     7 104852654    G    A 0.311571  0.0019 0.0053
    ## 23  rs10251751    NA        NA <NA> <NA>       NA      NA     NA
    ## 24  rs76650567    NA        NA <NA> <NA>       NA      NA     NA
    ## 25  rs66702753    NA        NA <NA> <NA>       NA      NA     NA
    ## 26  rs10817864     9 118968579    C    T 0.629670 -0.0051 0.0054
    ## 27  rs12357321    10  21790476    G    A 0.305707 -0.0039 0.0056
    ## 28   rs1628768    NA        NA <NA> <NA>       NA      NA     NA
    ## 29  rs17543864    11  92556100    G    A 0.308642  0.0027 0.0056
    ## 30   rs3217901    12   4405389    A    G 0.412214 -0.0017 0.0054
    ## 31   rs2066827    12  12871099    T    G 0.208757  0.0021 0.0092
    ## 32   rs7975351    NA        NA <NA> <NA>       NA      NA     NA
    ## 33  rs10876864    12  56401085    G    A 0.610867 -0.0018 0.0051
    ## 34  rs10878349    NA        NA <NA> <NA>       NA      NA     NA
    ## 35  rs35227403    NA        NA <NA> <NA>       NA      NA     NA
    ## 36 rs111855983    NA        NA <NA> <NA>       NA      NA     NA
    ## 37   rs2195243    12 102922986    G    C 0.222343  0.0046 0.0045
    ## 38  rs34011931    NA        NA <NA> <NA>       NA      NA     NA
    ## 39   rs6572878    NA        NA <NA> <NA>       NA      NA     NA
    ## 40  rs76801057    NA        NA <NA> <NA>       NA      NA     NA
    ## 41   rs4265798    NA        NA <NA> <NA>       NA      NA     NA
    ## 42   rs7207463    17  16004259    A    G 0.557392  0.0026 0.0052
    ## 43   rs6505216    NA        NA <NA> <NA>       NA      NA     NA
    ## 44  rs79600142    NA        NA <NA> <NA>       NA      NA     NA
    ## 45  rs12452834    NA        NA <NA> <NA>       NA      NA     NA
    ## 46   rs1791513    NA        NA <NA> <NA>       NA      NA     NA
    ## 47    rs743038    NA        NA <NA> <NA>       NA      NA     NA
    ##             Z       P      N             TRAIT
    ## 1          NA      NA     NA              <NA>
    ## 2          NA      NA     NA              <NA>
    ## 3   0.6666667 0.58060  94595 Total_Cholesterol
    ## 4          NA      NA     NA              <NA>
    ## 5          NA      NA     NA              <NA>
    ## 6          NA      NA     NA              <NA>
    ## 7          NA      NA     NA              <NA>
    ## 8   2.1025641 0.04035 187304 Total_Cholesterol
    ## 9  -1.0961500 0.28660  94595 Total_Cholesterol
    ## 10         NA      NA     NA              <NA>
    ## 11 -0.1408450 0.90970  92981 Total_Cholesterol
    ## 12 -1.7692300 0.27430  91479 Total_Cholesterol
    ## 13  0.7333333 0.42290  94516 Total_Cholesterol
    ## 14 -2.5000000 0.04669  94595 Total_Cholesterol
    ## 15 -2.1272700 0.06822  94595 Total_Cholesterol
    ## 16         NA      NA     NA              <NA>
    ## 17         NA      NA     NA              <NA>
    ## 18         NA      NA     NA              <NA>
    ## 19         NA      NA     NA              <NA>
    ## 20         NA      NA     NA              <NA>
    ## 21         NA      NA     NA              <NA>
    ## 22  0.3584906 0.79900  94595 Total_Cholesterol
    ## 23         NA      NA     NA              <NA>
    ## 24         NA      NA     NA              <NA>
    ## 25         NA      NA     NA              <NA>
    ## 26 -0.9444440 0.40910  86729 Total_Cholesterol
    ## 27 -0.6964290 0.55280  94595 Total_Cholesterol
    ## 28         NA      NA     NA              <NA>
    ## 29  0.4821429 0.88980  94595 Total_Cholesterol
    ## 30 -0.3148150 0.79960  94595 Total_Cholesterol
    ## 31  0.2282609 0.93210  82828 Total_Cholesterol
    ## 32         NA      NA     NA              <NA>
    ## 33 -0.3529410 0.77660  94595 Total_Cholesterol
    ## 34         NA      NA     NA              <NA>
    ## 35         NA      NA     NA              <NA>
    ## 36         NA      NA     NA              <NA>
    ## 37  1.0222222 0.21560 184003 Total_Cholesterol
    ## 38         NA      NA     NA              <NA>
    ## 39         NA      NA     NA              <NA>
    ## 40         NA      NA     NA              <NA>
    ## 41         NA      NA     NA              <NA>
    ## 42  0.5000000 0.88700  89643 Total_Cholesterol
    ## 43         NA      NA     NA              <NA>
    ## 44         NA      NA     NA              <NA>
    ## 45         NA      NA     NA              <NA>
    ## 46         NA      NA     NA              <NA>
    ## 47         NA      NA     NA              <NA>

<br>

**Table 3:** Proxy SNPs for Total cholesterol

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1    rs6673449  rs1321649 0.814482 1.000000 AA/GG  NA     1 160045972
    ## 2   rs10927043  rs2291410 0.981133 1.000000 TA/CC  NA     1 243716654
    ## 3   rs34464850  rs2271386 1.000000 1.000000 CA/GG  NA     3 141712708
    ## 4    rs2802295  rs2253310 1.000000 1.000000 AC/GG  NA     6 108888593
    ## 5    rs6463758 rs10253861 0.960689 0.995910 AG/GA  NA     7   8110475
    ## 6      rs42035    rs42041 0.975205 1.000000 GG/AC  NA     7  92246744
    ## 7   rs76650567 rs12677220 1.000000 1.000000 TT/CC  NA     8  78266342
    ## 8   rs66702753   rs875522 0.892785 0.994240 CA/AC  NA     9 103044452
    ## 9    rs1628768  rs6584545 0.973962 0.994692 CA/TT  NA    10 104999266
    ## 10   rs7975351   rs784567 0.809695 0.947592 AG/GA  NA    12  53894465
    ## 11  rs10878349  rs1038196 0.996002 1.000000 AG/GC  NA    12  66343400
    ## 12 rs111855983  rs7308762 1.000000 1.000000 CT/TC  NA    12  79931070
    ## 13  rs34011931  rs4600332 0.842899 0.990060 GA/AG  NA    13 111078872
    ## 14   rs6572878 rs10140304 0.987642 1.000000 CC/TA  NA    14  23443514
    ## 15   rs4265798  rs3931036 0.861327 0.966216 TG/AA  NA    16  70548297
    ## 16  rs79600142   rs436667 1.000000 1.000000 CT/TC  NA    17  43709415
    ## 17   rs1791513  rs1791514 0.960988 1.000000 AT/GC  NA    18  22135789
    ## 18   rs2490556       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19   rs4846200       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20  rs12137969       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21  rs57415181       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22  rs11759026       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23 rs139849708       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24 rs149352678       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25  rs10251751       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 26  rs35227403       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 27  rs76801057       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 28   rs6505216       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 29  rs12452834       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 30    rs743038       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy        AF    BETA     SE          Z       P
    ## 1          A         G 0.5012720 -0.0022 0.0052 -0.4230770 0.73990
    ## 2          A         C 0.8154460 -0.0068 0.0065 -1.0461500 0.23590
    ## 3          G         A 0.1519450 -0.0074 0.0069 -1.0724600 0.38990
    ## 4          C         G 0.5614990 -0.0046 0.0052 -0.8846150 0.42240
    ## 5          G         A 0.5303310  0.0021 0.0051  0.4117647 0.99830
    ## 6          C         G 0.2676240 -0.0103 0.0059 -1.7457600 0.02418
    ## 7          C         T 0.0966280 -0.0020 0.0099 -0.2020200 0.84990
    ## 8          C         A 0.2199850  0.0043 0.0058  0.7413793 0.48560
    ## 9          A         T 0.7905320 -0.0013 0.0056 -0.2321430 0.82050
    ## 10         G         A 0.4870440 -0.0035 0.0052 -0.6730770 0.62700
    ## 11         G         C 0.4679120  0.0109 0.0051  2.1372549 0.08608
    ## 12         C         T 0.0965167  0.0097 0.0075  1.2933333 0.25180
    ## 13         A         G 0.6460450  0.0029 0.0054  0.5370370 0.40520
    ## 14         A         C 0.3842930 -0.0029 0.0053 -0.5471700 0.52390
    ## 15         G         A 0.9399710  0.0040 0.0108  0.3703704 0.79280
    ## 16         C         T 0.1467570  0.0084 0.0064  1.3125000 0.09934
    ## 17         T         C 0.5025410 -0.0041 0.0052 -0.7884620 0.12980
    ## 18      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 19      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 20      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 21      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 22      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 23      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 24      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 25      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 26      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 27      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 28      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 29      <NA>      <NA>        NA      NA     NA         NA      NA
    ## 30      <NA>      <NA>        NA      NA     NA         NA      NA
    ##           N             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1  94595.00 Total_Cholesterol    A         A    G         G    G    A
    ## 2  94595.00 Total_Cholesterol    T         A    C         C    C    T
    ## 3  94593.00 Total_Cholesterol    C         A    G         G    C    G
    ## 4  91518.00 Total_Cholesterol    A         C    G         G    G    A
    ## 5  94595.00 Total_Cholesterol    A         G    G         A    G    A
    ## 6  94313.00 Total_Cholesterol    G         G    A         C    G    A
    ## 7  94595.00 Total_Cholesterol    T         T    C         C    T    C
    ## 8  94588.00 Total_Cholesterol    C         A    A         C    C    A
    ## 9  92630.98 Total_Cholesterol    C         A    T         T    T    C
    ## 10 94428.00 Total_Cholesterol    A         G    G         A    G    A
    ## 11 94595.00 Total_Cholesterol    A         G    G         C    G    A
    ## 12 94595.00 Total_Cholesterol    C         T    T         C    C    T
    ## 13 93623.00 Total_Cholesterol    G         A    A         G    A    G
    ## 14 94595.00 Total_Cholesterol    C         C    T         A    C    T
    ## 15 93027.00 Total_Cholesterol    T         G    A         A    A    T
    ## 16 91559.00 Total_Cholesterol    C         T    T         C    C    T
    ## 17 93067.00 Total_Cholesterol    A         T    G         C    G    A
    ## 18       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 19       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 20       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 21       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 22       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 23       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 24       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 25       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 26       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 27       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 28       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 29       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 30       NA              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ##    proxy.outcome
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
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18            NA
    ## 19            NA
    ## 20            NA
    ## 21            NA
    ## 22            NA
    ## 23            NA
    ## 24            NA
    ## 25            NA
    ## 26            NA
    ## 27            NA
    ## 28            NA
    ## 29            NA
    ## 30            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and Total cholesterol
datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10029872                      C                     T
    ## 2   rs10496091                      A                     G
    ## 3   rs10817864                      T                     C
    ## 4   rs10876864                      A                     G
    ## 5   rs10878349                      G                     A
    ## 6   rs10927043                      T                     C
    ## 7  rs111855983                      C                     T
    ## 8   rs11938781                      C                     T
    ## 9   rs12357321                      A                     G
    ## 10  rs12630663                      C                     T
    ## 11   rs1628768                      C                     T
    ## 12  rs17543864                      A                     G
    ## 13   rs1791513                      G                     A
    ## 14   rs2066827                      G                     T
    ## 15   rs2195243                      C                     G
    ## 16   rs2301718                      A                     G
    ## 17   rs2802295                      G                     A
    ## 18   rs3217901                      G                     A
    ## 19  rs34011931                      G                     A
    ## 20  rs34464850                      C                     G
    ## 21    rs386424                      G                     T
    ## 22     rs41563                      A                     G
    ## 23     rs42035                      G                     A
    ## 24   rs4265798                      A                     T
    ## 25    rs499688                      C                     T
    ## 26   rs6463758                      G                     A
    ## 27   rs6572878                      C                     T
    ## 28  rs66702753                      C                     A
    ## 29   rs6673449                      G                     A
    ## 30   rs7207463                      G                     A
    ## 31  rs76650567                      T                     C
    ## 32   rs7715167                      C                     T
    ## 33  rs79600142                      C                     T
    ## 34   rs7975351                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T      508.7590      -0.0092
    ## 2                      A                    G     -642.6331       0.0082
    ## 3                      T                    C      531.0956      -0.0051
    ## 4                      A                    G     -628.5901      -0.0018
    ## 5                      G                    A    -1039.9900       0.0109
    ## 6                      T                    C      719.0735       0.0068
    ## 7                      C                    T     -818.6420       0.0097
    ## 8                      C                    T     -719.1710      -0.0010
    ## 9                      A                    G     -698.7452      -0.0039
    ## 10                     C                    T      632.8110      -0.0057
    ## 11                     C                    T      972.9780       0.0013
    ## 12                     A                    G     -623.9150       0.0027
    ## 13                     G                    A     -502.3000      -0.0041
    ## 14                     G                    T     -862.4130       0.0021
    ## 15                     C                    G     -769.2254       0.0046
    ## 16                     A                    G      737.2212       0.0044
    ## 17                     G                    A      714.5850      -0.0046
    ## 18                     G                    A      593.5960      -0.0017
    ## 19                     G                    A      538.2090      -0.0029
    ## 20                     C                    G     1233.1854      -0.0074
    ## 21                     G                    T      656.5430      -0.0140
    ## 22                     A                    G      586.6639       0.0019
    ## 23                     G                    A     -610.3230      -0.0103
    ## 24                     A                    T    -1221.0588       0.0040
    ## 25                     C                    T     -583.8940       0.0044
    ## 26                     G                    A      560.9860       0.0021
    ## 27                     C                    T     -574.9920      -0.0029
    ## 28                     C                    A     -593.2390       0.0043
    ## 29                     G                    A     -552.9050      -0.0022
    ## 30                     G                    A     -519.7640       0.0026
    ## 31                     T                    C     -902.8657      -0.0020
    ## 32                     C                    T      662.7540      -0.0117
    ## 33                     C                    T    -1696.8300       0.0084
    ## 34                     A                    G      611.0487       0.0035
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5251   0.5291120  FALSE       FALSE     FALSE     HssWSB
    ## 2        0.2777   0.3320620  FALSE       FALSE     FALSE     HssWSB
    ## 3        0.5739   0.6296700  FALSE       FALSE     FALSE     HssWSB
    ## 4        0.5774   0.6108670  FALSE       FALSE     FALSE     HssWSB
    ## 5        0.5100   0.4679120  FALSE       FALSE     FALSE     HssWSB
    ## 6        0.1826   0.1845540  FALSE       FALSE     FALSE     HssWSB
    ## 7        0.1319   0.0965167  FALSE       FALSE     FALSE     HssWSB
    ## 8        0.1648   0.1368920  FALSE       FALSE     FALSE     HssWSB
    ## 9        0.3206   0.3057070  FALSE       FALSE     FALSE     HssWSB
    ## 10       0.4117   0.3748190  FALSE       FALSE     FALSE     HssWSB
    ## 11       0.2386   0.2094680  FALSE       FALSE     FALSE     HssWSB
    ## 12       0.3264   0.3086420  FALSE       FALSE     FALSE     HssWSB
    ## 13       0.5263   0.5025410  FALSE       FALSE     FALSE     HssWSB
    ## 14       0.2333   0.2087570  FALSE       FALSE     FALSE     HssWSB
    ## 15       0.2196   0.2223430  FALSE        TRUE     FALSE     HssWSB
    ## 16       0.2269   0.2813290  FALSE       FALSE     FALSE     HssWSB
    ## 17       0.6207   0.5614990  FALSE       FALSE     FALSE     HssWSB
    ## 18       0.4221   0.4122140  FALSE       FALSE     FALSE     HssWSB
    ## 19       0.3280   0.3539550  FALSE       FALSE     FALSE     HssWSB
    ## 20       0.1534   0.1519450  FALSE        TRUE     FALSE     HssWSB
    ## 21       0.3008   0.3547040  FALSE       FALSE     FALSE     HssWSB
    ## 22       0.3385   0.3115710  FALSE       FALSE     FALSE     HssWSB
    ## 23       0.2454   0.2676240  FALSE       FALSE     FALSE     HssWSB
    ## 24       0.9332   0.9399710  FALSE        TRUE     FALSE     HssWSB
    ## 25       0.3482   0.4442830  FALSE       FALSE     FALSE     HssWSB
    ## 26       0.5382   0.5303310  FALSE       FALSE     FALSE     HssWSB
    ## 27       0.3997   0.3842930  FALSE       FALSE     FALSE     HssWSB
    ## 28       0.2493   0.2199850  FALSE       FALSE     FALSE     HssWSB
    ## 29       0.5681   0.5012720  FALSE       FALSE     FALSE     HssWSB
    ## 30       0.5620   0.5573920  FALSE       FALSE     FALSE     HssWSB
    ## 31       0.0870   0.0966280  FALSE       FALSE     FALSE     HssWSB
    ## 32       0.6143   0.6497260  FALSE       FALSE     FALSE     HssWSB
    ## 33       0.2198   0.1467570  FALSE       FALSE     FALSE     HssWSB
    ## 34       0.4740   0.5129560  FALSE       FALSE     FALSE     HssWSB
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            4    40350763     0.0052 -1.7692300      0.27430
    ## 2            2    61482261     0.0039  2.1025641      0.04035
    ## 3            9   118968579     0.0054 -0.9444440      0.40910
    ## 4           12    56401085     0.0051 -0.3529410      0.77660
    ## 5           12    66343400     0.0051  2.1372549      0.08608
    ## 6            1   243716654     0.0065 -1.0461500      0.23590
    ## 7           12    79931070     0.0075  1.2933333      0.25180
    ## 8            4    17924734     0.0071 -0.1408450      0.90970
    ## 9           10    21790476     0.0056 -0.6964290      0.55280
    ## 10           3    28007315     0.0052 -1.0961500      0.28660
    ## 11          10   104999266     0.0056 -0.2321430      0.82050
    ## 12          11    92556100     0.0056  0.4821429      0.88980
    ## 13          18    22135789     0.0052 -0.7884620      0.12980
    ## 14          12    12871099     0.0092  0.2282609      0.93210
    ## 15          12   102922986     0.0045  1.0222222      0.21560
    ## 16           4   106009763     0.0060  0.7333333      0.42290
    ## 17           6   108888593     0.0052 -0.8846150      0.42240
    ## 18          12     4405389     0.0054 -0.3148150      0.79960
    ## 19          13   111078872     0.0054  0.5370370      0.40520
    ## 20           3   141712708     0.0069 -1.0724600      0.38990
    ## 21           5    81092787     0.0056 -2.5000000      0.04669
    ## 22           7   104852654     0.0053  0.3584906      0.79900
    ## 23           7    92246744     0.0059 -1.7457600      0.02418
    ## 24          16    70548297     0.0108  0.3703704      0.79280
    ## 25           1    61396649     0.0066  0.6666667      0.58060
    ## 26           7     8110475     0.0051  0.4117647      0.99830
    ## 27          14    23443514     0.0053 -0.5471700      0.52390
    ## 28           9   103044452     0.0058  0.7413793      0.48560
    ## 29           1   160045972     0.0052 -0.4230770      0.73990
    ## 30          17    16004259     0.0052  0.5000000      0.88700
    ## 31           8    78266342     0.0099 -0.2020200      0.84990
    ## 32           5   170778824     0.0055 -2.1272700      0.06822
    ## 33          17    43709415     0.0064  1.3125000      0.09934
    ## 34          12    53894465     0.0052 -0.6730770      0.62700
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1            91479.00 Willer2013tc            TRUE            reported
    ## 2           187304.00 Willer2013tc            TRUE            reported
    ## 3            86729.00 Willer2013tc            TRUE            reported
    ## 4            94595.00 Willer2013tc            TRUE            reported
    ## 5            94595.00 Willer2013tc            TRUE            reported
    ## 6            94595.00 Willer2013tc            TRUE            reported
    ## 7            94595.00 Willer2013tc            TRUE            reported
    ## 8            92981.00 Willer2013tc            TRUE            reported
    ## 9            94595.00 Willer2013tc            TRUE            reported
    ## 10           94595.00 Willer2013tc            TRUE            reported
    ## 11           92630.98 Willer2013tc            TRUE            reported
    ## 12           94595.00 Willer2013tc            TRUE            reported
    ## 13           93067.00 Willer2013tc            TRUE            reported
    ## 14           82828.00 Willer2013tc            TRUE            reported
    ## 15          184002.96 Willer2013tc            TRUE            reported
    ## 16           94516.00 Willer2013tc            TRUE            reported
    ## 17           91518.00 Willer2013tc            TRUE            reported
    ## 18           94595.00 Willer2013tc            TRUE            reported
    ## 19           93623.00 Willer2013tc            TRUE            reported
    ## 20           94593.00 Willer2013tc            TRUE            reported
    ## 21           94595.00 Willer2013tc            TRUE            reported
    ## 22           94595.00 Willer2013tc            TRUE            reported
    ## 23           94313.00 Willer2013tc            TRUE            reported
    ## 24           93027.00 Willer2013tc            TRUE            reported
    ## 25           94595.00 Willer2013tc            TRUE            reported
    ## 26           94595.00 Willer2013tc            TRUE            reported
    ## 27           94595.00 Willer2013tc            TRUE            reported
    ## 28           94588.00 Willer2013tc            TRUE            reported
    ## 29           94595.00 Willer2013tc            TRUE            reported
    ## 30           89643.00 Willer2013tc            TRUE            reported
    ## 31           94595.00 Willer2013tc            TRUE            reported
    ## 32           94595.00 Willer2013tc            TRUE            reported
    ## 33           91559.00 Willer2013tc            TRUE            reported
    ## 34           94428.00 Willer2013tc            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE         rs10878349         rs1038196                 G
    ## 6           TRUE         rs10927043         rs2291410                 C
    ## 7           TRUE        rs111855983         rs7308762                 C
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11          TRUE          rs1628768         rs6584545                 T
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13          TRUE          rs1791513         rs1791514                 G
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17          TRUE          rs2802295         rs2253310                 G
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19          TRUE         rs34011931         rs4600332                 A
    ## 20          TRUE         rs34464850         rs2271386                 C
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23          TRUE            rs42035           rs42041                 G
    ## 24          TRUE          rs4265798         rs3931036                 A
    ## 25            NA               <NA>              <NA>              <NA>
    ## 26          TRUE          rs6463758        rs10253861                 G
    ## 27          TRUE          rs6572878        rs10140304                 C
    ## 28          TRUE         rs66702753          rs875522                 C
    ## 29          TRUE          rs6673449         rs1321649                 G
    ## 30            NA               <NA>              <NA>              <NA>
    ## 31          TRUE         rs76650567        rs12677220                 T
    ## 32            NA               <NA>              <NA>              <NA>
    ## 33          TRUE         rs79600142          rs436667                 C
    ## 34          TRUE          rs7975351          rs784567                 G
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            4
    ## 2               <NA>             <NA>             <NA>            2
    ## 3               <NA>             <NA>             <NA>            9
    ## 4               <NA>             <NA>             <NA>           12
    ## 5                  A                C                G           12
    ## 6                  T                C                A            1
    ## 7                  T                T                C           12
    ## 8               <NA>             <NA>             <NA>            4
    ## 9               <NA>             <NA>             <NA>           10
    ## 10              <NA>             <NA>             <NA>            3
    ## 11                 C                T                A           10
    ## 12              <NA>             <NA>             <NA>           11
    ## 13                 A                C                T           18
    ## 14              <NA>             <NA>             <NA>           12
    ## 15              <NA>             <NA>             <NA>           12
    ## 16              <NA>             <NA>             <NA>            4
    ## 17                 A                G                C            6
    ## 18              <NA>             <NA>             <NA>           12
    ## 19                 G                G                A           13
    ## 20                 G                A                G            3
    ## 21              <NA>             <NA>             <NA>            5
    ## 22              <NA>             <NA>             <NA>            7
    ## 23                 A                G                C            7
    ## 24                 T                A                G           16
    ## 25              <NA>             <NA>             <NA>            1
    ## 26                 A                A                G            7
    ## 27                 T                C                A           14
    ## 28                 A                A                C            9
    ## 29                 A                G                A            1
    ## 30              <NA>             <NA>             <NA>           17
    ## 31                 C                T                C            8
    ## 32              <NA>             <NA>             <NA>            5
    ## 33                 T                T                C           17
    ## 34                 A                A                G           12
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      40350763    109.6122   4.641440     3.460e-06               32176
    ## 2      61482261    121.0228  -5.310017     1.096e-07               32176
    ## 3     118968579    111.2505   4.773872     1.807e-06               32176
    ## 4      56401085    112.6859  -5.578250     2.430e-08               31319
    ## 5      66327632    110.4866  -9.412850     4.829e-21               32176
    ## 6     243762208    141.2684   5.090123     3.578e-07               32176
    ## 7      80052550    177.5492  -4.610790     4.011e-06               28185
    ## 8      17924734    150.5519  -4.776900     1.780e-06               32176
    ## 9      21790476    119.6461  -5.840100     5.217e-09               32176
    ## 10     28007315    111.2125   5.690110     1.270e-08               32176
    ## 11    105012994    132.0048   7.370780     1.696e-13               32176
    ## 12     92556100    116.9886  -5.333126     9.654e-08               32176
    ## 13     22135429    109.5062  -4.586950     4.498e-06               32176
    ## 14     12871099    159.9581  -5.391500     6.987e-08               24138
    ## 15    102922986    142.2462  -5.407704     6.384e-08               29708
    ## 16    106009763    132.3556   5.570004     2.547e-08               32176
    ## 17    108926496    112.9897   6.324340     2.543e-10               32176
    ## 18      4405389    114.7165   5.174460     2.286e-07               32176
    ## 19    111077516    117.7182   4.572010     4.831e-06               32176
    ## 20    141721762    152.7201   8.074807     6.758e-16               31984
    ## 21     81092787    120.0422   5.469270     4.519e-08               32176
    ## 22    104852654    116.3776   5.041038     4.630e-07               32176
    ## 23     92239531    127.8222  -4.774780     1.799e-06               32176
    ## 24     70636616    263.6357  -4.631614     3.628e-06               30025
    ## 25     61396649    123.5536  -4.725840     2.292e-06               31582
    ## 26      8117636    112.3815   4.991800     5.982e-07               32176
    ## 27     23435333    113.9565  -5.045710     4.518e-07               31790
    ## 28    103010947    128.8921  -4.602600     4.172e-06               32176
    ## 29    160043698    110.5323  -5.002200     5.668e-07               32176
    ## 30     16004259    110.5676  -4.700870     2.591e-06               32176
    ## 31     78242034    194.8981  -4.632501     3.613e-06               32176
    ## 32    170778824    119.1375   5.562930     2.653e-08               32068
    ## 33     43897722    143.2730 -11.843300     2.331e-32               29435
    ## 34     53902190    113.5536   5.381148     7.401e-08               31319
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 2  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 3  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 4  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 5  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 6  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 7  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 8  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 9  Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 10 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 11 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 12 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 13 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 14 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 15 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 16 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 17 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 18 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 19 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 20 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 21 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 22 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 23 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 24 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 25 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 26 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 27 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 28 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 29 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 30 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 31 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 32 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 33 Grasby2020surfarea             TRUE             reported      NX3nKs
    ## 34 Grasby2020surfarea             TRUE             reported      NX3nKs
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06              NA            NA
    ## 2       2    TRUE           TRUE 5e-06              NA            NA
    ## 3       2    TRUE           TRUE 5e-06              NA            NA
    ## 4       2    TRUE           TRUE 5e-06              NA            NA
    ## 5       2    TRUE           TRUE 5e-06              NA            NA
    ## 6       2    TRUE           TRUE 5e-06              NA            NA
    ## 7       2    TRUE           TRUE 5e-06              NA            NA
    ## 8       2    TRUE           TRUE 5e-06              NA            NA
    ## 9       2    TRUE           TRUE 5e-06              NA            NA
    ## 10      2    TRUE           TRUE 5e-06              NA            NA
    ## 11      2    TRUE           TRUE 5e-06              NA            NA
    ## 12      2    TRUE           TRUE 5e-06              NA            NA
    ## 13      2    TRUE           TRUE 5e-06              NA            NA
    ## 14      2    TRUE           TRUE 5e-06              NA            NA
    ## 15      2    TRUE           TRUE 5e-06              NA            NA
    ## 16      2    TRUE           TRUE 5e-06              NA            NA
    ## 17      2    TRUE           TRUE 5e-06              NA            NA
    ## 18      2    TRUE           TRUE 5e-06              NA            NA
    ## 19      2    TRUE           TRUE 5e-06              NA            NA
    ## 20      2    TRUE           TRUE 5e-06              NA            NA
    ## 21      2    TRUE           TRUE 5e-06              NA            NA
    ## 22      2    TRUE           TRUE 5e-06              NA            NA
    ## 23      2    TRUE           TRUE 5e-06              NA            NA
    ## 24      2    TRUE           TRUE 5e-06              NA            NA
    ## 25      2    TRUE           TRUE 5e-06              NA            NA
    ## 26      2    TRUE           TRUE 5e-06              NA            NA
    ## 27      2    TRUE           TRUE 5e-06              NA            NA
    ## 28      2    TRUE           TRUE 5e-06              NA            NA
    ## 29      2    TRUE           TRUE 5e-06              NA            NA
    ## 30      2    TRUE           TRUE 5e-06              NA            NA
    ## 31      2    TRUE           TRUE 5e-06              NA            NA
    ## 32      2    TRUE           TRUE 5e-06              NA            NA
    ## 33      2    TRUE           TRUE 5e-06              NA            NA
    ## 34      2    TRUE           TRUE 5e-06              NA            NA
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
    ## 14          TRUE
    ## 15          TRUE
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Total
cholesterol GWAS

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

    ##   outliers_removed pve.exposure       F Alpha      NCP     Power
    ## 1            FALSE    0.0339247 34.7793  0.05 10.79161 0.9074302

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
Cortical Surface Area on Total cholesterol. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Total
cholesterol

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ## 2      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ## 3      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ## 4      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   34 -3.824722e-06
    ## 2                           Weighted median   34 -4.960184e-06
    ## 3                             Weighted mode   34 -5.734860e-06
    ## 4                                  MR Egger   34 -6.930892e-06
    ##             se        pval
    ## 1 1.329537e-06 0.004018148
    ## 2 1.990755e-06 0.012716568
    ## 3 2.936910e-06 0.059382015
    ## 4 4.407777e-06 0.125688855

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Total cholesterol and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013tc/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome           exposure
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ## 2      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 31.84728   32 0.4743389
    ## 2 Inverse variance weighted 32.39359   33 0.4971291

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013tc/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013tc/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome           exposure egger_intercept
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea     0.002368331
    ##            se      pval
    ## 1 0.003204224 0.4652168

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome           exposure    pt
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 34.31705 0.5144

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome           exposure   method nsnp  b
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013tc/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome           exposure   method  Q Q_df
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome           exposure   method
    ## 1      NX3nKs     HssWSB Willer2013tc Grasby2020surfarea mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
