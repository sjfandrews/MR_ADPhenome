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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1     rs679515     1 207750568   T   C 0.8126 -0.1508 0.0183 -8.240440
    ## 2    rs7584040     2 127863224   C   T 0.2261  0.0862 0.0172  5.011628
    ## 3    rs6733839     2 127892810   C   T 0.4067  0.1693 0.0154 10.993506
    ## 4   rs35695568     2 186794162   G   T 0.0922  0.1152 0.0247  4.663968
    ## 5   rs10933431     2 233981912   G   C 0.7774  0.1001 0.0194  5.159794
    ## 6    rs6805148     3  45101639   A   C 0.0864 -0.1293 0.0257 -5.031130
    ## 7   rs28660482     4  66245059   T   A 0.0243  0.2220 0.0475  4.673684
    ## 8    rs6822989     4 104176240   C   T 0.0082  0.4361 0.0940  4.639362
    ## 9   rs35868327     5  52665230   T   A 0.0132 -0.3753 0.0760 -4.938158
    ## 10  rs11168036     5 139707439   T   G 0.5033 -0.0754 0.0143 -5.272730
    ## 11  rs34665982     6  32560306   T   C 0.5213 -0.0967 0.0166 -5.825300
    ## 12 rs114812713     6  41034000   G   C 0.0301  0.2980 0.0431  6.914153
    ## 13   rs1385742     6  47595155   A   T 0.6344 -0.0876 0.0157 -5.579620
    ## 14 rs143429938     7  33721795   C   T 0.0211  0.3535 0.0769  4.596879
    ## 15   rs9649710     7  50322832   A   G 0.6331  0.0676 0.0148  4.567570
    ## 16 rs117240937     7 127426090   G   A 0.0173 -0.3122 0.0672 -4.645833
    ## 17  rs11767557     7 143109139   T   C 0.1968 -0.1028 0.0182 -5.648350
    ## 18  rs73223431     8  27219987   C   T 0.3669  0.0936 0.0153  6.117647
    ## 19    rs867230     8  27468503   C   A 0.6029  0.1333 0.0158  8.436709
    ## 20  rs13252043     8  71551628   C   T 0.0984  0.1140 0.0237  4.810127
    ## 21   rs6559689     9  85450616   C   T 0.0504  0.1585 0.0335  4.731343
    ## 22  rs12416487    10  11721057   A   T 0.6519  0.0850 0.0154  5.519480
    ## 23   rs3740688    11  47380340   G   T 0.5524  0.0935 0.0144  6.493056
    ## 24   rs1582763    11  60021948   G   A 0.3729 -0.1232 0.0149 -8.268456
    ## 25   rs3851179    11  85868640   T   C 0.6410  0.1198 0.0148  8.094590
    ## 26  rs11218343    11 121435587   T   C 0.0401 -0.2053 0.0369 -5.563690
    ## 27   rs9787911    11 131769402   T   C 0.4249  0.0662 0.0144  4.597220
    ## 28 rs117394726    12 127222883   A   C 0.0400  0.2193 0.0465  4.716130
    ## 29  rs17125924    14  53391680   A   G 0.0926  0.1222 0.0246  4.967480
    ## 30  rs12590654    14  92938855   G   A 0.3353 -0.0906 0.0157 -5.770701
    ## 31    rs383902    15  59034174   C   T 0.3274 -0.0698 0.0151 -4.622517
    ## 32  rs28588186    16  19910313   C   G 0.1981 -0.0880 0.0181 -4.861880
    ## 33  rs62039712    16  79355857   G   A 0.1158  0.1528 0.0288  5.305556
    ## 34  rs34971488    16  81779775   G   A 0.2205  0.0940 0.0198  4.747475
    ## 35   rs2632516    17  56409089   G   C 0.4402 -0.0748 0.0147 -5.088435
    ## 36  rs12151021    19   1050874   A   G 0.6753 -0.1071 0.0169 -6.337280
    ## 37   rs8111708    19  18558876   A   G 0.3427  0.0696 0.0151  4.609270
    ## 38 rs111358663    19  45196958   T   A 0.0111 -0.5369 0.0795 -6.753459
    ## 39   rs4803765    19  45358448   C   T 0.0243  0.7165 0.0610 11.745902
    ## 40  rs12972156    19  45387459   C   G 0.2027  0.9653 0.0189 51.074100
    ## 41 rs117310449    19  45393516   C   T 0.0130  0.9879 0.0691 14.296671
    ## 42  rs73033507    19  45431403   C   T 0.0239 -0.3620 0.0657 -5.509893
    ## 43 rs114533385    19  45436753   C   T 0.0210  0.8281 0.0661 12.527988
    ## 44 rs118004808    19  45439498   C   T 0.0177 -0.5523 0.1015 -5.441379
    ## 45 rs139995984    19  45574482   G   C 0.0155 -0.5343 0.0879 -6.078498
    ## 46  rs80182863    19  45653226   C   T 0.0234  0.2977 0.0623  4.778491
    ## 47   rs6014724    20  54998544   A   G 0.0920 -0.1319 0.0259 -5.092660
    ## 48   rs2830489    21  28148191   C   T 0.2882 -0.0837 0.0162 -5.166667
    ## 49 rs138727474    22  21926584   C   T 0.0269 -0.2515 0.0545 -4.614679
    ##                P     N TRAIT
    ## 1   1.555000e-16 63926  LOAD
    ## 2   5.341000e-07 63926  LOAD
    ## 3   4.022000e-28 63926  LOAD
    ## 4   3.200000e-06 63926  LOAD
    ## 5   2.552000e-07 63926  LOAD
    ## 6   4.774000e-07 63926  LOAD
    ## 7   2.900000e-06 63926  LOAD
    ## 8   3.487000e-06 63926  LOAD
    ## 9   7.796000e-07 63926  LOAD
    ## 10  1.432000e-07 63926  LOAD
    ## 11  5.798000e-09 63926  LOAD
    ## 12  4.467000e-12 63926  LOAD
    ## 13  2.232000e-08 63926  LOAD
    ## 14  4.253000e-06 63926  LOAD
    ## 15  4.794000e-06 63926  LOAD
    ## 16  3.350000e-06 63926  LOAD
    ## 17  1.561000e-08 63926  LOAD
    ## 18  8.342000e-10 63926  LOAD
    ## 19  3.492000e-17 63926  LOAD
    ## 20  1.570000e-06 63926  LOAD
    ## 21  2.169000e-06 63926  LOAD
    ## 22  3.417000e-08 63926  LOAD
    ## 23  9.702000e-11 63926  LOAD
    ## 24  1.186000e-16 63926  LOAD
    ## 25  5.809000e-16 63926  LOAD
    ## 26  2.633000e-08 63926  LOAD
    ## 27  4.386000e-06 63926  LOAD
    ## 28  2.459000e-06 63926  LOAD
    ## 29  6.621000e-07 63926  LOAD
    ## 30  8.729000e-09 63926  LOAD
    ## 31  3.812000e-06 63926  LOAD
    ## 32  1.115000e-06 63926  LOAD
    ## 33  1.171000e-07 63926  LOAD
    ## 34  2.067000e-06 63926  LOAD
    ## 35  3.671000e-07 63926  LOAD
    ## 36  2.562000e-10 63926  LOAD
    ## 37  3.946000e-06 63926  LOAD
    ## 38  1.436000e-11 63926  LOAD
    ## 39  7.131000e-32 63926  LOAD
    ## 40 2.225074e-308 63926  LOAD
    ## 41  2.275000e-46 63926  LOAD
    ## 42  3.646000e-08 63926  LOAD
    ## 43  5.434000e-36 63926  LOAD
    ## 44  5.274000e-08 63926  LOAD
    ## 45  1.192000e-09 63926  LOAD
    ## 46  1.750000e-06 63926  LOAD
    ## 47  3.652000e-07 63926  LOAD
    ## 48  2.422000e-07 63926  LOAD
    ## 49  3.904000e-06 63926  LOAD

<br>

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Diabetes

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1     rs679515     1 207750568    T    C 0.8220730 -0.0035 0.0102
    ## 2    rs7584040    NA        NA <NA> <NA>        NA      NA     NA
    ## 3    rs6733839    NA        NA <NA> <NA>        NA      NA     NA
    ## 4   rs35695568     2 186794162    G    T 0.0937488 -0.0099 0.0135
    ## 5   rs10933431    NA        NA <NA> <NA>        NA      NA     NA
    ## 6    rs6805148     3  45101639    A    C 0.0911389  0.0279 0.0135
    ## 7   rs28660482     4  66245059    T    A 0.0237538  0.0028 0.0257
    ## 8    rs6822989    NA        NA <NA> <NA>        NA      NA     NA
    ## 9   rs35868327    NA        NA <NA> <NA>        NA      NA     NA
    ## 10  rs11168036     5 139707439    T    G 0.5186650  0.0027 0.0079
    ## 11  rs34665982    NA        NA <NA> <NA>        NA      NA     NA
    ## 12 rs114812713    NA        NA <NA> <NA>        NA      NA     NA
    ## 13   rs1385742    NA        NA <NA> <NA>        NA      NA     NA
    ## 14 rs143429938    NA        NA <NA> <NA>        NA      NA     NA
    ## 15   rs9649710     7  50322832    A    G 0.6095800  0.0143 0.0081
    ## 16 rs117240937    NA        NA <NA> <NA>        NA      NA     NA
    ## 17  rs11767557     7 143109139    T    C 0.2125140 -0.0131 0.0095
    ## 18  rs73223431    NA        NA <NA> <NA>        NA      NA     NA
    ## 19    rs867230     8  27468503    C    A 0.5879020 -0.0068 0.0080
    ## 20  rs13252043    NA        NA <NA> <NA>        NA      NA     NA
    ## 21   rs6559689    NA        NA <NA> <NA>        NA      NA     NA
    ## 22  rs12416487    NA        NA <NA> <NA>        NA      NA     NA
    ## 23   rs3740688    11  47380340    G    T 0.5450590 -0.0167 0.0080
    ## 24   rs1582763    11  60021948    G    A 0.3784000 -0.0178 0.0080
    ## 25   rs3851179    11  85868640    T    C 0.6295750  0.0099 0.0081
    ## 26  rs11218343    11 121435587    T    C 0.0383622 -0.0711 0.0204
    ## 27   rs9787911    11 131769402    T    C 0.4269170  0.0058 0.0079
    ## 28 rs117394726    NA        NA <NA> <NA>        NA      NA     NA
    ## 29  rs17125924    14  53391680    A    G 0.0913328  0.0096 0.0125
    ## 30  rs12590654    14  92938855    G    A 0.3385200 -0.0113 0.0083
    ## 31    rs383902    15  59034174    C    T 0.3333300  0.0015 0.0083
    ## 32  rs28588186    16  19910313    C    G 0.1988990 -0.0238 0.0099
    ## 33  rs62039712    NA        NA <NA> <NA>        NA      NA     NA
    ## 34  rs34971488    NA        NA <NA> <NA>        NA      NA     NA
    ## 35   rs2632516    17  56409089    G    C 0.4437050  0.0232 0.0081
    ## 36  rs12151021    NA        NA <NA> <NA>        NA      NA     NA
    ## 37   rs8111708    19  18558876    A    G 0.3473480  0.0070 0.0081
    ## 38 rs111358663    NA        NA <NA> <NA>        NA      NA     NA
    ## 39   rs4803765    NA        NA <NA> <NA>        NA      NA     NA
    ## 40  rs12972156    NA        NA <NA> <NA>        NA      NA     NA
    ## 41 rs117310449    NA        NA <NA> <NA>        NA      NA     NA
    ## 42  rs73033507    NA        NA <NA> <NA>        NA      NA     NA
    ## 43 rs114533385    NA        NA <NA> <NA>        NA      NA     NA
    ## 44 rs118004808    NA        NA <NA> <NA>        NA      NA     NA
    ## 45 rs139995984    NA        NA <NA> <NA>        NA      NA     NA
    ## 46  rs80182863    NA        NA <NA> <NA>        NA      NA     NA
    ## 47   rs6014724    20  54998544    A    G 0.0892383  0.0243 0.0135
    ## 48   rs2830489    21  28148191    C    T 0.2782740  0.0040 0.0087
    ## 49 rs138727474    NA        NA <NA> <NA>        NA      NA     NA
    ##             Z         P      N           TRAIT
    ## 1  -0.3431370 0.7287000 572804 Type_2_Diabetes
    ## 2          NA        NA     NA            <NA>
    ## 3          NA        NA     NA            <NA>
    ## 4  -0.7333333 0.4601000 572634 Type_2_Diabetes
    ## 5          NA        NA     NA            <NA>
    ## 6   2.0666667 0.0394400 560972 Type_2_Diabetes
    ## 7   0.1089494 0.9140000 573314 Type_2_Diabetes
    ## 8          NA        NA     NA            <NA>
    ## 9          NA        NA     NA            <NA>
    ## 10  0.3417720 0.7368000 564021 Type_2_Diabetes
    ## 11         NA        NA     NA            <NA>
    ## 12         NA        NA     NA            <NA>
    ## 13         NA        NA     NA            <NA>
    ## 14         NA        NA     NA            <NA>
    ## 15  1.7654300 0.0757000 573198 Type_2_Diabetes
    ## 16         NA        NA     NA            <NA>
    ## 17 -1.3789474 0.1698000 577476 Type_2_Diabetes
    ## 18         NA        NA     NA            <NA>
    ## 19 -0.8500000 0.3987000 557096 Type_2_Diabetes
    ## 20         NA        NA     NA            <NA>
    ## 21         NA        NA     NA            <NA>
    ## 22         NA        NA     NA            <NA>
    ## 23 -2.0875000 0.0359900 569527 Type_2_Diabetes
    ## 24 -2.2250000 0.0259600 578432 Type_2_Diabetes
    ## 25  1.2222200 0.2188000 576925 Type_2_Diabetes
    ## 26 -3.4852941 0.0005019 572734 Type_2_Diabetes
    ## 27  0.7341772 0.4656000 566993 Type_2_Diabetes
    ## 28         NA        NA     NA            <NA>
    ## 29  0.7680000 0.4424000 593826 Type_2_Diabetes
    ## 30 -1.3614458 0.1769000 561903 Type_2_Diabetes
    ## 31  0.1807229 0.8543000 569081 Type_2_Diabetes
    ## 32 -2.4040404 0.0161500 567529 Type_2_Diabetes
    ## 33         NA        NA     NA            <NA>
    ## 34         NA        NA     NA            <NA>
    ## 35  2.8641975 0.0042800 564389 Type_2_Diabetes
    ## 36         NA        NA     NA            <NA>
    ## 37  0.8641975 0.3876000 570699 Type_2_Diabetes
    ## 38         NA        NA     NA            <NA>
    ## 39         NA        NA     NA            <NA>
    ## 40         NA        NA     NA            <NA>
    ## 41         NA        NA     NA            <NA>
    ## 42         NA        NA     NA            <NA>
    ## 43         NA        NA     NA            <NA>
    ## 44         NA        NA     NA            <NA>
    ## 45         NA        NA     NA            <NA>
    ## 46         NA        NA     NA            <NA>
    ## 47  1.8000000 0.0728200 570493 Type_2_Diabetes
    ## 48  0.4597701 0.6428000 573704 Type_2_Diabetes
    ## 49         NA        NA     NA            <NA>

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1    rs6733839  rs4663105 0.896576 0.995501 TC/CA  NA     2 127891427
    ## 2   rs35868327 rs13182752 1.000000 1.000000 GA/TG  NA     5  52672171
    ## 3   rs73223431  rs2322599 0.995619 1.000000 TA/CG  NA     8  27211910
    ## 4   rs13252043 rs11996416 1.000000 1.000000 TT/CC  NA     8  71505146
    ## 5    rs7584040       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 6   rs10933431       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 7    rs6822989       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 8   rs34665982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 9  rs114812713       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 10   rs1385742       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 11 rs143429938       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 12 rs117240937       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 13   rs6559689       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14  rs12416487       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15 rs117394726       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16  rs62039712       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17  rs34971488       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18  rs12151021       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19 rs111358663       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20   rs4803765       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21  rs12972156       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22 rs117310449       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23  rs73033507       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24 rs114533385       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25 rs118004808       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 26 rs139995984       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 27  rs80182863       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 28 rs138727474       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy        AF    BETA     SE          Z       P      N
    ## 1          A         C 0.4333620 -0.0072 0.0080 -0.9000000 0.37250 559586
    ## 2          G         A 0.0243139  0.0562 0.0248  2.2661290 0.02366 573704
    ## 3          G         A 0.3654730 -0.0065 0.0081 -0.8024691 0.42300 570421
    ## 4          C         T 0.0941713 -0.0165 0.0134 -1.2313433 0.22070 573588
    ## 5       <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 6       <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 7       <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 8       <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 9       <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 10      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 11      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 12      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 13      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 14      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 15      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 16      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 17      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 18      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 19      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 20      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 21      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 22      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 23      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 24      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 25      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 26      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 27      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ## 28      <NA>      <NA>        NA      NA     NA         NA      NA     NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1  Type_2_Diabetes    T         C    C         A    T    C          TRUE
    ## 2  Type_2_Diabetes    G         A    T         G    G    T          TRUE
    ## 3  Type_2_Diabetes    T         A    C         G    T    C          TRUE
    ## 4  Type_2_Diabetes    T         T    C         C    T    C          TRUE
    ## 5             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 7             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 8             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 9             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 10            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 11            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 12            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 13            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 14            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 15            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 16            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 17            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 18            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 19            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 20            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 21            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 22            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 23            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 24            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 25            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 26            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 27            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 28            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Diabetes datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs11168036                      G                     T
    ## 2  rs11218343                      C                     T
    ## 3  rs11767557                      C                     T
    ## 4  rs12590654                      A                     G
    ## 5  rs13252043                      T                     C
    ## 6   rs1582763                      A                     G
    ## 7  rs17125924                      G                     A
    ## 8   rs2632516                      C                     G
    ## 9   rs2830489                      T                     C
    ## 10 rs28588186                      G                     C
    ## 11 rs28660482                      A                     T
    ## 12 rs35695568                      T                     G
    ## 13 rs35868327                      A                     T
    ## 14  rs3740688                      T                     G
    ## 15   rs383902                      T                     C
    ## 16  rs3851179                      C                     T
    ## 17  rs6014724                      G                     A
    ## 18  rs6733839                      T                     C
    ## 19   rs679515                      C                     T
    ## 20  rs6805148                      C                     A
    ## 21 rs73223431                      T                     C
    ## 22  rs8111708                      G                     A
    ## 23   rs867230                      A                     C
    ## 24  rs9649710                      G                     A
    ## 25  rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    T       -0.0754       0.0027
    ## 2                      C                    T       -0.2053      -0.0711
    ## 3                      C                    T       -0.1028      -0.0131
    ## 4                      A                    G       -0.0906      -0.0113
    ## 5                      T                    C        0.1140      -0.0165
    ## 6                      A                    G       -0.1232      -0.0178
    ## 7                      G                    A        0.1222       0.0096
    ## 8                      C                    G       -0.0748       0.0232
    ## 9                      T                    C       -0.0837       0.0040
    ## 10                     G                    C       -0.0880      -0.0238
    ## 11                     A                    T        0.2220       0.0028
    ## 12                     T                    G        0.1152      -0.0099
    ## 13                     G                    T       -0.3753       0.0562
    ## 14                     T                    G        0.0935      -0.0167
    ## 15                     T                    C       -0.0698       0.0015
    ## 16                     C                    T        0.1198       0.0099
    ## 17                     G                    A       -0.1319       0.0243
    ## 18                     T                    C        0.1693      -0.0072
    ## 19                     C                    T       -0.1508      -0.0035
    ## 20                     C                    A       -0.1293       0.0279
    ## 21                     T                    C        0.0936      -0.0065
    ## 22                     G                    A        0.0696       0.0070
    ## 23                     A                    C        0.1333      -0.0068
    ## 24                     G                    A        0.0676       0.0143
    ## 25                     C                    T        0.0662       0.0058
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5033   0.5186650  FALSE       FALSE     FALSE     JAhFO5
    ## 2        0.0401   0.0383622  FALSE       FALSE     FALSE     JAhFO5
    ## 3        0.1968   0.2125140  FALSE       FALSE     FALSE     JAhFO5
    ## 4        0.3353   0.3385200  FALSE       FALSE     FALSE     JAhFO5
    ## 5        0.0984   0.0941713  FALSE       FALSE     FALSE     JAhFO5
    ## 6        0.3729   0.3784000  FALSE       FALSE     FALSE     JAhFO5
    ## 7        0.0926   0.0913328  FALSE       FALSE     FALSE     JAhFO5
    ## 8        0.4402   0.4437050  FALSE        TRUE      TRUE     JAhFO5
    ## 9        0.2882   0.2782740  FALSE       FALSE     FALSE     JAhFO5
    ## 10       0.1981   0.1988990  FALSE        TRUE     FALSE     JAhFO5
    ## 11       0.0243   0.0237538  FALSE        TRUE     FALSE     JAhFO5
    ## 12       0.0922   0.0937488  FALSE       FALSE     FALSE     JAhFO5
    ## 13       0.0132   0.0243139   TRUE        TRUE     FALSE     JAhFO5
    ## 14       0.5524   0.5450590  FALSE       FALSE     FALSE     JAhFO5
    ## 15       0.3274   0.3333300  FALSE       FALSE     FALSE     JAhFO5
    ## 16       0.6410   0.6295750  FALSE       FALSE     FALSE     JAhFO5
    ## 17       0.0920   0.0892383  FALSE       FALSE     FALSE     JAhFO5
    ## 18       0.4067   0.4333620  FALSE       FALSE     FALSE     JAhFO5
    ## 19       0.8126   0.8220730  FALSE       FALSE     FALSE     JAhFO5
    ## 20       0.0864   0.0911389  FALSE       FALSE     FALSE     JAhFO5
    ## 21       0.3669   0.3654730  FALSE       FALSE     FALSE     JAhFO5
    ## 22       0.3427   0.3473480  FALSE       FALSE     FALSE     JAhFO5
    ## 23       0.6029   0.5879020  FALSE       FALSE     FALSE     JAhFO5
    ## 24       0.6331   0.6095800  FALSE       FALSE     FALSE     JAhFO5
    ## 25       0.4249   0.4269170  FALSE       FALSE     FALSE     JAhFO5
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   139707439     0.0079  0.3417720    0.7368000
    ## 2           11   121435587     0.0204 -3.4852941    0.0005019
    ## 3            7   143109139     0.0095 -1.3789474    0.1698000
    ## 4           14    92938855     0.0083 -1.3614458    0.1769000
    ## 5            8    71505146     0.0134 -1.2313433    0.2207000
    ## 6           11    60021948     0.0080 -2.2250000    0.0259600
    ## 7           14    53391680     0.0125  0.7680000    0.4424000
    ## 8           17    56409089     0.0081  2.8641975    0.0042800
    ## 9           21    28148191     0.0087  0.4597701    0.6428000
    ## 10          16    19910313     0.0099 -2.4040404    0.0161500
    ## 11           4    66245059     0.0257  0.1089494    0.9140000
    ## 12           2   186794162     0.0135 -0.7333333    0.4601000
    ## 13           5    52672171     0.0248  2.2661290    0.0236600
    ## 14          11    47380340     0.0080 -2.0875000    0.0359900
    ## 15          15    59034174     0.0083  0.1807229    0.8543000
    ## 16          11    85868640     0.0081  1.2222200    0.2188000
    ## 17          20    54998544     0.0135  1.8000000    0.0728200
    ## 18           2   127891427     0.0080 -0.9000000    0.3725000
    ## 19           1   207750568     0.0102 -0.3431370    0.7287000
    ## 20           3    45101639     0.0135  2.0666667    0.0394400
    ## 21           8    27211910     0.0081 -0.8024691    0.4230000
    ## 22          19    18558876     0.0081  0.8641975    0.3876000
    ## 23           8    27468503     0.0080 -0.8500000    0.3987000
    ## 24           7    50322832     0.0081  1.7654300    0.0757000
    ## 25          11   131769402     0.0079  0.7341772    0.4656000
    ##    samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1              564021 Xue2018diab            TRUE            reported
    ## 2              572734 Xue2018diab            TRUE            reported
    ## 3              577476 Xue2018diab            TRUE            reported
    ## 4              561903 Xue2018diab            TRUE            reported
    ## 5              573588 Xue2018diab            TRUE            reported
    ## 6              578432 Xue2018diab            TRUE            reported
    ## 7              593826 Xue2018diab            TRUE            reported
    ## 8              564389 Xue2018diab            TRUE            reported
    ## 9              573704 Xue2018diab            TRUE            reported
    ## 10             567529 Xue2018diab            TRUE            reported
    ## 11             573314 Xue2018diab            TRUE            reported
    ## 12             572634 Xue2018diab            TRUE            reported
    ## 13             573704 Xue2018diab            TRUE            reported
    ## 14             569527 Xue2018diab            TRUE            reported
    ## 15             569081 Xue2018diab            TRUE            reported
    ## 16             576925 Xue2018diab            TRUE            reported
    ## 17             570493 Xue2018diab            TRUE            reported
    ## 18             559586 Xue2018diab            TRUE            reported
    ## 19             572804 Xue2018diab            TRUE            reported
    ## 20             560972 Xue2018diab            TRUE            reported
    ## 21             570421 Xue2018diab            TRUE            reported
    ## 22             570699 Xue2018diab            TRUE            reported
    ## 23             557096 Xue2018diab            TRUE            reported
    ## 24             573198 Xue2018diab            TRUE            reported
    ## 25             566993 Xue2018diab            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE         rs13252043        rs11996416                 T
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13          TRUE         rs35868327        rs13182752                 G
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18          TRUE          rs6733839         rs4663105                 T
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21          TRUE         rs73223431         rs2322599                 T
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24            NA               <NA>              <NA>              <NA>
    ## 25            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            5
    ## 2               <NA>             <NA>             <NA>           11
    ## 3               <NA>             <NA>             <NA>            7
    ## 4               <NA>             <NA>             <NA>           14
    ## 5                  C                T                C            8
    ## 6               <NA>             <NA>             <NA>           11
    ## 7               <NA>             <NA>             <NA>           14
    ## 8               <NA>             <NA>             <NA>           17
    ## 9               <NA>             <NA>             <NA>           21
    ## 10              <NA>             <NA>             <NA>           16
    ## 11              <NA>             <NA>             <NA>            4
    ## 12              <NA>             <NA>             <NA>            2
    ## 13                 T                A                G            5
    ## 14              <NA>             <NA>             <NA>           11
    ## 15              <NA>             <NA>             <NA>           15
    ## 16              <NA>             <NA>             <NA>           11
    ## 17              <NA>             <NA>             <NA>           20
    ## 18                 C                C                A            2
    ## 19              <NA>             <NA>             <NA>            1
    ## 20              <NA>             <NA>             <NA>            3
    ## 21                 C                A                G            8
    ## 22              <NA>             <NA>             <NA>           19
    ## 23              <NA>             <NA>             <NA>            8
    ## 24              <NA>             <NA>             <NA>            7
    ## 25              <NA>             <NA>             <NA>           11
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     139707439      0.0143  -5.272730     1.432e-07               63926
    ## 2     121435587      0.0369  -5.563690     2.633e-08               63926
    ## 3     143109139      0.0182  -5.648350     1.561e-08               63926
    ## 4      92938855      0.0157  -5.770701     8.729e-09               63926
    ## 5      71551628      0.0237   4.810127     1.570e-06               63926
    ## 6      60021948      0.0149  -8.268456     1.186e-16               63926
    ## 7      53391680      0.0246   4.967480     6.621e-07               63926
    ## 8      56409089      0.0147  -5.088435     3.671e-07               63926
    ## 9      28148191      0.0162  -5.166667     2.422e-07               63926
    ## 10     19910313      0.0181  -4.861880     1.115e-06               63926
    ## 11     66245059      0.0475   4.673684     2.900e-06               63926
    ## 12    186794162      0.0247   4.663968     3.200e-06               63926
    ## 13     52665230      0.0760  -4.938158     7.796e-07               63926
    ## 14     47380340      0.0144   6.493056     9.702e-11               63926
    ## 15     59034174      0.0151  -4.622517     3.812e-06               63926
    ## 16     85868640      0.0148   8.094590     5.809e-16               63926
    ## 17     54998544      0.0259  -5.092660     3.652e-07               63926
    ## 18    127892810      0.0154  10.993506     4.022e-28               63926
    ## 19    207750568      0.0183  -8.240440     1.555e-16               63926
    ## 20     45101639      0.0257  -5.031130     4.774e-07               63926
    ## 21     27219987      0.0153   6.117647     8.342e-10               63926
    ## 22     18558876      0.0151   4.609270     3.946e-06               63926
    ## 23     27468503      0.0158   8.436709     3.492e-17               63926
    ## 24     50322832      0.0148   4.567570     4.794e-06               63926
    ## 25    131769402      0.0144   4.597220     4.386e-06               63926
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 2  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 3  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 4  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 5  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 6  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 7  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 8  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 9  Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 10 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 11 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 12 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 13 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 14 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 15 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 16 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 17 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 18 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 19 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 20 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 21 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 22 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 23 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 24 Kunkle2019load             TRUE             reported      QtuNCv      2
    ## 25 Kunkle2019load             TRUE             reported      QtuNCv      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    1.647610e-05         1.000
    ## 2     TRUE           TRUE 5e-06    4.906906e-03         0.023
    ## 3     TRUE           TRUE 5e-06    1.408120e-04         1.000
    ## 4     TRUE           TRUE 5e-06    1.042480e-04         1.000
    ## 5     TRUE           TRUE 5e-06    3.540966e-04         1.000
    ## 6     TRUE           TRUE 5e-06    2.925371e-04         0.782
    ## 7     TRUE           TRUE 5e-06    6.144045e-05         1.000
    ## 8    FALSE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06    3.071613e-05         1.000
    ## 10    TRUE           TRUE 5e-06    5.266121e-04         0.391
    ## 11    TRUE           TRUE 5e-06    7.509657e-07         1.000
    ## 12    TRUE           TRUE 5e-06    1.459116e-04         1.000
    ## 13   FALSE           TRUE 5e-06              NA            NA
    ## 14    TRUE           TRUE 5e-06    3.643593e-04         0.460
    ## 15    TRUE           TRUE 5e-06    7.337804e-06         1.000
    ## 16    TRUE           TRUE 5e-06    7.300176e-05         1.000
    ## 17    TRUE           TRUE 5e-06    7.463229e-04         1.000
    ## 18    TRUE           TRUE 5e-06    1.367240e-04         1.000
    ## 19    TRUE           TRUE 5e-06    1.215636e-06         1.000
    ## 20    TRUE           TRUE 5e-06    9.580219e-04         0.276
    ## 21    TRUE           TRUE 5e-06    7.062806e-05         1.000
    ## 22    TRUE           TRUE 5e-06    3.602467e-05         1.000
    ## 23    TRUE           TRUE 5e-06    9.774755e-05         1.000
    ## 24    TRUE           TRUE 5e-06    1.821810e-04         1.000
    ## 25    TRUE           TRUE 5e-06    2.326837e-05         1.000
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2          FALSE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8             NA
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13            NA
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

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
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha      NCP      Power
    ## 1            FALSE   0.01362974 38.39141  0.05 1.666392 0.25229880
    ## 2             TRUE   0.01314253 38.68327  0.05 0.189559 0.07198422

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

Table 6 presents the MR causal estimates of genetically predicted LOAD
on Diabetes. <br>

**Table 6** MR causaul estimates for LOAD on Diabetes

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 2      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 3      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 4      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   23  0.01642087 0.01808554
    ## 2                           Weighted median   23 -0.02846101 0.02863091
    ## 3                             Weighted mode   23 -0.02928740 0.04303268
    ## 4                                  MR Egger   23 -0.02025447 0.09201433
    ##        pval
    ## 1 0.3639016
    ## 2 0.3201909
    ## 3 0.5032345
    ## 4 0.8279012

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Diabetes and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 2      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 48.48121   21 0.0005911193
    ## 2 Inverse variance weighted 48.88389   22 0.0008281695

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load     0.004159197
    ##            se      pval
    ## 1 0.009958762 0.6804481

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome       exposure    pt outliers_removed
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          1 53.35954 0.003

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 2      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 3      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 4      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   22  0.005117824 0.01839275
    ## 2                           Weighted median   22 -0.034916873 0.02978253
    ## 3                             Weighted mode   22 -0.029324018 0.04410527
    ## 4                                  MR Egger   22 -0.091341805 0.08406332
    ##        pval
    ## 1 0.7808187
    ## 2 0.2410387
    ## 3 0.5133732
    ## 4 0.2901439

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ## 2      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 34.97099   20 0.02025934
    ## 2 Inverse variance weighted 37.48358   21 0.01480465

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      QtuNCv     JAhFO5 Xue2018diab Kunkle2019load      0.01077386
    ##            se      pval
    ## 1 0.008987721 0.2446439

<br>
