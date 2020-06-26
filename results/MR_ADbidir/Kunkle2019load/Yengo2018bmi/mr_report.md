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

### Outcome: BMI

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in BMI

    ##            SNP CHROM       POS  REF  ALT      AF    BETA     SE          Z
    ## 1     rs679515    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 2    rs7584040    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 3    rs6733839    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 4   rs35695568    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 5   rs10933431    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 6    rs6805148    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 7   rs28660482    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 8    rs6822989    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 9   rs35868327    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 10  rs11168036     5 139707439    T    G 0.51140  0.0089 0.0017  5.2352900
    ## 11  rs34665982    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 12 rs114812713    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 13   rs1385742    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 14 rs143429938    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 15   rs9649710     7  50322832    A    G 0.61900  0.0041 0.0018  2.2777800
    ## 16 rs117240937    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 17  rs11767557     7 143109139    T    C 0.20530  0.0019 0.0021  0.9047620
    ## 18  rs73223431    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 19    rs867230    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 20  rs13252043    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 21   rs6559689     9  85450616    C    T 0.04502 -0.0005 0.0042 -0.1190476
    ## 22  rs12416487    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 23   rs3740688    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 24   rs1582763    11  60021948    G    A 0.38340 -0.0037 0.0018 -2.0555556
    ## 25   rs3851179    11  85868640    T    C 0.64170 -0.0021 0.0018 -1.1666700
    ## 26  rs11218343    11 121435587    T    C 0.03894  0.0032 0.0048  0.6666670
    ## 27   rs9787911    11 131769402    T    C 0.42100 -0.0010 0.0018 -0.5555560
    ## 28 rs117394726    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 29  rs17125924    14  53391680    A    G 0.09431  0.0136 0.0029  4.6896600
    ## 30  rs12590654    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 31    rs383902    15  59034174    C    T 0.33450  0.0068 0.0018  3.7777778
    ## 32  rs28588186    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 33  rs62039712    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 34  rs34971488    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 35   rs2632516    17  56409089    G    C 0.45210  0.0022 0.0018  1.2222222
    ## 36  rs12151021    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 37   rs8111708    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 38 rs111358663    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 39   rs4803765    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 40  rs12972156    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 41 rs117310449    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 42  rs73033507    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 43 rs114533385    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 44 rs118004808    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 45 rs139995984    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 46  rs80182863    NA        NA <NA> <NA>      NA      NA     NA         NA
    ## 47   rs6014724    20  54998544    A    G 0.08741  0.0041 0.0031  1.3225800
    ## 48   rs2830489    21  28148191    C    T 0.29140 -0.0006 0.0019 -0.3157895
    ## 49 rs138727474    NA        NA <NA> <NA>      NA      NA     NA         NA
    ##          P      N TRAIT
    ## 1       NA     NA  <NA>
    ## 2       NA     NA  <NA>
    ## 3       NA     NA  <NA>
    ## 4       NA     NA  <NA>
    ## 5       NA     NA  <NA>
    ## 6       NA     NA  <NA>
    ## 7       NA     NA  <NA>
    ## 8       NA     NA  <NA>
    ## 9       NA     NA  <NA>
    ## 10 2.9e-07 679710   BMI
    ## 11      NA     NA  <NA>
    ## 12      NA     NA  <NA>
    ## 13      NA     NA  <NA>
    ## 14      NA     NA  <NA>
    ## 15 1.9e-02 691698   BMI
    ## 16      NA     NA  <NA>
    ## 17 3.8e-01 679554   BMI
    ## 18      NA     NA  <NA>
    ## 19      NA     NA  <NA>
    ## 20      NA     NA  <NA>
    ## 21 9.1e-01 673835   BMI
    ## 22      NA     NA  <NA>
    ## 23      NA     NA  <NA>
    ## 24 3.8e-02 691486   BMI
    ## 25 2.4e-01 692432   BMI
    ## 26 5.1e-01 673765   BMI
    ## 27 5.9e-01 631464   BMI
    ## 28      NA     NA  <NA>
    ## 29 1.9e-06 771150   BMI
    ## 30      NA     NA  <NA>
    ## 31 1.8e-04 687979   BMI
    ## 32      NA     NA  <NA>
    ## 33      NA     NA  <NA>
    ## 34      NA     NA  <NA>
    ## 35 2.1e-01 682271   BMI
    ## 36      NA     NA  <NA>
    ## 37      NA     NA  <NA>
    ## 38      NA     NA  <NA>
    ## 39      NA     NA  <NA>
    ## 40      NA     NA  <NA>
    ## 41      NA     NA  <NA>
    ## 42      NA     NA  <NA>
    ## 43      NA     NA  <NA>
    ## 44      NA     NA  <NA>
    ## 45      NA     NA  <NA>
    ## 46      NA     NA  <NA>
    ## 47 1.8e-01 686007   BMI
    ## 48 7.6e-01 690892   BMI
    ## 49      NA     NA  <NA>

<br>

**Table 3:** Proxy SNPs for BMI

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1     rs679515  rs4844610 0.944727 0.971971 TA/CC  NA     1 207802552
    ## 2   rs35695568 rs12622932 0.989102 1.000000 TT/GC  NA     2 186782757
    ## 3    rs6805148  rs7611795 1.000000 1.000000 CC/AT  NA     3  45098350
    ## 4   rs28660482 rs10033665 1.000000 1.000000 AC/TA  NA     4  66200389
    ## 5   rs35868327 rs13182752 1.000000 1.000000 GA/TG  NA     5  52672171
    ## 6   rs73223431  rs2322599 0.995619 1.000000 TA/CG  NA     8  27211910
    ## 7     rs867230  rs9331896 0.967195 0.995772 CC/AT  NA     8  27467686
    ## 8   rs13252043  rs7015434 1.000000 1.000000 TT/CC  NA     8  71507697
    ## 9   rs28588186 rs13335003 0.946851 1.000000 GA/CG  NA    16  19905083
    ## 10   rs8111708  rs2303695 0.991240 1.000000 GT/AC  NA    19  18562624
    ## 11  rs12972156  rs2075650 0.915702 0.973544 GG/CA  NA    19  45395619
    ## 12   rs7584040       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 13   rs6733839       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14  rs10933431       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15   rs6822989       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16  rs34665982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17 rs114812713       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18   rs1385742       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19 rs143429938       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20 rs117240937       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 21  rs12416487       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 22   rs3740688       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 23 rs117394726       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 24  rs12590654       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 25  rs62039712       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 26  rs34971488       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 27  rs12151021       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 28 rs111358663       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 29   rs4803765       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 30 rs117310449       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 31  rs73033507       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 32 rs114533385       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 33 rs118004808       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 34 rs139995984       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 35  rs80182863       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 36 rs138727474       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy      AF    BETA     SE           Z       P      N
    ## 1          A         C 0.81090 -0.0006 0.0022  -0.2727270 7.9e-01 691387
    ## 2          C         T 0.09811 -0.0045 0.0030  -1.5000000 1.3e-01 691272
    ## 3          T         C 0.08916 -0.0020 0.0030  -0.6666670 5.1e-01 688424
    ## 4          A         C 0.02134 -0.0207 0.0060  -3.4500000 6.0e-04 671625
    ## 5          G         A 0.02438 -0.0044 0.0057  -0.7719298 4.4e-01 675484
    ## 6          G         A 0.36210 -0.0067 0.0018  -3.7222222 1.9e-04 689126
    ## 7          C         T 0.59240 -0.0002 0.0019  -0.1052632 9.0e-01 614509
    ## 8          C         T 0.09436 -0.0036 0.0030  -1.2000000 2.3e-01 692500
    ## 9          G         A 0.19410 -0.0236 0.0023 -10.2608696 5.5e-25 572820
    ## 10         C         T 0.34040  0.0036 0.0018   2.0000000 4.8e-02 691532
    ## 11         A         G 0.13940 -0.0244 0.0023 -10.6087000 1.5e-25 779741
    ## 12      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 13      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 14      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 15      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 16      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 17      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 18      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 19      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 20      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 21      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 22      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 23      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 24      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 25      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 26      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 27      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 28      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 29      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 30      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 31      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 32      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 33      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 34      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 35      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ## 36      <NA>      <NA>      NA      NA     NA          NA      NA     NA
    ##    TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1    BMI    T         A    C         C    C    T          TRUE
    ## 2    BMI    T         T    G         C    T    G          TRUE
    ## 3    BMI    C         C    A         T    C    A          TRUE
    ## 4    BMI    A         C    T         A    A    T          TRUE
    ## 5    BMI    G         A    T         G    G    T          TRUE
    ## 6    BMI    T         A    C         G    T    C          TRUE
    ## 7    BMI    C         C    A         T    A    C          TRUE
    ## 8    BMI    T         T    C         C    T    C          TRUE
    ## 9    BMI    G         A    C         G    G    C          TRUE
    ## 10   BMI    G         T    A         C    G    A          TRUE
    ## 11   BMI    G         G    C         A    G    C          TRUE
    ## 12  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 13  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 14  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 15  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 16  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 17  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 18  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 19  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 20  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 21  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 22  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 23  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 24  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 25  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 26  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 27  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 28  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 29  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 30  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 31  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 32  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 33  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 34  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 35  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 36  <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and BMI datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs11168036                      G                     T
    ## 2  rs11218343                      C                     T
    ## 3  rs11767557                      C                     T
    ## 4  rs12972156                      G                     C
    ## 5  rs13252043                      T                     C
    ## 6   rs1582763                      A                     G
    ## 7  rs17125924                      G                     A
    ## 8   rs2632516                      C                     G
    ## 9   rs2830489                      T                     C
    ## 10 rs28588186                      G                     C
    ## 11 rs28660482                      A                     T
    ## 12 rs35695568                      T                     G
    ## 13 rs35868327                      A                     T
    ## 14   rs383902                      T                     C
    ## 15  rs3851179                      C                     T
    ## 16  rs6014724                      G                     A
    ## 17  rs6559689                      T                     C
    ## 18   rs679515                      C                     T
    ## 19  rs6805148                      C                     A
    ## 20 rs73223431                      T                     C
    ## 21  rs8111708                      G                     A
    ## 22   rs867230                      A                     C
    ## 23  rs9649710                      G                     A
    ## 24  rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    T       -0.0754       0.0089
    ## 2                      C                    T       -0.2053       0.0032
    ## 3                      C                    T       -0.1028       0.0019
    ## 4                      G                    C        0.9653      -0.0244
    ## 5                      T                    C        0.1140      -0.0036
    ## 6                      A                    G       -0.1232      -0.0037
    ## 7                      G                    A        0.1222       0.0136
    ## 8                      C                    G       -0.0748       0.0022
    ## 9                      T                    C       -0.0837      -0.0006
    ## 10                     G                    C       -0.0880      -0.0236
    ## 11                     A                    T        0.2220      -0.0207
    ## 12                     T                    G        0.1152      -0.0045
    ## 13                     G                    T       -0.3753      -0.0044
    ## 14                     T                    C       -0.0698       0.0068
    ## 15                     C                    T        0.1198      -0.0021
    ## 16                     G                    A       -0.1319       0.0041
    ## 17                     T                    C        0.1585      -0.0005
    ## 18                     C                    T       -0.1508      -0.0006
    ## 19                     C                    A       -0.1293      -0.0020
    ## 20                     T                    C        0.0936      -0.0067
    ## 21                     G                    A        0.0696       0.0036
    ## 22                     A                    C        0.1333      -0.0002
    ## 23                     G                    A        0.0676       0.0041
    ## 24                     C                    T        0.0662      -0.0010
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5033     0.51140  FALSE       FALSE     FALSE     4JuHpb
    ## 2        0.0401     0.03894  FALSE       FALSE     FALSE     4JuHpb
    ## 3        0.1968     0.20530  FALSE       FALSE     FALSE     4JuHpb
    ## 4        0.2027     0.13940  FALSE        TRUE     FALSE     4JuHpb
    ## 5        0.0984     0.09436  FALSE       FALSE     FALSE     4JuHpb
    ## 6        0.3729     0.38340  FALSE       FALSE     FALSE     4JuHpb
    ## 7        0.0926     0.09431  FALSE       FALSE     FALSE     4JuHpb
    ## 8        0.4402     0.45210  FALSE        TRUE      TRUE     4JuHpb
    ## 9        0.2882     0.29140  FALSE       FALSE     FALSE     4JuHpb
    ## 10       0.1981     0.19410  FALSE        TRUE     FALSE     4JuHpb
    ## 11       0.0243     0.02134  FALSE        TRUE     FALSE     4JuHpb
    ## 12       0.0922     0.09811  FALSE       FALSE     FALSE     4JuHpb
    ## 13       0.0132     0.02438   TRUE        TRUE     FALSE     4JuHpb
    ## 14       0.3274     0.33450  FALSE       FALSE     FALSE     4JuHpb
    ## 15       0.6410     0.64170  FALSE       FALSE     FALSE     4JuHpb
    ## 16       0.0920     0.08741  FALSE       FALSE     FALSE     4JuHpb
    ## 17       0.0504     0.04502  FALSE       FALSE     FALSE     4JuHpb
    ## 18       0.8126     0.81090  FALSE       FALSE     FALSE     4JuHpb
    ## 19       0.0864     0.08916  FALSE       FALSE     FALSE     4JuHpb
    ## 20       0.3669     0.36210  FALSE       FALSE     FALSE     4JuHpb
    ## 21       0.3427     0.34040  FALSE       FALSE     FALSE     4JuHpb
    ## 22       0.6029     0.59240  FALSE       FALSE     FALSE     4JuHpb
    ## 23       0.6331     0.61900  FALSE       FALSE     FALSE     4JuHpb
    ## 24       0.4249     0.42100  FALSE       FALSE     FALSE     4JuHpb
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            5   139707439     0.0017   5.2352900      2.9e-07
    ## 2           11   121435587     0.0048   0.6666670      5.1e-01
    ## 3            7   143109139     0.0021   0.9047620      3.8e-01
    ## 4           19    45395619     0.0023 -10.6087000      1.5e-25
    ## 5            8    71507697     0.0030  -1.2000000      2.3e-01
    ## 6           11    60021948     0.0018  -2.0555556      3.8e-02
    ## 7           14    53391680     0.0029   4.6896600      1.9e-06
    ## 8           17    56409089     0.0018   1.2222222      2.1e-01
    ## 9           21    28148191     0.0019  -0.3157895      7.6e-01
    ## 10          16    19905083     0.0023 -10.2608696      5.5e-25
    ## 11           4    66200389     0.0060  -3.4500000      6.0e-04
    ## 12           2   186782757     0.0030  -1.5000000      1.3e-01
    ## 13           5    52672171     0.0057  -0.7719298      4.4e-01
    ## 14          15    59034174     0.0018   3.7777778      1.8e-04
    ## 15          11    85868640     0.0018  -1.1666700      2.4e-01
    ## 16          20    54998544     0.0031   1.3225800      1.8e-01
    ## 17           9    85450616     0.0042  -0.1190476      9.1e-01
    ## 18           1   207802552     0.0022  -0.2727270      7.9e-01
    ## 19           3    45098350     0.0030  -0.6666670      5.1e-01
    ## 20           8    27211910     0.0018  -3.7222222      1.9e-04
    ## 21          19    18562624     0.0018   2.0000000      4.8e-02
    ## 22           8    27467686     0.0019  -0.1052632      9.0e-01
    ## 23           7    50322832     0.0018   2.2777800      1.9e-02
    ## 24          11   131769402     0.0018  -0.5555560      5.9e-01
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1              679710 Yengo2018bmi            TRUE            reported
    ## 2              673765 Yengo2018bmi            TRUE            reported
    ## 3              679554 Yengo2018bmi            TRUE            reported
    ## 4              779741 Yengo2018bmi            TRUE            reported
    ## 5              692500 Yengo2018bmi            TRUE            reported
    ## 6              691486 Yengo2018bmi            TRUE            reported
    ## 7              771150 Yengo2018bmi            TRUE            reported
    ## 8              682271 Yengo2018bmi            TRUE            reported
    ## 9              690892 Yengo2018bmi            TRUE            reported
    ## 10             572820 Yengo2018bmi            TRUE            reported
    ## 11             671625 Yengo2018bmi            TRUE            reported
    ## 12             691272 Yengo2018bmi            TRUE            reported
    ## 13             675484 Yengo2018bmi            TRUE            reported
    ## 14             687979 Yengo2018bmi            TRUE            reported
    ## 15             692432 Yengo2018bmi            TRUE            reported
    ## 16             686007 Yengo2018bmi            TRUE            reported
    ## 17             673835 Yengo2018bmi            TRUE            reported
    ## 18             691387 Yengo2018bmi            TRUE            reported
    ## 19             688424 Yengo2018bmi            TRUE            reported
    ## 20             689126 Yengo2018bmi            TRUE            reported
    ## 21             691532 Yengo2018bmi            TRUE            reported
    ## 22             614509 Yengo2018bmi            TRUE            reported
    ## 23             691698 Yengo2018bmi            TRUE            reported
    ## 24             631464 Yengo2018bmi            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4           TRUE         rs12972156         rs2075650                 G
    ## 5           TRUE         rs13252043         rs7015434                 T
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10          TRUE         rs28588186        rs13335003                 G
    ## 11          TRUE         rs28660482        rs10033665                 A
    ## 12          TRUE         rs35695568        rs12622932                 T
    ## 13          TRUE         rs35868327        rs13182752                 G
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18          TRUE           rs679515         rs4844610                 C
    ## 19          TRUE          rs6805148         rs7611795                 C
    ## 20          TRUE         rs73223431         rs2322599                 T
    ## 21          TRUE          rs8111708         rs2303695                 G
    ## 22          TRUE           rs867230         rs9331896                 A
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            5
    ## 2               <NA>             <NA>             <NA>           11
    ## 3               <NA>             <NA>             <NA>            7
    ## 4                  C                G                A           19
    ## 5                  C                T                C            8
    ## 6               <NA>             <NA>             <NA>           11
    ## 7               <NA>             <NA>             <NA>           14
    ## 8               <NA>             <NA>             <NA>           17
    ## 9               <NA>             <NA>             <NA>           21
    ## 10                 C                A                G           16
    ## 11                 T                C                A            4
    ## 12                 G                T                C            2
    ## 13                 T                A                G            5
    ## 14              <NA>             <NA>             <NA>           15
    ## 15              <NA>             <NA>             <NA>           11
    ## 16              <NA>             <NA>             <NA>           20
    ## 17              <NA>             <NA>             <NA>            9
    ## 18                 T                C                A            1
    ## 19                 A                C                T            3
    ## 20                 C                A                G            8
    ## 21                 A                T                C           19
    ## 22                 C                T                C            8
    ## 23              <NA>             <NA>             <NA>            7
    ## 24              <NA>             <NA>             <NA>           11
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     139707439      0.0143  -5.272730     1.432e-07               63926
    ## 2     121435587      0.0369  -5.563690     2.633e-08               63926
    ## 3     143109139      0.0182  -5.648350     1.561e-08               63926
    ## 4      45387459      0.0189  51.074100    1.000e-200               63926
    ## 5      71551628      0.0237   4.810127     1.570e-06               63926
    ## 6      60021948      0.0149  -8.268456     1.186e-16               63926
    ## 7      53391680      0.0246   4.967480     6.621e-07               63926
    ## 8      56409089      0.0147  -5.088435     3.671e-07               63926
    ## 9      28148191      0.0162  -5.166667     2.422e-07               63926
    ## 10     19910313      0.0181  -4.861880     1.115e-06               63926
    ## 11     66245059      0.0475   4.673684     2.900e-06               63926
    ## 12    186794162      0.0247   4.663968     3.200e-06               63926
    ## 13     52665230      0.0760  -4.938158     7.796e-07               63926
    ## 14     59034174      0.0151  -4.622517     3.812e-06               63926
    ## 15     85868640      0.0148   8.094590     5.809e-16               63926
    ## 16     54998544      0.0259  -5.092660     3.652e-07               63926
    ## 17     85450616      0.0335   4.731343     2.169e-06               63926
    ## 18    207750568      0.0183  -8.240440     1.555e-16               63926
    ## 19     45101639      0.0257  -5.031130     4.774e-07               63926
    ## 20     27219987      0.0153   6.117647     8.342e-10               63926
    ## 21     18558876      0.0151   4.609270     3.946e-06               63926
    ## 22     27468503      0.0158   8.436709     3.492e-17               63926
    ## 23     50322832      0.0148   4.567570     4.794e-06               63926
    ## 24    131769402      0.0144   4.597220     4.386e-06               63926
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 2  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 3  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 4  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 5  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 6  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 7  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 8  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 9  Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 10 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 11 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 12 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 13 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 14 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 15 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 16 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 17 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 18 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 19 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 20 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 21 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 22 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 23 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ## 24 Kunkle2019load             TRUE             reported      Q3nbdN      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    7.192725e-05         <0.02
    ## 2     TRUE           TRUE 5e-06    1.268575e-06             1
    ## 3     TRUE           TRUE 5e-06    7.833477e-07             1
    ## 4     TRUE          FALSE 5e-06              NA          <NA>
    ## 5     TRUE           TRUE 5e-06    6.258017e-06             1
    ## 6     TRUE           TRUE 5e-06    3.055947e-05          0.06
    ## 7     TRUE           TRUE 5e-06    2.387278e-04         <0.02
    ## 8    FALSE           TRUE 5e-06              NA          <NA>
    ## 9     TRUE           TRUE 5e-06    2.332514e-06             1
    ## 10    TRUE          FALSE 5e-06              NA          <NA>
    ## 11    TRUE           TRUE 5e-06    3.597953e-04          0.02
    ## 12    TRUE           TRUE 5e-06    1.169638e-05             1
    ## 13   FALSE           TRUE 5e-06              NA          <NA>
    ## 14    TRUE           TRUE 5e-06    3.947768e-05         <0.02
    ## 15    TRUE           TRUE 5e-06    9.121507e-07             1
    ## 16    TRUE           TRUE 5e-06    8.123781e-06             1
    ## 17    TRUE           TRUE 5e-06    1.371392e-06             1
    ## 18    TRUE           TRUE 5e-06    5.750970e-06             1
    ## 19    TRUE           TRUE 5e-06    1.205968e-05             1
    ## 20    TRUE           TRUE 5e-06    3.706971e-05         <0.02
    ## 21    TRUE           TRUE 5e-06    1.990518e-05          0.26
    ## 22    TRUE           TRUE 5e-06    1.727570e-06             1
    ## 23    TRUE           TRUE 5e-06    2.447781e-05          0.16
    ## 24    TRUE           TRUE 5e-06    1.066271e-07             1
    ##    mrpresso_keep
    ## 1          FALSE
    ## 2           TRUE
    ## 3           TRUE
    ## 4             NA
    ## 5           TRUE
    ## 6           TRUE
    ## 7          FALSE
    ## 8             NA
    ## 9           TRUE
    ## 10            NA
    ## 11         FALSE
    ## 12          TRUE
    ## 13            NA
    ## 14         FALSE
    ## 15          TRUE
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19          TRUE
    ## 20         FALSE
    ## 21          TRUE
    ## 22          TRUE
    ## 23          TRUE
    ## 24          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the BMI GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs12972156          19    45395619    1.000e-200      1.5e-25
    ## 2 rs28588186          16    19905083     1.115e-06      5.5e-25

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

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE  0.010592181 34.20699  0.05 4.85459193 0.59614850
    ## 2             TRUE  0.008513204 36.58337  0.05 0.01026077 0.05117622

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
on BMI. <br>

**Table 6** MR causaul estimates for LOAD on BMI

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 2      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 3      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 4      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   20 -0.010316655 0.004637910
    ## 2                           Weighted median   20 -0.002592372 0.007682446
    ## 3                             Weighted mode   20 -0.006286799 0.009337346
    ## 4                                  MR Egger   20  0.008699961 0.037951065
    ##         pval
    ## 1 0.02612027
    ## 2 0.73578453
    ## 3 0.50886672
    ## 4 0.82126575

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in BMI and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 2      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 105.3021   18 2.342073e-14
    ## 2 Inverse variance weighted 106.9116   19 2.946222e-14

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Yengo2018bmi/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Yengo2018bmi/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load    -0.002099789
    ##            se      pval
    ## 1 0.004003261 0.6063171

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome       exposure    pt
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load 5e-06
    ##   outliers_removed n_outliers  RSSobs   pval
    ## 1            FALSE          5 117.143 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 2      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 3      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 4      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   15  0.0006099287 0.005186847
    ## 2                           Weighted median   15 -0.0015982581 0.007861831
    ## 3                             Weighted mode   15 -0.0054462660 0.011118140
    ## 4                                  MR Egger   15 -0.0309881191 0.022187588
    ##        pval
    ## 1 0.9063914
    ## 2 0.8389057
    ## 3 0.6318240
    ## 4 0.1859097

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Yengo2018bmi/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ## 2      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 19.16382   13 0.1181113
    ## 2 Inverse variance weighted 22.41556   14 0.0704693

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      Q3nbdN     4JuHpb Yengo2018bmi Kunkle2019load     0.003627121
    ##            se      pval
    ## 1 0.002442156 0.1613291

<br>
