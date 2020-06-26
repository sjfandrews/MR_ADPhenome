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

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Sleep
Duration

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1   rs10908512     1 153856498    C    T 0.561956  8.64401e-05 0.00227998
    ## 2    rs7588305     2   8780959    G    C 0.541711  1.86645e-03 0.00226802
    ## 3   rs59966106     2  96999086    A    G 0.323333  4.94093e-04 0.00241523
    ## 4    rs2268894     2 162856148    C    T 0.521562  5.04646e-04 0.00227275
    ## 5  rs138012093     4 134506440    G    A 0.015551  1.59579e-02 0.00944672
    ## 6  rs144578582     4 155539564    G    A 0.007848  1.22942e-02 0.01341740
    ## 7    rs6552737     4 184955461    T    A 0.438601 -2.40778e-03 0.00230407
    ## 8    rs2289881     5  66084260    G    T 0.357808  6.38116e-03 0.00237236
    ## 9  rs148054686     5  94459128    G    A 0.010193  6.84172e-03 0.01198380
    ## 10  rs10041542     5 167832067    T    C 0.247421  3.54303e-05 0.00263278
    ## 11  rs17172044     7  42397586    A    C 0.071170  7.15728e-03 0.00441014
    ## 12   rs2346440     7 133685512    G    C 0.458501  2.39388e-03 0.00227610
    ## 13  rs11979341     7 155797978    C    G 0.299087 -4.90121e-03 0.00249482
    ## 14  rs11993215    NA        NA <NA> <NA>       NA           NA         NA
    ## 15 rs113835443     8 144717251    C    T 0.103977  4.81489e-03 0.00373111
    ## 16  rs62583528     9 106929593    G    A 0.216259  1.69680e-03 0.00275788
    ## 17   rs7020341     9 119247974    G    C 0.362465 -3.92504e-03 0.00235624
    ## 18  rs11245365    10 126482389    G    A 0.572128 -1.85147e-03 0.00228545
    ## 19  rs12802656    11  16534415    A    C 0.479286 -8.38811e-04 0.00226482
    ## 20    rs659065    12   4008887    C    G 0.148059 -2.69983e-03 0.00318652
    ## 21  rs61921502    12  65832468    T    G 0.173588 -9.73923e-03 0.00301298
    ## 22  rs79522035    12  72956782    C    T 0.038607  2.10807e-03 0.00595644
    ## 23  rs77956314    12 117323367    T    C 0.081383 -5.08344e-03 0.00414282
    ## 24 rs143933797    17  78252238    G    A 0.031001 -9.28163e-03 0.00661233
    ## 25  rs79727675    18  11653053    C    A 0.051268 -6.07484e-05 0.00513153
    ## 26    rs429358    19  45411941    T    C 0.155154 -1.03460e-02 0.00312879
    ## 27   rs6060504    20  34197619    T    C 0.144331 -1.01728e-02 0.00322637
    ## 28   rs5753220    22  30986350    T    C 0.266836  2.10438e-03 0.00255788
    ##             Z       P      N          TRAIT
    ## 1   0.0379127 0.96000 446118 Sleep_Duration
    ## 2   0.8229420 0.41000 446118 Sleep_Duration
    ## 3   0.2045740 0.85000 446118 Sleep_Duration
    ## 4   0.2220420 0.86000 446118 Sleep_Duration
    ## 5   1.6892500 0.09900 446118 Sleep_Duration
    ## 6   0.9162880 0.35000 446118 Sleep_Duration
    ## 7  -1.0450100 0.31000 446118 Sleep_Duration
    ## 8   2.6897900 0.00900 446118 Sleep_Duration
    ## 9   0.5709140 0.54000 446118 Sleep_Duration
    ## 10  0.0134574 1.00000 446118 Sleep_Duration
    ## 11  1.6229100 0.10000 446118 Sleep_Duration
    ## 12  1.0517500 0.28000 446118 Sleep_Duration
    ## 13 -1.9645500 0.04300 446118 Sleep_Duration
    ## 14         NA      NA     NA           <NA>
    ## 15  1.2904700 0.20000 446118 Sleep_Duration
    ## 16  0.6152550 0.56000 446118 Sleep_Duration
    ## 17 -1.6658100 0.09900 446118 Sleep_Duration
    ## 18 -0.8101120 0.41000 446118 Sleep_Duration
    ## 19 -0.3703650 0.73000 446118 Sleep_Duration
    ## 20 -0.8472660 0.38000 446118 Sleep_Duration
    ## 21 -3.2324200 0.00120 446118 Sleep_Duration
    ## 22  0.3539140 0.68000 446118 Sleep_Duration
    ## 23 -1.2270500 0.21000 446118 Sleep_Duration
    ## 24 -1.4036900 0.17000 446118 Sleep_Duration
    ## 25 -0.0118383 0.99000 446118 Sleep_Duration
    ## 26 -3.3067100 0.00093 446118 Sleep_Duration
    ## 27 -3.1530200 0.00210 446118 Sleep_Duration
    ## 28  0.8227050 0.38000 446118 Sleep_Duration

<br>

**Table 3:** Proxy SNPs for Sleep Duration

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

**Table 4:** Harmonized Hippocampal Volume and Sleep Duration datasets

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
    ## 1                      C                    T   -0.04686000  3.54303e-05
    ## 2                      T                    C    0.04051169  8.64401e-05
    ## 3                      A                    G   -0.04474128 -1.85147e-03
    ## 4                      T                    C    0.07553081  4.81489e-03
    ## 5                      G                    C    0.06558170 -4.90121e-03
    ## 6                      C                    A   -0.03979580 -8.38811e-04
    ## 7                      A                    G   -0.16180284  1.59579e-02
    ## 8                      A                    G    0.22638451 -9.28163e-03
    ## 9                      A                    G   -0.36225028  1.22942e-02
    ## 10                     A                    G   -0.21659175  6.84172e-03
    ## 11                     C                    A   -0.07408290  7.15728e-03
    ## 12                     T                    C   -0.05668170  5.04646e-04
    ## 13                     T                    G   -0.05014690  6.38116e-03
    ## 14                     C                    G    0.04059843  2.39388e-03
    ## 15                     C                    T   -0.06342470 -1.03460e-02
    ## 16                     C                    T   -0.04931970  2.10438e-03
    ## 17                     G                    A    0.04276760  4.94093e-04
    ## 18                     C                    T    0.06315530 -1.01728e-02
    ## 19                     G                    T   -0.10788400 -9.73923e-03
    ## 20                     A                    G    0.05622208  1.69680e-03
    ## 21                     A                    T   -0.04324518 -2.40778e-03
    ## 22                     G                    C   -0.06743310 -2.69983e-03
    ## 23                     C                    G    0.05989482 -3.92504e-03
    ## 24                     C                    G   -0.04002256  1.86645e-03
    ## 25                     C                    T    0.16185400 -5.08344e-03
    ## 26                     T                    C    0.09939183  2.10807e-03
    ## 27                     A                    C   -0.13610794 -6.07484e-05
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452    0.247421  FALSE       FALSE     FALSE     zFZa4A
    ## 2        0.5624    0.561956  FALSE       FALSE     FALSE     zFZa4A
    ## 3        0.5648    0.572128  FALSE       FALSE     FALSE     zFZa4A
    ## 4        0.0904    0.103977  FALSE       FALSE     FALSE     zFZa4A
    ## 5        0.3163    0.299087  FALSE        TRUE     FALSE     zFZa4A
    ## 6        0.4696    0.479286  FALSE       FALSE     FALSE     zFZa4A
    ## 7        0.0173    0.015551  FALSE       FALSE     FALSE     zFZa4A
    ## 8        0.0166    0.031001  FALSE       FALSE     FALSE     zFZa4A
    ## 9        0.0068    0.007848  FALSE       FALSE     FALSE     zFZa4A
    ## 10       0.0124    0.010193  FALSE       FALSE     FALSE     zFZa4A
    ## 11       0.0775    0.071170  FALSE       FALSE     FALSE     zFZa4A
    ## 12       0.5412    0.521562  FALSE       FALSE     FALSE     zFZa4A
    ## 13       0.3544    0.357808  FALSE       FALSE     FALSE     zFZa4A
    ## 14       0.4591    0.458501  FALSE        TRUE      TRUE     zFZa4A
    ## 15       0.1537    0.155154  FALSE       FALSE     FALSE     zFZa4A
    ## 16       0.2497    0.266836  FALSE       FALSE     FALSE     zFZa4A
    ## 17       0.3114    0.323333  FALSE       FALSE     FALSE     zFZa4A
    ## 18       0.1624    0.144331  FALSE       FALSE     FALSE     zFZa4A
    ## 19       0.1534    0.173588  FALSE       FALSE     FALSE     zFZa4A
    ## 20       0.1951    0.216259  FALSE       FALSE     FALSE     zFZa4A
    ## 21       0.4152    0.438601  FALSE        TRUE      TRUE     zFZa4A
    ## 22       0.1413    0.148059  FALSE        TRUE     FALSE     zFZa4A
    ## 23       0.3590    0.362465  FALSE        TRUE     FALSE     zFZa4A
    ## 24       0.5308    0.541711  FALSE        TRUE      TRUE     zFZa4A
    ## 25       0.0840    0.081383  FALSE       FALSE     FALSE     zFZa4A
    ## 26       0.0419    0.038607  FALSE       FALSE     FALSE     zFZa4A
    ## 27       0.0472    0.051268  FALSE       FALSE     FALSE     zFZa4A
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   167832067 0.00263278  0.0134574      1.00000
    ## 2            1   153856498 0.00227998  0.0379127      0.96000
    ## 3           10   126482389 0.00228545 -0.8101120      0.41000
    ## 4            8   144717251 0.00373111  1.2904700      0.20000
    ## 5            7   155797978 0.00249482 -1.9645500      0.04300
    ## 6           11    16534415 0.00226482 -0.3703650      0.73000
    ## 7            4   134506440 0.00944672  1.6892500      0.09900
    ## 8           17    78252238 0.00661233 -1.4036900      0.17000
    ## 9            4   155539564 0.01341740  0.9162880      0.35000
    ## 10           5    94459128 0.01198380  0.5709140      0.54000
    ## 11           7    42397586 0.00441014  1.6229100      0.10000
    ## 12           2   162856148 0.00227275  0.2220420      0.86000
    ## 13           5    66084260 0.00237236  2.6897900      0.00900
    ## 14           7   133685512 0.00227610  1.0517500      0.28000
    ## 15          19    45411941 0.00312879 -3.3067100      0.00093
    ## 16          22    30986350 0.00255788  0.8227050      0.38000
    ## 17           2    96999086 0.00241523  0.2045740      0.85000
    ## 18          20    34197619 0.00322637 -3.1530200      0.00210
    ## 19          12    65832468 0.00301298 -3.2324200      0.00120
    ## 20           9   106929593 0.00275788  0.6152550      0.56000
    ## 21           4   184955461 0.00230407 -1.0450100      0.31000
    ## 22          12     4008887 0.00318652 -0.8472660      0.38000
    ## 23           9   119247974 0.00235624 -1.6658100      0.09900
    ## 24           2     8780959 0.00226802  0.8229420      0.41000
    ## 25          12   117323367 0.00414282 -1.2270500      0.21000
    ## 26          12    72956782 0.00595644  0.3539140      0.68000
    ## 27          18    11653053 0.00513153 -0.0118383      0.99000
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
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            5    167832067 0.010070917     -4.653
    ## 2             reported            1    153856498 0.008700965      4.656
    ## 3             reported           10    126482389 0.008786582     -5.092
    ## 4             reported            8    144717251 0.016197900      4.663
    ## 5             reported            7    155797978 0.009708611      6.755
    ## 6             reported           11     16534415 0.008681459     -4.584
    ## 7             reported            4    134506440 0.033576021     -4.819
    ## 8             reported           17     78252238 0.047143797      4.802
    ## 9             reported            4    155539564 0.074659992     -4.852
    ## 10            reported            5     94459128 0.047064699     -4.602
    ## 11            reported            7     42397586 0.016143574     -4.589
    ## 12            reported            2    162856148 0.008658983     -6.546
    ## 13            reported            5     66084260 0.009022472     -5.558
    ## 14            reported            7    133685512 0.008661921      4.687
    ## 15            reported           19     45411941 0.012519680     -5.066
    ## 16            reported           22     30986350 0.010038609     -4.913
    ## 17            reported            2     96999086 0.009321611      4.588
    ## 18            reported           20     34197619 0.011701919      5.397
    ## 19            reported           12     65832468 0.011964511     -9.017
    ## 20            reported            9    106929593 0.010891531      5.162
    ## 21            reported            4    184955461 0.008759404     -4.937
    ## 22            reported           12      4008887 0.012611389     -5.347
    ## 23            reported            9    119247974 0.009013518      6.645
    ## 24            reported            2      8780959 0.008681684     -4.610
    ## 25            reported           12    117323367 0.015536016     10.418
    ## 26            reported           12     72956782 0.021592837      4.603
    ## 27            reported           18     11653053 0.027913852     -4.876
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      3.273e-06               26615 Hilbar2017hipv             TRUE
    ## 2      3.217e-06               26814 Hilbar2017hipv             TRUE
    ## 3      3.547e-07               26322 Hilbar2017hipv             TRUE
    ## 4      3.118e-06               23154 Hilbar2017hipv             TRUE
    ## 5      1.424e-11               24484 Hilbar2017hipv             TRUE
    ## 6      4.560e-06               26614 Hilbar2017hipv             TRUE
    ## 7      1.445e-06               26065 Hilbar2017hipv             TRUE
    ## 8      1.571e-06               13758 Hilbar2017hipv             TRUE
    ## 9      1.221e-06               13258 Hilbar2017hipv             TRUE
    ## 10     4.184e-06               18411 Hilbar2017hipv             TRUE
    ## 11     4.464e-06               26814 Hilbar2017hipv             TRUE
    ## 12     5.894e-11               26814 Hilbar2017hipv             TRUE
    ## 13     2.728e-08               26814 Hilbar2017hipv             TRUE
    ## 14     2.767e-06               26814 Hilbar2017hipv             TRUE
    ## 15     4.067e-07               24498 Hilbar2017hipv             TRUE
    ## 16     8.988e-07               26459 Hilbar2017hipv             TRUE
    ## 17     4.470e-06               26814 Hilbar2017hipv             TRUE
    ## 18     6.762e-08               26814 Hilbar2017hipv             TRUE
    ## 19     1.941e-19               26814 Hilbar2017hipv             TRUE
    ## 20     2.447e-07               26814 Hilbar2017hipv             TRUE
    ## 21     7.922e-07               26814 Hilbar2017hipv             TRUE
    ## 22     8.931e-08               25881 Hilbar2017hipv             TRUE
    ## 23     3.035e-11               26700 Hilbar2017hipv             TRUE
    ## 24     4.023e-06               26615 Hilbar2017hipv             TRUE
    ## 25     2.055e-25               26814 Hilbar2017hipv             TRUE
    ## 26     4.164e-06               26692 Hilbar2017hipv             TRUE
    ## 27     1.082e-06               14245 Hilbar2017hipv             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 2              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 3              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 4              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 5              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 6              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 7              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 8              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 9              reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 10             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 11             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 12             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 13             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 14             reported      c9ERLY      2   FALSE           TRUE 5e-06
    ## 15             reported      c9ERLY      2    TRUE          FALSE 5e-06
    ## 16             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 17             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 18             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 19             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 20             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 21             reported      c9ERLY      2   FALSE           TRUE 5e-06
    ## 22             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 23             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 24             reported      c9ERLY      2   FALSE           TRUE 5e-06
    ## 25             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 26             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ## 27             reported      c9ERLY      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     6.149343e-07             1          TRUE
    ## 2     6.367180e-07             1          TRUE
    ## 3     7.273246e-06             1          TRUE
    ## 4     3.979668e-05             1          TRUE
    ## 5     1.599854e-05             1          TRUE
    ## 6     2.421567e-06             1          TRUE
    ## 7     1.824791e-04             1          TRUE
    ## 8     3.563143e-05             1          TRUE
    ## 9     4.202870e-05             1          TRUE
    ## 10    1.041545e-05             1          TRUE
    ## 11    3.632241e-05             1          TRUE
    ## 12    2.371073e-07             1          TRUE
    ## 13    3.279951e-05         0.414          TRUE
    ## 14              NA          <NA>            NA
    ## 15              NA          <NA>            NA
    ## 16    1.691479e-06             1          TRUE
    ## 17    1.575772e-06             1          TRUE
    ## 18    8.795301e-05         0.161          TRUE
    ## 19    1.660320e-04        <0.023         FALSE
    ## 20    7.544631e-06             1          TRUE
    ## 21              NA          <NA>            NA
    ## 22    1.593767e-05             1          TRUE
    ## 23    9.354723e-06             1          TRUE
    ## 24              NA          <NA>            NA
    ## 25    6.960063e-06             1          TRUE
    ## 26    1.513531e-05             1          TRUE
    ## 27    6.373663e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs429358          19    45411941     4.067e-07      0.00093

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
    ## 1            FALSE   0.02804462 33.60843  0.05 3.280410 0.4409474
    ## 2             TRUE   0.02492470 31.12849  0.05 9.500799 0.8691482

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
Hippocampal Volume on Sleep Duration. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Sleep
Duration

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 2      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 3      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 4      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   23 -0.01707201 0.008885508
    ## 2                           Weighted median   23 -0.02379920 0.014090504
    ## 3                             Weighted mode   23 -0.02881768 0.020082294
    ## 4                                  MR Egger   23 -0.01820962 0.027316148
    ##         pval
    ## 1 0.05468991
    ## 2 0.09121477
    ## 3 0.16535755
    ## 4 0.51227014

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Sleep Duration and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 2      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 45.14223   21 0.001659056
    ## 2 Inverse variance weighted 45.14706   22 0.002542145

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Dashti2019slepdur/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome           outcome       exposure egger_intercept
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv    9.231303e-05
    ##            se      pval
    ## 1 0.001948286 0.9626568

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
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 50.99994 0.002

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 2      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 3      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 4      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   22 -0.02916197 0.009372526
    ## 2                           Weighted median   22 -0.03144877 0.013626528
    ## 3                             Weighted mode   22 -0.02664111 0.021109462
    ## 4                                  MR Egger   22 -0.04107233 0.023094750
    ##          pval
    ## 1 0.001861829
    ## 2 0.021004250
    ## 3 0.220769543
    ## 4 0.090540562

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ## 2      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 28.22011   20 0.1042904
    ## 2 Inverse variance weighted 28.70900   21 0.1211649

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome       exposure egger_intercept
    ## 1      c9ERLY     zFZa4A Dashti2019slepdur Hilbar2017hipv    0.0009402405
    ##            se      pval
    ## 1 0.001597343 0.5627004

<br>
