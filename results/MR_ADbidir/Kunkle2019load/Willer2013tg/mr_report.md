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

### Outcome: Triglycerides

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Triglycerides

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1     rs679515    NA        NA <NA> <NA>        NA      NA     NA
    ## 2    rs7584040    NA        NA <NA> <NA>        NA      NA     NA
    ## 3    rs6733839    NA        NA <NA> <NA>        NA      NA     NA
    ## 4   rs35695568    NA        NA <NA> <NA>        NA      NA     NA
    ## 5   rs10933431    NA        NA <NA> <NA>        NA      NA     NA
    ## 6    rs6805148     3  45101639    A    C 0.0840951  0.0032 0.0088
    ## 7   rs28660482    NA        NA <NA> <NA>        NA      NA     NA
    ## 8    rs6822989    NA        NA <NA> <NA>        NA      NA     NA
    ## 9   rs35868327    NA        NA <NA> <NA>        NA      NA     NA
    ## 10  rs11168036     5 139707439    T    G 0.4613010  0.0012 0.0048
    ## 11  rs34665982    NA        NA <NA> <NA>        NA      NA     NA
    ## 12 rs114812713    NA        NA <NA> <NA>        NA      NA     NA
    ## 13   rs1385742    NA        NA <NA> <NA>        NA      NA     NA
    ## 14 rs143429938    NA        NA <NA> <NA>        NA      NA     NA
    ## 15   rs9649710     7  50322832    A    G 0.6418450  0.0009 0.0048
    ## 16 rs117240937    NA        NA <NA> <NA>        NA      NA     NA
    ## 17  rs11767557     7 143109139    T    C 0.2031590  0.0067 0.0062
    ## 18  rs73223431    NA        NA <NA> <NA>        NA      NA     NA
    ## 19    rs867230    NA        NA <NA> <NA>        NA      NA     NA
    ## 20  rs13252043    NA        NA <NA> <NA>        NA      NA     NA
    ## 21   rs6559689     9  85450616    C    T 0.0598694  0.0237 0.0129
    ## 22  rs12416487    NA        NA <NA> <NA>        NA      NA     NA
    ## 23   rs3740688    NA        NA <NA> <NA>        NA      NA     NA
    ## 24   rs1582763    11  60021948    G    A 0.3276300 -0.0145 0.0048
    ## 25   rs3851179    11  85868640    T    C 0.6671510 -0.0118 0.0048
    ## 26  rs11218343    11 121435587    T    C 0.0344953 -0.0179 0.0168
    ## 27   rs9787911    NA        NA <NA> <NA>        NA      NA     NA
    ## 28 rs117394726    NA        NA <NA> <NA>        NA      NA     NA
    ## 29  rs17125924    14  53391680    A    G 0.0994194  0.0008 0.0059
    ## 30  rs12590654    NA        NA <NA> <NA>        NA      NA     NA
    ## 31    rs383902    15  59034174    C    T 0.3428210  0.0081 0.0049
    ## 32  rs28588186    NA        NA <NA> <NA>        NA      NA     NA
    ## 33  rs62039712    NA        NA <NA> <NA>        NA      NA     NA
    ## 34  rs34971488    NA        NA <NA> <NA>        NA      NA     NA
    ## 35   rs2632516    17  56409089    G    C 0.4639560  0.0075 0.0049
    ## 36  rs12151021    NA        NA <NA> <NA>        NA      NA     NA
    ## 37   rs8111708    NA        NA <NA> <NA>        NA      NA     NA
    ## 38 rs111358663    NA        NA <NA> <NA>        NA      NA     NA
    ## 39   rs4803765    NA        NA <NA> <NA>        NA      NA     NA
    ## 40  rs12972156    NA        NA <NA> <NA>        NA      NA     NA
    ## 41 rs117310449    NA        NA <NA> <NA>        NA      NA     NA
    ## 42  rs73033507    NA        NA <NA> <NA>        NA      NA     NA
    ## 43 rs114533385    NA        NA <NA> <NA>        NA      NA     NA
    ## 44 rs118004808    NA        NA <NA> <NA>        NA      NA     NA
    ## 45 rs139995984    NA        NA <NA> <NA>        NA      NA     NA
    ## 46  rs80182863    NA        NA <NA> <NA>        NA      NA     NA
    ## 47   rs6014724    20  54998544    A    G 0.0886512 -0.0066 0.0090
    ## 48   rs2830489    21  28148191    C    T 0.3248270  0.0006 0.0054
    ## 49 rs138727474    NA        NA <NA> <NA>        NA      NA     NA
    ##             Z        P         N         TRAIT
    ## 1          NA       NA        NA          <NA>
    ## 2          NA       NA        NA          <NA>
    ## 3          NA       NA        NA          <NA>
    ## 4          NA       NA        NA          <NA>
    ## 5          NA       NA        NA          <NA>
    ## 6   0.3636364 0.826300  86762.71 Triglycerides
    ## 7          NA       NA        NA          <NA>
    ## 8          NA       NA        NA          <NA>
    ## 9          NA       NA        NA          <NA>
    ## 10  0.2500000 0.896200  91013.00 Triglycerides
    ## 11         NA       NA        NA          <NA>
    ## 12         NA       NA        NA          <NA>
    ## 13         NA       NA        NA          <NA>
    ## 14         NA       NA        NA          <NA>
    ## 15  0.1875000 0.493200  91013.00 Triglycerides
    ## 16         NA       NA        NA          <NA>
    ## 17  1.0806452 0.450600  90970.00 Triglycerides
    ## 18         NA       NA        NA          <NA>
    ## 19         NA       NA        NA          <NA>
    ## 20         NA       NA        NA          <NA>
    ## 21  1.8372093 0.122900  84856.00 Triglycerides
    ## 22         NA       NA        NA          <NA>
    ## 23         NA       NA        NA          <NA>
    ## 24 -3.0208300 0.007691  90845.00 Triglycerides
    ## 25 -2.4583300 0.009366  91013.00 Triglycerides
    ## 26 -1.0654800 0.309800  82932.00 Triglycerides
    ## 27         NA       NA        NA          <NA>
    ## 28         NA       NA        NA          <NA>
    ## 29  0.1355932 0.668600 171721.55 Triglycerides
    ## 30         NA       NA        NA          <NA>
    ## 31  1.6530612 0.099100  89485.00 Triglycerides
    ## 32         NA       NA        NA          <NA>
    ## 33         NA       NA        NA          <NA>
    ## 34         NA       NA        NA          <NA>
    ## 35  1.5306122 0.065550  89485.00 Triglycerides
    ## 36         NA       NA        NA          <NA>
    ## 37         NA       NA        NA          <NA>
    ## 38         NA       NA        NA          <NA>
    ## 39         NA       NA        NA          <NA>
    ## 40         NA       NA        NA          <NA>
    ## 41         NA       NA        NA          <NA>
    ## 42         NA       NA        NA          <NA>
    ## 43         NA       NA        NA          <NA>
    ## 44         NA       NA        NA          <NA>
    ## 45         NA       NA        NA          <NA>
    ## 46         NA       NA        NA          <NA>
    ## 47 -0.7333330 0.685700  89485.00 Triglycerides
    ## 48  0.1111111 0.797300  89485.00 Triglycerides
    ## 49         NA       NA        NA          <NA>

<br>

**Table 3:** Proxy SNPs for Triglycerides

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1     rs679515  rs4844610 0.944727 0.971971 TA/CC  NA     1 207802552
    ## 2   rs35695568 rs12622932 0.989102 1.000000 TT/GC  NA     2 186782757
    ## 3   rs28660482 rs10033665 1.000000 1.000000 AC/TA  NA     4  66200389
    ## 4   rs35868327 rs13182752 1.000000 1.000000 GA/TG  NA     5  52672171
    ## 5   rs73223431  rs2322599 0.995619 1.000000 TA/CG  NA     8  27211910
    ## 6     rs867230 rs11136000 0.894555 0.973765 CT/AC  NA     8  27464519
    ## 7   rs13252043  rs7015434 1.000000 1.000000 TT/CC  NA     8  71507697
    ## 8    rs9787911 rs10894473 0.939657 0.975278 CC/TA  NA    11 131759684
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
    ##    REF.proxy ALT.proxy        AF    BETA     SE          Z         P
    ## 1          A         C 0.7801380  0.0028 0.0060  0.4666667 6.470e-01
    ## 2          C         T 0.0981884 -0.0050 0.0085 -0.5882350 5.043e-01
    ## 3          A         C 0.0289855  0.0102 0.0146  0.6986301 7.833e-01
    ## 4          G         A 0.0161583  0.0078 0.0170  0.4588235 8.479e-01
    ## 5          G         A 0.2954880  0.0074 0.0048  1.5416667 1.348e-01
    ## 6          T         C 0.6150760  0.0023 0.0052  0.4423077 9.658e-01
    ## 7          C         T 0.0660377  0.0109 0.0082  1.3292683 4.558e-01
    ## 8          A         C 0.4439590  0.0031 0.0047  0.6595745 7.440e-01
    ## 9          G         A 0.1923770 -0.0007 0.0061 -0.1147540 9.543e-01
    ## 10         C         T 0.3407600  0.0076 0.0050  1.5200000 2.261e-01
    ## 11         A         G 0.1555920  0.0436 0.0049  8.8979592 2.308e-21
    ## 12      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 13      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 14      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 15      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 16      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 17      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 18      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 19      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 20      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 21      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 22      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 23      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 24      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 25      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 26      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 27      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 28      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 29      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 30      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 31      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 32      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 33      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 34      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 35      <NA>      <NA>        NA      NA     NA         NA        NA
    ## 36      <NA>      <NA>        NA      NA     NA         NA        NA
    ##            N         TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1   91013.00 Triglycerides    T         A    C         C    C    T
    ## 2   90991.00 Triglycerides    T         T    G         C    T    G
    ## 3   83204.00 Triglycerides    A         C    T         A    A    T
    ## 4   85952.00 Triglycerides    G         A    T         G    G    T
    ## 5   91013.00 Triglycerides    T         A    C         G    T    C
    ## 6   83165.00 Triglycerides    C         T    A         C    A    C
    ## 7   91013.00 Triglycerides    T         T    C         C    T    C
    ## 8   91013.00 Triglycerides    C         C    T         A    C    T
    ## 9   91563.76 Triglycerides    G         A    C         G    G    C
    ## 10  89485.00 Triglycerides    G         T    A         C    G    A
    ## 11 166072.02 Triglycerides    G         G    C         A    G    C
    ## 12        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 13        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 14        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 15        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 16        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 17        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 18        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 19        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 20        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 21        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 22        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 23        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 24        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 25        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 26        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 27        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 28        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 29        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 30        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 31        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 32        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 33        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 34        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 35        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 36        NA          <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
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
    ## 12            NA
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
    ## 31            NA
    ## 32            NA
    ## 33            NA
    ## 34            NA
    ## 35            NA
    ## 36            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Triglycerides datasets

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
    ## 1                      G                    T       -0.0754       0.0012
    ## 2                      C                    T       -0.2053      -0.0179
    ## 3                      C                    T       -0.1028       0.0067
    ## 4                      G                    C        0.9653       0.0436
    ## 5                      T                    C        0.1140       0.0109
    ## 6                      A                    G       -0.1232      -0.0145
    ## 7                      G                    A        0.1222       0.0008
    ## 8                      C                    G       -0.0748       0.0075
    ## 9                      T                    C       -0.0837       0.0006
    ## 10                     G                    C       -0.0880      -0.0007
    ## 11                     A                    T        0.2220       0.0102
    ## 12                     T                    G        0.1152      -0.0050
    ## 13                     G                    T       -0.3753       0.0078
    ## 14                     T                    C       -0.0698       0.0081
    ## 15                     C                    T        0.1198      -0.0118
    ## 16                     G                    A       -0.1319      -0.0066
    ## 17                     T                    C        0.1585       0.0237
    ## 18                     C                    T       -0.1508       0.0028
    ## 19                     C                    A       -0.1293       0.0032
    ## 20                     T                    C        0.0936       0.0074
    ## 21                     G                    A        0.0696       0.0076
    ## 22                     A                    C        0.1333       0.0023
    ## 23                     G                    A        0.0676       0.0009
    ## 24                     C                    T        0.0662       0.0031
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5033   0.4613010  FALSE       FALSE     FALSE     mLBNjO
    ## 2        0.0401   0.0344953  FALSE       FALSE     FALSE     mLBNjO
    ## 3        0.1968   0.2031590  FALSE       FALSE     FALSE     mLBNjO
    ## 4        0.2027   0.1555920  FALSE        TRUE     FALSE     mLBNjO
    ## 5        0.0984   0.0660377  FALSE       FALSE     FALSE     mLBNjO
    ## 6        0.3729   0.3276300  FALSE       FALSE     FALSE     mLBNjO
    ## 7        0.0926   0.0994194  FALSE       FALSE     FALSE     mLBNjO
    ## 8        0.4402   0.4639560  FALSE        TRUE      TRUE     mLBNjO
    ## 9        0.2882   0.3248270  FALSE       FALSE     FALSE     mLBNjO
    ## 10       0.1981   0.1923770  FALSE        TRUE     FALSE     mLBNjO
    ## 11       0.0243   0.0289855  FALSE        TRUE     FALSE     mLBNjO
    ## 12       0.0922   0.0981884  FALSE       FALSE     FALSE     mLBNjO
    ## 13       0.0132   0.0161583   TRUE        TRUE     FALSE     mLBNjO
    ## 14       0.3274   0.3428210  FALSE       FALSE     FALSE     mLBNjO
    ## 15       0.6410   0.6671510  FALSE       FALSE     FALSE     mLBNjO
    ## 16       0.0920   0.0886512  FALSE       FALSE     FALSE     mLBNjO
    ## 17       0.0504   0.0598694  FALSE       FALSE     FALSE     mLBNjO
    ## 18       0.8126   0.7801380  FALSE       FALSE     FALSE     mLBNjO
    ## 19       0.0864   0.0840951  FALSE       FALSE     FALSE     mLBNjO
    ## 20       0.3669   0.2954880  FALSE       FALSE     FALSE     mLBNjO
    ## 21       0.3427   0.3407600  FALSE       FALSE     FALSE     mLBNjO
    ## 22       0.6029   0.6150760  FALSE       FALSE     FALSE     mLBNjO
    ## 23       0.6331   0.6418450  FALSE       FALSE     FALSE     mLBNjO
    ## 24       0.4249   0.4439590  FALSE       FALSE     FALSE     mLBNjO
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   139707439     0.0048  0.2500000    8.962e-01
    ## 2           11   121435587     0.0168 -1.0654800    3.098e-01
    ## 3            7   143109139     0.0062  1.0806452    4.506e-01
    ## 4           19    45395619     0.0049  8.8979592    2.308e-21
    ## 5            8    71507697     0.0082  1.3292683    4.558e-01
    ## 6           11    60021948     0.0048 -3.0208300    7.691e-03
    ## 7           14    53391680     0.0059  0.1355932    6.686e-01
    ## 8           17    56409089     0.0049  1.5306122    6.555e-02
    ## 9           21    28148191     0.0054  0.1111111    7.973e-01
    ## 10          16    19905083     0.0061 -0.1147540    9.543e-01
    ## 11           4    66200389     0.0146  0.6986301    7.833e-01
    ## 12           2   186782757     0.0085 -0.5882350    5.043e-01
    ## 13           5    52672171     0.0170  0.4588235    8.479e-01
    ## 14          15    59034174     0.0049  1.6530612    9.910e-02
    ## 15          11    85868640     0.0048 -2.4583300    9.366e-03
    ## 16          20    54998544     0.0090 -0.7333330    6.857e-01
    ## 17           9    85450616     0.0129  1.8372093    1.229e-01
    ## 18           1   207802552     0.0060  0.4666667    6.470e-01
    ## 19           3    45101639     0.0088  0.3636364    8.263e-01
    ## 20           8    27211910     0.0048  1.5416667    1.348e-01
    ## 21          19    18562624     0.0050  1.5200000    2.261e-01
    ## 22           8    27464519     0.0052  0.4423077    9.658e-01
    ## 23           7    50322832     0.0048  0.1875000    4.932e-01
    ## 24          11   131759684     0.0047  0.6595745    7.440e-01
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1            91013.00 Willer2013tg            TRUE            reported
    ## 2            82932.00 Willer2013tg            TRUE            reported
    ## 3            90970.00 Willer2013tg            TRUE            reported
    ## 4           166072.02 Willer2013tg            TRUE            reported
    ## 5            91013.00 Willer2013tg            TRUE            reported
    ## 6            90845.00 Willer2013tg            TRUE            reported
    ## 7           171721.55 Willer2013tg            TRUE            reported
    ## 8            89485.00 Willer2013tg            TRUE            reported
    ## 9            89485.00 Willer2013tg            TRUE            reported
    ## 10           91563.76 Willer2013tg            TRUE            reported
    ## 11           83204.00 Willer2013tg            TRUE            reported
    ## 12           90991.00 Willer2013tg            TRUE            reported
    ## 13           85952.00 Willer2013tg            TRUE            reported
    ## 14           89485.00 Willer2013tg            TRUE            reported
    ## 15           91013.00 Willer2013tg            TRUE            reported
    ## 16           89485.00 Willer2013tg            TRUE            reported
    ## 17           84856.00 Willer2013tg            TRUE            reported
    ## 18           91013.00 Willer2013tg            TRUE            reported
    ## 19           86762.71 Willer2013tg            TRUE            reported
    ## 20           91013.00 Willer2013tg            TRUE            reported
    ## 21           89485.00 Willer2013tg            TRUE            reported
    ## 22           83165.00 Willer2013tg            TRUE            reported
    ## 23           91013.00 Willer2013tg            TRUE            reported
    ## 24           91013.00 Willer2013tg            TRUE            reported
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
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20          TRUE         rs73223431         rs2322599                 T
    ## 21          TRUE          rs8111708         rs2303695                 G
    ## 22          TRUE           rs867230        rs11136000                 A
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24          TRUE          rs9787911        rs10894473                 C
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
    ## 19              <NA>             <NA>             <NA>            3
    ## 20                 C                A                G            8
    ## 21                 A                T                C           19
    ## 22                 C                C                T            8
    ## 23              <NA>             <NA>             <NA>            7
    ## 24                 T                C                A           11
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
    ## 1  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 2  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 3  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 4  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 5  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 6  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 7  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 8  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 9  Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 10 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 11 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 12 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 13 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 14 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 15 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 16 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 17 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 18 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 19 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 20 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 21 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 22 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 23 Kunkle2019load             TRUE             reported      diMqpZ      2
    ## 24 Kunkle2019load             TRUE             reported      diMqpZ      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    5.941634e-06         1.000
    ## 2     TRUE           TRUE 5e-06    2.289659e-04         1.000
    ## 3     TRUE           TRUE 5e-06    7.441856e-05         1.000
    ## 4     TRUE          FALSE 5e-06              NA            NA
    ## 5     TRUE           TRUE 5e-06    8.932113e-05         1.000
    ## 6     TRUE           TRUE 5e-06    1.976331e-04         0.084
    ## 7     TRUE           TRUE 5e-06    1.277099e-06         1.000
    ## 8    FALSE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06    3.774392e-06         1.000
    ## 10    TRUE           TRUE 5e-06    4.318575e-07         1.000
    ## 11    TRUE           TRUE 5e-06    5.015588e-05         1.000
    ## 12    TRUE           TRUE 5e-06    4.824470e-05         1.000
    ## 13   FALSE           TRUE 5e-06              NA            NA
    ## 14    TRUE           TRUE 5e-06    8.941088e-05         1.000
    ## 15    TRUE           TRUE 5e-06    2.270053e-04         0.042
    ## 16    TRUE           TRUE 5e-06    2.260982e-05         1.000
    ## 17    TRUE           TRUE 5e-06    4.752967e-04         1.000
    ## 18    TRUE           TRUE 5e-06    3.179864e-05         1.000
    ## 19    TRUE           TRUE 5e-06    2.852602e-05         1.000
    ## 20    TRUE           TRUE 5e-06    4.034145e-05         1.000
    ## 21    TRUE           TRUE 5e-06    4.549385e-05         1.000
    ## 22    TRUE           TRUE 5e-06    9.444963e-08         1.000
    ## 23    TRUE           TRUE 5e-06    1.698459e-08         1.000
    ## 24    TRUE           TRUE 5e-06    4.670166e-06         1.000
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4             NA
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Triglycerides
GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs12972156          19    45395619        1e-200    2.308e-21

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
    ## 1            FALSE   0.01096600 33.74006  0.05 1.511338 0.2332250
    ## 2             TRUE   0.00996283 32.15408  0.05 4.259830 0.5414327

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
on Triglycerides. <br>

**Table 6** MR causaul estimates for LOAD on Triglycerides

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 2      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 3      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 4      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   21 0.015182506 0.01242036
    ## 2                           Weighted median   21 0.009234072 0.01881926
    ## 3                             Weighted mode   21 0.001968966 0.03613045
    ## 4                                  MR Egger   21 0.038878235 0.05469762
    ##        pval
    ## 1 0.2215608
    ## 2 0.6236589
    ## 3 0.9570807
    ## 4 0.4858521

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Triglycerides and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tg/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 2      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 30.70296   19 0.04350620
    ## 2 Inverse variance weighted 31.03380   20 0.05474584

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tg/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tg/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load    -0.002588014
    ##            se      pval
    ## 1 0.005719703 0.6560517

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
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 35.74195 0.041

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 2      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 3      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 4      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   20 0.027267897 0.01306390
    ## 2                           Weighted median   20 0.014520043 0.01962610
    ## 3                             Weighted mode   20 0.002014052 0.03377425
    ## 4                                  MR Egger   20 0.063369527 0.04770373
    ##         pval
    ## 1 0.03686362
    ## 2 0.45940122
    ## 3 0.95307089
    ## 4 0.20064428

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Willer2013tg/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ## 2      diMqpZ     mLBNjO Willer2013tg Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 21.38109   18 0.2606244
    ## 2 Inverse variance weighted 22.12793   19 0.2779358

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      diMqpZ     mLBNjO Willer2013tg Kunkle2019load     -0.00390629
    ##            se      pval
    ## 1 0.004926395 0.4381456

<br>
