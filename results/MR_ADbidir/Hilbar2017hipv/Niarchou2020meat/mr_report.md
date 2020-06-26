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

### Outcome: Meat related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Meat
related diet

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1   rs10908512     1 153856498    C    T 0.561685  0.002111670 0.00244666
    ## 2    rs7588305     2   8780959    G    C 0.542262 -0.000589972 0.00243571
    ## 3   rs59966106     2  96999086    A    G 0.322798  0.002148450 0.00259189
    ## 4    rs2268894     2 162856148    C    T 0.521162 -0.003187210 0.00244307
    ## 5  rs138012093     4 134506440    G    A 0.013494  0.000852520 0.01056470
    ## 6  rs144578582     4 155539564    G    A 0.006577 -0.005089810 0.01506020
    ## 7    rs6552737     4 184955461    T    A 0.436414  0.000531632 0.00250183
    ## 8    rs2289881     5  66084260    G    T 0.356962 -0.001088760 0.00256133
    ## 9  rs148054686     5  94459128    G    A 0.007661 -0.012723800 0.01396530
    ## 10  rs10041542     5 167832067    T    C 0.245841  0.005101280 0.00284025
    ## 11  rs17172044     7  42397586    A    C 0.070715  0.005247600 0.00474166
    ## 12   rs2346440     7 133685512    G    C 0.458201  0.004725560 0.00244712
    ## 13  rs11979341     7 155797978    C    G 0.295717 -0.001004980 0.00270022
    ## 14  rs11993215    NA        NA <NA> <NA>       NA           NA         NA
    ## 15 rs113835443     8 144717251    C    T 0.102400 -0.000806373 0.00402542
    ## 16  rs62583528     9 106929593    G    A 0.214348 -0.001796570 0.00296869
    ## 17   rs7020341     9 119247974    G    C 0.362041  0.005693940 0.00252833
    ## 18  rs11245365    10 126482389    G    A 0.572292 -0.006282390 0.00245295
    ## 19  rs12802656    11  16534415    A    C 0.479122  0.000457046 0.00243623
    ## 20    rs659065    12   4008887    C    G 0.147970  0.004927650 0.00341764
    ## 21  rs61921502    12  65832468    T    G 0.171180  0.004502140 0.00325198
    ## 22  rs79522035    12  72956782    C    T 0.036282  0.011861700 0.00652812
    ## 23  rs77956314    12 117323367    T    C 0.081441  0.000135599 0.00443982
    ## 24 rs143933797    17  78252238    G    A 0.029255  0.018117100 0.00721912
    ## 25  rs79727675    18  11653053    C    A 0.051224 -0.003391820 0.00550730
    ## 26    rs429358    19  45411941    T    C 0.155607 -0.024294800 0.00335552
    ## 27   rs6060504    20  34197619    T    C 0.143630 -0.001781150 0.00346957
    ## 28   rs5753220    22  30986350    T    C 0.266765 -0.001175990 0.00274508
    ##             Z       P      N           TRAIT
    ## 1   0.8630830 3.9e-01 335576 fish_plant_diet
    ## 2  -0.2422180 8.1e-01 335576 fish_plant_diet
    ## 3   0.8289120 4.1e-01 335576 fish_plant_diet
    ## 4  -1.3045900 1.9e-01 335576 fish_plant_diet
    ## 5   0.0806951 9.4e-01 335576 fish_plant_diet
    ## 6  -0.3379640 7.4e-01 335576 fish_plant_diet
    ## 7   0.2124970 8.3e-01 335576 fish_plant_diet
    ## 8  -0.4250760 6.7e-01 335576 fish_plant_diet
    ## 9  -0.9111010 3.6e-01 335576 fish_plant_diet
    ## 10  1.7960700 7.2e-02 335576 fish_plant_diet
    ## 11  1.1067000 2.7e-01 335576 fish_plant_diet
    ## 12  1.9310700 5.3e-02 335576 fish_plant_diet
    ## 13 -0.3721840 7.1e-01 335576 fish_plant_diet
    ## 14         NA      NA     NA            <NA>
    ## 15 -0.2003200 8.4e-01 335576 fish_plant_diet
    ## 16 -0.6051730 5.5e-01 335576 fish_plant_diet
    ## 17  2.2520600 2.4e-02 335576 fish_plant_diet
    ## 18 -2.5611600 1.0e-02 335576 fish_plant_diet
    ## 19  0.1876040 8.5e-01 335576 fish_plant_diet
    ## 20  1.4418300 1.5e-01 335576 fish_plant_diet
    ## 21  1.3844300 1.7e-01 335576 fish_plant_diet
    ## 22  1.8170200 6.9e-02 335576 fish_plant_diet
    ## 23  0.0305416 9.8e-01 335576 fish_plant_diet
    ## 24  2.5096000 1.2e-02 335576 fish_plant_diet
    ## 25 -0.6158770 5.4e-01 335576 fish_plant_diet
    ## 26 -7.2402500 4.5e-13 335576 fish_plant_diet
    ## 27 -0.5133630 6.1e-01 335576 fish_plant_diet
    ## 28 -0.4283990 6.7e-01 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Meat related diet

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs11993215        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Hippocampal Volume and Meat related diet
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
    ## 9  rs144578582                      A                     G
    ## 10 rs148054686                      A                     G
    ## 11  rs17172044                      C                     A
    ## 12   rs2268894                      T                     C
    ## 13   rs2289881                      T                     G
    ## 14   rs2346440                      C                     G
    ## 15    rs429358                      C                     T
    ## 16   rs5753220                      C                     T
    ## 17  rs59966106                      G                     A
    ## 18   rs6060504                      C                     T
    ## 19  rs61921502                      G                     T
    ## 20  rs62583528                      A                     G
    ## 21   rs6552737                      A                     T
    ## 22    rs659065                      G                     C
    ## 23   rs7020341                      C                     G
    ## 24   rs7588305                      C                     G
    ## 25  rs77956314                      C                     T
    ## 26  rs79522035                      T                     C
    ## 27  rs79727675                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T   -0.04686000  0.005101280
    ## 2                      T                    C    0.04051169  0.002111670
    ## 3                      A                    G   -0.04474128 -0.006282390
    ## 4                      T                    C    0.07553081 -0.000806373
    ## 5                      G                    C    0.06558170 -0.001004980
    ## 6                      C                    A   -0.03979580  0.000457046
    ## 7                      A                    G   -0.16180284  0.000852520
    ## 8                      A                    G    0.22638451  0.018117100
    ## 9                      A                    G   -0.36225028 -0.005089810
    ## 10                     A                    G   -0.21659175 -0.012723800
    ## 11                     C                    A   -0.07408290  0.005247600
    ## 12                     T                    C   -0.05668170 -0.003187210
    ## 13                     T                    G   -0.05014690 -0.001088760
    ## 14                     C                    G    0.04059843  0.004725560
    ## 15                     C                    T   -0.06342470 -0.024294800
    ## 16                     C                    T   -0.04931970 -0.001175990
    ## 17                     G                    A    0.04276760  0.002148450
    ## 18                     C                    T    0.06315530 -0.001781150
    ## 19                     G                    T   -0.10788400  0.004502140
    ## 20                     A                    G    0.05622208 -0.001796570
    ## 21                     A                    T   -0.04324518  0.000531632
    ## 22                     G                    C   -0.06743310  0.004927650
    ## 23                     C                    G    0.05989482  0.005693940
    ## 24                     C                    G   -0.04002256 -0.000589972
    ## 25                     C                    T    0.16185400  0.000135599
    ## 26                     T                    C    0.09939183  0.011861700
    ## 27                     A                    C   -0.13610794 -0.003391820
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452    0.245841  FALSE       FALSE     FALSE     QjpYmW
    ## 2        0.5624    0.561685  FALSE       FALSE     FALSE     QjpYmW
    ## 3        0.5648    0.572292  FALSE       FALSE     FALSE     QjpYmW
    ## 4        0.0904    0.102400  FALSE       FALSE     FALSE     QjpYmW
    ## 5        0.3163    0.295717  FALSE        TRUE     FALSE     QjpYmW
    ## 6        0.4696    0.479122  FALSE       FALSE     FALSE     QjpYmW
    ## 7        0.0173    0.013494  FALSE       FALSE     FALSE     QjpYmW
    ## 8        0.0166    0.029255  FALSE       FALSE     FALSE     QjpYmW
    ## 9        0.0068    0.006577  FALSE       FALSE     FALSE     QjpYmW
    ## 10       0.0124    0.007661  FALSE       FALSE     FALSE     QjpYmW
    ## 11       0.0775    0.070715  FALSE       FALSE     FALSE     QjpYmW
    ## 12       0.5412    0.521162  FALSE       FALSE     FALSE     QjpYmW
    ## 13       0.3544    0.356962  FALSE       FALSE     FALSE     QjpYmW
    ## 14       0.4591    0.458201  FALSE        TRUE      TRUE     QjpYmW
    ## 15       0.1537    0.155607  FALSE       FALSE     FALSE     QjpYmW
    ## 16       0.2497    0.266765  FALSE       FALSE     FALSE     QjpYmW
    ## 17       0.3114    0.322798  FALSE       FALSE     FALSE     QjpYmW
    ## 18       0.1624    0.143630  FALSE       FALSE     FALSE     QjpYmW
    ## 19       0.1534    0.171180  FALSE       FALSE     FALSE     QjpYmW
    ## 20       0.1951    0.214348  FALSE       FALSE     FALSE     QjpYmW
    ## 21       0.4152    0.436414  FALSE        TRUE      TRUE     QjpYmW
    ## 22       0.1413    0.147970  FALSE        TRUE     FALSE     QjpYmW
    ## 23       0.3590    0.362041  FALSE        TRUE     FALSE     QjpYmW
    ## 24       0.5308    0.542262  FALSE        TRUE      TRUE     QjpYmW
    ## 25       0.0840    0.081441  FALSE       FALSE     FALSE     QjpYmW
    ## 26       0.0419    0.036282  FALSE       FALSE     FALSE     QjpYmW
    ## 27       0.0472    0.051224  FALSE       FALSE     FALSE     QjpYmW
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   167832067 0.00284025  1.7960700      7.2e-02
    ## 2            1   153856498 0.00244666  0.8630830      3.9e-01
    ## 3           10   126482389 0.00245295 -2.5611600      1.0e-02
    ## 4            8   144717251 0.00402542 -0.2003200      8.4e-01
    ## 5            7   155797978 0.00270022 -0.3721840      7.1e-01
    ## 6           11    16534415 0.00243623  0.1876040      8.5e-01
    ## 7            4   134506440 0.01056470  0.0806951      9.4e-01
    ## 8           17    78252238 0.00721912  2.5096000      1.2e-02
    ## 9            4   155539564 0.01506020 -0.3379640      7.4e-01
    ## 10           5    94459128 0.01396530 -0.9111010      3.6e-01
    ## 11           7    42397586 0.00474166  1.1067000      2.7e-01
    ## 12           2   162856148 0.00244307 -1.3045900      1.9e-01
    ## 13           5    66084260 0.00256133 -0.4250760      6.7e-01
    ## 14           7   133685512 0.00244712  1.9310700      5.3e-02
    ## 15          19    45411941 0.00335552 -7.2402500      4.5e-13
    ## 16          22    30986350 0.00274508 -0.4283990      6.7e-01
    ## 17           2    96999086 0.00259189  0.8289120      4.1e-01
    ## 18          20    34197619 0.00346957 -0.5133630      6.1e-01
    ## 19          12    65832468 0.00325198  1.3844300      1.7e-01
    ## 20           9   106929593 0.00296869 -0.6051730      5.5e-01
    ## 21           4   184955461 0.00250183  0.2124970      8.3e-01
    ## 22          12     4008887 0.00341764  1.4418300      1.5e-01
    ## 23           9   119247974 0.00252833  2.2520600      2.4e-02
    ## 24           2     8780959 0.00243571 -0.2422180      8.1e-01
    ## 25          12   117323367 0.00443982  0.0305416      9.8e-01
    ## 26          12    72956782 0.00652812  1.8170200      6.9e-02
    ## 27          18    11653053 0.00550730 -0.6158770      5.4e-01
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
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             5    167832067 0.010070917     -4.653     3.273e-06
    ## 2             1    153856498 0.008700965      4.656     3.217e-06
    ## 3            10    126482389 0.008786582     -5.092     3.547e-07
    ## 4             8    144717251 0.016197900      4.663     3.118e-06
    ## 5             7    155797978 0.009708611      6.755     1.424e-11
    ## 6            11     16534415 0.008681459     -4.584     4.560e-06
    ## 7             4    134506440 0.033576021     -4.819     1.445e-06
    ## 8            17     78252238 0.047143797      4.802     1.571e-06
    ## 9             4    155539564 0.074659992     -4.852     1.221e-06
    ## 10            5     94459128 0.047064699     -4.602     4.184e-06
    ## 11            7     42397586 0.016143574     -4.589     4.464e-06
    ## 12            2    162856148 0.008658983     -6.546     5.894e-11
    ## 13            5     66084260 0.009022472     -5.558     2.728e-08
    ## 14            7    133685512 0.008661921      4.687     2.767e-06
    ## 15           19     45411941 0.012519680     -5.066     4.067e-07
    ## 16           22     30986350 0.010038609     -4.913     8.988e-07
    ## 17            2     96999086 0.009321611      4.588     4.470e-06
    ## 18           20     34197619 0.011701919      5.397     6.762e-08
    ## 19           12     65832468 0.011964511     -9.017     1.941e-19
    ## 20            9    106929593 0.010891531      5.162     2.447e-07
    ## 21            4    184955461 0.008759404     -4.937     7.922e-07
    ## 22           12      4008887 0.012611389     -5.347     8.931e-08
    ## 23            9    119247974 0.009013518      6.645     3.035e-11
    ## 24            2      8780959 0.008681684     -4.610     4.023e-06
    ## 25           12    117323367 0.015536016     10.418     2.055e-25
    ## 26           12     72956782 0.021592837      4.603     4.164e-06
    ## 27           18     11653053 0.027913852     -4.876     1.082e-06
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                26615 Hilbar2017hipv             TRUE
    ## 2                26814 Hilbar2017hipv             TRUE
    ## 3                26322 Hilbar2017hipv             TRUE
    ## 4                23154 Hilbar2017hipv             TRUE
    ## 5                24484 Hilbar2017hipv             TRUE
    ## 6                26614 Hilbar2017hipv             TRUE
    ## 7                26065 Hilbar2017hipv             TRUE
    ## 8                13758 Hilbar2017hipv             TRUE
    ## 9                13258 Hilbar2017hipv             TRUE
    ## 10               18411 Hilbar2017hipv             TRUE
    ## 11               26814 Hilbar2017hipv             TRUE
    ## 12               26814 Hilbar2017hipv             TRUE
    ## 13               26814 Hilbar2017hipv             TRUE
    ## 14               26814 Hilbar2017hipv             TRUE
    ## 15               24498 Hilbar2017hipv             TRUE
    ## 16               26459 Hilbar2017hipv             TRUE
    ## 17               26814 Hilbar2017hipv             TRUE
    ## 18               26814 Hilbar2017hipv             TRUE
    ## 19               26814 Hilbar2017hipv             TRUE
    ## 20               26814 Hilbar2017hipv             TRUE
    ## 21               26814 Hilbar2017hipv             TRUE
    ## 22               25881 Hilbar2017hipv             TRUE
    ## 23               26700 Hilbar2017hipv             TRUE
    ## 24               26615 Hilbar2017hipv             TRUE
    ## 25               26814 Hilbar2017hipv             TRUE
    ## 26               26692 Hilbar2017hipv             TRUE
    ## 27               14245 Hilbar2017hipv             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 2              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 3              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 4              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 5              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 6              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 7              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 8              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 9              reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 10             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 11             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 12             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 13             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 14             reported      BOPHKY      2   FALSE           TRUE 5e-06
    ## 15             reported      BOPHKY      2    TRUE          FALSE 5e-06
    ## 16             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 17             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 18             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 19             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 20             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 21             reported      BOPHKY      2   FALSE           TRUE 5e-06
    ## 22             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 23             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 24             reported      BOPHKY      2   FALSE           TRUE 5e-06
    ## 25             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 26             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ## 27             reported      BOPHKY      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA          TRUE
    ## 2               NA            NA          TRUE
    ## 3               NA            NA          TRUE
    ## 4               NA            NA          TRUE
    ## 5               NA            NA          TRUE
    ## 6               NA            NA          TRUE
    ## 7               NA            NA          TRUE
    ## 8               NA            NA          TRUE
    ## 9               NA            NA          TRUE
    ## 10              NA            NA          TRUE
    ## 11              NA            NA          TRUE
    ## 12              NA            NA          TRUE
    ## 13              NA            NA          TRUE
    ## 14              NA            NA            NA
    ## 15              NA            NA          TRUE
    ## 16              NA            NA          TRUE
    ## 17              NA            NA          TRUE
    ## 18              NA            NA          TRUE
    ## 19              NA            NA          TRUE
    ## 20              NA            NA          TRUE
    ## 21              NA            NA            NA
    ## 22              NA            NA          TRUE
    ## 23              NA            NA          TRUE
    ## 24              NA            NA            NA
    ## 25              NA            NA          TRUE
    ## 26              NA            NA          TRUE
    ## 27              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Meat related
diet GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs429358          19    45411941     4.067e-07      4.5e-13

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
    ## 1            FALSE   0.02804462 33.60843  0.05 1.722089 0.2591294

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
Hippocampal Volume on Meat related diet. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Meat related
diet

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 2      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 3      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 4      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   23  0.0148239040 0.009623259
    ## 2                           Weighted median   23  0.0068720630 0.015170315
    ## 3                             Weighted mode   23 -0.0005514233 0.023636817
    ## 4                                  MR Egger   23  0.0156346750 0.025507452
    ##        pval
    ## 1 0.1234569
    ## 2 0.6505530
    ## 3 0.9815981
    ## 4 0.5464940

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Meat related diet and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 2      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 32.97501   21 0.04649499
    ## 2 Inverse variance weighted 32.97705   22 0.06219740

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020meat/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020meat/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv   -6.522743e-05
    ##            se      pval
    ## 1 0.001808298 0.9715663

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
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 36.52569 0.054

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 2      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 3      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 4      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   23  0.0148239040 0.009623259
    ## 2                           Weighted median   23  0.0068720630 0.015221924
    ## 3                             Weighted mode   23 -0.0005514233 0.023689587
    ## 4                                  MR Egger   23  0.0156346750 0.025507452
    ##        pval
    ## 1 0.1234569
    ## 2 0.6516593
    ## 3 0.9816391
    ## 4 0.5464940

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome       exposure
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ## 2      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 32.97501   21 0.04649499
    ## 2 Inverse variance weighted 32.97705   22 0.06219740

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome       exposure egger_intercept
    ## 1      BOPHKY     QjpYmW Niarchou2020meat Hilbar2017hipv   -6.522743e-05
    ##            se      pval
    ## 1 0.001808298 0.9715663

<br>
