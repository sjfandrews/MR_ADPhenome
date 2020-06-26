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

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Diastolic Blood
Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1     rs679515     1 207750568    T    C 0.8191  0.0256 0.0225  1.13778000
    ## 2    rs7584040     2 127863224    C    T 0.2258 -0.0398 0.0208 -1.91346154
    ## 3    rs6733839     2 127892810    C    T 0.3948  0.0468 0.0182  2.57142857
    ## 4   rs35695568     2 186794162    G    T 0.0951  0.0518 0.0296  1.75000000
    ## 5   rs10933431     2 233981912    G    C 0.7794 -0.0286 0.0218 -1.31192661
    ## 6    rs6805148     3  45101639    A    C 0.0900 -0.0568 0.0305 -1.86230000
    ## 7   rs28660482     4  66245059    T    A 0.0259  0.0263 0.0564  0.46631206
    ## 8    rs6822989    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 9   rs35868327    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 10  rs11168036     5 139707439    T    G 0.5127 -0.0526 0.0174 -3.02299000
    ## 11  rs34665982    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 12 rs114812713     6  41034000    G    C 0.0266  0.0716 0.0561  1.27629234
    ## 13   rs1385742     6  47595155    A    T 0.6485  0.0043 0.0186  0.23118300
    ## 14 rs143429938    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 15   rs9649710     7  50322832    A    G 0.6124 -0.0116 0.0178 -0.65168500
    ## 16 rs117240937    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 17  rs11767557     7 143109139    T    C 0.2100  0.0186 0.0215  0.86511600
    ## 18  rs73223431     8  27219987    C    T 0.3663 -0.0084 0.0179 -0.46927374
    ## 19    rs867230     8  27468503    C    A 0.5913  0.0627 0.0181  3.46408840
    ## 20  rs13252043    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 21   rs6559689     9  85450616    C    T 0.0501 -0.0231 0.0413 -0.55932203
    ## 22  rs12416487    10  11721057    A    T 0.6508  0.0133 0.0184  0.72282600
    ## 23   rs3740688    11  47380340    G    T 0.5458  0.1121 0.0174  6.44252874
    ## 24   rs1582763    11  60021948    G    A 0.3750  0.0002 0.0179  0.01117318
    ## 25   rs3851179    11  85868640    T    C 0.6302 -0.0122 0.0179 -0.68156400
    ## 26  rs11218343    11 121435587    T    C 0.0384 -0.0255 0.0454 -0.56167400
    ## 27   rs9787911    11 131769402    T    C 0.4266 -0.0054 0.0175 -0.30857100
    ## 28 rs117394726    12 127222883    A    C 0.0386  0.0534 0.0511  1.04501000
    ## 29  rs17125924    14  53391680    A    G 0.0925 -0.1339 0.0301 -4.44850000
    ## 30  rs12590654    14  92938855    G    A 0.3408  0.0303 0.0186  1.62903226
    ## 31    rs383902    15  59034174    C    T 0.3382 -0.0612 0.0184 -3.32608696
    ## 32  rs28588186    16  19910313    C    G 0.1975  0.0426 0.0219  1.94521000
    ## 33  rs62039712    16  79355857    G    A 0.1185 -0.0298 0.0299 -0.99665552
    ## 34  rs34971488    16  81779775    G    A 0.2116 -0.0403 0.0228 -1.76754386
    ## 35   rs2632516    17  56409089    G    C 0.4471 -0.0148 0.0176 -0.84090909
    ## 36  rs12151021    19   1050874    A    G 0.6782  0.0030 0.0193  0.15544000
    ## 37   rs8111708    19  18558876    A    G 0.3477  0.0807 0.0183  4.40984000
    ## 38 rs111358663    19  45196958    T    A 0.0152 -0.0049 0.0778 -0.06298201
    ## 39   rs4803765    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 40  rs12972156    19  45387459    C    G 0.1482 -0.0178 0.0252 -0.70634900
    ## 41 rs117310449    19  45393516    C    T 0.0115  0.0977 0.0875  1.11657143
    ## 42  rs73033507    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 43 rs114533385    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 44 rs118004808    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 45 rs139995984    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 46  rs80182863    19  45653226    C    T 0.0266 -0.0175 0.0713 -0.24544180
    ## 47   rs6014724    20  54998544    A    G 0.0897 -0.0232 0.0311 -0.74598100
    ## 48   rs2830489    21  28148191    C    T 0.2795 -0.0276 0.0195 -1.41538462
    ## 49 rs138727474    22  21926584    C    T 0.0358  0.0441 0.0538  0.81970260
    ##            P      N                    TRAIT
    ## 1  2.544e-01 757599 Diastolic_Blood_Pressure
    ## 2  5.547e-02 757599 Diastolic_Blood_Pressure
    ## 3  1.038e-02 755482 Diastolic_Blood_Pressure
    ## 4  8.070e-02 754983 Diastolic_Blood_Pressure
    ## 5  1.887e-01 747810 Diastolic_Blood_Pressure
    ## 6  6.268e-02 755541 Diastolic_Blood_Pressure
    ## 7  6.407e-01 757600 Diastolic_Blood_Pressure
    ## 8         NA     NA                     <NA>
    ## 9         NA     NA                     <NA>
    ## 10 2.495e-03 757601 Diastolic_Blood_Pressure
    ## 11        NA     NA                     <NA>
    ## 12 2.018e-01 750123 Diastolic_Blood_Pressure
    ## 13 8.155e-01 755481 Diastolic_Blood_Pressure
    ## 14        NA     NA                     <NA>
    ## 15 5.118e-01 757600 Diastolic_Blood_Pressure
    ## 16        NA     NA                     <NA>
    ## 17 3.889e-01 749339 Diastolic_Blood_Pressure
    ## 18 6.407e-01 757600 Diastolic_Blood_Pressure
    ## 19 5.107e-04 755480 Diastolic_Blood_Pressure
    ## 20        NA     NA                     <NA>
    ## 21 5.761e-01 748882 Diastolic_Blood_Pressure
    ## 22 4.675e-01 756594 Diastolic_Blood_Pressure
    ## 23 1.222e-10 757601 Diastolic_Blood_Pressure
    ## 24 9.924e-01 757600 Diastolic_Blood_Pressure
    ## 25 4.959e-01 757601 Diastolic_Blood_Pressure
    ## 26 5.747e-01 757599 Diastolic_Blood_Pressure
    ## 27 7.582e-01 757600 Diastolic_Blood_Pressure
    ## 28 2.965e-01 752522 Diastolic_Blood_Pressure
    ## 29 8.790e-06 755482 Diastolic_Blood_Pressure
    ## 30 1.025e-01 756595 Diastolic_Blood_Pressure
    ## 31 8.960e-04 748881 Diastolic_Blood_Pressure
    ## 32 5.185e-02 757599 Diastolic_Blood_Pressure
    ## 33 3.192e-01 750864 Diastolic_Blood_Pressure
    ## 34 7.703e-02 753370 Diastolic_Blood_Pressure
    ## 35 4.011e-01 757600 Diastolic_Blood_Pressure
    ## 36 8.767e-01 730395 Diastolic_Blood_Pressure
    ## 37 9.846e-06 757601 Diastolic_Blood_Pressure
    ## 38 9.493e-01 727076 Diastolic_Blood_Pressure
    ## 39        NA     NA                     <NA>
    ## 40 4.800e-01 739095 Diastolic_Blood_Pressure
    ## 41 2.640e-01 724066 Diastolic_Blood_Pressure
    ## 42        NA     NA                     <NA>
    ## 43        NA     NA                     <NA>
    ## 44        NA     NA                     <NA>
    ## 45        NA     NA                     <NA>
    ## 46 8.058e-01 747653 Diastolic_Blood_Pressure
    ## 47 4.553e-01 756109 Diastolic_Blood_Pressure
    ## 48 1.571e-01 757601 Diastolic_Blood_Pressure
    ## 49 4.127e-01 718207 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

    ##     target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1   rs35868327 rs13182752     1      1 GA/TG  NA     5 52672171         G
    ## 2   rs13252043 rs11996416     1      1 TT/CC  NA     8 71505146         C
    ## 3    rs6822989       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4   rs34665982       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 5  rs143429938       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 6  rs117240937       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 7    rs4803765       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 8   rs73033507       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 9  rs114533385       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 10 rs118004808       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 11 rs139995984       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##    ALT.proxy     AF   BETA     SE         Z      P      N
    ## 1          A 0.0240 0.0158 0.0570 0.2771930 0.7814 757144
    ## 2          T 0.0943 0.0047 0.0297 0.1582492 0.8739 757600
    ## 3       <NA>     NA     NA     NA        NA     NA     NA
    ## 4       <NA>     NA     NA     NA        NA     NA     NA
    ## 5       <NA>     NA     NA     NA        NA     NA     NA
    ## 6       <NA>     NA     NA     NA        NA     NA     NA
    ## 7       <NA>     NA     NA     NA        NA     NA     NA
    ## 8       <NA>     NA     NA     NA        NA     NA     NA
    ## 9       <NA>     NA     NA     NA        NA     NA     NA
    ## 10      <NA>     NA     NA     NA        NA     NA     NA
    ## 11      <NA>     NA     NA     NA        NA     NA     NA
    ##                       TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF
    ## 1  Diastolic_Blood_Pressure    G         A    T         G    G    T
    ## 2  Diastolic_Blood_Pressure    T         T    C         C    T    C
    ## 3                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 4                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 5                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 6                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 7                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 8                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 9                      <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 10                     <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ## 11                     <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>
    ##    proxy.outcome
    ## 1           TRUE
    ## 2           TRUE
    ## 3             NA
    ## 4             NA
    ## 5             NA
    ## 6             NA
    ## 7             NA
    ## 8             NA
    ## 9             NA
    ## 10            NA
    ## 11            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Diastolic Blood Pressure datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10933431                      C                     G
    ## 2  rs111358663                      A                     T
    ## 3   rs11168036                      G                     T
    ## 4   rs11218343                      C                     T
    ## 5  rs114812713                      C                     G
    ## 6  rs117310449                      T                     C
    ## 7  rs117394726                      C                     A
    ## 8   rs11767557                      C                     T
    ## 9   rs12151021                      G                     A
    ## 10  rs12416487                      T                     A
    ## 11  rs12590654                      A                     G
    ## 12  rs12972156                      G                     C
    ## 13  rs13252043                      T                     C
    ## 14   rs1385742                      T                     A
    ## 15 rs138727474                      T                     C
    ## 16   rs1582763                      A                     G
    ## 17  rs17125924                      G                     A
    ## 18   rs2632516                      C                     G
    ## 19   rs2830489                      T                     C
    ## 20  rs28588186                      G                     C
    ## 21  rs28660482                      A                     T
    ## 22  rs34971488                      A                     G
    ## 23  rs35695568                      T                     G
    ## 24  rs35868327                      A                     T
    ## 25   rs3740688                      T                     G
    ## 26    rs383902                      T                     C
    ## 27   rs3851179                      C                     T
    ## 28   rs6014724                      G                     A
    ## 29  rs62039712                      A                     G
    ## 30   rs6559689                      T                     C
    ## 31   rs6733839                      T                     C
    ## 32    rs679515                      C                     T
    ## 33   rs6805148                      C                     A
    ## 34  rs73223431                      T                     C
    ## 35   rs7584040                      T                     C
    ## 36  rs80182863                      T                     C
    ## 37   rs8111708                      G                     A
    ## 38    rs867230                      A                     C
    ## 39   rs9649710                      G                     A
    ## 40   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    G        0.1001      -0.0286
    ## 2                      A                    T       -0.5369      -0.0049
    ## 3                      G                    T       -0.0754      -0.0526
    ## 4                      C                    T       -0.2053      -0.0255
    ## 5                      C                    G        0.2980       0.0716
    ## 6                      T                    C        0.9879       0.0977
    ## 7                      C                    A        0.2193       0.0534
    ## 8                      C                    T       -0.1028       0.0186
    ## 9                      G                    A       -0.1071       0.0030
    ## 10                     T                    A        0.0850       0.0133
    ## 11                     A                    G       -0.0906       0.0303
    ## 12                     G                    C        0.9653      -0.0178
    ## 13                     T                    C        0.1140       0.0047
    ## 14                     T                    A       -0.0876       0.0043
    ## 15                     T                    C       -0.2515       0.0441
    ## 16                     A                    G       -0.1232       0.0002
    ## 17                     G                    A        0.1222      -0.1339
    ## 18                     C                    G       -0.0748      -0.0148
    ## 19                     T                    C       -0.0837      -0.0276
    ## 20                     G                    C       -0.0880       0.0426
    ## 21                     A                    T        0.2220       0.0263
    ## 22                     A                    G        0.0940      -0.0403
    ## 23                     T                    G        0.1152       0.0518
    ## 24                     G                    T       -0.3753       0.0158
    ## 25                     T                    G        0.0935       0.1121
    ## 26                     T                    C       -0.0698      -0.0612
    ## 27                     C                    T        0.1198      -0.0122
    ## 28                     G                    A       -0.1319      -0.0232
    ## 29                     A                    G        0.1528      -0.0298
    ## 30                     T                    C        0.1585      -0.0231
    ## 31                     T                    C        0.1693       0.0468
    ## 32                     C                    T       -0.1508       0.0256
    ## 33                     C                    A       -0.1293      -0.0568
    ## 34                     T                    C        0.0936      -0.0084
    ## 35                     T                    C        0.0862      -0.0398
    ## 36                     T                    C        0.2977      -0.0175
    ## 37                     G                    A        0.0696       0.0807
    ## 38                     A                    C        0.1333       0.0627
    ## 39                     G                    A        0.0676      -0.0116
    ## 40                     C                    T        0.0662      -0.0054
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774      0.7794  FALSE        TRUE     FALSE     v60siq
    ## 2        0.0111      0.0152  FALSE        TRUE     FALSE     v60siq
    ## 3        0.5033      0.5127  FALSE       FALSE     FALSE     v60siq
    ## 4        0.0401      0.0384  FALSE       FALSE     FALSE     v60siq
    ## 5        0.0301      0.0266  FALSE        TRUE     FALSE     v60siq
    ## 6        0.0130      0.0115  FALSE       FALSE     FALSE     v60siq
    ## 7        0.0400      0.0386  FALSE       FALSE     FALSE     v60siq
    ## 8        0.1968      0.2100  FALSE       FALSE     FALSE     v60siq
    ## 9        0.6753      0.6782  FALSE       FALSE     FALSE     v60siq
    ## 10       0.6519      0.6508  FALSE        TRUE     FALSE     v60siq
    ## 11       0.3353      0.3408  FALSE       FALSE     FALSE     v60siq
    ## 12       0.2027      0.1482  FALSE        TRUE     FALSE     v60siq
    ## 13       0.0984      0.0943  FALSE       FALSE     FALSE     v60siq
    ## 14       0.6344      0.6485  FALSE        TRUE     FALSE     v60siq
    ## 15       0.0269      0.0358  FALSE       FALSE     FALSE     v60siq
    ## 16       0.3729      0.3750  FALSE       FALSE     FALSE     v60siq
    ## 17       0.0926      0.0925  FALSE       FALSE     FALSE     v60siq
    ## 18       0.4402      0.4471  FALSE        TRUE      TRUE     v60siq
    ## 19       0.2882      0.2795  FALSE       FALSE     FALSE     v60siq
    ## 20       0.1981      0.1975  FALSE        TRUE     FALSE     v60siq
    ## 21       0.0243      0.0259  FALSE        TRUE     FALSE     v60siq
    ## 22       0.2205      0.2116  FALSE       FALSE     FALSE     v60siq
    ## 23       0.0922      0.0951  FALSE       FALSE     FALSE     v60siq
    ## 24       0.0132      0.0240   TRUE        TRUE     FALSE     v60siq
    ## 25       0.5524      0.5458  FALSE       FALSE     FALSE     v60siq
    ## 26       0.3274      0.3382  FALSE       FALSE     FALSE     v60siq
    ## 27       0.6410      0.6302  FALSE       FALSE     FALSE     v60siq
    ## 28       0.0920      0.0897  FALSE       FALSE     FALSE     v60siq
    ## 29       0.1158      0.1185  FALSE       FALSE     FALSE     v60siq
    ## 30       0.0504      0.0501  FALSE       FALSE     FALSE     v60siq
    ## 31       0.4067      0.3948  FALSE       FALSE     FALSE     v60siq
    ## 32       0.8126      0.8191  FALSE       FALSE     FALSE     v60siq
    ## 33       0.0864      0.0900  FALSE       FALSE     FALSE     v60siq
    ## 34       0.3669      0.3663  FALSE       FALSE     FALSE     v60siq
    ## 35       0.2261      0.2258  FALSE       FALSE     FALSE     v60siq
    ## 36       0.0234      0.0266  FALSE       FALSE     FALSE     v60siq
    ## 37       0.3427      0.3477  FALSE       FALSE     FALSE     v60siq
    ## 38       0.6029      0.5913  FALSE       FALSE     FALSE     v60siq
    ## 39       0.6331      0.6124  FALSE       FALSE     FALSE     v60siq
    ## 40       0.4249      0.4266  FALSE       FALSE     FALSE     v60siq
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            2   233981912     0.0218 -1.31192661    1.887e-01
    ## 2           19    45196958     0.0778 -0.06298201    9.493e-01
    ## 3            5   139707439     0.0174 -3.02299000    2.495e-03
    ## 4           11   121435587     0.0454 -0.56167400    5.747e-01
    ## 5            6    41034000     0.0561  1.27629234    2.018e-01
    ## 6           19    45393516     0.0875  1.11657143    2.640e-01
    ## 7           12   127222883     0.0511  1.04501000    2.965e-01
    ## 8            7   143109139     0.0215  0.86511600    3.889e-01
    ## 9           19     1050874     0.0193  0.15544000    8.767e-01
    ## 10          10    11721057     0.0184  0.72282600    4.675e-01
    ## 11          14    92938855     0.0186  1.62903226    1.025e-01
    ## 12          19    45387459     0.0252 -0.70634900    4.800e-01
    ## 13           8    71505146     0.0297  0.15824916    8.739e-01
    ## 14           6    47595155     0.0186  0.23118300    8.155e-01
    ## 15          22    21926584     0.0538  0.81970260    4.127e-01
    ## 16          11    60021948     0.0179  0.01117318    9.924e-01
    ## 17          14    53391680     0.0301 -4.44850000    8.790e-06
    ## 18          17    56409089     0.0176 -0.84090909    4.011e-01
    ## 19          21    28148191     0.0195 -1.41538462    1.571e-01
    ## 20          16    19910313     0.0219  1.94521000    5.185e-02
    ## 21           4    66245059     0.0564  0.46631206    6.407e-01
    ## 22          16    81779775     0.0228 -1.76754386    7.703e-02
    ## 23           2   186794162     0.0296  1.75000000    8.070e-02
    ## 24           5    52672171     0.0570  0.27719298    7.814e-01
    ## 25          11    47380340     0.0174  6.44252874    1.222e-10
    ## 26          15    59034174     0.0184 -3.32608696    8.960e-04
    ## 27          11    85868640     0.0179 -0.68156400    4.959e-01
    ## 28          20    54998544     0.0311 -0.74598100    4.553e-01
    ## 29          16    79355857     0.0299 -0.99665552    3.192e-01
    ## 30           9    85450616     0.0413 -0.55932203    5.761e-01
    ## 31           2   127892810     0.0182  2.57142857    1.038e-02
    ## 32           1   207750568     0.0225  1.13778000    2.544e-01
    ## 33           3    45101639     0.0305 -1.86230000    6.268e-02
    ## 34           8    27219987     0.0179 -0.46927374    6.407e-01
    ## 35           2   127863224     0.0208 -1.91346154    5.547e-02
    ## 36          19    45653226     0.0713 -0.24544180    8.058e-01
    ## 37          19    18558876     0.0183  4.40984000    9.846e-06
    ## 38           8    27468503     0.0181  3.46408840    5.107e-04
    ## 39           7    50322832     0.0178 -0.65168500    5.118e-01
    ## 40          11   131769402     0.0175 -0.30857100    7.582e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              747810 Evangelou2018dbp            TRUE            reported
    ## 2              727076 Evangelou2018dbp            TRUE            reported
    ## 3              757601 Evangelou2018dbp            TRUE            reported
    ## 4              757599 Evangelou2018dbp            TRUE            reported
    ## 5              750123 Evangelou2018dbp            TRUE            reported
    ## 6              724066 Evangelou2018dbp            TRUE            reported
    ## 7              752522 Evangelou2018dbp            TRUE            reported
    ## 8              749339 Evangelou2018dbp            TRUE            reported
    ## 9              730395 Evangelou2018dbp            TRUE            reported
    ## 10             756594 Evangelou2018dbp            TRUE            reported
    ## 11             756595 Evangelou2018dbp            TRUE            reported
    ## 12             739095 Evangelou2018dbp            TRUE            reported
    ## 13             757600 Evangelou2018dbp            TRUE            reported
    ## 14             755481 Evangelou2018dbp            TRUE            reported
    ## 15             718207 Evangelou2018dbp            TRUE            reported
    ## 16             757600 Evangelou2018dbp            TRUE            reported
    ## 17             755482 Evangelou2018dbp            TRUE            reported
    ## 18             757600 Evangelou2018dbp            TRUE            reported
    ## 19             757601 Evangelou2018dbp            TRUE            reported
    ## 20             757599 Evangelou2018dbp            TRUE            reported
    ## 21             757600 Evangelou2018dbp            TRUE            reported
    ## 22             753370 Evangelou2018dbp            TRUE            reported
    ## 23             754983 Evangelou2018dbp            TRUE            reported
    ## 24             757144 Evangelou2018dbp            TRUE            reported
    ## 25             757601 Evangelou2018dbp            TRUE            reported
    ## 26             748881 Evangelou2018dbp            TRUE            reported
    ## 27             757601 Evangelou2018dbp            TRUE            reported
    ## 28             756109 Evangelou2018dbp            TRUE            reported
    ## 29             750864 Evangelou2018dbp            TRUE            reported
    ## 30             748882 Evangelou2018dbp            TRUE            reported
    ## 31             755482 Evangelou2018dbp            TRUE            reported
    ## 32             757599 Evangelou2018dbp            TRUE            reported
    ## 33             755541 Evangelou2018dbp            TRUE            reported
    ## 34             757600 Evangelou2018dbp            TRUE            reported
    ## 35             757599 Evangelou2018dbp            TRUE            reported
    ## 36             747653 Evangelou2018dbp            TRUE            reported
    ## 37             757601 Evangelou2018dbp            TRUE            reported
    ## 38             755480 Evangelou2018dbp            TRUE            reported
    ## 39             757600 Evangelou2018dbp            TRUE            reported
    ## 40             757600 Evangelou2018dbp            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13          TRUE         rs13252043        rs11996416                 T
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22            NA               <NA>              <NA>              <NA>
    ## 23            NA               <NA>              <NA>              <NA>
    ## 24          TRUE         rs35868327        rs13182752                 G
    ## 25            NA               <NA>              <NA>              <NA>
    ## 26            NA               <NA>              <NA>              <NA>
    ## 27            NA               <NA>              <NA>              <NA>
    ## 28            NA               <NA>              <NA>              <NA>
    ## 29            NA               <NA>              <NA>              <NA>
    ## 30            NA               <NA>              <NA>              <NA>
    ## 31            NA               <NA>              <NA>              <NA>
    ## 32            NA               <NA>              <NA>              <NA>
    ## 33            NA               <NA>              <NA>              <NA>
    ## 34            NA               <NA>              <NA>              <NA>
    ## 35            NA               <NA>              <NA>              <NA>
    ## 36            NA               <NA>              <NA>              <NA>
    ## 37            NA               <NA>              <NA>              <NA>
    ## 38            NA               <NA>              <NA>              <NA>
    ## 39            NA               <NA>              <NA>              <NA>
    ## 40            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            2
    ## 2               <NA>             <NA>             <NA>           19
    ## 3               <NA>             <NA>             <NA>            5
    ## 4               <NA>             <NA>             <NA>           11
    ## 5               <NA>             <NA>             <NA>            6
    ## 6               <NA>             <NA>             <NA>           19
    ## 7               <NA>             <NA>             <NA>           12
    ## 8               <NA>             <NA>             <NA>            7
    ## 9               <NA>             <NA>             <NA>           19
    ## 10              <NA>             <NA>             <NA>           10
    ## 11              <NA>             <NA>             <NA>           14
    ## 12              <NA>             <NA>             <NA>           19
    ## 13                 C                T                C            8
    ## 14              <NA>             <NA>             <NA>            6
    ## 15              <NA>             <NA>             <NA>           22
    ## 16              <NA>             <NA>             <NA>           11
    ## 17              <NA>             <NA>             <NA>           14
    ## 18              <NA>             <NA>             <NA>           17
    ## 19              <NA>             <NA>             <NA>           21
    ## 20              <NA>             <NA>             <NA>           16
    ## 21              <NA>             <NA>             <NA>            4
    ## 22              <NA>             <NA>             <NA>           16
    ## 23              <NA>             <NA>             <NA>            2
    ## 24                 T                A                G            5
    ## 25              <NA>             <NA>             <NA>           11
    ## 26              <NA>             <NA>             <NA>           15
    ## 27              <NA>             <NA>             <NA>           11
    ## 28              <NA>             <NA>             <NA>           20
    ## 29              <NA>             <NA>             <NA>           16
    ## 30              <NA>             <NA>             <NA>            9
    ## 31              <NA>             <NA>             <NA>            2
    ## 32              <NA>             <NA>             <NA>            1
    ## 33              <NA>             <NA>             <NA>            3
    ## 34              <NA>             <NA>             <NA>            8
    ## 35              <NA>             <NA>             <NA>            2
    ## 36              <NA>             <NA>             <NA>           19
    ## 37              <NA>             <NA>             <NA>           19
    ## 38              <NA>             <NA>             <NA>            8
    ## 39              <NA>             <NA>             <NA>            7
    ## 40              <NA>             <NA>             <NA>           11
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     233981912      0.0194   5.159794     2.552e-07               63926
    ## 2      45196958      0.0795  -6.753459     1.436e-11               63926
    ## 3     139707439      0.0143  -5.272730     1.432e-07               63926
    ## 4     121435587      0.0369  -5.563690     2.633e-08               63926
    ## 5      41034000      0.0431   6.914153     4.467e-12               63926
    ## 6      45393516      0.0691  14.296671     2.275e-46               63926
    ## 7     127222883      0.0465   4.716130     2.459e-06               63926
    ## 8     143109139      0.0182  -5.648350     1.561e-08               63926
    ## 9       1050874      0.0169  -6.337280     2.562e-10               63926
    ## 10     11721057      0.0154   5.519480     3.417e-08               63926
    ## 11     92938855      0.0157  -5.770701     8.729e-09               63926
    ## 12     45387459      0.0189  51.074100    1.000e-200               63926
    ## 13     71551628      0.0237   4.810127     1.570e-06               63926
    ## 14     47595155      0.0157  -5.579620     2.232e-08               63926
    ## 15     21926584      0.0545  -4.614679     3.904e-06               63926
    ## 16     60021948      0.0149  -8.268456     1.186e-16               63926
    ## 17     53391680      0.0246   4.967480     6.621e-07               63926
    ## 18     56409089      0.0147  -5.088435     3.671e-07               63926
    ## 19     28148191      0.0162  -5.166667     2.422e-07               63926
    ## 20     19910313      0.0181  -4.861880     1.115e-06               63926
    ## 21     66245059      0.0475   4.673684     2.900e-06               63926
    ## 22     81779775      0.0198   4.747475     2.067e-06               63926
    ## 23    186794162      0.0247   4.663968     3.200e-06               63926
    ## 24     52665230      0.0760  -4.938158     7.796e-07               63926
    ## 25     47380340      0.0144   6.493056     9.702e-11               63926
    ## 26     59034174      0.0151  -4.622517     3.812e-06               63926
    ## 27     85868640      0.0148   8.094590     5.809e-16               63926
    ## 28     54998544      0.0259  -5.092660     3.652e-07               63926
    ## 29     79355857      0.0288   5.305556     1.171e-07               63926
    ## 30     85450616      0.0335   4.731343     2.169e-06               63926
    ## 31    127892810      0.0154  10.993506     4.022e-28               63926
    ## 32    207750568      0.0183  -8.240440     1.555e-16               63926
    ## 33     45101639      0.0257  -5.031130     4.774e-07               63926
    ## 34     27219987      0.0153   6.117647     8.342e-10               63926
    ## 35    127863224      0.0172   5.011628     5.341e-07               63926
    ## 36     45653226      0.0623   4.778491     1.750e-06               63926
    ## 37     18558876      0.0151   4.609270     3.946e-06               63926
    ## 38     27468503      0.0158   8.436709     3.492e-17               63926
    ## 39     50322832      0.0148   4.567570     4.794e-06               63926
    ## 40    131769402      0.0144   4.597220     4.386e-06               63926
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 2  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 3  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 4  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 5  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 6  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 7  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 8  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 9  Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 10 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 11 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 12 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 13 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 14 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 15 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 16 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 17 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 18 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 19 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 20 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 21 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 22 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 23 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 24 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 25 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 26 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 27 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 28 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 29 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 30 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 31 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 32 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 33 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 34 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 35 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 36 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 37 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 38 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 39 Kunkle2019load             TRUE             reported      TBQHrn      2
    ## 40 Kunkle2019load             TRUE             reported      TBQHrn      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    1.223520e-03             1
    ## 2     TRUE          FALSE 5e-06              NA          <NA>
    ## 3     TRUE           TRUE 5e-06    2.461042e-03        0.0726
    ## 4     TRUE           TRUE 5e-06    2.139479e-04             1
    ## 5     TRUE           TRUE 5e-06    3.278529e-03             1
    ## 6     TRUE          FALSE 5e-06              NA          <NA>
    ## 7     TRUE           TRUE 5e-06    1.793275e-03             1
    ## 8     TRUE           TRUE 5e-06    6.211093e-04             1
    ## 9     TRUE           TRUE 5e-06    8.479403e-05             1
    ## 10    TRUE           TRUE 5e-06    7.882421e-05             1
    ## 11    TRUE           TRUE 5e-06    1.318422e-03             1
    ## 12    TRUE          FALSE 5e-06              NA          <NA>
    ## 13    TRUE           TRUE 5e-06    2.459860e-06             1
    ## 14    TRUE           TRUE 5e-06    8.738526e-05             1
    ## 15    TRUE           TRUE 5e-06    3.534466e-03             1
    ## 16    TRUE           TRUE 5e-06    5.431110e-05             1
    ## 17    TRUE           TRUE 5e-06    2.058458e-02       <0.0066
    ## 18   FALSE           TRUE 5e-06              NA          <NA>
    ## 19    TRUE           TRUE 5e-06    5.544854e-04             1
    ## 20    TRUE           TRUE 5e-06    2.339615e-03        0.9042
    ## 21    TRUE           TRUE 5e-06    2.079513e-04             1
    ## 22    TRUE           TRUE 5e-06    2.153660e-03             1
    ## 23    TRUE           TRUE 5e-06    2.148359e-03             1
    ## 24   FALSE           TRUE 5e-06              NA          <NA>
    ## 25    TRUE          FALSE 5e-06              NA          <NA>
    ## 26    TRUE           TRUE 5e-06    3.411067e-03        0.0528
    ## 27    TRUE           TRUE 5e-06    3.936932e-04             1
    ## 28    TRUE           TRUE 5e-06    2.669438e-04             1
    ## 29    TRUE           TRUE 5e-06    1.553913e-03             1
    ## 30    TRUE           TRUE 5e-06    1.046998e-03             1
    ## 31    TRUE           TRUE 5e-06    1.760754e-03        0.7194
    ## 32    TRUE           TRUE 5e-06    1.282852e-03             1
    ## 33    TRUE           TRUE 5e-06    2.584363e-03             1
    ## 34    TRUE           TRUE 5e-06    1.957231e-04             1
    ## 35    TRUE           TRUE 5e-06    2.067610e-03             1
    ## 36    TRUE          FALSE 5e-06              NA          <NA>
    ## 37    TRUE           TRUE 5e-06    6.126364e-03       <0.0066
    ## 38    TRUE           TRUE 5e-06    3.519818e-03        0.0726
    ## 39    TRUE           TRUE 5e-06    2.425591e-04             1
    ## 40    TRUE           TRUE 5e-06    8.434577e-05             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2             NA
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6             NA
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
    ## 17         FALSE
    ## 18            NA
    ## 19          TRUE
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE
    ## 23          TRUE
    ## 24            NA
    ## 25            NA
    ## 26          TRUE
    ## 27          TRUE
    ## 28          TRUE
    ## 29          TRUE
    ## 30          TRUE
    ## 31          TRUE
    ## 32          TRUE
    ## 33          TRUE
    ## 34          TRUE
    ## 35          TRUE
    ## 36            NA
    ## 37         FALSE
    ## 38          TRUE
    ## 39          TRUE
    ## 40          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11    9.493e-01
    ## 2 rs117310449          19    45393516     2.275e-46    2.640e-01
    ## 3  rs12972156          19    45387459    1.000e-200    4.800e-01
    ## 4   rs3740688          11    47380340     9.702e-11    1.222e-10
    ## 5  rs80182863          19    45653226     1.750e-06    8.058e-01

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
    ## 1            FALSE   0.01794141 35.37136  0.05 2.522655 0.3552605
    ## 2             TRUE   0.01723016 36.13566  0.05 2.796063 0.3868826

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
on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for LOAD on Diastolic Blood Pressure

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 2      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 3      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 4      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   33  0.05473869 0.03492392
    ## 2                           Weighted median   33 -0.01361012 0.06121551
    ## 3                             Weighted mode   33 -0.09114875 0.13001941
    ## 4                                  MR Egger   33  0.02574335 0.20189648
    ##        pval
    ## 1 0.1170283
    ## 2 0.8240560
    ## 3 0.4883452
    ## 4 0.8993621

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Diastolic Blood Pressure and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 2      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 108.6515   31 1.480848e-10
    ## 2 Inverse variance weighted 108.7322   32 2.746663e-10

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load     0.003396573
    ##           se      pval
    ## 1 0.02237608 0.8803323

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome       exposure    pt
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 115.5415 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 2      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 3      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 4      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   31  0.05851870 0.03560229
    ## 2                           Weighted median   31 -0.01307170 0.05971957
    ## 3                             Weighted mode   31 -0.09805516 0.13396637
    ## 4                                  MR Egger   31  0.15694444 0.16974242
    ##        pval
    ## 1 0.1002428
    ## 2 0.8267398
    ## 3 0.4698857
    ## 4 0.3628024

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ## 2      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 68.36697   29 5.055018e-05
    ## 2 Inverse variance weighted 69.25134   30 6.111091e-05

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      TBQHrn     v60siq Evangelou2018dbp Kunkle2019load     -0.01166581
    ##           se      pval
    ## 1 0.01904674 0.5449913

<br>
