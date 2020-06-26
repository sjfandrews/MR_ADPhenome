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

### Exposure: Hippocampal Volume

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Hippocampal Volume

    ##            SNP CHROM       POS REF ALT     AF        BETA          SE
    ## 1   rs10908512     1 153856498   C   T 0.5624  0.04051169 0.008700965
    ## 2    rs7588305     2   8780959   G   C 0.5308 -0.04002256 0.008681684
    ## 3   rs59966106     2  96999086   A   G 0.3114  0.04276760 0.009321611
    ## 4    rs2268894     2 162856148   C   T 0.5412 -0.05668170 0.008658983
    ## 5  rs138012093     4 134506440   G   A 0.0173 -0.16180284 0.033576021
    ## 6  rs144578582     4 155539564   G   A 0.0068 -0.36225028 0.074659992
    ## 7    rs6552737     4 184955461   T   A 0.4152 -0.04324518 0.008759404
    ## 8    rs2289881     5  66084260   G   T 0.3544 -0.05014690 0.009022472
    ## 9  rs148054686     5  94459128   G   A 0.0124 -0.21659175 0.047064699
    ## 10  rs10041542     5 167832067   T   C 0.2452 -0.04686000 0.010070917
    ## 11  rs17172044     7  42397586   A   C 0.0775 -0.07408290 0.016143574
    ## 12   rs2346440     7 133685512   G   C 0.4591  0.04059843 0.008661921
    ## 13  rs11979341     7 155797978   C   G 0.3163  0.06558170 0.009708611
    ## 14  rs11993215     8  28055926   A   T 0.9102  0.06998320 0.015193929
    ## 15 rs113835443     8 144717251   C   T 0.0904  0.07553081 0.016197900
    ## 16  rs62583528     9 106929593   G   A 0.1951  0.05622208 0.010891531
    ## 17   rs7020341     9 119247974   G   C 0.3590  0.05989482 0.009013518
    ## 18  rs11245365    10 126482389   G   A 0.5648 -0.04474128 0.008786582
    ## 19  rs12802656    11  16534415   A   C 0.4696 -0.03979580 0.008681459
    ## 20    rs659065    12   4008887   C   G 0.1413 -0.06743310 0.012611389
    ## 21  rs61921502    12  65832468   T   G 0.1534 -0.10788400 0.011964511
    ## 22  rs79522035    12  72956782   C   T 0.0419  0.09939183 0.021592837
    ## 23  rs77956314    12 117323367   T   C 0.0840  0.16185400 0.015536016
    ## 24 rs143933797    17  78252238   G   A 0.0166  0.22638451 0.047143797
    ## 25  rs79727675    18  11653053   C   A 0.0472 -0.13610794 0.027913852
    ## 26    rs429358    19  45411941   T   C 0.1537 -0.06342470 0.012519680
    ## 27   rs6060504    20  34197619   T   C 0.1624  0.06315530 0.011701919
    ## 28   rs5753220    22  30986350   T   C 0.2497 -0.04931970 0.010038609
    ##         Z         P     N              TRAIT
    ## 1   4.656 3.217e-06 26814 Hippocampal_Volume
    ## 2  -4.610 4.023e-06 26615 Hippocampal_Volume
    ## 3   4.588 4.470e-06 26814 Hippocampal_Volume
    ## 4  -6.546 5.894e-11 26814 Hippocampal_Volume
    ## 5  -4.819 1.445e-06 26065 Hippocampal_Volume
    ## 6  -4.852 1.221e-06 13258 Hippocampal_Volume
    ## 7  -4.937 7.922e-07 26814 Hippocampal_Volume
    ## 8  -5.558 2.728e-08 26814 Hippocampal_Volume
    ## 9  -4.602 4.184e-06 18411 Hippocampal_Volume
    ## 10 -4.653 3.273e-06 26615 Hippocampal_Volume
    ## 11 -4.589 4.464e-06 26814 Hippocampal_Volume
    ## 12  4.687 2.767e-06 26814 Hippocampal_Volume
    ## 13  6.755 1.424e-11 24484 Hippocampal_Volume
    ## 14  4.606 4.108e-06 26477 Hippocampal_Volume
    ## 15  4.663 3.118e-06 23154 Hippocampal_Volume
    ## 16  5.162 2.447e-07 26814 Hippocampal_Volume
    ## 17  6.645 3.035e-11 26700 Hippocampal_Volume
    ## 18 -5.092 3.547e-07 26322 Hippocampal_Volume
    ## 19 -4.584 4.560e-06 26614 Hippocampal_Volume
    ## 20 -5.347 8.931e-08 25881 Hippocampal_Volume
    ## 21 -9.017 1.941e-19 26814 Hippocampal_Volume
    ## 22  4.603 4.164e-06 26692 Hippocampal_Volume
    ## 23 10.418 2.055e-25 26814 Hippocampal_Volume
    ## 24  4.802 1.571e-06 13758 Hippocampal_Volume
    ## 25 -4.876 1.082e-06 14245 Hippocampal_Volume
    ## 26 -5.066 4.067e-07 24498 Hippocampal_Volume
    ## 27  5.397 6.762e-08 26814 Hippocampal_Volume
    ## 28 -4.913 8.988e-07 26459 Hippocampal_Volume

<br>

### Outcome: Diastolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Diastolic Blood Pressure

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1   rs10908512     1 153856498    C    T 0.5602  0.0884 0.0174  5.08045977
    ## 2    rs7588305     2   8780959    G    C 0.5424  0.0185 0.0179  1.03351955
    ## 3   rs59966106     2  96999086    A    G 0.3194 -0.1245 0.0185 -6.72973000
    ## 4    rs2268894     2 162856148    C    T 0.5294  0.0098 0.0173  0.56647399
    ## 5  rs138012093     4 134506440    G    A 0.0177 -0.0463 0.0726 -0.63774105
    ## 6  rs144578582    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 7    rs6552737     4 184955461    T    A 0.4324  0.0079 0.0178  0.44382022
    ## 8    rs2289881     5  66084260    G    T 0.3568 -0.0039 0.0181 -0.21546961
    ## 9  rs148054686    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 10  rs10041542     5 167832067    T    C 0.2498 -0.0293 0.0202 -1.45050000
    ## 11  rs17172044     7  42397586    A    C 0.0734  0.0098 0.0335  0.29253700
    ## 12   rs2346440     7 133685512    G    C 0.4576 -0.0169 0.0174 -0.97126437
    ## 13  rs11979341     7 155797978    C    G 0.3056 -0.0065 0.0200 -0.32500000
    ## 14  rs11993215    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 15 rs113835443     8 144717251    C    T 0.1014 -0.0301 0.0302 -0.99668874
    ## 16  rs62583528     9 106929593    G    A 0.2111  0.0060 0.0215  0.27906977
    ## 17   rs7020341     9 119247974    G    C 0.3610  0.0147 0.0181  0.81215470
    ## 18  rs11245365    10 126482389    G    A 0.5708 -0.0739 0.0175 -4.22285714
    ## 19  rs12802656    11  16534415    A    C 0.4801 -0.0770 0.0173 -4.45087000
    ## 20    rs659065    12   4008887    C    G 0.1449 -0.0072 0.0247 -0.29149800
    ## 21  rs61921502    12  65832468    T    G 0.1656  0.0089 0.0241  0.36929500
    ## 22  rs79522035    12  72956782    C    T 0.0402  0.0647 0.0460  1.40652174
    ## 23  rs77956314    12 117323367    T    C 0.0835  0.0664 0.0316  2.10127000
    ## 24 rs143933797    17  78252238    G    A 0.0290 -0.0313 0.0568 -0.55105634
    ## 25  rs79727675    18  11653053    C    A 0.0520 -0.0017 0.0421 -0.04038005
    ## 26    rs429358    19  45411941    T    C 0.1535 -0.0405 0.0247 -1.63968000
    ## 27   rs6060504    20  34197619    T    C 0.1495 -0.0293 0.0244 -1.20082000
    ## 28   rs5753220    22  30986350    T    C 0.2612  0.0033 0.0198  0.16666700
    ##            P      N                    TRAIT
    ## 1  3.672e-07 756486 Diastolic_Blood_Pressure
    ## 2  3.012e-01 754483 Diastolic_Blood_Pressure
    ## 3  1.597e-11 757600 Diastolic_Blood_Pressure
    ## 4  5.731e-01 757601 Diastolic_Blood_Pressure
    ## 5  5.237e-01 754125 Diastolic_Blood_Pressure
    ## 6         NA     NA                     <NA>
    ## 7  6.583e-01 753578 Diastolic_Blood_Pressure
    ## 8  8.286e-01 757600 Diastolic_Blood_Pressure
    ## 9         NA     NA                     <NA>
    ## 10 1.456e-01 754581 Diastolic_Blood_Pressure
    ## 11 7.705e-01 757599 Diastolic_Blood_Pressure
    ## 12 3.294e-01 757601 Diastolic_Blood_Pressure
    ## 13 7.428e-01 739714 Diastolic_Blood_Pressure
    ## 14        NA     NA                     <NA>
    ## 15 3.189e-01 744085 Diastolic_Blood_Pressure
    ## 16 7.789e-01 757600 Diastolic_Blood_Pressure
    ## 17 4.175e-01 753725 Diastolic_Blood_Pressure
    ## 18 2.313e-05 757601 Diastolic_Blood_Pressure
    ## 19 9.022e-06 749339 Diastolic_Blood_Pressure
    ## 20 7.705e-01 753806 Diastolic_Blood_Pressure
    ## 21 7.105e-01 756595 Diastolic_Blood_Pressure
    ## 22 1.592e-01 756484 Diastolic_Blood_Pressure
    ## 23 3.556e-02 757598 Diastolic_Blood_Pressure
    ## 24 5.815e-01 721723 Diastolic_Blood_Pressure
    ## 25 9.680e-01 701481 Diastolic_Blood_Pressure
    ## 26 1.014e-01 747976 Diastolic_Blood_Pressure
    ## 27 2.301e-01 757599 Diastolic_Blood_Pressure
    ## 28 8.659e-01 749339 Diastolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Diastolic Blood Pressure

    ##    target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1 rs144578582        NA    NA     NA    NA  NA    NA  NA        NA
    ## 2 rs148054686        NA    NA     NA    NA  NA    NA  NA        NA
    ## 3  rs11993215        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 2        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 3        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA
    ## 2            NA
    ## 3            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Hippocampal Volume and Diastolic Blood Pressure
datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10041542                      C                     T
    ## 2   rs10908512                      T                     C
    ## 3   rs11245365                      A                     G
    ## 4  rs113835443                      T                     C
    ## 5   rs11979341                      G                     C
    ## 6   rs12802656                      C                     A
    ## 7  rs138012093                      A                     G
    ## 8  rs143933797                      A                     G
    ## 9   rs17172044                      C                     A
    ## 10   rs2268894                      T                     C
    ## 11   rs2289881                      T                     G
    ## 12   rs2346440                      C                     G
    ## 13    rs429358                      C                     T
    ## 14   rs5753220                      C                     T
    ## 15  rs59966106                      G                     A
    ## 16   rs6060504                      C                     T
    ## 17  rs61921502                      G                     T
    ## 18  rs62583528                      A                     G
    ## 19   rs6552737                      A                     T
    ## 20    rs659065                      G                     C
    ## 21   rs7020341                      C                     G
    ## 22   rs7588305                      C                     G
    ## 23  rs77956314                      C                     T
    ## 24  rs79522035                      T                     C
    ## 25  rs79727675                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T   -0.04686000      -0.0293
    ## 2                      T                    C    0.04051169       0.0884
    ## 3                      A                    G   -0.04474128      -0.0739
    ## 4                      T                    C    0.07553081      -0.0301
    ## 5                      G                    C    0.06558170      -0.0065
    ## 6                      C                    A   -0.03979580      -0.0770
    ## 7                      A                    G   -0.16180284      -0.0463
    ## 8                      A                    G    0.22638451      -0.0313
    ## 9                      C                    A   -0.07408290       0.0098
    ## 10                     T                    C   -0.05668170       0.0098
    ## 11                     T                    G   -0.05014690      -0.0039
    ## 12                     C                    G    0.04059843      -0.0169
    ## 13                     C                    T   -0.06342470      -0.0405
    ## 14                     C                    T   -0.04931970       0.0033
    ## 15                     G                    A    0.04276760      -0.1245
    ## 16                     C                    T    0.06315530      -0.0293
    ## 17                     G                    T   -0.10788400       0.0089
    ## 18                     A                    G    0.05622208       0.0060
    ## 19                     A                    T   -0.04324518       0.0079
    ## 20                     G                    C   -0.06743310      -0.0072
    ## 21                     C                    G    0.05989482       0.0147
    ## 22                     C                    G   -0.04002256       0.0185
    ## 23                     C                    T    0.16185400       0.0664
    ## 24                     T                    C    0.09939183       0.0647
    ## 25                     A                    C   -0.13610794      -0.0017
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452      0.2498  FALSE       FALSE     FALSE     pjdv7H
    ## 2        0.5624      0.5602  FALSE       FALSE     FALSE     pjdv7H
    ## 3        0.5648      0.5708  FALSE       FALSE     FALSE     pjdv7H
    ## 4        0.0904      0.1014  FALSE       FALSE     FALSE     pjdv7H
    ## 5        0.3163      0.3056  FALSE        TRUE     FALSE     pjdv7H
    ## 6        0.4696      0.4801  FALSE       FALSE     FALSE     pjdv7H
    ## 7        0.0173      0.0177  FALSE       FALSE     FALSE     pjdv7H
    ## 8        0.0166      0.0290  FALSE       FALSE     FALSE     pjdv7H
    ## 9        0.0775      0.0734  FALSE       FALSE     FALSE     pjdv7H
    ## 10       0.5412      0.5294  FALSE       FALSE     FALSE     pjdv7H
    ## 11       0.3544      0.3568  FALSE       FALSE     FALSE     pjdv7H
    ## 12       0.4591      0.4576  FALSE        TRUE      TRUE     pjdv7H
    ## 13       0.1537      0.1535  FALSE       FALSE     FALSE     pjdv7H
    ## 14       0.2497      0.2612  FALSE       FALSE     FALSE     pjdv7H
    ## 15       0.3114      0.3194  FALSE       FALSE     FALSE     pjdv7H
    ## 16       0.1624      0.1495  FALSE       FALSE     FALSE     pjdv7H
    ## 17       0.1534      0.1656  FALSE       FALSE     FALSE     pjdv7H
    ## 18       0.1951      0.2111  FALSE       FALSE     FALSE     pjdv7H
    ## 19       0.4152      0.4324  FALSE        TRUE      TRUE     pjdv7H
    ## 20       0.1413      0.1449  FALSE        TRUE     FALSE     pjdv7H
    ## 21       0.3590      0.3610  FALSE        TRUE     FALSE     pjdv7H
    ## 22       0.5308      0.5424  FALSE        TRUE      TRUE     pjdv7H
    ## 23       0.0840      0.0835  FALSE       FALSE     FALSE     pjdv7H
    ## 24       0.0419      0.0402  FALSE       FALSE     FALSE     pjdv7H
    ## 25       0.0472      0.0520  FALSE       FALSE     FALSE     pjdv7H
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            5   167832067     0.0202 -1.45050000    1.456e-01
    ## 2            1   153856498     0.0174  5.08045977    3.672e-07
    ## 3           10   126482389     0.0175 -4.22285714    2.313e-05
    ## 4            8   144717251     0.0302 -0.99668874    3.189e-01
    ## 5            7   155797978     0.0200 -0.32500000    7.428e-01
    ## 6           11    16534415     0.0173 -4.45087000    9.022e-06
    ## 7            4   134506440     0.0726 -0.63774105    5.237e-01
    ## 8           17    78252238     0.0568 -0.55105634    5.815e-01
    ## 9            7    42397586     0.0335  0.29253700    7.705e-01
    ## 10           2   162856148     0.0173  0.56647399    5.731e-01
    ## 11           5    66084260     0.0181 -0.21546961    8.286e-01
    ## 12           7   133685512     0.0174 -0.97126437    3.294e-01
    ## 13          19    45411941     0.0247 -1.63968000    1.014e-01
    ## 14          22    30986350     0.0198  0.16666700    8.659e-01
    ## 15           2    96999086     0.0185 -6.72973000    1.597e-11
    ## 16          20    34197619     0.0244 -1.20082000    2.301e-01
    ## 17          12    65832468     0.0241  0.36929500    7.105e-01
    ## 18           9   106929593     0.0215  0.27906977    7.789e-01
    ## 19           4   184955461     0.0178  0.44382022    6.583e-01
    ## 20          12     4008887     0.0247 -0.29149800    7.705e-01
    ## 21           9   119247974     0.0181  0.81215470    4.175e-01
    ## 22           2     8780959     0.0179  1.03351955    3.012e-01
    ## 23          12   117323367     0.0316  2.10127000    3.556e-02
    ## 24          12    72956782     0.0460  1.40652174    1.592e-01
    ## 25          18    11653053     0.0421 -0.04038005    9.680e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              754581 Evangelou2018dbp            TRUE            reported
    ## 2              756486 Evangelou2018dbp            TRUE            reported
    ## 3              757601 Evangelou2018dbp            TRUE            reported
    ## 4              744085 Evangelou2018dbp            TRUE            reported
    ## 5              739714 Evangelou2018dbp            TRUE            reported
    ## 6              749339 Evangelou2018dbp            TRUE            reported
    ## 7              754125 Evangelou2018dbp            TRUE            reported
    ## 8              721723 Evangelou2018dbp            TRUE            reported
    ## 9              757599 Evangelou2018dbp            TRUE            reported
    ## 10             757601 Evangelou2018dbp            TRUE            reported
    ## 11             757600 Evangelou2018dbp            TRUE            reported
    ## 12             757601 Evangelou2018dbp            TRUE            reported
    ## 13             747976 Evangelou2018dbp            TRUE            reported
    ## 14             749339 Evangelou2018dbp            TRUE            reported
    ## 15             757600 Evangelou2018dbp            TRUE            reported
    ## 16             757599 Evangelou2018dbp            TRUE            reported
    ## 17             756595 Evangelou2018dbp            TRUE            reported
    ## 18             757600 Evangelou2018dbp            TRUE            reported
    ## 19             753578 Evangelou2018dbp            TRUE            reported
    ## 20             753806 Evangelou2018dbp            TRUE            reported
    ## 21             753725 Evangelou2018dbp            TRUE            reported
    ## 22             754483 Evangelou2018dbp            TRUE            reported
    ## 23             757598 Evangelou2018dbp            TRUE            reported
    ## 24             756484 Evangelou2018dbp            TRUE            reported
    ## 25             701481 Evangelou2018dbp            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             5    167832067 0.010070917     -4.653     3.273e-06
    ## 2             1    153856498 0.008700965      4.656     3.217e-06
    ## 3            10    126482389 0.008786582     -5.092     3.547e-07
    ## 4             8    144717251 0.016197900      4.663     3.118e-06
    ## 5             7    155797978 0.009708611      6.755     1.424e-11
    ## 6            11     16534415 0.008681459     -4.584     4.560e-06
    ## 7             4    134506440 0.033576021     -4.819     1.445e-06
    ## 8            17     78252238 0.047143797      4.802     1.571e-06
    ## 9             7     42397586 0.016143574     -4.589     4.464e-06
    ## 10            2    162856148 0.008658983     -6.546     5.894e-11
    ## 11            5     66084260 0.009022472     -5.558     2.728e-08
    ## 12            7    133685512 0.008661921      4.687     2.767e-06
    ## 13           19     45411941 0.012519680     -5.066     4.067e-07
    ## 14           22     30986350 0.010038609     -4.913     8.988e-07
    ## 15            2     96999086 0.009321611      4.588     4.470e-06
    ## 16           20     34197619 0.011701919      5.397     6.762e-08
    ## 17           12     65832468 0.011964511     -9.017     1.941e-19
    ## 18            9    106929593 0.010891531      5.162     2.447e-07
    ## 19            4    184955461 0.008759404     -4.937     7.922e-07
    ## 20           12      4008887 0.012611389     -5.347     8.931e-08
    ## 21            9    119247974 0.009013518      6.645     3.035e-11
    ## 22            2      8780959 0.008681684     -4.610     4.023e-06
    ## 23           12    117323367 0.015536016     10.418     2.055e-25
    ## 24           12     72956782 0.021592837      4.603     4.164e-06
    ## 25           18     11653053 0.027913852     -4.876     1.082e-06
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                26615 Hilbar2017hipv             TRUE
    ## 2                26814 Hilbar2017hipv             TRUE
    ## 3                26322 Hilbar2017hipv             TRUE
    ## 4                23154 Hilbar2017hipv             TRUE
    ## 5                24484 Hilbar2017hipv             TRUE
    ## 6                26614 Hilbar2017hipv             TRUE
    ## 7                26065 Hilbar2017hipv             TRUE
    ## 8                13758 Hilbar2017hipv             TRUE
    ## 9                26814 Hilbar2017hipv             TRUE
    ## 10               26814 Hilbar2017hipv             TRUE
    ## 11               26814 Hilbar2017hipv             TRUE
    ## 12               26814 Hilbar2017hipv             TRUE
    ## 13               24498 Hilbar2017hipv             TRUE
    ## 14               26459 Hilbar2017hipv             TRUE
    ## 15               26814 Hilbar2017hipv             TRUE
    ## 16               26814 Hilbar2017hipv             TRUE
    ## 17               26814 Hilbar2017hipv             TRUE
    ## 18               26814 Hilbar2017hipv             TRUE
    ## 19               26814 Hilbar2017hipv             TRUE
    ## 20               25881 Hilbar2017hipv             TRUE
    ## 21               26700 Hilbar2017hipv             TRUE
    ## 22               26615 Hilbar2017hipv             TRUE
    ## 23               26814 Hilbar2017hipv             TRUE
    ## 24               26692 Hilbar2017hipv             TRUE
    ## 25               14245 Hilbar2017hipv             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 2              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 3              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 4              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 5              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 6              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 7              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 8              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 9              reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 10             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 11             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 12             reported      kvmub7      2   FALSE           TRUE 5e-06
    ## 13             reported      kvmub7      2    TRUE          FALSE 5e-06
    ## 14             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 15             reported      kvmub7      2    TRUE          FALSE 5e-06
    ## 16             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 17             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 18             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 19             reported      kvmub7      2   FALSE           TRUE 5e-06
    ## 20             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 21             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 22             reported      kvmub7      2   FALSE           TRUE 5e-06
    ## 23             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 24             reported      kvmub7      2    TRUE           TRUE 5e-06
    ## 25             reported      kvmub7      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     3.562236e-04             1          TRUE
    ## 2     6.611581e-03         <0.02         FALSE
    ## 3     4.324501e-03         <0.02         FALSE
    ## 4     2.448929e-03             1          TRUE
    ## 5     5.396036e-04             1          TRUE
    ## 6     4.856210e-03         <0.02         FALSE
    ## 7     7.430876e-05             1          TRUE
    ## 8     8.528100e-03             1          TRUE
    ## 9     7.785928e-04             1          TRUE
    ## 10    6.010887e-04             1          TRUE
    ## 11    6.713122e-05             1          TRUE
    ## 12              NA          <NA>            NA
    ## 13              NA          <NA>            NA
    ## 14    2.364488e-04             1          TRUE
    ## 15              NA          <NA>            NA
    ## 16    2.094987e-03             1          TRUE
    ## 17    1.472534e-03             1          TRUE
    ## 18    5.552909e-05             1          TRUE
    ## 19              NA          <NA>            NA
    ## 20    8.037597e-05             1          TRUE
    ## 21    5.010533e-07             1          TRUE
    ## 22              NA          <NA>            NA
    ## 23    1.104224e-03             1          TRUE
    ## 24    1.805639e-03             1          TRUE
    ## 25    1.025148e-03             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diastolic
Blood Pressure GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1   rs429358          19    45411941     4.067e-07    1.014e-01
    ## 2 rs59966106           2    96999086     4.470e-06    1.597e-11

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

    ##   outliers_removed pve.exposure        F Alpha        NCP     Power
    ## 1            FALSE   0.02559942 35.19524  0.05 10.3770445 0.8964138
    ## 2             TRUE   0.02301877 37.13787  0.05  0.7126364 0.1347794

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
Hippocampal Volume on Diastolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Diastolic
Blood Pressure

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 2      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 3      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 4      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)   20  0.23431787 0.0738553
    ## 2                           Weighted median   20  0.01443204 0.1104430
    ## 3                             Weighted mode   20 -0.05077708 0.1557847
    ## 4                                  MR Egger   20 -0.34537263 0.2943427
    ##          pval
    ## 1 0.001510485
    ## 2 0.896033189
    ## 3 0.748029266
    ## 4 0.255941123

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Diastolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 2      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 52.66663   18 2.954046e-05
    ## 2 Inverse variance weighted 66.57808   19 3.375379e-07

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018dbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018dbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv      0.04423943
    ##           se       pval
    ## 1 0.02028873 0.04273547

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
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 72.10417 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 2      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 3      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 4      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   17  0.06077913 0.07759576
    ## 2                           Weighted median   17 -0.02820121 0.10911682
    ## 3                             Weighted mode   17 -0.08082629 0.19734483
    ## 4                                  MR Egger   17  0.14510826 0.18874515
    ##        pval
    ## 1 0.4334633
    ## 2 0.7960598
    ## 3 0.6875531
    ## 4 0.4539445

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018dbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ## 2      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 12.33630   15 0.6534160
    ## 2 Inverse variance weighted 12.57652   16 0.7034321

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      kvmub7     pjdv7H Evangelou2018dbp Hilbar2017hipv    -0.007040079
    ##          se      pval
    ## 1 0.0143639 0.6311381

<br>
