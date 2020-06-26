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

### Outcome: Fish and plant related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Fish and plant
related diet

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1     rs679515     1 207750568    T    C 0.823599  1.84264e-04 0.00317318
    ## 2    rs7584040     2 127863224    C    T 0.231427  6.10665e-03 0.00287985
    ## 3    rs6733839    NA        NA <NA> <NA>       NA           NA         NA
    ## 4   rs35695568     2 186794162    G    T 0.094851 -3.84372e-03 0.00412490
    ## 5   rs10933431     2 233981912    G    C 0.781558  1.92606e-03 0.00292634
    ## 6    rs6805148     3  45101639    A    C 0.091516  1.07687e-02 0.00420572
    ## 7   rs28660482     4  66245059    T    A 0.023394  5.21664e-03 0.00800417
    ## 8    rs6822989     4 104176240    C    T 0.004808  2.70331e-02 0.01746450
    ## 9   rs35868327     5  52665230    T    G 0.002254 -1.99655e-02 0.02575480
    ## 10  rs11168036     5 139707439    T    G 0.520491 -4.28793e-03 0.00244624
    ## 11  rs34665982     6  32560306    T    C 0.561715 -1.22309e-02 0.00244366
    ## 12 rs114812713     6  41034000    G    C 0.024785  5.95960e-03 0.00780925
    ## 13   rs1385742     6  47595155    A    T 0.650201  9.67418e-04 0.00258514
    ## 14 rs143429938     7  33721795    C    T 0.013733 -1.11683e-02 0.01044310
    ## 15   rs9649710     7  50322832    A    G 0.604080 -1.37506e-03 0.00247196
    ## 16 rs117240937     7 127426090    G    A 0.007748  7.17729e-03 0.01382470
    ## 17  rs11767557     7 143109139    T    C 0.213996  1.68703e-04 0.00294651
    ## 18  rs73223431     8  27219987    C    T 0.365841 -1.86034e-04 0.00252181
    ## 19    rs867230     8  27468503    C    A 0.588267 -2.15158e-03 0.00250497
    ## 20  rs13252043     8  71551628    C    T 0.094420  4.05264e-05 0.00413283
    ## 21   rs6559689     9  85450616    C    T 0.045110 -5.71545e-03 0.00581942
    ## 22  rs12416487    10  11721057    A    T 0.656930  9.56527e-04 0.00255336
    ## 23   rs3740688    11  47380340    G    T 0.545598 -2.89867e-03 0.00243480
    ## 24   rs1582763    11  60021948    G    A 0.379894 -9.12034e-05 0.00249754
    ## 25   rs3851179    11  85868640    T    C 0.627981 -5.42947e-03 0.00249884
    ## 26  rs11218343    11 121435587    T    C 0.037072  7.13061e-04 0.00640304
    ## 27   rs9787911    11 131769402    T    C 0.426769 -6.21623e-03 0.00246160
    ## 28 rs117394726    12 127222883    A    C 0.029605 -2.76049e-03 0.00724808
    ## 29  rs17125924    14  53391680    A    G 0.090757  7.29239e-03 0.00421437
    ## 30  rs12590654    14  92938855    G    A 0.338439  3.07243e-04 0.00258950
    ## 31    rs383902    15  59034174    C    T 0.333080 -3.87845e-03 0.00258014
    ## 32  rs28588186    16  19910313    C    G 0.199067 -6.38428e-03 0.00304826
    ## 33  rs62039712    NA        NA <NA> <NA>       NA           NA         NA
    ## 34  rs34971488    NA        NA <NA> <NA>       NA           NA         NA
    ## 35   rs2632516    17  56409089    G    C 0.441708 -6.68331e-04 0.00246115
    ## 36  rs12151021    19   1050874    A    G 0.676046  6.14786e-03 0.00260795
    ## 37   rs8111708    19  18558876    A    G 0.348372 -5.37689e-03 0.00254819
    ## 38 rs111358663    19  45196958    T    A 0.014778 -2.45078e-02 0.01003960
    ## 39   rs4803765    19  45358448    C    T 0.006627  1.34498e-02 0.01500360
    ## 40  rs12972156    19  45387459    C    G 0.146627  1.70936e-02 0.00344528
    ## 41 rs117310449    19  45393516    C    T 0.011691  3.51838e-02 0.01125790
    ## 42  rs73033507    NA        NA <NA> <NA>       NA           NA         NA
    ## 43 rs114533385    19  45436753    C    T 0.009880  2.08955e-02 0.01225330
    ## 44 rs118004808    19  45439498    C    T 0.010731  8.33782e-04 0.01193420
    ## 45 rs139995984    19  45574482    G    C 0.007776  5.71083e-03 0.01394190
    ## 46  rs80182863    19  45653226    C    T 0.013144  1.03554e-02 0.01066740
    ## 47   rs6014724    20  54998544    A    G 0.087138 -2.16836e-03 0.00430291
    ## 48   rs2830489    21  28148191    C    T 0.275270  8.78004e-04 0.00270926
    ## 49 rs138727474    22  21926584    C    T 0.029494  9.39787e-03 0.00727847
    ##              Z       P      N           TRAIT
    ## 1   0.05806920 9.5e-01 335576 fish_plant_diet
    ## 2   2.12048000 3.4e-02 335576 fish_plant_diet
    ## 3           NA      NA     NA            <NA>
    ## 4  -0.93183300 3.5e-01 335576 fish_plant_diet
    ## 5   0.65818100 5.1e-01 335576 fish_plant_diet
    ## 6   2.56049000 1.0e-02 335576 fish_plant_diet
    ## 7   0.65174000 5.1e-01 335576 fish_plant_diet
    ## 8   1.54789000 1.2e-01 335576 fish_plant_diet
    ## 9  -0.77521500 4.4e-01 335576 fish_plant_diet
    ## 10 -1.75287000 8.0e-02 335576 fish_plant_diet
    ## 11 -5.00516000 5.6e-07 335576 fish_plant_diet
    ## 12  0.76314600 4.5e-01 335576 fish_plant_diet
    ## 13  0.37422300 7.1e-01 335576 fish_plant_diet
    ## 14 -1.06944000 2.8e-01 335576 fish_plant_diet
    ## 15 -0.55626300 5.8e-01 335576 fish_plant_diet
    ## 16  0.51916400 6.0e-01 335576 fish_plant_diet
    ## 17  0.05725520 9.5e-01 335576 fish_plant_diet
    ## 18 -0.07377000 9.4e-01 335576 fish_plant_diet
    ## 19 -0.85892400 3.9e-01 335576 fish_plant_diet
    ## 20  0.00980597 9.9e-01 335576 fish_plant_diet
    ## 21 -0.98213400 3.3e-01 335576 fish_plant_diet
    ## 22  0.37461500 7.1e-01 335576 fish_plant_diet
    ## 23 -1.19052000 2.3e-01 335576 fish_plant_diet
    ## 24 -0.03651730 9.7e-01 335576 fish_plant_diet
    ## 25 -2.17280000 3.0e-02 335576 fish_plant_diet
    ## 26  0.11136300 9.1e-01 335576 fish_plant_diet
    ## 27 -2.52528000 1.2e-02 335576 fish_plant_diet
    ## 28 -0.38085800 7.0e-01 335576 fish_plant_diet
    ## 29  1.73036000 8.4e-02 335576 fish_plant_diet
    ## 30  0.11865000 9.1e-01 335576 fish_plant_diet
    ## 31 -1.50319000 1.3e-01 335576 fish_plant_diet
    ## 32 -2.09440000 3.6e-02 335576 fish_plant_diet
    ## 33          NA      NA     NA            <NA>
    ## 34          NA      NA     NA            <NA>
    ## 35 -0.27155200 7.9e-01 335576 fish_plant_diet
    ## 36  2.35735000 1.8e-02 335576 fish_plant_diet
    ## 37 -2.11008000 3.5e-02 335576 fish_plant_diet
    ## 38 -2.44111000 1.5e-02 335576 fish_plant_diet
    ## 39  0.89643800 3.7e-01 335576 fish_plant_diet
    ## 40  4.96145000 7.0e-07 335576 fish_plant_diet
    ## 41  3.12525000 1.8e-03 335576 fish_plant_diet
    ## 42          NA      NA     NA            <NA>
    ## 43  1.70530000 8.8e-02 335576 fish_plant_diet
    ## 44  0.06986490 9.4e-01 335576 fish_plant_diet
    ## 45  0.40961600 6.8e-01 335576 fish_plant_diet
    ## 46  0.97075200 3.3e-01 335576 fish_plant_diet
    ## 47 -0.50392900 6.1e-01 335576 fish_plant_diet
    ## 48  0.32407500 7.5e-01 335576 fish_plant_diet
    ## 49  1.29119000 2.0e-01 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Fish and plant related diet

    ##   target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1  rs6733839 rs4663105 0.896576 0.995501 TC/CA  NA     2 127891427
    ## 2 rs62039712      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 3 rs34971488      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 4 rs73033507      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy       AF       BETA         SE       Z    P      N
    ## 1         A         C 0.415808 0.00307129 0.00249093 1.23299 0.22 335576
    ## 2      <NA>      <NA>       NA         NA         NA      NA   NA     NA
    ## 3      <NA>      <NA>       NA         NA         NA      NA   NA     NA
    ## 4      <NA>      <NA>       NA         NA         NA      NA   NA     NA
    ##             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 fish_plant_diet TRUE         C    C         A TRUE    C          TRUE
    ## 2            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 3            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA
    ## 4            <NA>   NA      <NA> <NA>      <NA>   NA <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Fish and plant related diet datasets

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
    ## 27  rs34665982                      C                     T
    ## 28  rs35695568                      T                     G
    ## 29  rs35868327                      A                     T
    ## 30   rs3740688                      T                     G
    ## 31    rs383902                      T                     C
    ## 32   rs3851179                      C                     T
    ## 33   rs4803765                      T                     C
    ## 34   rs6014724                      G                     A
    ## 35   rs6559689                      T                     C
    ## 36   rs6733839                      T                     C
    ## 37    rs679515                      C                     T
    ## 38   rs6805148                      C                     A
    ## 39   rs6822989                      T                     C
    ## 40  rs73223431                      T                     C
    ## 41   rs7584040                      T                     C
    ## 42  rs80182863                      T                     C
    ## 43   rs8111708                      G                     A
    ## 44    rs867230                      A                     C
    ## 45   rs9649710                      G                     A
    ## 46   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    G        0.1001  1.92606e-03
    ## 2                      A                    T       -0.5369 -2.45078e-02
    ## 3                      G                    T       -0.0754 -4.28793e-03
    ## 4                      C                    T       -0.2053  7.13061e-04
    ## 5                      T                    C        0.8281  2.08955e-02
    ## 6                      C                    G        0.2980  5.95960e-03
    ## 7                      A                    G       -0.3122  7.17729e-03
    ## 8                      T                    C        0.9879  3.51838e-02
    ## 9                      C                    A        0.2193 -2.76049e-03
    ## 10                     C                    T       -0.1028  1.68703e-04
    ## 11                     T                    C       -0.5523  8.33782e-04
    ## 12                     G                    A       -0.1071  6.14786e-03
    ## 13                     T                    A        0.0850  9.56527e-04
    ## 14                     A                    G       -0.0906  3.07243e-04
    ## 15                     G                    C        0.9653  1.70936e-02
    ## 16                     T                    C        0.1140  4.05264e-05
    ## 17                     T                    A       -0.0876  9.67418e-04
    ## 18                     T                    C       -0.2515  9.39787e-03
    ## 19                     C                    G       -0.5343  5.71083e-03
    ## 20                     T                    C        0.3535 -1.11683e-02
    ## 21                     A                    G       -0.1232 -9.12034e-05
    ## 22                     G                    A        0.1222  7.29239e-03
    ## 23                     C                    G       -0.0748 -6.68331e-04
    ## 24                     T                    C       -0.0837  8.78004e-04
    ## 25                     G                    C       -0.0880 -6.38428e-03
    ## 26                     A                    T        0.2220  5.21664e-03
    ## 27                     C                    T       -0.0967 -1.22309e-02
    ## 28                     T                    G        0.1152 -3.84372e-03
    ## 29                     G                    T       -0.3753 -1.99655e-02
    ## 30                     T                    G        0.0935 -2.89867e-03
    ## 31                     T                    C       -0.0698 -3.87845e-03
    ## 32                     C                    T        0.1198 -5.42947e-03
    ## 33                     T                    C        0.7165  1.34498e-02
    ## 34                     G                    A       -0.1319 -2.16836e-03
    ## 35                     T                    C        0.1585 -5.71545e-03
    ## 36                     T                    C        0.1693  3.07129e-03
    ## 37                     C                    T       -0.1508  1.84264e-04
    ## 38                     C                    A       -0.1293  1.07687e-02
    ## 39                     T                    C        0.4361  2.70331e-02
    ## 40                     T                    C        0.0936 -1.86034e-04
    ## 41                     T                    C        0.0862  6.10665e-03
    ## 42                     T                    C        0.2977  1.03554e-02
    ## 43                     G                    A        0.0696 -5.37689e-03
    ## 44                     A                    C        0.1333 -2.15158e-03
    ## 45                     G                    A        0.0676 -1.37506e-03
    ## 46                     C                    T        0.0662 -6.21623e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774    0.781558  FALSE        TRUE     FALSE     MMYFeT
    ## 2        0.0111    0.014778  FALSE        TRUE     FALSE     MMYFeT
    ## 3        0.5033    0.520491  FALSE       FALSE     FALSE     MMYFeT
    ## 4        0.0401    0.037072  FALSE       FALSE     FALSE     MMYFeT
    ## 5        0.0210    0.009880  FALSE       FALSE     FALSE     MMYFeT
    ## 6        0.0301    0.024785  FALSE        TRUE     FALSE     MMYFeT
    ## 7        0.0173    0.007748  FALSE       FALSE     FALSE     MMYFeT
    ## 8        0.0130    0.011691  FALSE       FALSE     FALSE     MMYFeT
    ## 9        0.0400    0.029605  FALSE       FALSE     FALSE     MMYFeT
    ## 10       0.1968    0.213996  FALSE       FALSE     FALSE     MMYFeT
    ## 11       0.0177    0.010731  FALSE       FALSE     FALSE     MMYFeT
    ## 12       0.6753    0.676046  FALSE       FALSE     FALSE     MMYFeT
    ## 13       0.6519    0.656930  FALSE        TRUE     FALSE     MMYFeT
    ## 14       0.3353    0.338439  FALSE       FALSE     FALSE     MMYFeT
    ## 15       0.2027    0.146627  FALSE        TRUE     FALSE     MMYFeT
    ## 16       0.0984    0.094420  FALSE       FALSE     FALSE     MMYFeT
    ## 17       0.6344    0.650201  FALSE        TRUE     FALSE     MMYFeT
    ## 18       0.0269    0.029494  FALSE       FALSE     FALSE     MMYFeT
    ## 19       0.0155    0.007776  FALSE        TRUE     FALSE     MMYFeT
    ## 20       0.0211    0.013733  FALSE       FALSE     FALSE     MMYFeT
    ## 21       0.3729    0.379894  FALSE       FALSE     FALSE     MMYFeT
    ## 22       0.0926    0.090757  FALSE       FALSE     FALSE     MMYFeT
    ## 23       0.4402    0.441708  FALSE        TRUE      TRUE     MMYFeT
    ## 24       0.2882    0.275270  FALSE       FALSE     FALSE     MMYFeT
    ## 25       0.1981    0.199067  FALSE        TRUE     FALSE     MMYFeT
    ## 26       0.0243    0.023394  FALSE        TRUE     FALSE     MMYFeT
    ## 27       0.5213    0.561715  FALSE       FALSE     FALSE     MMYFeT
    ## 28       0.0922    0.094851  FALSE       FALSE     FALSE     MMYFeT
    ## 29       0.0132    0.002254   TRUE        TRUE     FALSE     MMYFeT
    ## 30       0.5524    0.545598  FALSE       FALSE     FALSE     MMYFeT
    ## 31       0.3274    0.333080  FALSE       FALSE     FALSE     MMYFeT
    ## 32       0.6410    0.627981  FALSE       FALSE     FALSE     MMYFeT
    ## 33       0.0243    0.006627  FALSE       FALSE     FALSE     MMYFeT
    ## 34       0.0920    0.087138  FALSE       FALSE     FALSE     MMYFeT
    ## 35       0.0504    0.045110  FALSE       FALSE     FALSE     MMYFeT
    ## 36       0.4067    0.415808  FALSE       FALSE     FALSE     MMYFeT
    ## 37       0.8126    0.823599  FALSE       FALSE     FALSE     MMYFeT
    ## 38       0.0864    0.091516  FALSE       FALSE     FALSE     MMYFeT
    ## 39       0.0082    0.004808  FALSE       FALSE     FALSE     MMYFeT
    ## 40       0.3669    0.365841  FALSE       FALSE     FALSE     MMYFeT
    ## 41       0.2261    0.231427  FALSE       FALSE     FALSE     MMYFeT
    ## 42       0.0234    0.013144  FALSE       FALSE     FALSE     MMYFeT
    ## 43       0.3427    0.348372  FALSE       FALSE     FALSE     MMYFeT
    ## 44       0.6029    0.588267  FALSE       FALSE     FALSE     MMYFeT
    ## 45       0.6331    0.604080  FALSE       FALSE     FALSE     MMYFeT
    ## 46       0.4249    0.426769  FALSE       FALSE     FALSE     MMYFeT
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            2   233981912 0.00292634  0.65818100      5.1e-01
    ## 2           19    45196958 0.01003960 -2.44111000      1.5e-02
    ## 3            5   139707439 0.00244624 -1.75287000      8.0e-02
    ## 4           11   121435587 0.00640304  0.11136300      9.1e-01
    ## 5           19    45436753 0.01225330  1.70530000      8.8e-02
    ## 6            6    41034000 0.00780925  0.76314600      4.5e-01
    ## 7            7   127426090 0.01382470  0.51916400      6.0e-01
    ## 8           19    45393516 0.01125790  3.12525000      1.8e-03
    ## 9           12   127222883 0.00724808 -0.38085800      7.0e-01
    ## 10           7   143109139 0.00294651  0.05725520      9.5e-01
    ## 11          19    45439498 0.01193420  0.06986490      9.4e-01
    ## 12          19     1050874 0.00260795  2.35735000      1.8e-02
    ## 13          10    11721057 0.00255336  0.37461500      7.1e-01
    ## 14          14    92938855 0.00258950  0.11865000      9.1e-01
    ## 15          19    45387459 0.00344528  4.96145000      7.0e-07
    ## 16           8    71551628 0.00413283  0.00980597      9.9e-01
    ## 17           6    47595155 0.00258514  0.37422300      7.1e-01
    ## 18          22    21926584 0.00727847  1.29119000      2.0e-01
    ## 19          19    45574482 0.01394190  0.40961600      6.8e-01
    ## 20           7    33721795 0.01044310 -1.06944000      2.8e-01
    ## 21          11    60021948 0.00249754 -0.03651730      9.7e-01
    ## 22          14    53391680 0.00421437  1.73036000      8.4e-02
    ## 23          17    56409089 0.00246115 -0.27155200      7.9e-01
    ## 24          21    28148191 0.00270926  0.32407500      7.5e-01
    ## 25          16    19910313 0.00304826 -2.09440000      3.6e-02
    ## 26           4    66245059 0.00800417  0.65174000      5.1e-01
    ## 27           6    32560306 0.00244366 -5.00516000      5.6e-07
    ## 28           2   186794162 0.00412490 -0.93183300      3.5e-01
    ## 29           5    52665230 0.02575480 -0.77521500      4.4e-01
    ## 30          11    47380340 0.00243480 -1.19052000      2.3e-01
    ## 31          15    59034174 0.00258014 -1.50319000      1.3e-01
    ## 32          11    85868640 0.00249884 -2.17280000      3.0e-02
    ## 33          19    45358448 0.01500360  0.89643800      3.7e-01
    ## 34          20    54998544 0.00430291 -0.50392900      6.1e-01
    ## 35           9    85450616 0.00581942 -0.98213400      3.3e-01
    ## 36           2   127891427 0.00249093  1.23299000      2.2e-01
    ## 37           1   207750568 0.00317318  0.05806920      9.5e-01
    ## 38           3    45101639 0.00420572  2.56049000      1.0e-02
    ## 39           4   104176240 0.01746450  1.54789000      1.2e-01
    ## 40           8    27219987 0.00252181 -0.07377000      9.4e-01
    ## 41           2   127863224 0.00287985  2.12048000      3.4e-02
    ## 42          19    45653226 0.01066740  0.97075200      3.3e-01
    ## 43          19    18558876 0.00254819 -2.11008000      3.5e-02
    ## 44           8    27468503 0.00250497 -0.85892400      3.9e-01
    ## 45           7    50322832 0.00247196 -0.55626300      5.8e-01
    ## 46          11   131769402 0.00246160 -2.52528000      1.2e-02
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020fish            TRUE            reported
    ## 2              335576 Niarchou2020fish            TRUE            reported
    ## 3              335576 Niarchou2020fish            TRUE            reported
    ## 4              335576 Niarchou2020fish            TRUE            reported
    ## 5              335576 Niarchou2020fish            TRUE            reported
    ## 6              335576 Niarchou2020fish            TRUE            reported
    ## 7              335576 Niarchou2020fish            TRUE            reported
    ## 8              335576 Niarchou2020fish            TRUE            reported
    ## 9              335576 Niarchou2020fish            TRUE            reported
    ## 10             335576 Niarchou2020fish            TRUE            reported
    ## 11             335576 Niarchou2020fish            TRUE            reported
    ## 12             335576 Niarchou2020fish            TRUE            reported
    ## 13             335576 Niarchou2020fish            TRUE            reported
    ## 14             335576 Niarchou2020fish            TRUE            reported
    ## 15             335576 Niarchou2020fish            TRUE            reported
    ## 16             335576 Niarchou2020fish            TRUE            reported
    ## 17             335576 Niarchou2020fish            TRUE            reported
    ## 18             335576 Niarchou2020fish            TRUE            reported
    ## 19             335576 Niarchou2020fish            TRUE            reported
    ## 20             335576 Niarchou2020fish            TRUE            reported
    ## 21             335576 Niarchou2020fish            TRUE            reported
    ## 22             335576 Niarchou2020fish            TRUE            reported
    ## 23             335576 Niarchou2020fish            TRUE            reported
    ## 24             335576 Niarchou2020fish            TRUE            reported
    ## 25             335576 Niarchou2020fish            TRUE            reported
    ## 26             335576 Niarchou2020fish            TRUE            reported
    ## 27             335576 Niarchou2020fish            TRUE            reported
    ## 28             335576 Niarchou2020fish            TRUE            reported
    ## 29             335576 Niarchou2020fish            TRUE            reported
    ## 30             335576 Niarchou2020fish            TRUE            reported
    ## 31             335576 Niarchou2020fish            TRUE            reported
    ## 32             335576 Niarchou2020fish            TRUE            reported
    ## 33             335576 Niarchou2020fish            TRUE            reported
    ## 34             335576 Niarchou2020fish            TRUE            reported
    ## 35             335576 Niarchou2020fish            TRUE            reported
    ## 36             335576 Niarchou2020fish            TRUE            reported
    ## 37             335576 Niarchou2020fish            TRUE            reported
    ## 38             335576 Niarchou2020fish            TRUE            reported
    ## 39             335576 Niarchou2020fish            TRUE            reported
    ## 40             335576 Niarchou2020fish            TRUE            reported
    ## 41             335576 Niarchou2020fish            TRUE            reported
    ## 42             335576 Niarchou2020fish            TRUE            reported
    ## 43             335576 Niarchou2020fish            TRUE            reported
    ## 44             335576 Niarchou2020fish            TRUE            reported
    ## 45             335576 Niarchou2020fish            TRUE            reported
    ## 46             335576 Niarchou2020fish            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>                NA
    ## 2             NA               <NA>              <NA>                NA
    ## 3             NA               <NA>              <NA>                NA
    ## 4             NA               <NA>              <NA>                NA
    ## 5             NA               <NA>              <NA>                NA
    ## 6             NA               <NA>              <NA>                NA
    ## 7             NA               <NA>              <NA>                NA
    ## 8             NA               <NA>              <NA>                NA
    ## 9             NA               <NA>              <NA>                NA
    ## 10            NA               <NA>              <NA>                NA
    ## 11            NA               <NA>              <NA>                NA
    ## 12            NA               <NA>              <NA>                NA
    ## 13            NA               <NA>              <NA>                NA
    ## 14            NA               <NA>              <NA>                NA
    ## 15            NA               <NA>              <NA>                NA
    ## 16            NA               <NA>              <NA>                NA
    ## 17            NA               <NA>              <NA>                NA
    ## 18            NA               <NA>              <NA>                NA
    ## 19            NA               <NA>              <NA>                NA
    ## 20            NA               <NA>              <NA>                NA
    ## 21            NA               <NA>              <NA>                NA
    ## 22            NA               <NA>              <NA>                NA
    ## 23            NA               <NA>              <NA>                NA
    ## 24            NA               <NA>              <NA>                NA
    ## 25            NA               <NA>              <NA>                NA
    ## 26            NA               <NA>              <NA>                NA
    ## 27            NA               <NA>              <NA>                NA
    ## 28            NA               <NA>              <NA>                NA
    ## 29            NA               <NA>              <NA>                NA
    ## 30            NA               <NA>              <NA>                NA
    ## 31            NA               <NA>              <NA>                NA
    ## 32            NA               <NA>              <NA>                NA
    ## 33            NA               <NA>              <NA>                NA
    ## 34            NA               <NA>              <NA>                NA
    ## 35            NA               <NA>              <NA>                NA
    ## 36          TRUE          rs6733839         rs4663105              TRUE
    ## 37            NA               <NA>              <NA>                NA
    ## 38            NA               <NA>              <NA>                NA
    ## 39            NA               <NA>              <NA>                NA
    ## 40            NA               <NA>              <NA>                NA
    ## 41            NA               <NA>              <NA>                NA
    ## 42            NA               <NA>              <NA>                NA
    ## 43            NA               <NA>              <NA>                NA
    ## 44            NA               <NA>              <NA>                NA
    ## 45            NA               <NA>              <NA>                NA
    ## 46            NA               <NA>              <NA>                NA
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            2
    ## 2               <NA>             <NA>             <NA>           19
    ## 3               <NA>             <NA>             <NA>            5
    ## 4               <NA>             <NA>             <NA>           11
    ## 5               <NA>             <NA>             <NA>           19
    ## 6               <NA>             <NA>             <NA>            6
    ## 7               <NA>             <NA>             <NA>            7
    ## 8               <NA>             <NA>             <NA>           19
    ## 9               <NA>             <NA>             <NA>           12
    ## 10              <NA>             <NA>             <NA>            7
    ## 11              <NA>             <NA>             <NA>           19
    ## 12              <NA>             <NA>             <NA>           19
    ## 13              <NA>             <NA>             <NA>           10
    ## 14              <NA>             <NA>             <NA>           14
    ## 15              <NA>             <NA>             <NA>           19
    ## 16              <NA>             <NA>             <NA>            8
    ## 17              <NA>             <NA>             <NA>            6
    ## 18              <NA>             <NA>             <NA>           22
    ## 19              <NA>             <NA>             <NA>           19
    ## 20              <NA>             <NA>             <NA>            7
    ## 21              <NA>             <NA>             <NA>           11
    ## 22              <NA>             <NA>             <NA>           14
    ## 23              <NA>             <NA>             <NA>           17
    ## 24              <NA>             <NA>             <NA>           21
    ## 25              <NA>             <NA>             <NA>           16
    ## 26              <NA>             <NA>             <NA>            4
    ## 27              <NA>             <NA>             <NA>            6
    ## 28              <NA>             <NA>             <NA>            2
    ## 29              <NA>             <NA>             <NA>            5
    ## 30              <NA>             <NA>             <NA>           11
    ## 31              <NA>             <NA>             <NA>           15
    ## 32              <NA>             <NA>             <NA>           11
    ## 33              <NA>             <NA>             <NA>           19
    ## 34              <NA>             <NA>             <NA>           20
    ## 35              <NA>             <NA>             <NA>            9
    ## 36                 C                C                A            2
    ## 37              <NA>             <NA>             <NA>            1
    ## 38              <NA>             <NA>             <NA>            3
    ## 39              <NA>             <NA>             <NA>            4
    ## 40              <NA>             <NA>             <NA>            8
    ## 41              <NA>             <NA>             <NA>            2
    ## 42              <NA>             <NA>             <NA>           19
    ## 43              <NA>             <NA>             <NA>           19
    ## 44              <NA>             <NA>             <NA>            8
    ## 45              <NA>             <NA>             <NA>            7
    ## 46              <NA>             <NA>             <NA>           11
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     233981912      0.0194   5.159794     2.552e-07               63926
    ## 2      45196958      0.0795  -6.753459     1.436e-11               63926
    ## 3     139707439      0.0143  -5.272730     1.432e-07               63926
    ## 4     121435587      0.0369  -5.563690     2.633e-08               63926
    ## 5      45436753      0.0661  12.527988     5.434e-36               63926
    ## 6      41034000      0.0431   6.914153     4.467e-12               63926
    ## 7     127426090      0.0672  -4.645833     3.350e-06               63926
    ## 8      45393516      0.0691  14.296671     2.275e-46               63926
    ## 9     127222883      0.0465   4.716130     2.459e-06               63926
    ## 10    143109139      0.0182  -5.648350     1.561e-08               63926
    ## 11     45439498      0.1015  -5.441379     5.274e-08               63926
    ## 12      1050874      0.0169  -6.337280     2.562e-10               63926
    ## 13     11721057      0.0154   5.519480     3.417e-08               63926
    ## 14     92938855      0.0157  -5.770701     8.729e-09               63926
    ## 15     45387459      0.0189  51.074100    1.000e-200               63926
    ## 16     71551628      0.0237   4.810127     1.570e-06               63926
    ## 17     47595155      0.0157  -5.579620     2.232e-08               63926
    ## 18     21926584      0.0545  -4.614679     3.904e-06               63926
    ## 19     45574482      0.0879  -6.078498     1.192e-09               63926
    ## 20     33721795      0.0769   4.596879     4.253e-06               63926
    ## 21     60021948      0.0149  -8.268456     1.186e-16               63926
    ## 22     53391680      0.0246   4.967480     6.621e-07               63926
    ## 23     56409089      0.0147  -5.088435     3.671e-07               63926
    ## 24     28148191      0.0162  -5.166667     2.422e-07               63926
    ## 25     19910313      0.0181  -4.861880     1.115e-06               63926
    ## 26     66245059      0.0475   4.673684     2.900e-06               63926
    ## 27     32560306      0.0166  -5.825300     5.798e-09               63926
    ## 28    186794162      0.0247   4.663968     3.200e-06               63926
    ## 29     52665230      0.0760  -4.938158     7.796e-07               63926
    ## 30     47380340      0.0144   6.493056     9.702e-11               63926
    ## 31     59034174      0.0151  -4.622517     3.812e-06               63926
    ## 32     85868640      0.0148   8.094590     5.809e-16               63926
    ## 33     45358448      0.0610  11.745902     7.131e-32               63926
    ## 34     54998544      0.0259  -5.092660     3.652e-07               63926
    ## 35     85450616      0.0335   4.731343     2.169e-06               63926
    ## 36    127892810      0.0154  10.993506     4.022e-28               63926
    ## 37    207750568      0.0183  -8.240440     1.555e-16               63926
    ## 38     45101639      0.0257  -5.031130     4.774e-07               63926
    ## 39    104176240      0.0940   4.639362     3.487e-06               63926
    ## 40     27219987      0.0153   6.117647     8.342e-10               63926
    ## 41    127863224      0.0172   5.011628     5.341e-07               63926
    ## 42     45653226      0.0623   4.778491     1.750e-06               63926
    ## 43     18558876      0.0151   4.609270     3.946e-06               63926
    ## 44     27468503      0.0158   8.436709     3.492e-17               63926
    ## 45     50322832      0.0148   4.567570     4.794e-06               63926
    ## 46    131769402      0.0144   4.597220     4.386e-06               63926
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 2  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 3  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 4  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 5  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 6  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 7  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 8  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 9  Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 10 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 11 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 12 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 13 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 14 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 15 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 16 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 17 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 18 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 19 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 20 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 21 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 22 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 23 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 24 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 25 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 26 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 27 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 28 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 29 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 30 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 31 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 32 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 33 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 34 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 35 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 36 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 37 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 38 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 39 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 40 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 41 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 42 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 43 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 44 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 45 Kunkle2019load             TRUE             reported      zBv2EF      2
    ## 46 Kunkle2019load             TRUE             reported      zBv2EF      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    4.065701e-06             1
    ## 2     TRUE          FALSE 5e-06              NA          <NA>
    ## 3     TRUE           TRUE 5e-06    1.943728e-05             1
    ## 4     TRUE           TRUE 5e-06    4.205170e-07             1
    ## 5     TRUE          FALSE 5e-06              NA          <NA>
    ## 6     TRUE           TRUE 5e-06    3.937208e-05             1
    ## 7     TRUE           TRUE 5e-06    5.093097e-05             1
    ## 8     TRUE          FALSE 5e-06              NA          <NA>
    ## 9     TRUE           TRUE 5e-06    7.456502e-06             1
    ## 10    TRUE           TRUE 5e-06    1.757861e-08             1
    ## 11    TRUE          FALSE 5e-06              NA          <NA>
    ## 12    TRUE           TRUE 5e-06    4.020592e-05        0.4968
    ## 13    TRUE           TRUE 5e-06    1.028055e-06             1
    ## 14    TRUE           TRUE 5e-06    7.828706e-08             1
    ## 15    TRUE          FALSE 5e-06              NA          <NA>
    ## 16    TRUE           TRUE 5e-06    7.384514e-09             1
    ## 17    TRUE           TRUE 5e-06    9.172249e-07             1
    ## 18    TRUE           TRUE 5e-06    9.121528e-05             1
    ## 19    TRUE          FALSE 5e-06              NA          <NA>
    ## 20    TRUE           TRUE 5e-06    1.280517e-04             1
    ## 21    TRUE           TRUE 5e-06    2.147341e-08             1
    ## 22    TRUE           TRUE 5e-06    5.590926e-05             1
    ## 23   FALSE           TRUE 5e-06              NA          <NA>
    ## 24    TRUE           TRUE 5e-06    7.461130e-07             1
    ## 25    TRUE           TRUE 5e-06    4.274004e-05             1
    ## 26    TRUE           TRUE 5e-06    2.908619e-05             1
    ## 27    TRUE           TRUE 5e-06    1.613919e-04       <0.0072
    ## 28    TRUE           TRUE 5e-06    1.494077e-05             1
    ## 29   FALSE           TRUE 5e-06              NA          <NA>
    ## 30    TRUE           TRUE 5e-06    8.750767e-06             1
    ## 31    TRUE           TRUE 5e-06    1.575303e-05             1
    ## 32    TRUE           TRUE 5e-06    3.213406e-05        0.7344
    ## 33    TRUE          FALSE 5e-06              NA          <NA>
    ## 34    TRUE           TRUE 5e-06    5.134222e-06             1
    ## 35    TRUE           TRUE 5e-06    3.303625e-05             1
    ## 36    TRUE           TRUE 5e-06    1.217839e-05             1
    ## 37    TRUE           TRUE 5e-06    1.759808e-08             1
    ## 38    TRUE           TRUE 5e-06    1.198032e-04        0.3744
    ## 39    TRUE           TRUE 5e-06    7.605479e-04             1
    ## 40    TRUE           TRUE 5e-06    2.389939e-08             1
    ## 41    TRUE           TRUE 5e-06    3.922295e-05             1
    ## 42    TRUE          FALSE 5e-06              NA          <NA>
    ## 43    TRUE           TRUE 5e-06    2.958199e-05             1
    ## 44    TRUE           TRUE 5e-06    5.013399e-06             1
    ## 45    TRUE           TRUE 5e-06    1.880882e-06             1
    ## 46    TRUE           TRUE 5e-06    3.956861e-05        0.3888
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2             NA
    ## 3           TRUE
    ## 4           TRUE
    ## 5             NA
    ## 6           TRUE
    ## 7           TRUE
    ## 8             NA
    ## 9           TRUE
    ## 10          TRUE
    ## 11            NA
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15            NA
    ## 16          TRUE
    ## 17          TRUE
    ## 18          TRUE
    ## 19            NA
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE
    ## 23            NA
    ## 24          TRUE
    ## 25          TRUE
    ## 26          TRUE
    ## 27         FALSE
    ## 28          TRUE
    ## 29            NA
    ## 30          TRUE
    ## 31          TRUE
    ## 32          TRUE
    ## 33            NA
    ## 34          TRUE
    ## 35          TRUE
    ## 36          TRUE
    ## 37          TRUE
    ## 38          TRUE
    ## 39          TRUE
    ## 40          TRUE
    ## 41          TRUE
    ## 42            NA
    ## 43          TRUE
    ## 44          TRUE
    ## 45          TRUE
    ## 46          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Fish and
plant related diet GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11      1.5e-02
    ## 2 rs114533385          19    45436753     5.434e-36      8.8e-02
    ## 3 rs117310449          19    45393516     2.275e-46      1.8e-03
    ## 4 rs118004808          19    45439498     5.274e-08      9.4e-01
    ## 5  rs12972156          19    45387459    1.000e-200      7.0e-07
    ## 6 rs139995984          19    45574482     1.192e-09      6.8e-01
    ## 7   rs4803765          19    45358448     7.131e-32      3.7e-01
    ## 8  rs80182863          19    45653226     1.750e-06      3.3e-01

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
    ## 1            FALSE   0.01934795 35.01415  0.05 0.01071078 0.05122784
    ## 2             TRUE   0.01880833 34.99139  0.05 0.93935146 0.16260014

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
on Fish and plant related diet. <br>

**Table 6** MR causaul estimates for LOAD on Fish and plant related diet

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 2      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 3      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 4      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   36 -0.0003857404 0.004680502
    ## 2                           Weighted median   36 -0.0017373998 0.007225198
    ## 3                             Weighted mode   36 -0.0007110966 0.012528143
    ## 4                                  MR Egger   36 -0.0031665565 0.021154590
    ##        pval
    ## 1 0.9343172
    ## 2 0.8099706
    ## 3 0.9550592
    ## 4 0.8818964

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Fish and plant related diet and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 2      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 83.42837   34 4.880567e-06
    ## 2 Inverse variance weighted 83.47656   35 7.726870e-06

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load    0.0003313035
    ##            se      pval
    ## 1 0.002364125 0.8893779

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
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 88.51393 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 2      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 3      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 4      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   35 -4.892565e-03 0.004762910
    ## 2                           Weighted median   35 -1.857699e-03 0.007114018
    ## 3                             Weighted mode   35 -8.147705e-04 0.012212149
    ## 4                                  MR Egger   35  1.572167e-05 0.017802743
    ##        pval
    ## 1 0.3043161
    ## 2 0.7939906
    ## 3 0.9471970
    ## 4 0.9993007

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ## 2      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 57.22609   33 0.005548070
    ## 2 Inverse variance weighted 57.37658   34 0.007335259

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      zBv2EF     MMYFeT Niarchou2020fish Kunkle2019load   -0.0005896284
    ##            se      pval
    ## 1 0.002001507 0.7701507

<br>
