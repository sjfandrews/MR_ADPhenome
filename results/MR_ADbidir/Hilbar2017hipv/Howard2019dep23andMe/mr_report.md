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

### Outcome: Depression

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Depression

    ##            SNP CHROM       POS  REF  ALT     AF    BETA     SE           Z
    ## 1   rs10908512     1 153856498    C    T 0.5622  0.0029 0.0035  0.82857143
    ## 2    rs7588305     2   8780959    G    C 0.5432  0.0071 0.0036  1.97222222
    ## 3   rs59966106     2  96999086    A    G 0.3240  0.0094 0.0037  2.54054000
    ## 4    rs2268894     2 162856148    C    T 0.5324  0.0077 0.0035  2.20000000
    ## 5  rs138012093     4 134506440    G    A 0.0157  0.0160 0.0150  1.06666667
    ## 6  rs144578582     4 155539564    G    A 0.0078  0.0003 0.0223  0.01345291
    ## 7    rs6552737     4 184955461    T    A 0.4264 -0.0026 0.0036 -0.72222222
    ## 8    rs2289881     5  66084260    G    T 0.3535  0.0053 0.0037  1.43243243
    ## 9  rs148054686     5  94459128    G    A 0.0124  0.0239 0.0180  1.32777778
    ## 10  rs10041542     5 167832067    T    C 0.2467  0.0010 0.0041  0.24390200
    ## 11  rs17172044     7  42397586    A    C 0.0710 -0.0030 0.0069 -0.43478300
    ## 12   rs2346440     7 133685512    G    C 0.4575 -0.0038 0.0035 -1.08571429
    ## 13  rs11979341     7 155797978    C    G 0.3087  0.0001 0.0040  0.02500000
    ## 14  rs11993215    NA        NA <NA> <NA>     NA      NA     NA          NA
    ## 15 rs113835443     8 144717251    C    T 0.1033  0.0063 0.0060  1.05000000
    ## 16  rs62583528     9 106929593    G    A 0.2128  0.0057 0.0043  1.32558140
    ## 17   rs7020341     9 119247974    G    C 0.3574  0.0004 0.0037  0.10810811
    ## 18  rs11245365    10 126482389    G    A 0.5723  0.0051 0.0035  1.45714286
    ## 19  rs12802656    11  16534415    A    C 0.4772  0.0028 0.0035  0.80000000
    ## 20    rs659065    12   4008887    C    G 0.1452 -0.0012 0.0050 -0.24000000
    ## 21  rs61921502    12  65832468    T    G 0.1619  0.0061 0.0049  1.24490000
    ## 22  rs79522035    12  72956782    C    T 0.0392 -0.0054 0.0093 -0.58064516
    ## 23  rs77956314    12 117323367    T    C 0.0826 -0.0058 0.0064 -0.90625000
    ## 24 rs143933797    17  78252238    G    A 0.0284  0.0136 0.0113  1.20353982
    ## 25  rs79727675    18  11653053    C    A 0.0510  0.0103 0.0082  1.25609756
    ## 26    rs429358    19  45411941    T    C 0.1477  0.0029 0.0050  0.58000000
    ## 27   rs6060504    20  34197619    T    C 0.1511  0.0061 0.0049  1.24490000
    ## 28   rs5753220    22  30986350    T    C 0.2627  0.0052 0.0040  1.30000000
    ##          P      N      TRAIT
    ## 1  0.41090 807553 Depression
    ## 2  0.05032 807553 Depression
    ## 3  0.01170 807553 Depression
    ## 4  0.02902 807553 Depression
    ## 5  0.28660 807553 Depression
    ## 6  0.98930 807553 Depression
    ## 7  0.47350 807553 Depression
    ## 8  0.15520 807553 Depression
    ## 9  0.18520 807553 Depression
    ## 10 0.80870 807553 Depression
    ## 11 0.66150 807553 Depression
    ## 12 0.28130 807553 Depression
    ## 13 0.98020 807553 Depression
    ## 14      NA     NA       <NA>
    ## 15 0.29740 807553 Depression
    ## 16 0.18830 807553 Depression
    ## 17 0.91460 807553 Depression
    ## 18 0.14820 807553 Depression
    ## 19 0.42720 807553 Depression
    ## 20 0.81170 807553 Depression
    ## 21 0.21670 807553 Depression
    ## 22 0.56020 807553 Depression
    ## 23 0.36850 807553 Depression
    ## 24 0.22820 807553 Depression
    ## 25 0.20700 807553 Depression
    ## 26 0.56490 807553 Depression
    ## 27 0.21670 807553 Depression
    ## 28 0.19700 807553 Depression

<br>

**Table 3:** Proxy SNPs for Depression

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

**Table 4:** Harmonized Hippocampal Volume and Depression datasets

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
    ## 1                      C                    T   -0.04686000       0.0010
    ## 2                      T                    C    0.04051169       0.0029
    ## 3                      A                    G   -0.04474128       0.0051
    ## 4                      T                    C    0.07553081       0.0063
    ## 5                      G                    C    0.06558170       0.0001
    ## 6                      C                    A   -0.03979580       0.0028
    ## 7                      A                    G   -0.16180284       0.0160
    ## 8                      A                    G    0.22638451       0.0136
    ## 9                      A                    G   -0.36225028       0.0003
    ## 10                     A                    G   -0.21659175       0.0239
    ## 11                     C                    A   -0.07408290      -0.0030
    ## 12                     T                    C   -0.05668170       0.0077
    ## 13                     T                    G   -0.05014690       0.0053
    ## 14                     C                    G    0.04059843      -0.0038
    ## 15                     C                    T   -0.06342470       0.0029
    ## 16                     C                    T   -0.04931970       0.0052
    ## 17                     G                    A    0.04276760       0.0094
    ## 18                     C                    T    0.06315530       0.0061
    ## 19                     G                    T   -0.10788400       0.0061
    ## 20                     A                    G    0.05622208       0.0057
    ## 21                     A                    T   -0.04324518      -0.0026
    ## 22                     G                    C   -0.06743310      -0.0012
    ## 23                     C                    G    0.05989482       0.0004
    ## 24                     C                    G   -0.04002256       0.0071
    ## 25                     C                    T    0.16185400      -0.0058
    ## 26                     T                    C    0.09939183      -0.0054
    ## 27                     A                    C   -0.13610794       0.0103
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452      0.2467  FALSE       FALSE     FALSE     BwXLJj
    ## 2        0.5624      0.5622  FALSE       FALSE     FALSE     BwXLJj
    ## 3        0.5648      0.5723  FALSE       FALSE     FALSE     BwXLJj
    ## 4        0.0904      0.1033  FALSE       FALSE     FALSE     BwXLJj
    ## 5        0.3163      0.3087  FALSE        TRUE     FALSE     BwXLJj
    ## 6        0.4696      0.4772  FALSE       FALSE     FALSE     BwXLJj
    ## 7        0.0173      0.0157  FALSE       FALSE     FALSE     BwXLJj
    ## 8        0.0166      0.0284  FALSE       FALSE     FALSE     BwXLJj
    ## 9        0.0068      0.0078  FALSE       FALSE     FALSE     BwXLJj
    ## 10       0.0124      0.0124  FALSE       FALSE     FALSE     BwXLJj
    ## 11       0.0775      0.0710  FALSE       FALSE     FALSE     BwXLJj
    ## 12       0.5412      0.5324  FALSE       FALSE     FALSE     BwXLJj
    ## 13       0.3544      0.3535  FALSE       FALSE     FALSE     BwXLJj
    ## 14       0.4591      0.4575  FALSE        TRUE      TRUE     BwXLJj
    ## 15       0.1537      0.1477  FALSE       FALSE     FALSE     BwXLJj
    ## 16       0.2497      0.2627  FALSE       FALSE     FALSE     BwXLJj
    ## 17       0.3114      0.3240  FALSE       FALSE     FALSE     BwXLJj
    ## 18       0.1624      0.1511  FALSE       FALSE     FALSE     BwXLJj
    ## 19       0.1534      0.1619  FALSE       FALSE     FALSE     BwXLJj
    ## 20       0.1951      0.2128  FALSE       FALSE     FALSE     BwXLJj
    ## 21       0.4152      0.4264  FALSE        TRUE      TRUE     BwXLJj
    ## 22       0.1413      0.1452  FALSE        TRUE     FALSE     BwXLJj
    ## 23       0.3590      0.3574  FALSE        TRUE     FALSE     BwXLJj
    ## 24       0.5308      0.5432  FALSE        TRUE      TRUE     BwXLJj
    ## 25       0.0840      0.0826  FALSE       FALSE     FALSE     BwXLJj
    ## 26       0.0419      0.0392  FALSE       FALSE     FALSE     BwXLJj
    ## 27       0.0472      0.0510  FALSE       FALSE     FALSE     BwXLJj
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            5   167832067     0.0041  0.24390200      0.80870
    ## 2            1   153856498     0.0035  0.82857143      0.41090
    ## 3           10   126482389     0.0035  1.45714286      0.14820
    ## 4            8   144717251     0.0060  1.05000000      0.29740
    ## 5            7   155797978     0.0040  0.02500000      0.98020
    ## 6           11    16534415     0.0035  0.80000000      0.42720
    ## 7            4   134506440     0.0150  1.06666667      0.28660
    ## 8           17    78252238     0.0113  1.20353982      0.22820
    ## 9            4   155539564     0.0223  0.01345291      0.98930
    ## 10           5    94459128     0.0180  1.32777778      0.18520
    ## 11           7    42397586     0.0069 -0.43478300      0.66150
    ## 12           2   162856148     0.0035  2.20000000      0.02902
    ## 13           5    66084260     0.0037  1.43243243      0.15520
    ## 14           7   133685512     0.0035 -1.08571429      0.28130
    ## 15          19    45411941     0.0050  0.58000000      0.56490
    ## 16          22    30986350     0.0040  1.30000000      0.19700
    ## 17           2    96999086     0.0037  2.54054000      0.01170
    ## 18          20    34197619     0.0049  1.24490000      0.21670
    ## 19          12    65832468     0.0049  1.24490000      0.21670
    ## 20           9   106929593     0.0043  1.32558140      0.18830
    ## 21           4   184955461     0.0036 -0.72222222      0.47350
    ## 22          12     4008887     0.0050 -0.24000000      0.81170
    ## 23           9   119247974     0.0037  0.10810811      0.91460
    ## 24           2     8780959     0.0036  1.97222222      0.05032
    ## 25          12   117323367     0.0064 -0.90625000      0.36850
    ## 26          12    72956782     0.0093 -0.58064516      0.56020
    ## 27          18    11653053     0.0082  1.25609756      0.20700
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
    ## 1              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 2              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 3              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 4              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 5              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 6              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 7              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 8              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 9              reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 10             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 11             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 12             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 13             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 14             reported      Vb4uR6      2   FALSE           TRUE 5e-06
    ## 15             reported      Vb4uR6      2    TRUE          FALSE 5e-06
    ## 16             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 17             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 18             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 19             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 20             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 21             reported      Vb4uR6      2   FALSE           TRUE 5e-06
    ## 22             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 23             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 24             reported      Vb4uR6      2   FALSE           TRUE 5e-06
    ## 25             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 26             reported      Vb4uR6      2    TRUE           TRUE 5e-06
    ## 27             reported      Vb4uR6      2    TRUE           TRUE 5e-06
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

**Table 5:** SNPs that were genome-wide significant in the Depression
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs429358          19    45411941     4.067e-07       0.5649

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

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.02804462 33.60843  0.05 1.744303 0.2618501

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
Hippocampal Volume on Depression. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Depression

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 2      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 3      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 4      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   23 -0.01720574 0.01406792
    ## 2                           Weighted median   23 -0.02860035 0.02109588
    ## 3                             Weighted mode   23 -0.03911324 0.03269903
    ## 4                                  MR Egger   23 -0.02853471 0.03585101
    ##        pval
    ## 1 0.2213117
    ## 2 0.1751845
    ## 3 0.2443677
    ## 4 0.4349812

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Depression and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 2      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 30.16928   21 0.08863882
    ## 2 Inverse variance weighted 30.35348   22 0.11012294

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Howard2019dep23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Howard2019dep23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1    0.0009015405 0.002517715 0.7238585

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
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 32.94486 0.114

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 2      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 3      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 4      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   23 -0.01720574 0.01406792
    ## 2                           Weighted median   23 -0.02860035 0.02060448
    ## 3                             Weighted mode   23 -0.03911324 0.03026838
    ## 4                                  MR Egger   23 -0.02853471 0.03585101
    ##        pval
    ## 1 0.2213117
    ## 2 0.1651174
    ## 3 0.2096921
    ## 4 0.4349812

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ## 2      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 30.16928   21 0.08863882
    ## 2 Inverse variance weighted 30.35348   22 0.11012294

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      Vb4uR6     BwXLJj Howard2019dep23andMe Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1    0.0009015405 0.002517715 0.7238585

<br>
