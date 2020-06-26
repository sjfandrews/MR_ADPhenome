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

### Outcome: Meat related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Meat related diet

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1     rs679515     1 207750568    T    C 0.823599 -0.004004690 0.00318674
    ## 2    rs7584040     2 127863224    C    T 0.231427  0.001930020 0.00289259
    ## 3    rs6733839    NA        NA <NA> <NA>       NA           NA         NA
    ## 4   rs35695568     2 186794162    G    T 0.094851  0.006097980 0.00414315
    ## 5   rs10933431     2 233981912    G    C 0.781558  0.002385020 0.00293929
    ## 6    rs6805148     3  45101639    A    C 0.091516  0.001607130 0.00422497
    ## 7   rs28660482     4  66245059    T    A 0.023394 -0.004983860 0.00803902
    ## 8    rs6822989     4 104176240    C    T 0.004808  0.012277400 0.01754050
    ## 9   rs35868327     5  52665230    T    G 0.002254 -0.057997400 0.02586250
    ## 10  rs11168036     5 139707439    T    G 0.520491 -0.005483870 0.00245647
    ## 11  rs34665982     6  32560306    T    C 0.561715  0.000311533 0.00245466
    ## 12 rs114812713     6  41034000    G    C 0.024785  0.031483600 0.00784441
    ## 13   rs1385742     6  47595155    A    T 0.650201  0.003706910 0.00259678
    ## 14 rs143429938     7  33721795    C    T 0.013733  0.007557890 0.01048730
    ## 15   rs9649710     7  50322832    A    G 0.604080  0.000336166 0.00248244
    ## 16 rs117240937     7 127426090    G    A 0.007748  0.017597600 0.01388330
    ## 17  rs11767557     7 143109139    T    C 0.213996 -0.001960680 0.00295899
    ## 18  rs73223431     8  27219987    C    T 0.365841 -0.001679760 0.00253226
    ## 19    rs867230     8  27468503    C    A 0.588267 -0.004525500 0.00251535
    ## 20  rs13252043     8  71551628    C    T 0.094420 -0.008272450 0.00414996
    ## 21   rs6559689     9  85450616    C    T 0.045110  0.004968050 0.00584178
    ## 22  rs12416487    10  11721057    A    T 0.656930 -0.007302070 0.00256369
    ## 23   rs3740688    11  47380340    G    T 0.545598  0.005791370 0.00244488
    ## 24   rs1582763    11  60021948    G    A 0.379894 -0.000582561 0.00250788
    ## 25   rs3851179    11  85868640    T    C 0.627981 -0.002333060 0.00250919
    ## 26  rs11218343    11 121435587    T    C 0.037072  0.012436500 0.00642955
    ## 27   rs9787911    11 131769402    T    C 0.426769 -0.002015400 0.00247179
    ## 28 rs117394726    12 127222883    A    C 0.029605 -0.005225880 0.00727762
    ## 29  rs17125924    14  53391680    A    G 0.090757  0.000237284 0.00423148
    ## 30  rs12590654    14  92938855    G    A 0.338439 -0.004423070 0.00260001
    ## 31    rs383902    15  59034174    C    T 0.333080 -0.000639041 0.00259086
    ## 32  rs28588186    16  19910313    C    G 0.199067 -0.007879550 0.00306155
    ## 33  rs62039712    NA        NA <NA> <NA>       NA           NA         NA
    ## 34  rs34971488    NA        NA <NA> <NA>       NA           NA         NA
    ## 35   rs2632516    17  56409089    G    C 0.441708  0.004486400 0.00247080
    ## 36  rs12151021    19   1050874    A    G 0.676046 -0.001436630 0.00261852
    ## 37   rs8111708    19  18558876    A    G 0.348372 -0.004165580 0.00255852
    ## 38 rs111358663    19  45196958    T    A 0.014778  0.002191620 0.01008030
    ## 39   rs4803765    19  45358448    C    T 0.006627  0.001020340 0.01506440
    ## 40  rs12972156    19  45387459    C    G 0.146627 -0.017579300 0.00345924
    ## 41 rs117310449    19  45393516    C    T 0.011691 -0.010492900 0.01130360
    ## 42  rs73033507    NA        NA <NA> <NA>       NA           NA         NA
    ## 43 rs114533385    19  45436753    C    T 0.009880 -0.015064400 0.01230300
    ## 44 rs118004808    19  45439498    C    T 0.010731  0.004593920 0.01198260
    ## 45 rs139995984    19  45574482    G    C 0.007776 -0.024751900 0.01399840
    ## 46  rs80182863    19  45653226    C    T 0.013144 -0.003927090 0.01071070
    ## 47   rs6014724    20  54998544    A    G 0.087138  0.000628939 0.00432028
    ## 48   rs2830489    21  28148191    C    T 0.275270  0.005225650 0.00271993
    ## 49 rs138727474    22  21926584    C    T 0.029494 -0.002154350 0.00730709
    ##             Z       P      N           TRAIT
    ## 1  -1.2566700 2.1e-01 335576 fish_plant_diet
    ## 2   0.6672290 5.0e-01 335576 fish_plant_diet
    ## 3          NA      NA     NA            <NA>
    ## 4   1.4718200 1.4e-01 335576 fish_plant_diet
    ## 5   0.8114270 4.2e-01 335576 fish_plant_diet
    ## 6   0.3803880 7.0e-01 335576 fish_plant_diet
    ## 7  -0.6199590 5.4e-01 335576 fish_plant_diet
    ## 8   0.6999460 4.8e-01 335576 fish_plant_diet
    ## 9  -2.2425300 2.5e-02 335576 fish_plant_diet
    ## 10 -2.2324200 2.6e-02 335576 fish_plant_diet
    ## 11  0.1269150 9.0e-01 335576 fish_plant_diet
    ## 12  4.0135100 6.0e-05 335576 fish_plant_diet
    ## 13  1.4275000 1.5e-01 335576 fish_plant_diet
    ## 14  0.7206710 4.7e-01 335576 fish_plant_diet
    ## 15  0.1354180 8.9e-01 335576 fish_plant_diet
    ## 16  1.2675400 2.0e-01 335576 fish_plant_diet
    ## 17 -0.6626180 5.1e-01 335576 fish_plant_diet
    ## 18 -0.6633440 5.1e-01 335576 fish_plant_diet
    ## 19 -1.7991500 7.2e-02 335576 fish_plant_diet
    ## 20 -1.9933800 4.6e-02 335576 fish_plant_diet
    ## 21  0.8504340 4.0e-01 335576 fish_plant_diet
    ## 22 -2.8482700 4.4e-03 335576 fish_plant_diet
    ## 23  2.3687700 1.8e-02 335576 fish_plant_diet
    ## 24 -0.2322920 8.2e-01 335576 fish_plant_diet
    ## 25 -0.9298060 3.5e-01 335576 fish_plant_diet
    ## 26  1.9342700 5.3e-02 335576 fish_plant_diet
    ## 27 -0.8153610 4.1e-01 335576 fish_plant_diet
    ## 28 -0.7180750 4.7e-01 335576 fish_plant_diet
    ## 29  0.0560759 9.6e-01 335576 fish_plant_diet
    ## 30 -1.7011700 8.9e-02 335576 fish_plant_diet
    ## 31 -0.2466520 8.1e-01 335576 fish_plant_diet
    ## 32 -2.5737100 1.0e-02 335576 fish_plant_diet
    ## 33         NA      NA     NA            <NA>
    ## 34         NA      NA     NA            <NA>
    ## 35  1.8157700 6.9e-02 335576 fish_plant_diet
    ## 36 -0.5486420 5.8e-01 335576 fish_plant_diet
    ## 37 -1.6281200 1.0e-01 335576 fish_plant_diet
    ## 38  0.2174160 8.3e-01 335576 fish_plant_diet
    ## 39  0.0677319 9.5e-01 335576 fish_plant_diet
    ## 40 -5.0818400 3.7e-07 335576 fish_plant_diet
    ## 41 -0.9282790 3.5e-01 335576 fish_plant_diet
    ## 42         NA      NA     NA            <NA>
    ## 43 -1.2244500 2.2e-01 335576 fish_plant_diet
    ## 44  0.3833830 7.0e-01 335576 fish_plant_diet
    ## 45 -1.7681900 7.7e-02 335576 fish_plant_diet
    ## 46 -0.3666510 7.1e-01 335576 fish_plant_diet
    ## 47  0.1455780 8.8e-01 335576 fish_plant_diet
    ## 48  1.9212400 5.5e-02 335576 fish_plant_diet
    ## 49 -0.2948300 7.7e-01 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Meat related diet

    ##   target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1  rs6733839 rs4663105 0.896576 0.995501 TC/CA  NA     2 127891427
    ## 2 rs62039712      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 3 rs34971488      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 4 rs73033507      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy       AF       BETA         SE        Z    P      N
    ## 1         A         C 0.415808 0.00180431 0.00250195 0.721161 0.47 335576
    ## 2      <NA>      <NA>       NA         NA         NA       NA   NA     NA
    ## 3      <NA>      <NA>       NA         NA         NA       NA   NA     NA
    ## 4      <NA>      <NA>       NA         NA         NA       NA   NA     NA
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

**Table 4:** Harmonized LOAD and Meat related diet datasets

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
    ## 1                      C                    G        0.1001  0.002385020
    ## 2                      A                    T       -0.5369  0.002191620
    ## 3                      G                    T       -0.0754 -0.005483870
    ## 4                      C                    T       -0.2053  0.012436500
    ## 5                      T                    C        0.8281 -0.015064400
    ## 6                      C                    G        0.2980  0.031483600
    ## 7                      A                    G       -0.3122  0.017597600
    ## 8                      T                    C        0.9879 -0.010492900
    ## 9                      C                    A        0.2193 -0.005225880
    ## 10                     C                    T       -0.1028 -0.001960680
    ## 11                     T                    C       -0.5523  0.004593920
    ## 12                     G                    A       -0.1071 -0.001436630
    ## 13                     T                    A        0.0850 -0.007302070
    ## 14                     A                    G       -0.0906 -0.004423070
    ## 15                     G                    C        0.9653 -0.017579300
    ## 16                     T                    C        0.1140 -0.008272450
    ## 17                     T                    A       -0.0876  0.003706910
    ## 18                     T                    C       -0.2515 -0.002154350
    ## 19                     C                    G       -0.5343 -0.024751900
    ## 20                     T                    C        0.3535  0.007557890
    ## 21                     A                    G       -0.1232 -0.000582561
    ## 22                     G                    A        0.1222  0.000237284
    ## 23                     C                    G       -0.0748  0.004486400
    ## 24                     T                    C       -0.0837  0.005225650
    ## 25                     G                    C       -0.0880 -0.007879550
    ## 26                     A                    T        0.2220 -0.004983860
    ## 27                     C                    T       -0.0967  0.000311533
    ## 28                     T                    G        0.1152  0.006097980
    ## 29                     G                    T       -0.3753 -0.057997400
    ## 30                     T                    G        0.0935  0.005791370
    ## 31                     T                    C       -0.0698 -0.000639041
    ## 32                     C                    T        0.1198 -0.002333060
    ## 33                     T                    C        0.7165  0.001020340
    ## 34                     G                    A       -0.1319  0.000628939
    ## 35                     T                    C        0.1585  0.004968050
    ## 36                     T                    C        0.1693  0.001804310
    ## 37                     C                    T       -0.1508 -0.004004690
    ## 38                     C                    A       -0.1293  0.001607130
    ## 39                     T                    C        0.4361  0.012277400
    ## 40                     T                    C        0.0936 -0.001679760
    ## 41                     T                    C        0.0862  0.001930020
    ## 42                     T                    C        0.2977 -0.003927090
    ## 43                     G                    A        0.0696 -0.004165580
    ## 44                     A                    C        0.1333 -0.004525500
    ## 45                     G                    A        0.0676  0.000336166
    ## 46                     C                    T        0.0662 -0.002015400
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774    0.781558  FALSE        TRUE     FALSE     jd7n6c
    ## 2        0.0111    0.014778  FALSE        TRUE     FALSE     jd7n6c
    ## 3        0.5033    0.520491  FALSE       FALSE     FALSE     jd7n6c
    ## 4        0.0401    0.037072  FALSE       FALSE     FALSE     jd7n6c
    ## 5        0.0210    0.009880  FALSE       FALSE     FALSE     jd7n6c
    ## 6        0.0301    0.024785  FALSE        TRUE     FALSE     jd7n6c
    ## 7        0.0173    0.007748  FALSE       FALSE     FALSE     jd7n6c
    ## 8        0.0130    0.011691  FALSE       FALSE     FALSE     jd7n6c
    ## 9        0.0400    0.029605  FALSE       FALSE     FALSE     jd7n6c
    ## 10       0.1968    0.213996  FALSE       FALSE     FALSE     jd7n6c
    ## 11       0.0177    0.010731  FALSE       FALSE     FALSE     jd7n6c
    ## 12       0.6753    0.676046  FALSE       FALSE     FALSE     jd7n6c
    ## 13       0.6519    0.656930  FALSE        TRUE     FALSE     jd7n6c
    ## 14       0.3353    0.338439  FALSE       FALSE     FALSE     jd7n6c
    ## 15       0.2027    0.146627  FALSE        TRUE     FALSE     jd7n6c
    ## 16       0.0984    0.094420  FALSE       FALSE     FALSE     jd7n6c
    ## 17       0.6344    0.650201  FALSE        TRUE     FALSE     jd7n6c
    ## 18       0.0269    0.029494  FALSE       FALSE     FALSE     jd7n6c
    ## 19       0.0155    0.007776  FALSE        TRUE     FALSE     jd7n6c
    ## 20       0.0211    0.013733  FALSE       FALSE     FALSE     jd7n6c
    ## 21       0.3729    0.379894  FALSE       FALSE     FALSE     jd7n6c
    ## 22       0.0926    0.090757  FALSE       FALSE     FALSE     jd7n6c
    ## 23       0.4402    0.441708  FALSE        TRUE      TRUE     jd7n6c
    ## 24       0.2882    0.275270  FALSE       FALSE     FALSE     jd7n6c
    ## 25       0.1981    0.199067  FALSE        TRUE     FALSE     jd7n6c
    ## 26       0.0243    0.023394  FALSE        TRUE     FALSE     jd7n6c
    ## 27       0.5213    0.561715  FALSE       FALSE     FALSE     jd7n6c
    ## 28       0.0922    0.094851  FALSE       FALSE     FALSE     jd7n6c
    ## 29       0.0132    0.002254   TRUE        TRUE     FALSE     jd7n6c
    ## 30       0.5524    0.545598  FALSE       FALSE     FALSE     jd7n6c
    ## 31       0.3274    0.333080  FALSE       FALSE     FALSE     jd7n6c
    ## 32       0.6410    0.627981  FALSE       FALSE     FALSE     jd7n6c
    ## 33       0.0243    0.006627  FALSE       FALSE     FALSE     jd7n6c
    ## 34       0.0920    0.087138  FALSE       FALSE     FALSE     jd7n6c
    ## 35       0.0504    0.045110  FALSE       FALSE     FALSE     jd7n6c
    ## 36       0.4067    0.415808  FALSE       FALSE     FALSE     jd7n6c
    ## 37       0.8126    0.823599  FALSE       FALSE     FALSE     jd7n6c
    ## 38       0.0864    0.091516  FALSE       FALSE     FALSE     jd7n6c
    ## 39       0.0082    0.004808  FALSE       FALSE     FALSE     jd7n6c
    ## 40       0.3669    0.365841  FALSE       FALSE     FALSE     jd7n6c
    ## 41       0.2261    0.231427  FALSE       FALSE     FALSE     jd7n6c
    ## 42       0.0234    0.013144  FALSE       FALSE     FALSE     jd7n6c
    ## 43       0.3427    0.348372  FALSE       FALSE     FALSE     jd7n6c
    ## 44       0.6029    0.588267  FALSE       FALSE     FALSE     jd7n6c
    ## 45       0.6331    0.604080  FALSE       FALSE     FALSE     jd7n6c
    ## 46       0.4249    0.426769  FALSE       FALSE     FALSE     jd7n6c
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            2   233981912 0.00293929  0.8114270      4.2e-01
    ## 2           19    45196958 0.01008030  0.2174160      8.3e-01
    ## 3            5   139707439 0.00245647 -2.2324200      2.6e-02
    ## 4           11   121435587 0.00642955  1.9342700      5.3e-02
    ## 5           19    45436753 0.01230300 -1.2244500      2.2e-01
    ## 6            6    41034000 0.00784441  4.0135100      6.0e-05
    ## 7            7   127426090 0.01388330  1.2675400      2.0e-01
    ## 8           19    45393516 0.01130360 -0.9282790      3.5e-01
    ## 9           12   127222883 0.00727762 -0.7180750      4.7e-01
    ## 10           7   143109139 0.00295899 -0.6626180      5.1e-01
    ## 11          19    45439498 0.01198260  0.3833830      7.0e-01
    ## 12          19     1050874 0.00261852 -0.5486420      5.8e-01
    ## 13          10    11721057 0.00256369 -2.8482700      4.4e-03
    ## 14          14    92938855 0.00260001 -1.7011700      8.9e-02
    ## 15          19    45387459 0.00345924 -5.0818400      3.7e-07
    ## 16           8    71551628 0.00414996 -1.9933800      4.6e-02
    ## 17           6    47595155 0.00259678  1.4275000      1.5e-01
    ## 18          22    21926584 0.00730709 -0.2948300      7.7e-01
    ## 19          19    45574482 0.01399840 -1.7681900      7.7e-02
    ## 20           7    33721795 0.01048730  0.7206710      4.7e-01
    ## 21          11    60021948 0.00250788 -0.2322920      8.2e-01
    ## 22          14    53391680 0.00423148  0.0560759      9.6e-01
    ## 23          17    56409089 0.00247080  1.8157700      6.9e-02
    ## 24          21    28148191 0.00271993  1.9212400      5.5e-02
    ## 25          16    19910313 0.00306155 -2.5737100      1.0e-02
    ## 26           4    66245059 0.00803902 -0.6199590      5.4e-01
    ## 27           6    32560306 0.00245466  0.1269150      9.0e-01
    ## 28           2   186794162 0.00414315  1.4718200      1.4e-01
    ## 29           5    52665230 0.02586250 -2.2425300      2.5e-02
    ## 30          11    47380340 0.00244488  2.3687700      1.8e-02
    ## 31          15    59034174 0.00259086 -0.2466520      8.1e-01
    ## 32          11    85868640 0.00250919 -0.9298060      3.5e-01
    ## 33          19    45358448 0.01506440  0.0677319      9.5e-01
    ## 34          20    54998544 0.00432028  0.1455780      8.8e-01
    ## 35           9    85450616 0.00584178  0.8504340      4.0e-01
    ## 36           2   127891427 0.00250195  0.7211610      4.7e-01
    ## 37           1   207750568 0.00318674 -1.2566700      2.1e-01
    ## 38           3    45101639 0.00422497  0.3803880      7.0e-01
    ## 39           4   104176240 0.01754050  0.6999460      4.8e-01
    ## 40           8    27219987 0.00253226 -0.6633440      5.1e-01
    ## 41           2   127863224 0.00289259  0.6672290      5.0e-01
    ## 42          19    45653226 0.01071070 -0.3666510      7.1e-01
    ## 43          19    18558876 0.00255852 -1.6281200      1.0e-01
    ## 44           8    27468503 0.00251535 -1.7991500      7.2e-02
    ## 45           7    50322832 0.00248244  0.1354180      8.9e-01
    ## 46          11   131769402 0.00247179 -0.8153610      4.1e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020meat            TRUE            reported
    ## 2              335576 Niarchou2020meat            TRUE            reported
    ## 3              335576 Niarchou2020meat            TRUE            reported
    ## 4              335576 Niarchou2020meat            TRUE            reported
    ## 5              335576 Niarchou2020meat            TRUE            reported
    ## 6              335576 Niarchou2020meat            TRUE            reported
    ## 7              335576 Niarchou2020meat            TRUE            reported
    ## 8              335576 Niarchou2020meat            TRUE            reported
    ## 9              335576 Niarchou2020meat            TRUE            reported
    ## 10             335576 Niarchou2020meat            TRUE            reported
    ## 11             335576 Niarchou2020meat            TRUE            reported
    ## 12             335576 Niarchou2020meat            TRUE            reported
    ## 13             335576 Niarchou2020meat            TRUE            reported
    ## 14             335576 Niarchou2020meat            TRUE            reported
    ## 15             335576 Niarchou2020meat            TRUE            reported
    ## 16             335576 Niarchou2020meat            TRUE            reported
    ## 17             335576 Niarchou2020meat            TRUE            reported
    ## 18             335576 Niarchou2020meat            TRUE            reported
    ## 19             335576 Niarchou2020meat            TRUE            reported
    ## 20             335576 Niarchou2020meat            TRUE            reported
    ## 21             335576 Niarchou2020meat            TRUE            reported
    ## 22             335576 Niarchou2020meat            TRUE            reported
    ## 23             335576 Niarchou2020meat            TRUE            reported
    ## 24             335576 Niarchou2020meat            TRUE            reported
    ## 25             335576 Niarchou2020meat            TRUE            reported
    ## 26             335576 Niarchou2020meat            TRUE            reported
    ## 27             335576 Niarchou2020meat            TRUE            reported
    ## 28             335576 Niarchou2020meat            TRUE            reported
    ## 29             335576 Niarchou2020meat            TRUE            reported
    ## 30             335576 Niarchou2020meat            TRUE            reported
    ## 31             335576 Niarchou2020meat            TRUE            reported
    ## 32             335576 Niarchou2020meat            TRUE            reported
    ## 33             335576 Niarchou2020meat            TRUE            reported
    ## 34             335576 Niarchou2020meat            TRUE            reported
    ## 35             335576 Niarchou2020meat            TRUE            reported
    ## 36             335576 Niarchou2020meat            TRUE            reported
    ## 37             335576 Niarchou2020meat            TRUE            reported
    ## 38             335576 Niarchou2020meat            TRUE            reported
    ## 39             335576 Niarchou2020meat            TRUE            reported
    ## 40             335576 Niarchou2020meat            TRUE            reported
    ## 41             335576 Niarchou2020meat            TRUE            reported
    ## 42             335576 Niarchou2020meat            TRUE            reported
    ## 43             335576 Niarchou2020meat            TRUE            reported
    ## 44             335576 Niarchou2020meat            TRUE            reported
    ## 45             335576 Niarchou2020meat            TRUE            reported
    ## 46             335576 Niarchou2020meat            TRUE            reported
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
    ## 1  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 2  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 3  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 4  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 5  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 6  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 7  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 8  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 9  Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 10 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 11 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 12 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 13 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 14 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 15 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 16 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 17 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 18 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 19 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 20 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 21 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 22 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 23 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 24 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 25 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 26 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 27 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 28 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 29 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 30 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 31 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 32 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 33 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 34 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 35 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 36 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 37 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 38 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 39 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 40 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 41 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 42 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 43 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 44 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 45 Kunkle2019load             TRUE             reported      qRlCOX      2
    ## 46 Kunkle2019load             TRUE             reported      qRlCOX      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    4.456788e-06             1
    ## 2     TRUE          FALSE 5e-06              NA          <NA>
    ## 3     TRUE           TRUE 5e-06    2.860241e-05             1
    ## 4     TRUE           TRUE 5e-06    1.798631e-04             1
    ## 5     TRUE          FALSE 5e-06              NA          <NA>
    ## 6     TRUE           TRUE 5e-06    9.929950e-04       <0.0072
    ## 7     TRUE           TRUE 5e-06    3.546058e-04             1
    ## 8     TRUE          FALSE 5e-06              NA          <NA>
    ## 9     TRUE           TRUE 5e-06    3.679833e-05             1
    ## 10    TRUE           TRUE 5e-06    2.783280e-06             1
    ## 11    TRUE          FALSE 5e-06              NA          <NA>
    ## 12    TRUE           TRUE 5e-06    1.270931e-06             1
    ## 13    TRUE           TRUE 5e-06    6.036168e-05        0.0936
    ## 14    TRUE           TRUE 5e-06    1.797706e-05             1
    ## 15    TRUE          FALSE 5e-06              NA          <NA>
    ## 16    TRUE           TRUE 5e-06    7.730952e-05             1
    ## 17    TRUE           TRUE 5e-06    1.678504e-05             1
    ## 18    TRUE           TRUE 5e-06    1.865952e-06             1
    ## 19    TRUE          FALSE 5e-06              NA          <NA>
    ## 20    TRUE           TRUE 5e-06    4.309048e-05             1
    ## 21    TRUE           TRUE 5e-06    3.569795e-08             1
    ## 22    TRUE           TRUE 5e-06    2.762139e-08             1
    ## 23   FALSE           TRUE 5e-06              NA          <NA>
    ## 24    TRUE           TRUE 5e-06    3.155559e-05             1
    ## 25    TRUE           TRUE 5e-06    5.978898e-05        0.3672
    ## 26    TRUE           TRUE 5e-06    3.374647e-05             1
    ## 27    TRUE           TRUE 5e-06    4.234166e-07             1
    ## 28    TRUE           TRUE 5e-06    3.387128e-05             1
    ## 29   FALSE           TRUE 5e-06              NA          <NA>
    ## 30    TRUE           TRUE 5e-06    3.212781e-05        0.7992
    ## 31    TRUE           TRUE 5e-06    1.738980e-07             1
    ## 32    TRUE           TRUE 5e-06    8.237811e-06             1
    ## 33    TRUE          FALSE 5e-06              NA          <NA>
    ## 34    TRUE           TRUE 5e-06    1.173871e-06             1
    ## 35    TRUE           TRUE 5e-06    2.045059e-05             1
    ## 36    TRUE           TRUE 5e-06    1.932618e-06             1
    ## 37    TRUE           TRUE 5e-06    1.364024e-05             1
    ## 38    TRUE           TRUE 5e-06    4.300325e-06             1
    ## 39    TRUE           TRUE 5e-06    1.209695e-04             1
    ## 40    TRUE           TRUE 5e-06    4.195493e-06             1
    ## 41    TRUE           TRUE 5e-06    2.824200e-06             1
    ## 42    TRUE          FALSE 5e-06              NA          <NA>
    ## 43    TRUE           TRUE 5e-06    1.995111e-05             1
    ## 44    TRUE           TRUE 5e-06    2.798988e-05             1
    ## 45    TRUE           TRUE 5e-06    1.358798e-08             1
    ## 46    TRUE           TRUE 5e-06    5.145028e-06             1
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2             NA
    ## 3           TRUE
    ## 4           TRUE
    ## 5             NA
    ## 6          FALSE
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
    ## 27          TRUE
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

**Table 5:** SNPs that were genome-wide significant in the Meat related
diet GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11      8.3e-01
    ## 2 rs114533385          19    45436753     5.434e-36      2.2e-01
    ## 3 rs117310449          19    45393516     2.275e-46      3.5e-01
    ## 4 rs118004808          19    45439498     5.274e-08      7.0e-01
    ## 5  rs12972156          19    45387459    1.000e-200      3.7e-07
    ## 6 rs139995984          19    45574482     1.192e-09      7.7e-02
    ## 7   rs4803765          19    45358448     7.131e-32      9.5e-01
    ## 8  rs80182863          19    45653226     1.750e-06      7.1e-01

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
    ## 1            FALSE   0.01934795 35.01415  0.05 0.5234590799 0.11178709
    ## 2             TRUE   0.01860503 34.60601  0.05 0.0003811821 0.05004367

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
on Meat related diet. <br>

**Table 6** MR causaul estimates for LOAD on Meat related diet

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 2      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 3      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 4      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   36 0.003276749 0.004700284
    ## 2                           Weighted median   36 0.006543581 0.007473098
    ## 3                             Weighted mode   36 0.009586839 0.011804567
    ## 4                                  MR Egger   36 0.017492049 0.020096079
    ##        pval
    ## 1 0.4857162
    ## 2 0.3812376
    ## 3 0.4222067
    ## 4 0.3901746

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Meat related diet and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 2      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 74.65363   34 7.093384e-05
    ## 2 Inverse variance weighted 75.90226   35 7.533444e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020meat/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020meat/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load    -0.001693563
    ##            se      pval
    ## 1 0.002245792 0.4559775

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
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 80.21206 <2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 2      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 3      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 4      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   35 -9.470654e-05 0.004777054
    ## 2                           Weighted median   35  4.954286e-03 0.007832522
    ## 3                             Weighted mode   35  1.002520e-02 0.011939359
    ## 4                                  MR Egger   35 -7.739689e-04 0.019451279
    ##        pval
    ## 1 0.9841827
    ## 2 0.5270422
    ## 3 0.4069552
    ## 4 0.9685002

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ## 2      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 60.27713   33 0.002576905
    ## 2 Inverse variance weighted 60.27963   34 0.003612155

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      qRlCOX     jd7n6c Niarchou2020meat Kunkle2019load    7.935639e-05
    ##            se      pval
    ## 1 0.002143612 0.9706921

<br>
