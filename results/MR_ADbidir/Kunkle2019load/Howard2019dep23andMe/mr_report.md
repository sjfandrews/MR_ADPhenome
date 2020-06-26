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

### Outcome: Depression

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Depression

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1     rs679515     1 207750568    T    C 0.8186 -0.0005 0.0046 -0.10869600
    ## 2    rs7584040     2 127863224    C    T 0.2270  0.0080 0.0042  1.90476190
    ## 3    rs6733839     2 127892810    C    T 0.3899 -0.0013 0.0037 -0.35135135
    ## 4   rs35695568     2 186794162    G    T 0.0919  0.0050 0.0061  0.81967213
    ## 5   rs10933431     2 233981912    G    C 0.7761  0.0069 0.0044  1.56818182
    ## 6    rs6805148     3  45101639    A    C 0.0893  0.0002 0.0062  0.03225810
    ## 7   rs28660482     4  66245059    T    A 0.0235  0.0011 0.0117  0.09401709
    ## 8    rs6822989     4 104176240    C    T 0.0069  0.0281 0.0229  1.22707424
    ## 9   rs35868327    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 10  rs11168036     5 139707439    T    G 0.5128  0.0107 0.0035  3.05714000
    ## 11  rs34665982    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 12 rs114812713     6  41034000    G    C 0.0257  0.0117 0.0114  1.02631579
    ## 13   rs1385742     6  47595155    A    T 0.6492 -0.0011 0.0037 -0.29729700
    ## 14 rs143429938     7  33721795    C    T 0.0148 -0.0226 0.0164 -1.37804878
    ## 15   rs9649710     7  50322832    A    G 0.6157  0.0002 0.0036  0.05555560
    ## 16 rs117240937     7 127426090    G    A 0.0112 -0.0004 0.0202 -0.01980198
    ## 17  rs11767557     7 143109139    T    C 0.2056  0.0057 0.0043  1.32558000
    ## 18  rs73223431     8  27219987    C    T 0.3616  0.0016 0.0036  0.44444444
    ## 19    rs867230     8  27468503    C    A 0.5894  0.0004 0.0036  0.11111111
    ## 20  rs13252043     8  71551628    C    T 0.0971 -0.0093 0.0060 -1.55000000
    ## 21   rs6559689     9  85450616    C    T 0.0481  0.0176 0.0084  2.09523810
    ## 22  rs12416487    10  11721057    A    T 0.6536  0.0051 0.0038  1.34211000
    ## 23   rs3740688    11  47380340    G    T 0.5448  0.0080 0.0035  2.28571429
    ## 24   rs1582763    11  60021948    G    A 0.3789  0.0001 0.0036  0.02777778
    ## 25   rs3851179    11  85868640    T    C 0.6297 -0.0033 0.0036 -0.91666700
    ## 26  rs11218343    11 121435587    T    C 0.0388 -0.0013 0.0092 -0.14130400
    ## 27   rs9787911    11 131769402    T    C 0.4257  0.0079 0.0036  2.19444000
    ## 28 rs117394726    12 127222883    A    C 0.0380 -0.0080 0.0104 -0.76923100
    ## 29  rs17125924    14  53391680    A    G 0.0914 -0.0132 0.0061 -2.16393000
    ## 30  rs12590654    14  92938855    G    A 0.3406  0.0021 0.0037  0.56756757
    ## 31    rs383902    15  59034174    C    T 0.3340 -0.0006 0.0037 -0.16216216
    ## 32  rs28588186    16  19910313    C    G 0.2004  0.0153 0.0044  3.47727000
    ## 33  rs62039712    16  79355857    G    A 0.1236  0.0185 0.0060  3.08333333
    ## 34  rs34971488    16  81779775    G    A 0.2151 -0.0083 0.0046 -1.80434783
    ## 35   rs2632516    17  56409089    G    C 0.4451  0.0011 0.0036  0.30555556
    ## 36  rs12151021    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 37   rs8111708    19  18558876    A    G 0.3436 -0.0090 0.0037 -2.43243000
    ## 38 rs111358663    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 39   rs4803765    19  45358448    C    T 0.0113  0.0026 0.0206  0.12621359
    ## 40  rs12972156    19  45387459    C    G 0.1464 -0.0009 0.0050 -0.18000000
    ## 41 rs117310449    19  45393516    C    T 0.0107  0.0342 0.0178  1.92134831
    ## 42  rs73033507    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 43 rs114533385    19  45436753    C    T 0.0118  0.0033 0.0180  0.18333333
    ## 44 rs118004808    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 45 rs139995984    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 46  rs80182863    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 47   rs6014724    20  54998544    A    G 0.0924  0.0010 0.0061  0.16393400
    ## 48   rs2830489    21  28148191    C    T 0.2822 -0.0039 0.0039 -1.00000000
    ## 49 rs138727474    22  21926584    C    T 0.0335  0.0022 0.0109  0.20183486
    ##            P      N      TRAIT
    ## 1  0.9141000 807553 Depression
    ## 2  0.0587200 807553 Depression
    ## 3  0.7273000 807553 Depression
    ## 4  0.4160000 807553 Depression
    ## 5  0.1196000 807553 Depression
    ## 6  0.9745000 807553 Depression
    ## 7  0.9250000 807553 Depression
    ## 8  0.2193000 807553 Depression
    ## 9         NA     NA       <NA>
    ## 10 0.0024140 807553 Depression
    ## 11        NA     NA       <NA>
    ## 12 0.3042000 807553 Depression
    ## 13 0.7680000 807553 Depression
    ## 14 0.1688000 807553 Depression
    ## 15 0.9560000 807553 Depression
    ## 16 0.9842000 807553 Depression
    ## 17 0.1883000 807553 Depression
    ## 18 0.6592000 807553 Depression
    ## 19 0.9122000 807553 Depression
    ## 20 0.1240000 807553 Depression
    ## 21 0.0353500 807553 Depression
    ## 22 0.1829000 807553 Depression
    ## 23 0.0233100 807553 Depression
    ## 24 0.9780000 807553 Depression
    ## 25 0.3630000 807553 Depression
    ## 26 0.8873000 807553 Depression
    ## 27 0.0294300 807553 Depression
    ## 28 0.4408000 807553 Depression
    ## 29 0.0317600 807553 Depression
    ## 30 0.5733000 807553 Depression
    ## 31 0.8722000 807553 Depression
    ## 32 0.0005589 807553 Depression
    ## 33 0.0022140 807553 Depression
    ## 34 0.0733600 807553 Depression
    ## 35 0.7617000 807553 Depression
    ## 36        NA     NA       <NA>
    ## 37 0.0157800 807553 Depression
    ## 38        NA     NA       <NA>
    ## 39 0.8994000 807553 Depression
    ## 40 0.8582000 807553 Depression
    ## 41 0.0551800 807553 Depression
    ## 42        NA     NA       <NA>
    ## 43 0.8548000 807553 Depression
    ## 44        NA     NA       <NA>
    ## 45        NA     NA       <NA>
    ## 46        NA     NA       <NA>
    ## 47 0.8708000 807553 Depression
    ## 48 0.3210000 807553 Depression
    ## 49 0.8398000 807553 Depression

<br>

**Table 3:** Proxy SNPs for Depression

    ##    target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs35868327 rs13182752     1      1 GA/TG  NA     5 52672171         G
    ## 2  rs34665982       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 3  rs12151021       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4 rs111358663       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 5  rs73033507       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 6 rs118004808       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 7 rs139995984       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 8  rs80182863       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy     AF   BETA     SE        Z      P      N      TRAIT  ref
    ## 1         A 0.0236 0.0137 0.0116 1.181034 0.2371 807553 Depression    G
    ## 2      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 3      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 4      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 5      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 6      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 7      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ## 8      <NA>     NA     NA     NA       NA     NA     NA       <NA> <NA>
    ##   ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1         A TRUE         G    G TRUE          TRUE
    ## 2      <NA>   NA      <NA> <NA>   NA            NA
    ## 3      <NA>   NA      <NA> <NA>   NA            NA
    ## 4      <NA>   NA      <NA> <NA>   NA            NA
    ## 5      <NA>   NA      <NA> <NA>   NA            NA
    ## 6      <NA>   NA      <NA> <NA>   NA            NA
    ## 7      <NA>   NA      <NA> <NA>   NA            NA
    ## 8      <NA>   NA      <NA> <NA>   NA            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Depression datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10933431                      C                     G
    ## 2   rs11168036                      G                     T
    ## 3   rs11218343                      C                     T
    ## 4  rs114533385                      T                     C
    ## 5  rs114812713                      C                     G
    ## 6  rs117240937                      A                     G
    ## 7  rs117310449                      T                     C
    ## 8  rs117394726                      C                     A
    ## 9   rs11767557                      C                     T
    ## 10  rs12416487                      T                     A
    ## 11  rs12590654                      A                     G
    ## 12  rs12972156                      G                     C
    ## 13  rs13252043                      T                     C
    ## 14   rs1385742                      T                     A
    ## 15 rs138727474                      T                     C
    ## 16 rs143429938                      T                     C
    ## 17   rs1582763                      A                     G
    ## 18  rs17125924                      G                     A
    ## 19   rs2632516                      C                     G
    ## 20   rs2830489                      T                     C
    ## 21  rs28588186                      G                     C
    ## 22  rs28660482                      A                     T
    ## 23  rs34971488                      A                     G
    ## 24  rs35695568                      T                     G
    ## 25  rs35868327                      A                     T
    ## 26   rs3740688                      T                     G
    ## 27    rs383902                      T                     C
    ## 28   rs3851179                      C                     T
    ## 29   rs4803765                      T                     C
    ## 30   rs6014724                      G                     A
    ## 31  rs62039712                      A                     G
    ## 32   rs6559689                      T                     C
    ## 33   rs6733839                      T                     C
    ## 34    rs679515                      C                     T
    ## 35   rs6805148                      C                     A
    ## 36   rs6822989                      T                     C
    ## 37  rs73223431                      T                     C
    ## 38   rs7584040                      T                     C
    ## 39   rs8111708                      G                     A
    ## 40    rs867230                      A                     C
    ## 41   rs9649710                      G                     A
    ## 42   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    G        0.1001       0.0069
    ## 2                      G                    T       -0.0754       0.0107
    ## 3                      C                    T       -0.2053      -0.0013
    ## 4                      T                    C        0.8281       0.0033
    ## 5                      C                    G        0.2980       0.0117
    ## 6                      A                    G       -0.3122      -0.0004
    ## 7                      T                    C        0.9879       0.0342
    ## 8                      C                    A        0.2193      -0.0080
    ## 9                      C                    T       -0.1028       0.0057
    ## 10                     T                    A        0.0850       0.0051
    ## 11                     A                    G       -0.0906       0.0021
    ## 12                     G                    C        0.9653      -0.0009
    ## 13                     T                    C        0.1140      -0.0093
    ## 14                     T                    A       -0.0876      -0.0011
    ## 15                     T                    C       -0.2515       0.0022
    ## 16                     T                    C        0.3535      -0.0226
    ## 17                     A                    G       -0.1232       0.0001
    ## 18                     G                    A        0.1222      -0.0132
    ## 19                     C                    G       -0.0748       0.0011
    ## 20                     T                    C       -0.0837      -0.0039
    ## 21                     G                    C       -0.0880       0.0153
    ## 22                     A                    T        0.2220       0.0011
    ## 23                     A                    G        0.0940      -0.0083
    ## 24                     T                    G        0.1152       0.0050
    ## 25                     G                    T       -0.3753       0.0137
    ## 26                     T                    G        0.0935       0.0080
    ## 27                     T                    C       -0.0698      -0.0006
    ## 28                     C                    T        0.1198      -0.0033
    ## 29                     T                    C        0.7165       0.0026
    ## 30                     G                    A       -0.1319       0.0010
    ## 31                     A                    G        0.1528       0.0185
    ## 32                     T                    C        0.1585       0.0176
    ## 33                     T                    C        0.1693      -0.0013
    ## 34                     C                    T       -0.1508      -0.0005
    ## 35                     C                    A       -0.1293       0.0002
    ## 36                     T                    C        0.4361       0.0281
    ## 37                     T                    C        0.0936       0.0016
    ## 38                     T                    C        0.0862       0.0080
    ## 39                     G                    A        0.0696      -0.0090
    ## 40                     A                    C        0.1333       0.0004
    ## 41                     G                    A        0.0676       0.0002
    ## 42                     C                    T        0.0662       0.0079
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774      0.7761  FALSE        TRUE     FALSE     8PrthB
    ## 2        0.5033      0.5128  FALSE       FALSE     FALSE     8PrthB
    ## 3        0.0401      0.0388  FALSE       FALSE     FALSE     8PrthB
    ## 4        0.0210      0.0118  FALSE       FALSE     FALSE     8PrthB
    ## 5        0.0301      0.0257  FALSE        TRUE     FALSE     8PrthB
    ## 6        0.0173      0.0112  FALSE       FALSE     FALSE     8PrthB
    ## 7        0.0130      0.0107  FALSE       FALSE     FALSE     8PrthB
    ## 8        0.0400      0.0380  FALSE       FALSE     FALSE     8PrthB
    ## 9        0.1968      0.2056  FALSE       FALSE     FALSE     8PrthB
    ## 10       0.6519      0.6536  FALSE        TRUE     FALSE     8PrthB
    ## 11       0.3353      0.3406  FALSE       FALSE     FALSE     8PrthB
    ## 12       0.2027      0.1464  FALSE        TRUE     FALSE     8PrthB
    ## 13       0.0984      0.0971  FALSE       FALSE     FALSE     8PrthB
    ## 14       0.6344      0.6492  FALSE        TRUE     FALSE     8PrthB
    ## 15       0.0269      0.0335  FALSE       FALSE     FALSE     8PrthB
    ## 16       0.0211      0.0148  FALSE       FALSE     FALSE     8PrthB
    ## 17       0.3729      0.3789  FALSE       FALSE     FALSE     8PrthB
    ## 18       0.0926      0.0914  FALSE       FALSE     FALSE     8PrthB
    ## 19       0.4402      0.4451  FALSE        TRUE      TRUE     8PrthB
    ## 20       0.2882      0.2822  FALSE       FALSE     FALSE     8PrthB
    ## 21       0.1981      0.2004  FALSE        TRUE     FALSE     8PrthB
    ## 22       0.0243      0.0235  FALSE        TRUE     FALSE     8PrthB
    ## 23       0.2205      0.2151  FALSE       FALSE     FALSE     8PrthB
    ## 24       0.0922      0.0919  FALSE       FALSE     FALSE     8PrthB
    ## 25       0.0132      0.0236   TRUE        TRUE     FALSE     8PrthB
    ## 26       0.5524      0.5448  FALSE       FALSE     FALSE     8PrthB
    ## 27       0.3274      0.3340  FALSE       FALSE     FALSE     8PrthB
    ## 28       0.6410      0.6297  FALSE       FALSE     FALSE     8PrthB
    ## 29       0.0243      0.0113  FALSE       FALSE     FALSE     8PrthB
    ## 30       0.0920      0.0924  FALSE       FALSE     FALSE     8PrthB
    ## 31       0.1158      0.1236  FALSE       FALSE     FALSE     8PrthB
    ## 32       0.0504      0.0481  FALSE       FALSE     FALSE     8PrthB
    ## 33       0.4067      0.3899  FALSE       FALSE     FALSE     8PrthB
    ## 34       0.8126      0.8186  FALSE       FALSE     FALSE     8PrthB
    ## 35       0.0864      0.0893  FALSE       FALSE     FALSE     8PrthB
    ## 36       0.0082      0.0069  FALSE       FALSE     FALSE     8PrthB
    ## 37       0.3669      0.3616  FALSE       FALSE     FALSE     8PrthB
    ## 38       0.2261      0.2270  FALSE       FALSE     FALSE     8PrthB
    ## 39       0.3427      0.3436  FALSE       FALSE     FALSE     8PrthB
    ## 40       0.6029      0.5894  FALSE       FALSE     FALSE     8PrthB
    ## 41       0.6331      0.6157  FALSE       FALSE     FALSE     8PrthB
    ## 42       0.4249      0.4257  FALSE       FALSE     FALSE     8PrthB
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            2   233981912     0.0044  1.56818182    0.1196000
    ## 2            5   139707439     0.0035  3.05714000    0.0024140
    ## 3           11   121435587     0.0092 -0.14130400    0.8873000
    ## 4           19    45436753     0.0180  0.18333333    0.8548000
    ## 5            6    41034000     0.0114  1.02631579    0.3042000
    ## 6            7   127426090     0.0202 -0.01980198    0.9842000
    ## 7           19    45393516     0.0178  1.92134831    0.0551800
    ## 8           12   127222883     0.0104 -0.76923100    0.4408000
    ## 9            7   143109139     0.0043  1.32558000    0.1883000
    ## 10          10    11721057     0.0038  1.34211000    0.1829000
    ## 11          14    92938855     0.0037  0.56756757    0.5733000
    ## 12          19    45387459     0.0050 -0.18000000    0.8582000
    ## 13           8    71551628     0.0060 -1.55000000    0.1240000
    ## 14           6    47595155     0.0037 -0.29729700    0.7680000
    ## 15          22    21926584     0.0109  0.20183486    0.8398000
    ## 16           7    33721795     0.0164 -1.37804878    0.1688000
    ## 17          11    60021948     0.0036  0.02777778    0.9780000
    ## 18          14    53391680     0.0061 -2.16393000    0.0317600
    ## 19          17    56409089     0.0036  0.30555556    0.7617000
    ## 20          21    28148191     0.0039 -1.00000000    0.3210000
    ## 21          16    19910313     0.0044  3.47727000    0.0005589
    ## 22           4    66245059     0.0117  0.09401709    0.9250000
    ## 23          16    81779775     0.0046 -1.80434783    0.0733600
    ## 24           2   186794162     0.0061  0.81967213    0.4160000
    ## 25           5    52672171     0.0116  1.18103448    0.2371000
    ## 26          11    47380340     0.0035  2.28571429    0.0233100
    ## 27          15    59034174     0.0037 -0.16216216    0.8722000
    ## 28          11    85868640     0.0036 -0.91666700    0.3630000
    ## 29          19    45358448     0.0206  0.12621359    0.8994000
    ## 30          20    54998544     0.0061  0.16393400    0.8708000
    ## 31          16    79355857     0.0060  3.08333333    0.0022140
    ## 32           9    85450616     0.0084  2.09523810    0.0353500
    ## 33           2   127892810     0.0037 -0.35135135    0.7273000
    ## 34           1   207750568     0.0046 -0.10869600    0.9141000
    ## 35           3    45101639     0.0062  0.03225810    0.9745000
    ## 36           4   104176240     0.0229  1.22707424    0.2193000
    ## 37           8    27219987     0.0036  0.44444444    0.6592000
    ## 38           2   127863224     0.0042  1.90476190    0.0587200
    ## 39          19    18558876     0.0037 -2.43243000    0.0157800
    ## 40           8    27468503     0.0036  0.11111111    0.9122000
    ## 41           7    50322832     0.0036  0.05555560    0.9560000
    ## 42          11   131769402     0.0036  2.19444000    0.0294300
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              807553 Howard2019dep23andMe            TRUE
    ## 2              807553 Howard2019dep23andMe            TRUE
    ## 3              807553 Howard2019dep23andMe            TRUE
    ## 4              807553 Howard2019dep23andMe            TRUE
    ## 5              807553 Howard2019dep23andMe            TRUE
    ## 6              807553 Howard2019dep23andMe            TRUE
    ## 7              807553 Howard2019dep23andMe            TRUE
    ## 8              807553 Howard2019dep23andMe            TRUE
    ## 9              807553 Howard2019dep23andMe            TRUE
    ## 10             807553 Howard2019dep23andMe            TRUE
    ## 11             807553 Howard2019dep23andMe            TRUE
    ## 12             807553 Howard2019dep23andMe            TRUE
    ## 13             807553 Howard2019dep23andMe            TRUE
    ## 14             807553 Howard2019dep23andMe            TRUE
    ## 15             807553 Howard2019dep23andMe            TRUE
    ## 16             807553 Howard2019dep23andMe            TRUE
    ## 17             807553 Howard2019dep23andMe            TRUE
    ## 18             807553 Howard2019dep23andMe            TRUE
    ## 19             807553 Howard2019dep23andMe            TRUE
    ## 20             807553 Howard2019dep23andMe            TRUE
    ## 21             807553 Howard2019dep23andMe            TRUE
    ## 22             807553 Howard2019dep23andMe            TRUE
    ## 23             807553 Howard2019dep23andMe            TRUE
    ## 24             807553 Howard2019dep23andMe            TRUE
    ## 25             807553 Howard2019dep23andMe            TRUE
    ## 26             807553 Howard2019dep23andMe            TRUE
    ## 27             807553 Howard2019dep23andMe            TRUE
    ## 28             807553 Howard2019dep23andMe            TRUE
    ## 29             807553 Howard2019dep23andMe            TRUE
    ## 30             807553 Howard2019dep23andMe            TRUE
    ## 31             807553 Howard2019dep23andMe            TRUE
    ## 32             807553 Howard2019dep23andMe            TRUE
    ## 33             807553 Howard2019dep23andMe            TRUE
    ## 34             807553 Howard2019dep23andMe            TRUE
    ## 35             807553 Howard2019dep23andMe            TRUE
    ## 36             807553 Howard2019dep23andMe            TRUE
    ## 37             807553 Howard2019dep23andMe            TRUE
    ## 38             807553 Howard2019dep23andMe            TRUE
    ## 39             807553 Howard2019dep23andMe            TRUE
    ## 40             807553 Howard2019dep23andMe            TRUE
    ## 41             807553 Howard2019dep23andMe            TRUE
    ## 42             807553 Howard2019dep23andMe            TRUE
    ##    pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1             reported            NA               <NA>              <NA>
    ## 2             reported            NA               <NA>              <NA>
    ## 3             reported            NA               <NA>              <NA>
    ## 4             reported            NA               <NA>              <NA>
    ## 5             reported            NA               <NA>              <NA>
    ## 6             reported            NA               <NA>              <NA>
    ## 7             reported            NA               <NA>              <NA>
    ## 8             reported            NA               <NA>              <NA>
    ## 9             reported            NA               <NA>              <NA>
    ## 10            reported            NA               <NA>              <NA>
    ## 11            reported            NA               <NA>              <NA>
    ## 12            reported            NA               <NA>              <NA>
    ## 13            reported            NA               <NA>              <NA>
    ## 14            reported            NA               <NA>              <NA>
    ## 15            reported            NA               <NA>              <NA>
    ## 16            reported            NA               <NA>              <NA>
    ## 17            reported            NA               <NA>              <NA>
    ## 18            reported            NA               <NA>              <NA>
    ## 19            reported            NA               <NA>              <NA>
    ## 20            reported            NA               <NA>              <NA>
    ## 21            reported            NA               <NA>              <NA>
    ## 22            reported            NA               <NA>              <NA>
    ## 23            reported            NA               <NA>              <NA>
    ## 24            reported            NA               <NA>              <NA>
    ## 25            reported          TRUE         rs35868327        rs13182752
    ## 26            reported            NA               <NA>              <NA>
    ## 27            reported            NA               <NA>              <NA>
    ## 28            reported            NA               <NA>              <NA>
    ## 29            reported            NA               <NA>              <NA>
    ## 30            reported            NA               <NA>              <NA>
    ## 31            reported            NA               <NA>              <NA>
    ## 32            reported            NA               <NA>              <NA>
    ## 33            reported            NA               <NA>              <NA>
    ## 34            reported            NA               <NA>              <NA>
    ## 35            reported            NA               <NA>              <NA>
    ## 36            reported            NA               <NA>              <NA>
    ## 37            reported            NA               <NA>              <NA>
    ## 38            reported            NA               <NA>              <NA>
    ## 39            reported            NA               <NA>              <NA>
    ## 40            reported            NA               <NA>              <NA>
    ## 41            reported            NA               <NA>              <NA>
    ## 42            reported            NA               <NA>              <NA>
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>                NA             <NA>             <NA>
    ## 2               <NA>                NA             <NA>             <NA>
    ## 3               <NA>                NA             <NA>             <NA>
    ## 4               <NA>                NA             <NA>             <NA>
    ## 5               <NA>                NA             <NA>             <NA>
    ## 6               <NA>                NA             <NA>             <NA>
    ## 7               <NA>                NA             <NA>             <NA>
    ## 8               <NA>                NA             <NA>             <NA>
    ## 9               <NA>                NA             <NA>             <NA>
    ## 10              <NA>                NA             <NA>             <NA>
    ## 11              <NA>                NA             <NA>             <NA>
    ## 12              <NA>                NA             <NA>             <NA>
    ## 13              <NA>                NA             <NA>             <NA>
    ## 14              <NA>                NA             <NA>             <NA>
    ## 15              <NA>                NA             <NA>             <NA>
    ## 16              <NA>                NA             <NA>             <NA>
    ## 17              <NA>                NA             <NA>             <NA>
    ## 18              <NA>                NA             <NA>             <NA>
    ## 19              <NA>                NA             <NA>             <NA>
    ## 20              <NA>                NA             <NA>             <NA>
    ## 21              <NA>                NA             <NA>             <NA>
    ## 22              <NA>                NA             <NA>             <NA>
    ## 23              <NA>                NA             <NA>             <NA>
    ## 24              <NA>                NA             <NA>             <NA>
    ## 25                 G              TRUE                A                G
    ## 26              <NA>                NA             <NA>             <NA>
    ## 27              <NA>                NA             <NA>             <NA>
    ## 28              <NA>                NA             <NA>             <NA>
    ## 29              <NA>                NA             <NA>             <NA>
    ## 30              <NA>                NA             <NA>             <NA>
    ## 31              <NA>                NA             <NA>             <NA>
    ## 32              <NA>                NA             <NA>             <NA>
    ## 33              <NA>                NA             <NA>             <NA>
    ## 34              <NA>                NA             <NA>             <NA>
    ## 35              <NA>                NA             <NA>             <NA>
    ## 36              <NA>                NA             <NA>             <NA>
    ## 37              <NA>                NA             <NA>             <NA>
    ## 38              <NA>                NA             <NA>             <NA>
    ## 39              <NA>                NA             <NA>             <NA>
    ## 40              <NA>                NA             <NA>             <NA>
    ## 41              <NA>                NA             <NA>             <NA>
    ## 42              <NA>                NA             <NA>             <NA>
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             2    233981912      0.0194   5.159794     2.552e-07
    ## 2             5    139707439      0.0143  -5.272730     1.432e-07
    ## 3            11    121435587      0.0369  -5.563690     2.633e-08
    ## 4            19     45436753      0.0661  12.527988     5.434e-36
    ## 5             6     41034000      0.0431   6.914153     4.467e-12
    ## 6             7    127426090      0.0672  -4.645833     3.350e-06
    ## 7            19     45393516      0.0691  14.296671     2.275e-46
    ## 8            12    127222883      0.0465   4.716130     2.459e-06
    ## 9             7    143109139      0.0182  -5.648350     1.561e-08
    ## 10           10     11721057      0.0154   5.519480     3.417e-08
    ## 11           14     92938855      0.0157  -5.770701     8.729e-09
    ## 12           19     45387459      0.0189  51.074100    1.000e-200
    ## 13            8     71551628      0.0237   4.810127     1.570e-06
    ## 14            6     47595155      0.0157  -5.579620     2.232e-08
    ## 15           22     21926584      0.0545  -4.614679     3.904e-06
    ## 16            7     33721795      0.0769   4.596879     4.253e-06
    ## 17           11     60021948      0.0149  -8.268456     1.186e-16
    ## 18           14     53391680      0.0246   4.967480     6.621e-07
    ## 19           17     56409089      0.0147  -5.088435     3.671e-07
    ## 20           21     28148191      0.0162  -5.166667     2.422e-07
    ## 21           16     19910313      0.0181  -4.861880     1.115e-06
    ## 22            4     66245059      0.0475   4.673684     2.900e-06
    ## 23           16     81779775      0.0198   4.747475     2.067e-06
    ## 24            2    186794162      0.0247   4.663968     3.200e-06
    ## 25            5     52665230      0.0760  -4.938158     7.796e-07
    ## 26           11     47380340      0.0144   6.493056     9.702e-11
    ## 27           15     59034174      0.0151  -4.622517     3.812e-06
    ## 28           11     85868640      0.0148   8.094590     5.809e-16
    ## 29           19     45358448      0.0610  11.745902     7.131e-32
    ## 30           20     54998544      0.0259  -5.092660     3.652e-07
    ## 31           16     79355857      0.0288   5.305556     1.171e-07
    ## 32            9     85450616      0.0335   4.731343     2.169e-06
    ## 33            2    127892810      0.0154  10.993506     4.022e-28
    ## 34            1    207750568      0.0183  -8.240440     1.555e-16
    ## 35            3     45101639      0.0257  -5.031130     4.774e-07
    ## 36            4    104176240      0.0940   4.639362     3.487e-06
    ## 37            8     27219987      0.0153   6.117647     8.342e-10
    ## 38            2    127863224      0.0172   5.011628     5.341e-07
    ## 39           19     18558876      0.0151   4.609270     3.946e-06
    ## 40            8     27468503      0.0158   8.436709     3.492e-17
    ## 41            7     50322832      0.0148   4.567570     4.794e-06
    ## 42           11    131769402      0.0144   4.597220     4.386e-06
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                63926 Kunkle2019load             TRUE
    ## 2                63926 Kunkle2019load             TRUE
    ## 3                63926 Kunkle2019load             TRUE
    ## 4                63926 Kunkle2019load             TRUE
    ## 5                63926 Kunkle2019load             TRUE
    ## 6                63926 Kunkle2019load             TRUE
    ## 7                63926 Kunkle2019load             TRUE
    ## 8                63926 Kunkle2019load             TRUE
    ## 9                63926 Kunkle2019load             TRUE
    ## 10               63926 Kunkle2019load             TRUE
    ## 11               63926 Kunkle2019load             TRUE
    ## 12               63926 Kunkle2019load             TRUE
    ## 13               63926 Kunkle2019load             TRUE
    ## 14               63926 Kunkle2019load             TRUE
    ## 15               63926 Kunkle2019load             TRUE
    ## 16               63926 Kunkle2019load             TRUE
    ## 17               63926 Kunkle2019load             TRUE
    ## 18               63926 Kunkle2019load             TRUE
    ## 19               63926 Kunkle2019load             TRUE
    ## 20               63926 Kunkle2019load             TRUE
    ## 21               63926 Kunkle2019load             TRUE
    ## 22               63926 Kunkle2019load             TRUE
    ## 23               63926 Kunkle2019load             TRUE
    ## 24               63926 Kunkle2019load             TRUE
    ## 25               63926 Kunkle2019load             TRUE
    ## 26               63926 Kunkle2019load             TRUE
    ## 27               63926 Kunkle2019load             TRUE
    ## 28               63926 Kunkle2019load             TRUE
    ## 29               63926 Kunkle2019load             TRUE
    ## 30               63926 Kunkle2019load             TRUE
    ## 31               63926 Kunkle2019load             TRUE
    ## 32               63926 Kunkle2019load             TRUE
    ## 33               63926 Kunkle2019load             TRUE
    ## 34               63926 Kunkle2019load             TRUE
    ## 35               63926 Kunkle2019load             TRUE
    ## 36               63926 Kunkle2019load             TRUE
    ## 37               63926 Kunkle2019load             TRUE
    ## 38               63926 Kunkle2019load             TRUE
    ## 39               63926 Kunkle2019load             TRUE
    ## 40               63926 Kunkle2019load             TRUE
    ## 41               63926 Kunkle2019load             TRUE
    ## 42               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 2              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 3              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 4              reported      JP9TPn      2    TRUE          FALSE 5e-06
    ## 5              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 6              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 7              reported      JP9TPn      2    TRUE          FALSE 5e-06
    ## 8              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 9              reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 10             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 11             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 12             reported      JP9TPn      2    TRUE          FALSE 5e-06
    ## 13             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 14             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 15             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 16             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 17             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 18             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 19             reported      JP9TPn      2   FALSE           TRUE 5e-06
    ## 20             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 21             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 22             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 23             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 24             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 25             reported      JP9TPn      2   FALSE           TRUE 5e-06
    ## 26             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 27             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 28             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 29             reported      JP9TPn      2    TRUE          FALSE 5e-06
    ## 30             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 31             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 32             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 33             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 34             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 35             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 36             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 37             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 38             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 39             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 40             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 41             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ## 42             reported      JP9TPn      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.946452e-05        1.0000          TRUE
    ## 2     1.203502e-04        0.0576          TRUE
    ## 3     1.560333e-06        1.0000          TRUE
    ## 4               NA            NA            NA
    ## 5     1.432933e-04        1.0000          TRUE
    ## 6     7.899487e-08        1.0000          TRUE
    ## 7               NA            NA            NA
    ## 8     6.822053e-05        1.0000          TRUE
    ## 9     3.480740e-05        1.0000          TRUE
    ## 10    2.693226e-05        1.0000          TRUE
    ## 11    4.830316e-06        1.0000          TRUE
    ## 12              NA            NA            NA
    ## 13    9.038309e-05        1.0000          TRUE
    ## 14    1.198533e-06        1.0000          TRUE
    ## 15    5.559101e-06        1.0000          TRUE
    ## 16    5.405367e-04        1.0000          TRUE
    ## 17    2.461272e-08        1.0000          TRUE
    ## 18    1.823650e-04        0.9720          TRUE
    ## 19              NA            NA            NA
    ## 20    1.562962e-05        1.0000          TRUE
    ## 21    2.443058e-04        0.0072         FALSE
    ## 22    1.062395e-06        1.0000          TRUE
    ## 23    7.233214e-05        1.0000          TRUE
    ## 24    2.540163e-05        1.0000          TRUE
    ## 25              NA            NA            NA
    ## 26    6.792670e-05        0.6408          TRUE
    ## 27    3.393154e-07        1.0000          TRUE
    ## 28    1.247468e-05        1.0000          TRUE
    ## 29              NA            NA            NA
    ## 30    1.156455e-06        1.0000          TRUE
    ## 31    3.619163e-04        0.0576          TRUE
    ## 32    3.182142e-04        1.0000          TRUE
    ## 33    2.299680e-06        1.0000          TRUE
    ## 34    2.158952e-07        1.0000          TRUE
    ## 35    6.545473e-08        1.0000          TRUE
    ## 36    8.075323e-04        1.0000          TRUE
    ## 37    2.608398e-06        1.0000          TRUE
    ## 38    6.606938e-05        1.0000          TRUE
    ## 39    8.428998e-05        0.4824          TRUE
    ## 40    1.383806e-07        1.0000          TRUE
    ## 41    3.115347e-08        1.0000          TRUE
    ## 42    6.403451e-05        0.8712          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Depression
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs114533385          19    45436753     5.434e-36      0.85480
    ## 2 rs117310449          19    45393516     2.275e-46      0.05518
    ## 3  rs12972156          19    45387459    1.000e-200      0.85820
    ## 4   rs4803765          19    45358448     7.131e-32      0.89940

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

    ##   outliers_removed pve.exposure        F Alpha         NCP      Power
    ## 1            FALSE   0.01895440 34.28819  0.05 1.32462e-06 0.05000015
    ## 2             TRUE   0.01858058 34.55966  0.05 2.84796e-01 0.08321298

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
on Depression. <br>

**Table 6** MR causaul estimates for LOAD on Depression

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 2      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 3      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 4      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   36  0.0003911493 0.006879112
    ## 2                           Weighted median   36  0.0022582845 0.010530482
    ## 3                             Weighted mode   36 -0.0012359612 0.013195921
    ## 4                                  MR Egger   36  0.0146394431 0.029669081
    ##        pval
    ## 1 0.9546564
    ## 2 0.8301945
    ## 3 0.9259115
    ## 4 0.6248852

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Depression and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 2      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 79.10685   34 1.864947e-05
    ## 2 Inverse variance weighted 79.72017   35 2.431241e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Howard2019dep23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Howard2019dep23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##   egger_intercept         se      pval
    ## 1    -0.001716618 0.00334348 0.6109763

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome       exposure    pt
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 83.44898 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 2      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 3      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 4      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   35  0.003753237 0.006945158
    ## 2                           Weighted median   35  0.002959013 0.010582317
    ## 3                             Weighted mode   35 -0.001006331 0.013733477
    ## 4                                  MR Egger   35  0.009385761 0.027850904
    ##        pval
    ## 1 0.5889140
    ## 2 0.7797701
    ## 3 0.9420161
    ## 4 0.7382507

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ## 2      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 67.24449   33 0.0003953157
    ## 2 Inverse variance weighted 67.33993   34 0.0005678311

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      JP9TPn     8PrthB Howard2019dep23andMe Kunkle2019load
    ##   egger_intercept          se      pval
    ## 1    -0.000683467 0.003158142 0.8299972

<br>
