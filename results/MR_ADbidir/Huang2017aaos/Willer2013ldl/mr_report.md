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

### Exposure: AAOS

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with AAOS

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1    rs2649062     1   5799177   A   G 0.3192  0.0652 0.0131  4.977100
    ## 2    rs4662080     1  14363419   C   T 0.6649  0.1421 0.0296  4.800676
    ## 3   rs10919252     1 169802956   C   G 0.3275  0.0975 0.0198  4.924240
    ## 4    rs6701713     1 207786289   A   G 0.7983 -0.0709 0.0146 -4.856160
    ## 5  rs144505123     1 221802052   C   T 0.0113  0.7709 0.1609  4.791175
    ## 6    rs6718282     2  18039651   G   A 0.0440 -0.1421 0.0308 -4.613636
    ## 7  rs114131510     2  78420700   A   G 0.0162  0.6419 0.1406  4.565430
    ## 8   rs12615104     2 109820829   T   C 0.2566 -0.1057 0.0221 -4.782810
    ## 9  rs111906619     2 127789085   C   T 0.0709  0.1268 0.0256  4.953125
    ## 10   rs6431219     2 127862133   C   T 0.4163  0.0774 0.0124  6.241935
    ## 11    rs359982     2 219826934   A   G 0.0781  0.2660 0.0513  5.185190
    ## 12 rs116341973     3  63462893   A   G 0.0227  0.2057 0.0399  5.155390
    ## 13 rs145799027     3 114438213   T   C 0.0147  0.7485 0.1601  4.675200
    ## 14  rs71602496     4    661002   A   G 0.1453  0.0780 0.0171  4.561400
    ## 15 rs115803892     4 134185712   G   A 0.0129  0.9151 0.1973  4.638115
    ## 16   rs1689013     4 181048651   T   C 0.2493  0.0637 0.0139  4.582730
    ## 17 rs144202318     5 165711579   G   A 0.0135  0.7219 0.1572  4.592239
    ## 18  rs77345379     6  69273670   C   T 0.0185  0.2291 0.0501  4.572854
    ## 19  rs12153819     6  83773049   C   T 0.1018 -0.1092 0.0235 -4.646809
    ## 20  rs17170228     7  33076314   G   A 0.0623  0.1215 0.0248  4.899194
    ## 21 rs149907089     7 151626353   G   C 0.0162  0.7109 0.1535  4.631270
    ## 22   rs2725066     8   4438058   T   A 0.5128 -0.0936 0.0191 -4.900524
    ## 23 rs117201713     8 121340499   G   C 0.0408  0.2125 0.0456  4.660088
    ## 24  rs36033332     9  26834807   C   G 0.0386  0.4601 0.0865  5.319080
    ## 25   rs7930318    11  60033371   C   T 0.5996  0.0750 0.0125  6.000000
    ## 26    rs567075    11  85830157   T   C 0.6903  0.0900 0.0132  6.818180
    ## 27  rs11218343    11 121435587   T   C 0.0395 -0.1653 0.0329 -5.024320
    ## 28   rs7958488    12   6546166   A   T 0.0195  0.5085 0.1111  4.576960
    ## 29   rs1118069    12  84739181   A   T 0.7195  0.1012 0.0216  4.685190
    ## 30 rs140016885    12  99679113   A   G 0.0144  0.6851 0.1416  4.838280
    ## 31   rs9582517    13 102331030   T   C 0.5073 -0.1185 0.0257 -4.610890
    ## 32 rs146189059    14  47173254   C   G 0.0111  0.9444 0.1835  5.146590
    ## 33  rs17125944    14  53400629   T   C 0.0924  0.0960 0.0203  4.729060
    ## 34 rs150193285    15  75224360   C   T 0.0109  0.7622 0.1650  4.619394
    ## 35   rs9947273    18  35409158   G   A 0.1431 -0.0853 0.0178 -4.792135
    ## 36  rs62117204    19  45242967   C   T 0.0601 -0.1867 0.0278 -6.715827
    ## 37  rs76205446    19  45355267   T   A 0.0143  0.7096 0.1234  5.750405
    ## 38   rs2075650    19  45395619   A   G 0.2197  0.5502 0.0223 24.672600
    ## 39 rs141441332    19  45438575   C   A 0.0110  0.5383 0.0632  8.517405
    ## 40    rs204469    19  45490285   A   G 0.9632  0.1588 0.0341  4.656890
    ## 41   rs2827191    21  23361798   C   T 0.2857  0.1277 0.0279  4.577061
    ## 42   rs1043441    22  39130964   C   T 0.2893 -0.0639 0.0135 -4.733333
    ##             P     N TRAIT
    ## 1   6.120e-07 40255  AAOS
    ## 2   1.586e-06 40255  AAOS
    ## 3   8.182e-07 40255  AAOS
    ## 4   1.184e-06 40255  AAOS
    ## 5   1.661e-06 40255  AAOS
    ## 6   3.840e-06 40255  AAOS
    ## 7   4.949e-06 40255  AAOS
    ## 8   1.829e-06 40255  AAOS
    ## 9   7.088e-07 40255  AAOS
    ## 10  3.897e-10 40255  AAOS
    ## 11  2.159e-07 40255  AAOS
    ## 12  2.478e-07 40255  AAOS
    ## 13  2.933e-06 40255  AAOS
    ## 14  4.978e-06 40255  AAOS
    ## 15  3.498e-06 40255  AAOS
    ## 16  4.657e-06 40255  AAOS
    ## 17  4.356e-06 40255  AAOS
    ## 18  4.830e-06 40255  AAOS
    ## 19  3.291e-06 40255  AAOS
    ## 20  1.004e-06 40255  AAOS
    ## 21  3.637e-06 40255  AAOS
    ## 22  9.948e-07 40255  AAOS
    ## 23  3.120e-06 40255  AAOS
    ## 24  1.030e-07 40255  AAOS
    ## 25  2.245e-09 40255  AAOS
    ## 26  9.084e-12 40255  AAOS
    ## 27  5.148e-07 40255  AAOS
    ## 28  4.719e-06 40255  AAOS
    ## 29  2.693e-06 40255  AAOS
    ## 30  1.310e-06 40255  AAOS
    ## 31  3.908e-06 40255  AAOS
    ## 32  2.634e-07 40255  AAOS
    ## 33  2.321e-06 40255  AAOS
    ## 34  3.834e-06 40255  AAOS
    ## 35  1.593e-06 40255  AAOS
    ## 36  1.864e-11 40255  AAOS
    ## 37  9.010e-09 40255  AAOS
    ## 38 5.980e-134 40255  AAOS
    ## 39  1.713e-17 40255  AAOS
    ## 40  3.269e-06 40255  AAOS
    ## 41  4.895e-06 40255  AAOS
    ## 42  2.110e-06 40255  AAOS

<br>

### Outcome: LDL cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in LDL cholesterol

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1    rs2649062    NA        NA <NA> <NA>        NA      NA     NA
    ## 2    rs4662080    NA        NA <NA> <NA>        NA      NA     NA
    ## 3   rs10919252     1 169802956    C    G 0.3103910  0.0026 0.0055
    ## 4    rs6701713     1 207786289    A    G 0.7751540  0.0064 0.0065
    ## 5  rs144505123    NA        NA <NA> <NA>        NA      NA     NA
    ## 6    rs6718282     2  18039651    G    A 0.0846349  0.0005 0.0127
    ## 7  rs114131510    NA        NA <NA> <NA>        NA      NA     NA
    ## 8   rs12615104     2 109820829    T    C 0.3266160  0.0034 0.0058
    ## 9  rs111906619    NA        NA <NA> <NA>        NA      NA     NA
    ## 10   rs6431219    NA        NA <NA> <NA>        NA      NA     NA
    ## 11    rs359982    NA        NA <NA> <NA>        NA      NA     NA
    ## 12 rs116341973    NA        NA <NA> <NA>        NA      NA     NA
    ## 13 rs145799027    NA        NA <NA> <NA>        NA      NA     NA
    ## 14  rs71602496    NA        NA <NA> <NA>        NA      NA     NA
    ## 15 rs115803892    NA        NA <NA> <NA>        NA      NA     NA
    ## 16   rs1689013    NA        NA <NA> <NA>        NA      NA     NA
    ## 17 rs144202318    NA        NA <NA> <NA>        NA      NA     NA
    ## 18  rs77345379    NA        NA <NA> <NA>        NA      NA     NA
    ## 19  rs12153819    NA        NA <NA> <NA>        NA      NA     NA
    ## 20  rs17170228     7  33076314    G    A 0.0556971  0.0284 0.0111
    ## 21 rs149907089    NA        NA <NA> <NA>        NA      NA     NA
    ## 22   rs2725066     8   4438058    T    A 0.5433670  0.0029 0.0053
    ## 23 rs117201713    NA        NA <NA> <NA>        NA      NA     NA
    ## 24  rs36033332    NA        NA <NA> <NA>        NA      NA     NA
    ## 25   rs7930318    NA        NA <NA> <NA>        NA      NA     NA
    ## 26    rs567075    11  85830157    T    C 0.6908990  0.0038 0.0054
    ## 27  rs11218343    11 121435587    T    C 0.0344953  0.0132 0.0186
    ## 28   rs7958488    12   6546166    A    T 0.0184083  0.0092 0.0232
    ## 29   rs1118069    12  84739181    A    T 0.6258210  0.0009 0.0058
    ## 30 rs140016885    NA        NA <NA> <NA>        NA      NA     NA
    ## 31   rs9582517    NA        NA <NA> <NA>        NA      NA     NA
    ## 32 rs146189059    NA        NA <NA> <NA>        NA      NA     NA
    ## 33  rs17125944    14  53400629    T    C 0.0973435 -0.0084 0.0093
    ## 34 rs150193285    NA        NA <NA> <NA>        NA      NA     NA
    ## 35   rs9947273    NA        NA <NA> <NA>        NA      NA     NA
    ## 36  rs62117204    NA        NA <NA> <NA>        NA      NA     NA
    ## 37  rs76205446    NA        NA <NA> <NA>        NA      NA     NA
    ## 38   rs2075650    19  45395619    A    G 0.1555920  0.1767 0.0055
    ## 39 rs141441332    NA        NA <NA> <NA>        NA      NA     NA
    ## 40    rs204469    NA        NA <NA> <NA>        NA      NA     NA
    ## 41   rs2827191    NA        NA <NA> <NA>        NA      NA     NA
    ## 42   rs1043441    NA        NA <NA> <NA>        NA      NA     NA
    ##              Z          P      N           TRAIT
    ## 1           NA         NA     NA            <NA>
    ## 2           NA         NA     NA            <NA>
    ## 3   0.47272727  6.087e-01  89888 LDL_Cholesterol
    ## 4   0.98461538  7.003e-01  89888 LDL_Cholesterol
    ## 5           NA         NA     NA            <NA>
    ## 6   0.03937008  7.781e-01  89888 LDL_Cholesterol
    ## 7           NA         NA     NA            <NA>
    ## 8   0.58620690  4.240e-01  89888 LDL_Cholesterol
    ## 9           NA         NA     NA            <NA>
    ## 10          NA         NA     NA            <NA>
    ## 11          NA         NA     NA            <NA>
    ## 12          NA         NA     NA            <NA>
    ## 13          NA         NA     NA            <NA>
    ## 14          NA         NA     NA            <NA>
    ## 15          NA         NA     NA            <NA>
    ## 16          NA         NA     NA            <NA>
    ## 17          NA         NA     NA            <NA>
    ## 18          NA         NA     NA            <NA>
    ## 19          NA         NA     NA            <NA>
    ## 20  2.55855856  2.853e-02  86801 LDL_Cholesterol
    ## 21          NA         NA     NA            <NA>
    ## 22  0.54716981  8.610e-01  89888 LDL_Cholesterol
    ## 23          NA         NA     NA            <NA>
    ## 24          NA         NA     NA            <NA>
    ## 25          NA         NA     NA            <NA>
    ## 26  0.70370370  9.767e-01  89888 LDL_Cholesterol
    ## 27  0.70967742  6.142e-01  81974 LDL_Cholesterol
    ## 28  0.39655172  5.317e-01  79883 LDL_Cholesterol
    ## 29  0.15517241  4.334e-01  88159 LDL_Cholesterol
    ## 30          NA         NA     NA            <NA>
    ## 31          NA         NA     NA            <NA>
    ## 32          NA         NA     NA            <NA>
    ## 33 -0.90322600  3.351e-01  89829 LDL_Cholesterol
    ## 34          NA         NA     NA            <NA>
    ## 35          NA         NA     NA            <NA>
    ## 36          NA         NA     NA            <NA>
    ## 37          NA         NA     NA            <NA>
    ## 38 32.12727273 1.720e-214 161076 LDL_Cholesterol
    ## 39          NA         NA     NA            <NA>
    ## 40          NA         NA     NA            <NA>
    ## 41          NA         NA     NA            <NA>
    ## 42          NA         NA     NA            <NA>

<br>

**Table 3:** Proxy SNPs for LDL cholesterol

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1    rs2649062  rs2133496 0.964725 1.000000 GA/AG  NA     1   5800904
    ## 2    rs4662080  rs4662076 1.000000 1.000000 CT/TG  NA     1  14357851
    ## 3   rs71602496  rs3891250 1.000000 1.000000 GT/AG  NA     4    658304
    ## 4    rs1689013  rs1689014 0.989494 1.000000 CA/TG  NA     4 181046865
    ## 5   rs12153819 rs12211381 0.984013 1.000000 TT/CC  NA     6  83779921
    ## 6   rs36033332 rs13286272 0.978976 1.000000 GC/CG  NA     9  26828025
    ## 7    rs7930318  rs6591559 1.000000 1.000000 CA/TG  NA    11  60025565
    ## 8    rs9582517  rs7993068 0.934257 0.995841 CG/TA  NA    13 102319006
    ## 9    rs9947273  rs1122310 1.000000 1.000000 AG/GC  NA    18  35406066
    ## 10  rs62117204  rs1531517 0.980787 1.000000 TA/CG  NA    19  45242173
    ## 11   rs2827191  rs2827189 0.844048 1.000000 TT/CC  NA    21  23361567
    ## 12   rs1043441   rs138705 1.000000 1.000000 TT/CC  NA    22  39133803
    ## 13 rs144505123       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14 rs114131510       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15 rs111906619       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16   rs6431219       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17    rs359982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18 rs116341973       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19 rs145799027       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20 rs115803892       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21 rs144202318       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22  rs77345379       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23 rs149907089       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24 rs117201713       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25 rs140016885       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 26 rs146189059       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 27 rs150193285       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 28  rs76205446       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 29 rs141441332       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 30    rs204469       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy        AF    BETA     SE           Z          P
    ## 1          G         A 0.3147740 -0.0015 0.0057  -0.2631580  8.722e-01
    ## 2          T         G 0.6984360  0.0007 0.0059   0.1186441  8.899e-01
    ## 3          G         T 0.1492160 -0.0003 0.0073  -0.0410959  7.166e-01
    ## 4          G         A 0.2207320 -0.0040 0.0060  -0.6666670  5.103e-01
    ## 5          C         T 0.1736290 -0.0047 0.0081  -0.5802470  8.601e-01
    ## 6          G         C 0.0833032  0.0036 0.0169   0.2130178  6.011e-01
    ## 7          A         G 0.6614550  0.0066 0.0053   1.2452830  2.597e-01
    ## 8          A         G 0.4783240 -0.0047 0.0053  -0.8867920  3.310e-01
    ## 9          C         G 0.1834360  0.0089 0.0073   1.2191781  2.129e-01
    ## 10         G         A 0.0745455 -0.2202 0.0080 -27.5250000 9.510e-163
    ## 11         C         T 0.2732390  0.0018 0.0060   0.3000000  6.282e-01
    ## 12         C         T 0.3119990  0.0031 0.0057   0.5438596  5.856e-01
    ## 13      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 14      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 15      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 16      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 17      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 18      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 19      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 20      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 21      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 22      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 23      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 24      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 25      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 26      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 27      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 28      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 29      <NA>      <NA>        NA      NA     NA          NA         NA
    ## 30      <NA>      <NA>        NA      NA     NA          NA         NA
    ##         N           TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1   89888 LDL_Cholesterol    G         A    A         G    G    A
    ## 2   89888 LDL_Cholesterol    C         T    T         G    T    C
    ## 3   88895 LDL_Cholesterol    G         T    A         G    G    A
    ## 4   89888 LDL_Cholesterol    C         A    T         G    C    T
    ## 5   89888 LDL_Cholesterol    T         T    C         C    T    C
    ## 6   62923 LDL_Cholesterol    G         C    C         G    G    C
    ## 7   89732 LDL_Cholesterol    C         A    T         G    T    C
    ## 8   88917 LDL_Cholesterol    C         G    T         A    C    T
    ## 9   88433 LDL_Cholesterol    A         G    G         C    A    G
    ## 10 164674 LDL_Cholesterol    T         A    C         G    T    C
    ## 11  86791 LDL_Cholesterol    T         T    C         C    T    C
    ## 12  88430 LDL_Cholesterol    T         T    C         C    T    C
    ## 13     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 14     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 15     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 16     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 17     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 18     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 19     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 20     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 21     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 22     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 23     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 24     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 25     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 26     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 27     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 28     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 29     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 30     NA            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
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
    ## 13            NA
    ## 14            NA
    ## 15            NA
    ## 16            NA
    ## 17            NA
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

**Table 4:** Harmonized AAOS and LDL cholesterol datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1   rs1043441                      T                     C
    ## 2  rs10919252                      G                     C
    ## 3   rs1118069                      T                     A
    ## 4  rs11218343                      C                     T
    ## 5  rs12153819                      T                     C
    ## 6  rs12615104                      C                     T
    ## 7   rs1689013                      C                     T
    ## 8  rs17125944                      C                     T
    ## 9  rs17170228                      A                     G
    ## 10  rs2075650                      G                     A
    ## 11  rs2649062                      G                     A
    ## 12  rs2725066                      A                     T
    ## 13  rs2827191                      T                     C
    ## 14 rs36033332                      G                     C
    ## 15  rs4662080                      T                     C
    ## 16   rs567075                      C                     T
    ## 17 rs62117204                      T                     C
    ## 18  rs6701713                      G                     A
    ## 19  rs6718282                      A                     G
    ## 20 rs71602496                      G                     A
    ## 21  rs7930318                      T                     C
    ## 22  rs7958488                      T                     A
    ## 23  rs9582517                      C                     T
    ## 24  rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639       0.0031
    ## 2                      G                    C        0.0975       0.0026
    ## 3                      T                    A        0.1012       0.0009
    ## 4                      C                    T       -0.1653       0.0132
    ## 5                      T                    C       -0.1092      -0.0047
    ## 6                      C                    T       -0.1057       0.0034
    ## 7                      C                    T        0.0637      -0.0040
    ## 8                      C                    T        0.0960      -0.0084
    ## 9                      A                    G        0.1215       0.0284
    ## 10                     G                    A        0.5502       0.1767
    ## 11                     G                    A        0.0652      -0.0015
    ## 12                     A                    T       -0.0936       0.0029
    ## 13                     T                    C        0.1277       0.0018
    ## 14                     G                    C        0.4601       0.0036
    ## 15                     T                    C        0.1421       0.0007
    ## 16                     C                    T        0.0900       0.0038
    ## 17                     T                    C       -0.1867      -0.2202
    ## 18                     G                    A       -0.0709       0.0064
    ## 19                     A                    G       -0.1421       0.0005
    ## 20                     G                    A        0.0780      -0.0003
    ## 21                     T                    C        0.0750       0.0066
    ## 22                     T                    A        0.5085       0.0092
    ## 23                     C                    T       -0.1185      -0.0047
    ## 24                     A                    G       -0.0853       0.0089
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893   0.3119990  FALSE       FALSE     FALSE     gH9J1g
    ## 2        0.3275   0.3103910  FALSE        TRUE     FALSE     gH9J1g
    ## 3        0.7195   0.6258210  FALSE        TRUE     FALSE     gH9J1g
    ## 4        0.0395   0.0344953  FALSE       FALSE     FALSE     gH9J1g
    ## 5        0.1018   0.1736290  FALSE       FALSE     FALSE     gH9J1g
    ## 6        0.2566   0.3266160  FALSE       FALSE     FALSE     gH9J1g
    ## 7        0.2493   0.2207320  FALSE       FALSE     FALSE     gH9J1g
    ## 8        0.0924   0.0973435  FALSE       FALSE     FALSE     gH9J1g
    ## 9        0.0623   0.0556971  FALSE       FALSE     FALSE     gH9J1g
    ## 10       0.2197   0.1555920  FALSE       FALSE     FALSE     gH9J1g
    ## 11       0.3192   0.3147740  FALSE       FALSE     FALSE     gH9J1g
    ## 12       0.5128   0.5433670  FALSE        TRUE      TRUE     gH9J1g
    ## 13       0.2857   0.2732390  FALSE       FALSE     FALSE     gH9J1g
    ## 14       0.0386   0.0833032  FALSE        TRUE     FALSE     gH9J1g
    ## 15       0.6649   0.6984360  FALSE       FALSE     FALSE     gH9J1g
    ## 16       0.6903   0.6908990  FALSE       FALSE     FALSE     gH9J1g
    ## 17       0.0601   0.0745455  FALSE       FALSE     FALSE     gH9J1g
    ## 18       0.7983   0.7751540  FALSE       FALSE     FALSE     gH9J1g
    ## 19       0.0440   0.0846349  FALSE       FALSE     FALSE     gH9J1g
    ## 20       0.1453   0.1492160  FALSE       FALSE     FALSE     gH9J1g
    ## 21       0.5996   0.6614550  FALSE       FALSE     FALSE     gH9J1g
    ## 22       0.0195   0.0184083  FALSE        TRUE     FALSE     gH9J1g
    ## 23       0.5073   0.4783240  FALSE       FALSE     FALSE     gH9J1g
    ## 24       0.1431   0.1834360  FALSE       FALSE     FALSE     gH9J1g
    ##    chr.outcome pos.outcome se.outcome    z.outcome pval.outcome
    ## 1           22    39133803     0.0057   0.54385965    5.856e-01
    ## 2            1   169802956     0.0055   0.47272727    6.087e-01
    ## 3           12    84739181     0.0058   0.15517241    4.334e-01
    ## 4           11   121435587     0.0186   0.70967742    6.142e-01
    ## 5            6    83779921     0.0081  -0.58024700    8.601e-01
    ## 6            2   109820829     0.0058   0.58620690    4.240e-01
    ## 7            4   181046865     0.0060  -0.66666700    5.103e-01
    ## 8           14    53400629     0.0093  -0.90322600    3.351e-01
    ## 9            7    33076314     0.0111   2.55855856    2.853e-02
    ## 10          19    45395619     0.0055  32.12727273   1.000e-200
    ## 11           1     5800904     0.0057  -0.26315800    8.722e-01
    ## 12           8     4438058     0.0053   0.54716981    8.610e-01
    ## 13          21    23361567     0.0060   0.30000000    6.282e-01
    ## 14           9    26828025     0.0169   0.21301775    6.011e-01
    ## 15           1    14357851     0.0059   0.11864407    8.899e-01
    ## 16          11    85830157     0.0054   0.70370370    9.767e-01
    ## 17          19    45242173     0.0080 -27.52500000   9.510e-163
    ## 18           1   207786289     0.0065   0.98461538    7.003e-01
    ## 19           2    18039651     0.0127   0.03937008    7.781e-01
    ## 20           4      658304     0.0073  -0.04109590    7.166e-01
    ## 21          11    60025565     0.0053   1.24528302    2.597e-01
    ## 22          12     6546166     0.0232   0.39655172    5.317e-01
    ## 23          13   102319006     0.0053  -0.88679200    3.310e-01
    ## 24          18    35406066     0.0073   1.21917808    2.129e-01
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1               88430 Willer2013ldl            TRUE            reported
    ## 2               89888 Willer2013ldl            TRUE            reported
    ## 3               88159 Willer2013ldl            TRUE            reported
    ## 4               81974 Willer2013ldl            TRUE            reported
    ## 5               89888 Willer2013ldl            TRUE            reported
    ## 6               89888 Willer2013ldl            TRUE            reported
    ## 7               89888 Willer2013ldl            TRUE            reported
    ## 8               89829 Willer2013ldl            TRUE            reported
    ## 9               86801 Willer2013ldl            TRUE            reported
    ## 10             161076 Willer2013ldl            TRUE            reported
    ## 11              89888 Willer2013ldl            TRUE            reported
    ## 12              89888 Willer2013ldl            TRUE            reported
    ## 13              86791 Willer2013ldl            TRUE            reported
    ## 14              62923 Willer2013ldl            TRUE            reported
    ## 15              89888 Willer2013ldl            TRUE            reported
    ## 16              89888 Willer2013ldl            TRUE            reported
    ## 17             164674 Willer2013ldl            TRUE            reported
    ## 18              89888 Willer2013ldl            TRUE            reported
    ## 19              89888 Willer2013ldl            TRUE            reported
    ## 20              88895 Willer2013ldl            TRUE            reported
    ## 21              89732 Willer2013ldl            TRUE            reported
    ## 22              79883 Willer2013ldl            TRUE            reported
    ## 23              88917 Willer2013ldl            TRUE            reported
    ## 24              88433 Willer2013ldl            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1           TRUE          rs1043441          rs138705                 T
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE         rs12153819        rs12211381                 T
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7           TRUE          rs1689013         rs1689014                 C
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11          TRUE          rs2649062         rs2133496                 G
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13          TRUE          rs2827191         rs2827189                 T
    ## 14          TRUE         rs36033332        rs13286272                 G
    ## 15          TRUE          rs4662080         rs4662076                 T
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17          TRUE         rs62117204         rs1531517                 T
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20          TRUE         rs71602496         rs3891250                 G
    ## 21          TRUE          rs7930318         rs6591559                 T
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23          TRUE          rs9582517         rs7993068                 C
    ## 24          TRUE          rs9947273         rs1122310                 A
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                  C                T                C           22
    ## 2               <NA>             <NA>             <NA>            1
    ## 3               <NA>             <NA>             <NA>           12
    ## 4               <NA>             <NA>             <NA>           11
    ## 5                  C                T                C            6
    ## 6               <NA>             <NA>             <NA>            2
    ## 7                  T                A                G            4
    ## 8               <NA>             <NA>             <NA>           14
    ## 9               <NA>             <NA>             <NA>            7
    ## 10              <NA>             <NA>             <NA>           19
    ## 11                 A                A                G            1
    ## 12              <NA>             <NA>             <NA>            8
    ## 13                 C                T                C           21
    ## 14                 C                C                G            9
    ## 15                 C                G                T            1
    ## 16              <NA>             <NA>             <NA>           11
    ## 17                 C                A                G           19
    ## 18              <NA>             <NA>             <NA>            1
    ## 19              <NA>             <NA>             <NA>            2
    ## 20                 A                T                G            4
    ## 21                 C                G                A           11
    ## 22              <NA>             <NA>             <NA>           12
    ## 23                 T                G                A           13
    ## 24                 G                G                C           18
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      39130964      0.0135  -4.733333     2.110e-06               40255
    ## 2     169802956      0.0198   4.924240     8.182e-07               40255
    ## 3      84739181      0.0216   4.685190     2.693e-06               40255
    ## 4     121435587      0.0329  -5.024320     5.148e-07               40255
    ## 5      83773049      0.0235  -4.646809     3.291e-06               40255
    ## 6     109820829      0.0221  -4.782810     1.829e-06               40255
    ## 7     181048651      0.0139   4.582730     4.657e-06               40255
    ## 8      53400629      0.0203   4.729060     2.321e-06               40255
    ## 9      33076314      0.0248   4.899194     1.004e-06               40255
    ## 10     45395619      0.0223  24.672600    5.980e-134               40255
    ## 11      5799177      0.0131   4.977100     6.120e-07               40255
    ## 12      4438058      0.0191  -4.900524     9.948e-07               40255
    ## 13     23361798      0.0279   4.577061     4.895e-06               40255
    ## 14     26834807      0.0865   5.319080     1.030e-07               40255
    ## 15     14363419      0.0296   4.800676     1.586e-06               40255
    ## 16     85830157      0.0132   6.818180     9.084e-12               40255
    ## 17     45242967      0.0278  -6.715827     1.864e-11               40255
    ## 18    207786289      0.0146  -4.856160     1.184e-06               40255
    ## 19     18039651      0.0308  -4.613636     3.840e-06               40255
    ## 20       661002      0.0171   4.561400     4.978e-06               40255
    ## 21     60033371      0.0125   6.000000     2.245e-09               40255
    ## 22      6546166      0.1111   4.576960     4.719e-06               40255
    ## 23    102331030      0.0257  -4.610890     3.908e-06               40255
    ## 24     35409158      0.0178  -4.792135     1.593e-06               40255
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Huang2017aaos             TRUE             reported      vyULli      2
    ## 2  Huang2017aaos             TRUE             reported      vyULli      2
    ## 3  Huang2017aaos             TRUE             reported      vyULli      2
    ## 4  Huang2017aaos             TRUE             reported      vyULli      2
    ## 5  Huang2017aaos             TRUE             reported      vyULli      2
    ## 6  Huang2017aaos             TRUE             reported      vyULli      2
    ## 7  Huang2017aaos             TRUE             reported      vyULli      2
    ## 8  Huang2017aaos             TRUE             reported      vyULli      2
    ## 9  Huang2017aaos             TRUE             reported      vyULli      2
    ## 10 Huang2017aaos             TRUE             reported      vyULli      2
    ## 11 Huang2017aaos             TRUE             reported      vyULli      2
    ## 12 Huang2017aaos             TRUE             reported      vyULli      2
    ## 13 Huang2017aaos             TRUE             reported      vyULli      2
    ## 14 Huang2017aaos             TRUE             reported      vyULli      2
    ## 15 Huang2017aaos             TRUE             reported      vyULli      2
    ## 16 Huang2017aaos             TRUE             reported      vyULli      2
    ## 17 Huang2017aaos             TRUE             reported      vyULli      2
    ## 18 Huang2017aaos             TRUE             reported      vyULli      2
    ## 19 Huang2017aaos             TRUE             reported      vyULli      2
    ## 20 Huang2017aaos             TRUE             reported      vyULli      2
    ## 21 Huang2017aaos             TRUE             reported      vyULli      2
    ## 22 Huang2017aaos             TRUE             reported      vyULli      2
    ## 23 Huang2017aaos             TRUE             reported      vyULli      2
    ## 24 Huang2017aaos             TRUE             reported      vyULli      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06              NA            NA
    ## 2     TRUE           TRUE 5e-06              NA            NA
    ## 3     TRUE           TRUE 5e-06              NA            NA
    ## 4     TRUE           TRUE 5e-06              NA            NA
    ## 5     TRUE           TRUE 5e-06              NA            NA
    ## 6     TRUE           TRUE 5e-06              NA            NA
    ## 7     TRUE           TRUE 5e-06              NA            NA
    ## 8     TRUE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06              NA            NA
    ## 10    TRUE          FALSE 5e-06              NA            NA
    ## 11    TRUE           TRUE 5e-06              NA            NA
    ## 12   FALSE           TRUE 5e-06              NA            NA
    ## 13    TRUE           TRUE 5e-06              NA            NA
    ## 14    TRUE           TRUE 5e-06              NA            NA
    ## 15    TRUE           TRUE 5e-06              NA            NA
    ## 16    TRUE           TRUE 5e-06              NA            NA
    ## 17    TRUE          FALSE 5e-06              NA            NA
    ## 18    TRUE           TRUE 5e-06              NA            NA
    ## 19    TRUE           TRUE 5e-06              NA            NA
    ## 20    TRUE           TRUE 5e-06              NA            NA
    ## 21    TRUE           TRUE 5e-06              NA            NA
    ## 22    TRUE           TRUE 5e-06              NA            NA
    ## 23    TRUE           TRUE 5e-06              NA            NA
    ## 24    TRUE           TRUE 5e-06              NA            NA
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
    ## 12            NA
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the LDL
cholesterol GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1  rs2075650          19    45395619    5.980e-134    1.00e-200
    ## 2 rs62117204          19    45242173     1.864e-11    9.51e-163

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

    ##   outliers_removed pve.exposure       F Alpha       NCP      Power
    ## 1            FALSE   0.01275638 24.7552  0.05 0.1620408 0.06876117

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

Table 6 presents the MR causal estimates of genetically predicted AAOS
on LDL cholesterol. <br>

**Table 6** MR causaul estimates for AAOS on LDL cholesterol

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 2      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 3      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 4      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   21 0.009298440 0.01344178
    ## 2                           Weighted median   21 0.008675561 0.01839598
    ## 3                             Weighted mode   21 0.014350970 0.02175573
    ## 4                                  MR Egger   21 0.027138522 0.03084794
    ##        pval
    ## 1 0.4890901
    ## 2 0.6372116
    ## 3 0.5170089
    ## 4 0.3899857

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in LDL cholesterol and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 2      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 14.30980   19 0.7653413
    ## 2 Inverse variance weighted 14.72265   20 0.7920518

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Willer2013ldl/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Willer2013ldl/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome      exposure egger_intercept
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos    -0.002187449
    ##            se      pval
    ## 1 0.003404427 0.5282066

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome      exposure    pt
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs pval
    ## 1            FALSE          0 15.58368 0.82

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 2      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 3      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 4      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   21 0.009298440 0.01344178
    ## 2                           Weighted median   21 0.008675561 0.01769357
    ## 3                             Weighted mode   21 0.014350970 0.02168090
    ## 4                                  MR Egger   21 0.027138522 0.03084794
    ##        pval
    ## 1 0.4890901
    ## 2 0.6239055
    ## 3 0.5155790
    ## 4 0.3899857

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome      exposure
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ## 2      vyULli     gH9J1g Willer2013ldl Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 14.30980   19 0.7653413
    ## 2 Inverse variance weighted 14.72265   20 0.7920518

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome      exposure egger_intercept
    ## 1      vyULli     gH9J1g Willer2013ldl Huang2017aaos    -0.002187449
    ##            se      pval
    ## 1 0.003404427 0.5282066

<br>
