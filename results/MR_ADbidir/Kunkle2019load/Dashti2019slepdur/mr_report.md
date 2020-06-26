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

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Sleep Duration

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1     rs679515     1 207750568    T    C 0.822523  6.44678e-04 0.00296092
    ## 2    rs7584040     2 127863224    C    T 0.232806 -3.04125e-03 0.00268461
    ## 3    rs6733839     2 127892810    C    T 0.391123  4.65119e-04 0.00235465
    ## 4   rs35695568     2 186794162    G    T 0.094992  1.33588e-03 0.00385760
    ## 5   rs10933431     2 233981912    G    C 0.781088  3.26886e-03 0.00273539
    ## 6    rs6805148     3  45101639    A    C 0.093366  2.57343e-03 0.00390643
    ## 7   rs28660482     4  66245059    T    A 0.023754  1.62489e-02 0.00745114
    ## 8    rs6822989    NA        NA <NA> <NA>       NA           NA         NA
    ## 9   rs35868327     5  52665230    T    G 0.005792  4.11740e-03 0.01881980
    ## 10  rs11168036     5 139707439    T    G 0.520190  4.48967e-03 0.00227446
    ## 11  rs34665982    NA        NA <NA> <NA>       NA           NA         NA
    ## 12 rs114812713     6  41034000    G    C 0.026599 -8.21225e-03 0.00715508
    ## 13   rs1385742     6  47595155    A    T 0.646697 -4.28237e-04 0.00239147
    ## 14 rs143429938     7  33721795    C    T 0.015915  5.37550e-03 0.00936759
    ## 15   rs9649710     7  50322832    A    G 0.604185  1.68235e-03 0.00231941
    ## 16 rs117240937     7 127426090    G    A 0.009082  9.13137e-04 0.01228650
    ## 17  rs11767557     7 143109139    T    C 0.213885 -2.41499e-03 0.00275666
    ## 18  rs73223431     8  27219987    C    T 0.366336  5.67286e-04 0.00235048
    ## 19    rs867230     8  27468503    C    A 0.586988 -3.44624e-03 0.00231689
    ## 20  rs13252043    NA        NA <NA> <NA>       NA           NA         NA
    ## 21   rs6559689     9  85450616    C    T 0.045364  6.81990e-03 0.00543392
    ## 22  rs12416487    10  11721057    A    T 0.656675  3.28410e-03 0.00238698
    ## 23   rs3740688    11  47380340    G    T 0.544922 -7.16963e-03 0.00227518
    ## 24   rs1582763    11  60021948    G    A 0.379972 -3.75152e-03 0.00233407
    ## 25   rs3851179    11  85868640    T    C 0.628731 -2.28308e-05 0.00233932
    ## 26  rs11218343    11 121435587    T    C 0.037123 -1.53337e-03 0.00599394
    ## 27   rs9787911    11 131769402    T    C 0.427749 -1.20384e-03 0.00229411
    ## 28 rs117394726    12 127222883    A    C 0.036110  1.01923e-02 0.00639602
    ## 29  rs17125924    14  53391680    A    G 0.091981 -1.24415e-02 0.00392515
    ## 30  rs12590654    14  92938855    G    A 0.339722 -1.67888e-03 0.00240569
    ## 31    rs383902    15  59034174    C    T 0.334118  2.24649e-03 0.00240717
    ## 32  rs28588186    16  19910313    C    G 0.200697 -2.24493e-03 0.00284213
    ## 33  rs62039712    16  79355857    G    A 0.120103  4.47007e-04 0.00361040
    ## 34  rs34971488    16  81779775    G    A 0.210895  6.96486e-03 0.00284027
    ## 35   rs2632516    17  56409089    G    C 0.443135 -5.16082e-04 0.00228738
    ## 36  rs12151021    19   1050874    A    G 0.674127  1.72903e-03 0.00242689
    ## 37   rs8111708    19  18558876    A    G 0.349623 -1.38427e-03 0.00237781
    ## 38 rs111358663    19  45196958    T    A 0.015743  1.04975e-03 0.00924700
    ## 39   rs4803765    NA        NA <NA> <NA>       NA           NA         NA
    ## 40  rs12972156    19  45387459    C    G 0.148558 -6.63823e-03 0.00320644
    ## 41 rs117310449    19  45393516    C    T 0.012053 -2.27098e-02 0.01043380
    ## 42  rs73033507    19  45431403    C    T 0.038409  9.88026e-04 0.00598982
    ## 43 rs114533385    19  45436753    C    T 0.011167  1.34796e-03 0.01110270
    ## 44 rs118004808    19  45439498    C    T 0.018609 -4.76413e-03 0.00954379
    ## 45 rs139995984    19  45574482    G    C 0.013363  3.24809e-03 0.01104900
    ## 46  rs80182863    19  45653226    C    T 0.015549  2.81300e-03 0.00953800
    ## 47   rs6014724    20  54998544    A    G 0.088138  3.58454e-03 0.00401164
    ## 48   rs2830489    21  28148191    C    T 0.274799 -2.65550e-03 0.00253623
    ## 49 rs138727474    22  21926584    C    T 0.036328 -4.68198e-03 0.00643328
    ##              Z      P      N          TRAIT
    ## 1   0.21772900 0.8500 446118 Sleep_Duration
    ## 2  -1.13285000 0.2600 446118 Sleep_Duration
    ## 3   0.19753200 0.8500 446118 Sleep_Duration
    ## 4   0.34629800 0.7700 446118 Sleep_Duration
    ## 5   1.19503000 0.2200 446118 Sleep_Duration
    ## 6   0.65876800 0.5100 446118 Sleep_Duration
    ## 7   2.18073000 0.0340 446118 Sleep_Duration
    ## 8           NA     NA     NA           <NA>
    ## 9   0.21878000 0.8000 446118 Sleep_Duration
    ## 10  1.97395000 0.0470 446118 Sleep_Duration
    ## 11          NA     NA     NA           <NA>
    ## 12 -1.14775000 0.2800 446118 Sleep_Duration
    ## 13 -0.17906900 0.8400 446118 Sleep_Duration
    ## 14  0.57384000 0.5600 446118 Sleep_Duration
    ## 15  0.72533500 0.4500 446118 Sleep_Duration
    ## 16  0.07432040 0.9300 446118 Sleep_Duration
    ## 17 -0.87605700 0.3600 446118 Sleep_Duration
    ## 18  0.24134900 0.8100 446118 Sleep_Duration
    ## 19 -1.48744000 0.1300 446118 Sleep_Duration
    ## 20          NA     NA     NA           <NA>
    ## 21  1.25506000 0.2000 446118 Sleep_Duration
    ## 22  1.37584000 0.1900 446118 Sleep_Duration
    ## 23 -3.15124000 0.0020 446118 Sleep_Duration
    ## 24 -1.60729000 0.1100 446118 Sleep_Duration
    ## 25 -0.00975959 1.0000 446118 Sleep_Duration
    ## 26 -0.25582000 0.8100 446118 Sleep_Duration
    ## 27 -0.52475300 0.6100 446118 Sleep_Duration
    ## 28  1.59354000 0.1100 446118 Sleep_Duration
    ## 29 -3.16969000 0.0015 446118 Sleep_Duration
    ## 30 -0.69787900 0.4600 446118 Sleep_Duration
    ## 31  0.93324900 0.3400 446118 Sleep_Duration
    ## 32 -0.78987600 0.3900 446118 Sleep_Duration
    ## 33  0.12381100 0.8700 446118 Sleep_Duration
    ## 34  2.45218000 0.0130 446118 Sleep_Duration
    ## 35 -0.22562100 0.8900 446118 Sleep_Duration
    ## 36  0.71244700 0.4800 446118 Sleep_Duration
    ## 37 -0.58216200 0.5500 446118 Sleep_Duration
    ## 38  0.11352300 0.8900 446118 Sleep_Duration
    ## 39          NA     NA     NA           <NA>
    ## 40 -2.07028000 0.0410 446118 Sleep_Duration
    ## 41 -2.17656000 0.0230 446118 Sleep_Duration
    ## 42  0.16495100 0.8700 446118 Sleep_Duration
    ## 43  0.12140800 0.9400 446118 Sleep_Duration
    ## 44 -0.49918600 0.6400 446118 Sleep_Duration
    ## 45  0.29397100 0.7600 446118 Sleep_Duration
    ## 46  0.29492600 0.7700 446118 Sleep_Duration
    ## 47  0.89353500 0.3800 446118 Sleep_Duration
    ## 48 -1.04703000 0.3300 446118 Sleep_Duration
    ## 49 -0.72777500 0.4900 446118 Sleep_Duration

<br>

**Table 3:** Proxy SNPs for Sleep Duration

    ##   target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM       POS REF.proxy
    ## 1  rs6822989 rs28544093     1      1 TC/CT  NA     4 104182954         T
    ## 2 rs13252043 rs11996416     1      1 TT/CC  NA     8  71505146         C
    ## 3 rs34665982       <NA>    NA     NA  <NA>  NA    NA        NA      <NA>
    ## 4  rs4803765       <NA>    NA     NA  <NA>  NA    NA        NA      <NA>
    ##   ALT.proxy       AF        BETA         SE        Z    P      N
    ## 1         C 0.004991  0.02362710 0.01623430  1.45538 0.15 446118
    ## 2         T 0.094065 -0.00531883 0.00387194 -1.37369 0.15 446118
    ## 3      <NA>       NA          NA         NA       NA   NA     NA
    ## 4      <NA>       NA          NA         NA       NA   NA     NA
    ##            TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Sleep_Duration TRUE         C    C         T TRUE    C          TRUE
    ## 2 Sleep_Duration TRUE         T    C         C TRUE    C          TRUE
    ## 3           <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 4           <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Sleep Duration datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10933431                      C                     G
    ## 2  rs111358663                      A                     T
    ## 3   rs11168036                      G                     T
    ## 4   rs11218343                      C                     T
    ## 5  rs114533385                      T                     C
    ## 6  rs114812713                      C                     G
    ## 7  rs117240937                      A                     G
    ## 8  rs117310449                      T                     C
    ## 9  rs117394726                      C                     A
    ## 10  rs11767557                      C                     T
    ## 11 rs118004808                      T                     C
    ## 12  rs12151021                      G                     A
    ## 13  rs12416487                      T                     A
    ## 14  rs12590654                      A                     G
    ## 15  rs12972156                      G                     C
    ## 16  rs13252043                      T                     C
    ## 17   rs1385742                      T                     A
    ## 18 rs138727474                      T                     C
    ## 19 rs139995984                      C                     G
    ## 20 rs143429938                      T                     C
    ## 21   rs1582763                      A                     G
    ## 22  rs17125924                      G                     A
    ## 23   rs2632516                      C                     G
    ## 24   rs2830489                      T                     C
    ## 25  rs28588186                      G                     C
    ## 26  rs28660482                      A                     T
    ## 27  rs34971488                      A                     G
    ## 28  rs35695568                      T                     G
    ## 29  rs35868327                      A                     T
    ## 30   rs3740688                      T                     G
    ## 31    rs383902                      T                     C
    ## 32   rs3851179                      C                     T
    ## 33   rs6014724                      G                     A
    ## 34  rs62039712                      A                     G
    ## 35   rs6559689                      T                     C
    ## 36   rs6733839                      T                     C
    ## 37    rs679515                      C                     T
    ## 38   rs6805148                      C                     A
    ## 39   rs6822989                      T                     C
    ## 40  rs73033507                      T                     C
    ## 41  rs73223431                      T                     C
    ## 42   rs7584040                      T                     C
    ## 43  rs80182863                      T                     C
    ## 44   rs8111708                      G                     A
    ## 45    rs867230                      A                     C
    ## 46   rs9649710                      G                     A
    ## 47   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    G        0.1001  3.26886e-03
    ## 2                      A                    T       -0.5369  1.04975e-03
    ## 3                      G                    T       -0.0754  4.48967e-03
    ## 4                      C                    T       -0.2053 -1.53337e-03
    ## 5                      T                    C        0.8281  1.34796e-03
    ## 6                      C                    G        0.2980 -8.21225e-03
    ## 7                      A                    G       -0.3122  9.13137e-04
    ## 8                      T                    C        0.9879 -2.27098e-02
    ## 9                      C                    A        0.2193  1.01923e-02
    ## 10                     C                    T       -0.1028 -2.41499e-03
    ## 11                     T                    C       -0.5523 -4.76413e-03
    ## 12                     G                    A       -0.1071  1.72903e-03
    ## 13                     T                    A        0.0850  3.28410e-03
    ## 14                     A                    G       -0.0906 -1.67888e-03
    ## 15                     G                    C        0.9653 -6.63823e-03
    ## 16                     T                    C        0.1140 -5.31883e-03
    ## 17                     T                    A       -0.0876 -4.28237e-04
    ## 18                     T                    C       -0.2515 -4.68198e-03
    ## 19                     C                    G       -0.5343  3.24809e-03
    ## 20                     T                    C        0.3535  5.37550e-03
    ## 21                     A                    G       -0.1232 -3.75152e-03
    ## 22                     G                    A        0.1222 -1.24415e-02
    ## 23                     C                    G       -0.0748 -5.16082e-04
    ## 24                     T                    C       -0.0837 -2.65550e-03
    ## 25                     G                    C       -0.0880 -2.24493e-03
    ## 26                     A                    T        0.2220  1.62489e-02
    ## 27                     A                    G        0.0940  6.96486e-03
    ## 28                     T                    G        0.1152  1.33588e-03
    ## 29                     G                    T       -0.3753  4.11740e-03
    ## 30                     T                    G        0.0935 -7.16963e-03
    ## 31                     T                    C       -0.0698  2.24649e-03
    ## 32                     C                    T        0.1198 -2.28308e-05
    ## 33                     G                    A       -0.1319  3.58454e-03
    ## 34                     A                    G        0.1528  4.47007e-04
    ## 35                     T                    C        0.1585  6.81990e-03
    ## 36                     T                    C        0.1693  4.65119e-04
    ## 37                     C                    T       -0.1508  6.44678e-04
    ## 38                     C                    A       -0.1293  2.57343e-03
    ## 39                     T                    C        0.4361  2.36271e-02
    ## 40                     T                    C       -0.3620  9.88026e-04
    ## 41                     T                    C        0.0936  5.67286e-04
    ## 42                     T                    C        0.0862 -3.04125e-03
    ## 43                     T                    C        0.2977  2.81300e-03
    ## 44                     G                    A        0.0696 -1.38427e-03
    ## 45                     A                    C        0.1333 -3.44624e-03
    ## 46                     G                    A        0.0676  1.68235e-03
    ## 47                     C                    T        0.0662 -1.20384e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774    0.781088  FALSE        TRUE     FALSE     dW5pJP
    ## 2        0.0111    0.015743  FALSE        TRUE     FALSE     dW5pJP
    ## 3        0.5033    0.520190  FALSE       FALSE     FALSE     dW5pJP
    ## 4        0.0401    0.037123  FALSE       FALSE     FALSE     dW5pJP
    ## 5        0.0210    0.011167  FALSE       FALSE     FALSE     dW5pJP
    ## 6        0.0301    0.026599  FALSE        TRUE     FALSE     dW5pJP
    ## 7        0.0173    0.009082  FALSE       FALSE     FALSE     dW5pJP
    ## 8        0.0130    0.012053  FALSE       FALSE     FALSE     dW5pJP
    ## 9        0.0400    0.036110  FALSE       FALSE     FALSE     dW5pJP
    ## 10       0.1968    0.213885  FALSE       FALSE     FALSE     dW5pJP
    ## 11       0.0177    0.018609  FALSE       FALSE     FALSE     dW5pJP
    ## 12       0.6753    0.674127  FALSE       FALSE     FALSE     dW5pJP
    ## 13       0.6519    0.656675  FALSE        TRUE     FALSE     dW5pJP
    ## 14       0.3353    0.339722  FALSE       FALSE     FALSE     dW5pJP
    ## 15       0.2027    0.148558  FALSE        TRUE     FALSE     dW5pJP
    ## 16       0.0984    0.094065  FALSE       FALSE     FALSE     dW5pJP
    ## 17       0.6344    0.646697  FALSE        TRUE     FALSE     dW5pJP
    ## 18       0.0269    0.036328  FALSE       FALSE     FALSE     dW5pJP
    ## 19       0.0155    0.013363  FALSE        TRUE     FALSE     dW5pJP
    ## 20       0.0211    0.015915  FALSE       FALSE     FALSE     dW5pJP
    ## 21       0.3729    0.379972  FALSE       FALSE     FALSE     dW5pJP
    ## 22       0.0926    0.091981  FALSE       FALSE     FALSE     dW5pJP
    ## 23       0.4402    0.443135  FALSE        TRUE      TRUE     dW5pJP
    ## 24       0.2882    0.274799  FALSE       FALSE     FALSE     dW5pJP
    ## 25       0.1981    0.200697  FALSE        TRUE     FALSE     dW5pJP
    ## 26       0.0243    0.023754  FALSE        TRUE     FALSE     dW5pJP
    ## 27       0.2205    0.210895  FALSE       FALSE     FALSE     dW5pJP
    ## 28       0.0922    0.094992  FALSE       FALSE     FALSE     dW5pJP
    ## 29       0.0132    0.005792   TRUE        TRUE     FALSE     dW5pJP
    ## 30       0.5524    0.544922  FALSE       FALSE     FALSE     dW5pJP
    ## 31       0.3274    0.334118  FALSE       FALSE     FALSE     dW5pJP
    ## 32       0.6410    0.628731  FALSE       FALSE     FALSE     dW5pJP
    ## 33       0.0920    0.088138  FALSE       FALSE     FALSE     dW5pJP
    ## 34       0.1158    0.120103  FALSE       FALSE     FALSE     dW5pJP
    ## 35       0.0504    0.045364  FALSE       FALSE     FALSE     dW5pJP
    ## 36       0.4067    0.391123  FALSE       FALSE     FALSE     dW5pJP
    ## 37       0.8126    0.822523  FALSE       FALSE     FALSE     dW5pJP
    ## 38       0.0864    0.093366  FALSE       FALSE     FALSE     dW5pJP
    ## 39       0.0082    0.004991  FALSE       FALSE     FALSE     dW5pJP
    ## 40       0.0239    0.038409  FALSE       FALSE     FALSE     dW5pJP
    ## 41       0.3669    0.366336  FALSE       FALSE     FALSE     dW5pJP
    ## 42       0.2261    0.232806  FALSE       FALSE     FALSE     dW5pJP
    ## 43       0.0234    0.015549  FALSE       FALSE     FALSE     dW5pJP
    ## 44       0.3427    0.349623  FALSE       FALSE     FALSE     dW5pJP
    ## 45       0.6029    0.586988  FALSE       FALSE     FALSE     dW5pJP
    ## 46       0.6331    0.604185  FALSE       FALSE     FALSE     dW5pJP
    ## 47       0.4249    0.427749  FALSE       FALSE     FALSE     dW5pJP
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            2   233981912 0.00273539  1.19503000       0.2200
    ## 2           19    45196958 0.00924700  0.11352300       0.8900
    ## 3            5   139707439 0.00227446  1.97395000       0.0470
    ## 4           11   121435587 0.00599394 -0.25582000       0.8100
    ## 5           19    45436753 0.01110270  0.12140800       0.9400
    ## 6            6    41034000 0.00715508 -1.14775000       0.2800
    ## 7            7   127426090 0.01228650  0.07432040       0.9300
    ## 8           19    45393516 0.01043380 -2.17656000       0.0230
    ## 9           12   127222883 0.00639602  1.59354000       0.1100
    ## 10           7   143109139 0.00275666 -0.87605700       0.3600
    ## 11          19    45439498 0.00954379 -0.49918600       0.6400
    ## 12          19     1050874 0.00242689  0.71244700       0.4800
    ## 13          10    11721057 0.00238698  1.37584000       0.1900
    ## 14          14    92938855 0.00240569 -0.69787900       0.4600
    ## 15          19    45387459 0.00320644 -2.07028000       0.0410
    ## 16           8    71505146 0.00387194 -1.37369000       0.1500
    ## 17           6    47595155 0.00239147 -0.17906900       0.8400
    ## 18          22    21926584 0.00643328 -0.72777500       0.4900
    ## 19          19    45574482 0.01104900  0.29397100       0.7600
    ## 20           7    33721795 0.00936759  0.57384000       0.5600
    ## 21          11    60021948 0.00233407 -1.60729000       0.1100
    ## 22          14    53391680 0.00392515 -3.16969000       0.0015
    ## 23          17    56409089 0.00228738 -0.22562100       0.8900
    ## 24          21    28148191 0.00253623 -1.04703000       0.3300
    ## 25          16    19910313 0.00284213 -0.78987600       0.3900
    ## 26           4    66245059 0.00745114  2.18073000       0.0340
    ## 27          16    81779775 0.00284027  2.45218000       0.0130
    ## 28           2   186794162 0.00385760  0.34629800       0.7700
    ## 29           5    52665230 0.01881980  0.21878000       0.8000
    ## 30          11    47380340 0.00227518 -3.15124000       0.0020
    ## 31          15    59034174 0.00240717  0.93324900       0.3400
    ## 32          11    85868640 0.00233932 -0.00975959       1.0000
    ## 33          20    54998544 0.00401164  0.89353500       0.3800
    ## 34          16    79355857 0.00361040  0.12381100       0.8700
    ## 35           9    85450616 0.00543392  1.25506000       0.2000
    ## 36           2   127892810 0.00235465  0.19753200       0.8500
    ## 37           1   207750568 0.00296092  0.21772900       0.8500
    ## 38           3    45101639 0.00390643  0.65876800       0.5100
    ## 39           4   104182954 0.01623430  1.45538000       0.1500
    ## 40          19    45431403 0.00598982  0.16495100       0.8700
    ## 41           8    27219987 0.00235048  0.24134900       0.8100
    ## 42           2   127863224 0.00268461 -1.13285000       0.2600
    ## 43          19    45653226 0.00953800  0.29492600       0.7700
    ## 44          19    18558876 0.00237781 -0.58216200       0.5500
    ## 45           8    27468503 0.00231689 -1.48744000       0.1300
    ## 46           7    50322832 0.00231941  0.72533500       0.4500
    ## 47          11   131769402 0.00229411 -0.52475300       0.6100
    ##    samplesize.outcome           outcome mr_keep.outcome
    ## 1              446118 Dashti2019slepdur            TRUE
    ## 2              446118 Dashti2019slepdur            TRUE
    ## 3              446118 Dashti2019slepdur            TRUE
    ## 4              446118 Dashti2019slepdur            TRUE
    ## 5              446118 Dashti2019slepdur            TRUE
    ## 6              446118 Dashti2019slepdur            TRUE
    ## 7              446118 Dashti2019slepdur            TRUE
    ## 8              446118 Dashti2019slepdur            TRUE
    ## 9              446118 Dashti2019slepdur            TRUE
    ## 10             446118 Dashti2019slepdur            TRUE
    ## 11             446118 Dashti2019slepdur            TRUE
    ## 12             446118 Dashti2019slepdur            TRUE
    ## 13             446118 Dashti2019slepdur            TRUE
    ## 14             446118 Dashti2019slepdur            TRUE
    ## 15             446118 Dashti2019slepdur            TRUE
    ## 16             446118 Dashti2019slepdur            TRUE
    ## 17             446118 Dashti2019slepdur            TRUE
    ## 18             446118 Dashti2019slepdur            TRUE
    ## 19             446118 Dashti2019slepdur            TRUE
    ## 20             446118 Dashti2019slepdur            TRUE
    ## 21             446118 Dashti2019slepdur            TRUE
    ## 22             446118 Dashti2019slepdur            TRUE
    ## 23             446118 Dashti2019slepdur            TRUE
    ## 24             446118 Dashti2019slepdur            TRUE
    ## 25             446118 Dashti2019slepdur            TRUE
    ## 26             446118 Dashti2019slepdur            TRUE
    ## 27             446118 Dashti2019slepdur            TRUE
    ## 28             446118 Dashti2019slepdur            TRUE
    ## 29             446118 Dashti2019slepdur            TRUE
    ## 30             446118 Dashti2019slepdur            TRUE
    ## 31             446118 Dashti2019slepdur            TRUE
    ## 32             446118 Dashti2019slepdur            TRUE
    ## 33             446118 Dashti2019slepdur            TRUE
    ## 34             446118 Dashti2019slepdur            TRUE
    ## 35             446118 Dashti2019slepdur            TRUE
    ## 36             446118 Dashti2019slepdur            TRUE
    ## 37             446118 Dashti2019slepdur            TRUE
    ## 38             446118 Dashti2019slepdur            TRUE
    ## 39             446118 Dashti2019slepdur            TRUE
    ## 40             446118 Dashti2019slepdur            TRUE
    ## 41             446118 Dashti2019slepdur            TRUE
    ## 42             446118 Dashti2019slepdur            TRUE
    ## 43             446118 Dashti2019slepdur            TRUE
    ## 44             446118 Dashti2019slepdur            TRUE
    ## 45             446118 Dashti2019slepdur            TRUE
    ## 46             446118 Dashti2019slepdur            TRUE
    ## 47             446118 Dashti2019slepdur            TRUE
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
    ## 16            reported          TRUE         rs13252043        rs11996416
    ## 17            reported            NA               <NA>              <NA>
    ## 18            reported            NA               <NA>              <NA>
    ## 19            reported            NA               <NA>              <NA>
    ## 20            reported            NA               <NA>              <NA>
    ## 21            reported            NA               <NA>              <NA>
    ## 22            reported            NA               <NA>              <NA>
    ## 23            reported            NA               <NA>              <NA>
    ## 24            reported            NA               <NA>              <NA>
    ## 25            reported            NA               <NA>              <NA>
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
    ## 39            reported          TRUE          rs6822989        rs28544093
    ## 40            reported            NA               <NA>              <NA>
    ## 41            reported            NA               <NA>              <NA>
    ## 42            reported            NA               <NA>              <NA>
    ## 43            reported            NA               <NA>              <NA>
    ## 44            reported            NA               <NA>              <NA>
    ## 45            reported            NA               <NA>              <NA>
    ## 46            reported            NA               <NA>              <NA>
    ## 47            reported            NA               <NA>              <NA>
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1                 NA              <NA>             <NA>             <NA>
    ## 2                 NA              <NA>             <NA>             <NA>
    ## 3                 NA              <NA>             <NA>             <NA>
    ## 4                 NA              <NA>             <NA>             <NA>
    ## 5                 NA              <NA>             <NA>             <NA>
    ## 6                 NA              <NA>             <NA>             <NA>
    ## 7                 NA              <NA>             <NA>             <NA>
    ## 8                 NA              <NA>             <NA>             <NA>
    ## 9                 NA              <NA>             <NA>             <NA>
    ## 10                NA              <NA>             <NA>             <NA>
    ## 11                NA              <NA>             <NA>             <NA>
    ## 12                NA              <NA>             <NA>             <NA>
    ## 13                NA              <NA>             <NA>             <NA>
    ## 14                NA              <NA>             <NA>             <NA>
    ## 15                NA              <NA>             <NA>             <NA>
    ## 16              TRUE                 C                T                C
    ## 17                NA              <NA>             <NA>             <NA>
    ## 18                NA              <NA>             <NA>             <NA>
    ## 19                NA              <NA>             <NA>             <NA>
    ## 20                NA              <NA>             <NA>             <NA>
    ## 21                NA              <NA>             <NA>             <NA>
    ## 22                NA              <NA>             <NA>             <NA>
    ## 23                NA              <NA>             <NA>             <NA>
    ## 24                NA              <NA>             <NA>             <NA>
    ## 25                NA              <NA>             <NA>             <NA>
    ## 26                NA              <NA>             <NA>             <NA>
    ## 27                NA              <NA>             <NA>             <NA>
    ## 28                NA              <NA>             <NA>             <NA>
    ## 29                NA              <NA>             <NA>             <NA>
    ## 30                NA              <NA>             <NA>             <NA>
    ## 31                NA              <NA>             <NA>             <NA>
    ## 32                NA              <NA>             <NA>             <NA>
    ## 33                NA              <NA>             <NA>             <NA>
    ## 34                NA              <NA>             <NA>             <NA>
    ## 35                NA              <NA>             <NA>             <NA>
    ## 36                NA              <NA>             <NA>             <NA>
    ## 37                NA              <NA>             <NA>             <NA>
    ## 38                NA              <NA>             <NA>             <NA>
    ## 39              TRUE                 C                C                T
    ## 40                NA              <NA>             <NA>             <NA>
    ## 41                NA              <NA>             <NA>             <NA>
    ## 42                NA              <NA>             <NA>             <NA>
    ## 43                NA              <NA>             <NA>             <NA>
    ## 44                NA              <NA>             <NA>             <NA>
    ## 45                NA              <NA>             <NA>             <NA>
    ## 46                NA              <NA>             <NA>             <NA>
    ## 47                NA              <NA>             <NA>             <NA>
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             2    233981912      0.0194   5.159794     2.552e-07
    ## 2            19     45196958      0.0795  -6.753459     1.436e-11
    ## 3             5    139707439      0.0143  -5.272730     1.432e-07
    ## 4            11    121435587      0.0369  -5.563690     2.633e-08
    ## 5            19     45436753      0.0661  12.527988     5.434e-36
    ## 6             6     41034000      0.0431   6.914153     4.467e-12
    ## 7             7    127426090      0.0672  -4.645833     3.350e-06
    ## 8            19     45393516      0.0691  14.296671     2.275e-46
    ## 9            12    127222883      0.0465   4.716130     2.459e-06
    ## 10            7    143109139      0.0182  -5.648350     1.561e-08
    ## 11           19     45439498      0.1015  -5.441379     5.274e-08
    ## 12           19      1050874      0.0169  -6.337280     2.562e-10
    ## 13           10     11721057      0.0154   5.519480     3.417e-08
    ## 14           14     92938855      0.0157  -5.770701     8.729e-09
    ## 15           19     45387459      0.0189  51.074100    1.000e-200
    ## 16            8     71551628      0.0237   4.810127     1.570e-06
    ## 17            6     47595155      0.0157  -5.579620     2.232e-08
    ## 18           22     21926584      0.0545  -4.614679     3.904e-06
    ## 19           19     45574482      0.0879  -6.078498     1.192e-09
    ## 20            7     33721795      0.0769   4.596879     4.253e-06
    ## 21           11     60021948      0.0149  -8.268456     1.186e-16
    ## 22           14     53391680      0.0246   4.967480     6.621e-07
    ## 23           17     56409089      0.0147  -5.088435     3.671e-07
    ## 24           21     28148191      0.0162  -5.166667     2.422e-07
    ## 25           16     19910313      0.0181  -4.861880     1.115e-06
    ## 26            4     66245059      0.0475   4.673684     2.900e-06
    ## 27           16     81779775      0.0198   4.747475     2.067e-06
    ## 28            2    186794162      0.0247   4.663968     3.200e-06
    ## 29            5     52665230      0.0760  -4.938158     7.796e-07
    ## 30           11     47380340      0.0144   6.493056     9.702e-11
    ## 31           15     59034174      0.0151  -4.622517     3.812e-06
    ## 32           11     85868640      0.0148   8.094590     5.809e-16
    ## 33           20     54998544      0.0259  -5.092660     3.652e-07
    ## 34           16     79355857      0.0288   5.305556     1.171e-07
    ## 35            9     85450616      0.0335   4.731343     2.169e-06
    ## 36            2    127892810      0.0154  10.993506     4.022e-28
    ## 37            1    207750568      0.0183  -8.240440     1.555e-16
    ## 38            3     45101639      0.0257  -5.031130     4.774e-07
    ## 39            4    104176240      0.0940   4.639362     3.487e-06
    ## 40           19     45431403      0.0657  -5.509893     3.646e-08
    ## 41            8     27219987      0.0153   6.117647     8.342e-10
    ## 42            2    127863224      0.0172   5.011628     5.341e-07
    ## 43           19     45653226      0.0623   4.778491     1.750e-06
    ## 44           19     18558876      0.0151   4.609270     3.946e-06
    ## 45            8     27468503      0.0158   8.436709     3.492e-17
    ## 46            7     50322832      0.0148   4.567570     4.794e-06
    ## 47           11    131769402      0.0144   4.597220     4.386e-06
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
    ## 43               63926 Kunkle2019load             TRUE
    ## 44               63926 Kunkle2019load             TRUE
    ## 45               63926 Kunkle2019load             TRUE
    ## 46               63926 Kunkle2019load             TRUE
    ## 47               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 2              reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 3              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 4              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 5              reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 6              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 7              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 8              reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 9              reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 10             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 11             reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 12             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 13             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 14             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 15             reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 16             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 17             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 18             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 19             reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 20             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 21             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 22             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 23             reported      XY3Ikl      2   FALSE           TRUE 5e-06
    ## 24             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 25             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 26             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 27             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 28             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 29             reported      XY3Ikl      2   FALSE           TRUE 5e-06
    ## 30             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 31             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 32             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 33             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 34             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 35             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 36             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 37             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 38             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 39             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 40             reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 41             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 42             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 43             reported      XY3Ikl      2    TRUE          FALSE 5e-06
    ## 44             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 45             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 46             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ## 47             reported      XY3Ikl      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.074697e-05        1.0000          TRUE
    ## 2               NA            NA            NA
    ## 3     2.151441e-05        1.0000          TRUE
    ## 4     2.006642e-06        1.0000          TRUE
    ## 5               NA            NA            NA
    ## 6     7.580197e-05        1.0000          TRUE
    ## 7     1.325698e-06        1.0000          TRUE
    ## 8               NA            NA            NA
    ## 9     1.052295e-04        1.0000          TRUE
    ## 10    5.774483e-06        1.0000          TRUE
    ## 11              NA            NA            NA
    ## 12    3.510635e-06        1.0000          TRUE
    ## 13    1.089369e-05        1.0000          TRUE
    ## 14    2.746664e-06        1.0000          TRUE
    ## 15              NA            NA            NA
    ## 16    3.012901e-05        1.0000          TRUE
    ## 17    1.403007e-07        1.0000          TRUE
    ## 18    2.145886e-05        1.0000          TRUE
    ## 19              NA            NA            NA
    ## 20    2.766939e-05        1.0000          TRUE
    ## 21    1.491806e-05        1.0000          TRUE
    ## 22    1.627810e-04        0.0814          TRUE
    ## 23              NA            NA            NA
    ## 24    7.016084e-06        1.0000          TRUE
    ## 25    4.933396e-06        1.0000          TRUE
    ## 26    2.675982e-04        1.0000          TRUE
    ## 27    4.956440e-05        0.4218          TRUE
    ## 28    1.623359e-06        1.0000          TRUE
    ## 29              NA            NA            NA
    ## 30    5.581150e-05        0.0444         FALSE
    ## 31    5.443053e-06        1.0000          TRUE
    ## 32    1.311832e-08        1.0000          TRUE
    ## 33    1.409708e-05        1.0000          TRUE
    ## 34    1.216057e-07        1.0000          TRUE
    ## 35    4.642217e-05        1.0000          TRUE
    ## 36    1.442339e-07        1.0000          TRUE
    ## 37    6.259022e-07        1.0000          TRUE
    ## 38    7.407454e-06        1.0000          TRUE
    ## 39    5.583574e-04        1.0000          TRUE
    ## 40              NA            NA            NA
    ## 41    2.653564e-07        1.0000          TRUE
    ## 42    1.000889e-05        1.0000          TRUE
    ## 43              NA            NA            NA
    ## 44    2.124182e-06        1.0000          TRUE
    ## 45    1.424011e-05        1.0000          TRUE
    ## 46    2.755198e-06        1.0000          TRUE
    ## 47    1.615582e-06        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11        0.890
    ## 2 rs114533385          19    45436753     5.434e-36        0.940
    ## 3 rs117310449          19    45393516     2.275e-46        0.023
    ## 4 rs118004808          19    45439498     5.274e-08        0.640
    ## 5  rs12972156          19    45387459    1.000e-200        0.041
    ## 6 rs139995984          19    45574482     1.192e-09        0.760
    ## 7  rs73033507          19    45431403     3.646e-08        0.870
    ## 8  rs80182863          19    45653226     1.750e-06        0.770

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

    ##   outliers_removed pve.exposure        F Alpha          NCP      Power
    ## 1            FALSE   0.01959325 34.50785  0.05 2.560983e-07 0.05000003
    ## 2             TRUE   0.01894545 34.27167  0.05 3.605603e-01 0.09222166

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
on Sleep Duration. <br>

**Table 6** MR causaul estimates for LOAD on Sleep Duration

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 2      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 3      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 4      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   37 0.0007190061 0.004305211
    ## 2                           Weighted median   37 0.0028086642 0.006599272
    ## 3                             Weighted mode   37 0.0045255403 0.010522797
    ## 4                                  MR Egger   37 0.0158430426 0.016015281
    ##        pval
    ## 1 0.8673635
    ## 2 0.6703978
    ## 3 0.6697082
    ## 4 0.3293331

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Sleep Duration and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 2      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 59.68526   35 0.005763339
    ## 2 Inverse variance weighted 61.41978   36 0.005197050

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Dashti2019slepdur/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome           outcome       exposure egger_intercept
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load     -0.00182786
    ##            se      pval
    ## 1 0.001812393 0.3201201

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome       exposure    pt
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 64.56834 0.0068

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 2      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 3      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 4      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   36 0.003220104 0.004374217
    ## 2                           Weighted median   36 0.002843657 0.006656854
    ## 3                             Weighted mode   36 0.004515684 0.010597160
    ## 4                                  MR Egger   36 0.013240841 0.014939660
    ##        pval
    ## 1 0.4616360
    ## 2 0.6692502
    ## 3 0.6726282
    ## 4 0.3816884

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ## 2      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 50.21468   34 0.03612050
    ## 2 Inverse variance weighted 50.97546   35 0.03962087

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome       exposure egger_intercept
    ## 1      XY3Ikl     dW5pJP Dashti2019slepdur Kunkle2019load    -0.001222646
    ##            se      pval
    ## 1 0.001703513 0.4778327

<br>
