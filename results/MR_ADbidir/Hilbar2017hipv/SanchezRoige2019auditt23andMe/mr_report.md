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

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in AUDIT
Total

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1   rs10908512     1 153856498    C    T 0.57319700  2.263332e-03
    ## 2    rs7588305     2   8780959    G    C 0.56922200  3.696022e-03
    ## 3   rs59966106     2  96999086    A    G 0.28173900 -1.784110e-04
    ## 4    rs2268894     2 162856148    C    T 0.55968800 -3.396126e-03
    ## 5  rs138012093     4 134506440    G    A 0.02685050 -6.949463e-05
    ## 6  rs144578582     4 155539564    G    A 0.00362450  2.509455e-03
    ## 7    rs6552737     4 184955461    T    A 0.40243900  6.074234e-04
    ## 8    rs2289881     5  66084260    G    T 0.36506200 -7.593126e-03
    ## 9  rs148054686     5  94459128    G    A 0.00362056 -2.910403e-03
    ## 10  rs10041542     5 167832067    T    C 0.24088900 -1.134930e-03
    ## 11  rs17172044     7  42397586    A    C 0.06297640 -1.331810e-03
    ## 12   rs2346440     7 133685512    G    C 0.47453600 -1.742791e-03
    ## 13  rs11979341     7 155797978    C    G 0.33175500  2.078000e-04
    ## 14  rs11993215    NA        NA <NA> <NA>         NA            NA
    ## 15 rs113835443     8 144717251    C    T 0.11809600 -3.769069e-04
    ## 16  rs62583528     9 106929593    G    A 0.17478300  1.080673e-03
    ## 17   rs7020341     9 119247974    G    C 0.41158300  3.194201e-04
    ## 18  rs11245365    10 126482389    G    A 0.60673900 -5.081611e-04
    ## 19  rs12802656    11  16534415    A    C 0.52089400  5.564580e-03
    ## 20    rs659065    12   4008887    C    G 0.14661100  1.737210e-03
    ## 21  rs61921502    12  65832468    T    G 0.14724000 -6.327520e-03
    ## 22  rs79522035    12  72956782    C    T 0.05612060  2.225874e-03
    ## 23  rs77956314    12 117323367    T    C 0.07391780  1.479450e-03
    ## 24 rs143933797    17  78252238    G    A 0.03779070 -1.586391e-03
    ## 25  rs79727675    18  11653053    C    A 0.05414240  3.193084e-04
    ## 26    rs429358    19  45411941    T    C 0.13181000 -6.326630e-03
    ## 27   rs6060504    20  34197619    T    C 0.16094300  5.140550e-03
    ## 28   rs5753220    22  30986350    T    C 0.20964800  6.115460e-04
    ##             SE      Z        P      N       TRAIT
    ## 1  0.002653378  0.853 0.393700 141894 AUDIT_Total
    ## 2  0.002649478  1.395 0.162900 141932 AUDIT_Total
    ## 3  0.002662849 -0.067 0.946900 141888 AUDIT_Total
    ## 4  0.002663629 -1.275 0.202100 140504 AUDIT_Total
    ## 5  0.002672870 -0.026 0.979100 141052 AUDIT_Total
    ## 6  0.002658321  0.944 0.345100 141298 AUDIT_Total
    ## 7  0.002711712  0.224 0.822900 136476 AUDIT_Total
    ## 8  0.002664255 -2.850 0.004373 139491 AUDIT_Total
    ## 9  0.002662766 -1.093 0.274600 140720 AUDIT_Total
    ## 10 0.002676719 -0.424 0.671400 139806 AUDIT_Total
    ## 11 0.002658303 -0.501 0.616100 141669 AUDIT_Total
    ## 12 0.002664818 -0.654 0.512900 140838 AUDIT_Total
    ## 13 0.002698697  0.077 0.938400 138116 AUDIT_Total
    ## 14          NA     NA       NA     NA        <NA>
    ## 15 0.002673099 -0.141 0.887800 140593 AUDIT_Total
    ## 16 0.002668328  0.405 0.685700 140707 AUDIT_Total
    ## 17 0.002661834  0.120 0.904800 141833 AUDIT_Total
    ## 18 0.002660529 -0.191 0.848900 141824 AUDIT_Total
    ## 19 0.002651063  2.099 0.035810 141326 AUDIT_Total
    ## 20 0.002656290  0.654 0.513100 141744 AUDIT_Total
    ## 21 0.002659738 -2.379 0.017360 140238 AUDIT_Total
    ## 22 0.002662528  0.836 0.403200 140933 AUDIT_Total
    ## 23 0.002656108  0.557 0.577500 141850 AUDIT_Total
    ## 24 0.002661730 -0.596 0.551100 141216 AUDIT_Total
    ## 25 0.002660903  0.120 0.904800 141932 AUDIT_Total
    ## 26 0.002643806 -2.393 0.016720 141932 AUDIT_Total
    ## 27 0.002649767  1.940 0.052330 141560 AUDIT_Total
    ## 28 0.002658897  0.230 0.818100 141932 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

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

**Table 4:** Harmonized Hippocampal Volume and AUDIT Total datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    T   -0.04686000 -1.134930e-03
    ## 2                      T                    C    0.04051169  2.263332e-03
    ## 3                      A                    G   -0.04474128 -5.081611e-04
    ## 4                      T                    C    0.07553081 -3.769069e-04
    ## 5                      G                    C    0.06558170  2.078000e-04
    ## 6                      C                    A   -0.03979580  5.564580e-03
    ## 7                      A                    G   -0.16180284 -6.949463e-05
    ## 8                      A                    G    0.22638451 -1.586391e-03
    ## 9                      A                    G   -0.36225028  2.509455e-03
    ## 10                     A                    G   -0.21659175 -2.910403e-03
    ## 11                     C                    A   -0.07408290 -1.331810e-03
    ## 12                     T                    C   -0.05668170 -3.396126e-03
    ## 13                     T                    G   -0.05014690 -7.593126e-03
    ## 14                     C                    G    0.04059843 -1.742791e-03
    ## 15                     C                    T   -0.06342470 -6.326630e-03
    ## 16                     C                    T   -0.04931970  6.115460e-04
    ## 17                     G                    A    0.04276760 -1.784110e-04
    ## 18                     C                    T    0.06315530  5.140550e-03
    ## 19                     G                    T   -0.10788400 -6.327520e-03
    ## 20                     A                    G    0.05622208  1.080673e-03
    ## 21                     A                    T   -0.04324518  6.074234e-04
    ## 22                     G                    C   -0.06743310  1.737210e-03
    ## 23                     C                    G    0.05989482  3.194201e-04
    ## 24                     C                    G   -0.04002256  3.696022e-03
    ## 25                     C                    T    0.16185400  1.479450e-03
    ## 26                     T                    C    0.09939183  2.225874e-03
    ## 27                     A                    C   -0.13610794  3.193084e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452  0.24088900  FALSE       FALSE     FALSE     3veenZ
    ## 2        0.5624  0.57319700  FALSE       FALSE     FALSE     3veenZ
    ## 3        0.5648  0.60673900  FALSE       FALSE     FALSE     3veenZ
    ## 4        0.0904  0.11809600  FALSE       FALSE     FALSE     3veenZ
    ## 5        0.3163  0.33175500  FALSE        TRUE     FALSE     3veenZ
    ## 6        0.4696  0.52089400  FALSE       FALSE     FALSE     3veenZ
    ## 7        0.0173  0.02685050  FALSE       FALSE     FALSE     3veenZ
    ## 8        0.0166  0.03779070  FALSE       FALSE     FALSE     3veenZ
    ## 9        0.0068  0.00362450  FALSE       FALSE     FALSE     3veenZ
    ## 10       0.0124  0.00362056  FALSE       FALSE     FALSE     3veenZ
    ## 11       0.0775  0.06297640  FALSE       FALSE     FALSE     3veenZ
    ## 12       0.5412  0.55968800  FALSE       FALSE     FALSE     3veenZ
    ## 13       0.3544  0.36506200  FALSE       FALSE     FALSE     3veenZ
    ## 14       0.4591  0.47453600  FALSE        TRUE      TRUE     3veenZ
    ## 15       0.1537  0.13181000  FALSE       FALSE     FALSE     3veenZ
    ## 16       0.2497  0.20964800  FALSE       FALSE     FALSE     3veenZ
    ## 17       0.3114  0.28173900  FALSE       FALSE     FALSE     3veenZ
    ## 18       0.1624  0.16094300  FALSE       FALSE     FALSE     3veenZ
    ## 19       0.1534  0.14724000  FALSE       FALSE     FALSE     3veenZ
    ## 20       0.1951  0.17478300  FALSE       FALSE     FALSE     3veenZ
    ## 21       0.4152  0.40243900  FALSE        TRUE     FALSE     3veenZ
    ## 22       0.1413  0.14661100  FALSE        TRUE     FALSE     3veenZ
    ## 23       0.3590  0.41158300  FALSE        TRUE     FALSE     3veenZ
    ## 24       0.5308  0.56922200  FALSE        TRUE      TRUE     3veenZ
    ## 25       0.0840  0.07391780  FALSE       FALSE     FALSE     3veenZ
    ## 26       0.0419  0.05612060  FALSE       FALSE     FALSE     3veenZ
    ## 27       0.0472  0.05414240  FALSE       FALSE     FALSE     3veenZ
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1            5   167832067 0.002676719    -0.424     0.671400
    ## 2            1   153856498 0.002653378     0.853     0.393700
    ## 3           10   126482389 0.002660529    -0.191     0.848900
    ## 4            8   144717251 0.002673099    -0.141     0.887800
    ## 5            7   155797978 0.002698697     0.077     0.938400
    ## 6           11    16534415 0.002651063     2.099     0.035810
    ## 7            4   134506440 0.002672870    -0.026     0.979100
    ## 8           17    78252238 0.002661730    -0.596     0.551100
    ## 9            4   155539564 0.002658321     0.944     0.345100
    ## 10           5    94459128 0.002662766    -1.093     0.274600
    ## 11           7    42397586 0.002658303    -0.501     0.616100
    ## 12           2   162856148 0.002663629    -1.275     0.202100
    ## 13           5    66084260 0.002664255    -2.850     0.004373
    ## 14           7   133685512 0.002664818    -0.654     0.512900
    ## 15          19    45411941 0.002643806    -2.393     0.016720
    ## 16          22    30986350 0.002658897     0.230     0.818100
    ## 17           2    96999086 0.002662849    -0.067     0.946900
    ## 18          20    34197619 0.002649767     1.940     0.052330
    ## 19          12    65832468 0.002659738    -2.379     0.017360
    ## 20           9   106929593 0.002668328     0.405     0.685700
    ## 21           4   184955461 0.002711712     0.224     0.822900
    ## 22          12     4008887 0.002656290     0.654     0.513100
    ## 23           9   119247974 0.002661834     0.120     0.904800
    ## 24           2     8780959 0.002649478     1.395     0.162900
    ## 25          12   117323367 0.002656108     0.557     0.577500
    ## 26          12    72956782 0.002662528     0.836     0.403200
    ## 27          18    11653053 0.002660903     0.120     0.904800
    ##    samplesize.outcome                       outcome mr_keep.outcome
    ## 1              139806 SanchezRoige2019auditt23andMe            TRUE
    ## 2              141894 SanchezRoige2019auditt23andMe            TRUE
    ## 3              141824 SanchezRoige2019auditt23andMe            TRUE
    ## 4              140593 SanchezRoige2019auditt23andMe            TRUE
    ## 5              138116 SanchezRoige2019auditt23andMe            TRUE
    ## 6              141326 SanchezRoige2019auditt23andMe            TRUE
    ## 7              141052 SanchezRoige2019auditt23andMe            TRUE
    ## 8              141216 SanchezRoige2019auditt23andMe            TRUE
    ## 9              141298 SanchezRoige2019auditt23andMe            TRUE
    ## 10             140720 SanchezRoige2019auditt23andMe            TRUE
    ## 11             141669 SanchezRoige2019auditt23andMe            TRUE
    ## 12             140504 SanchezRoige2019auditt23andMe            TRUE
    ## 13             139491 SanchezRoige2019auditt23andMe            TRUE
    ## 14             140838 SanchezRoige2019auditt23andMe            TRUE
    ## 15             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 16             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 17             141888 SanchezRoige2019auditt23andMe            TRUE
    ## 18             141560 SanchezRoige2019auditt23andMe            TRUE
    ## 19             140238 SanchezRoige2019auditt23andMe            TRUE
    ## 20             140707 SanchezRoige2019auditt23andMe            TRUE
    ## 21             136476 SanchezRoige2019auditt23andMe            TRUE
    ## 22             141744 SanchezRoige2019auditt23andMe            TRUE
    ## 23             141833 SanchezRoige2019auditt23andMe            TRUE
    ## 24             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 25             141850 SanchezRoige2019auditt23andMe            TRUE
    ## 26             140933 SanchezRoige2019auditt23andMe            TRUE
    ## 27             141932 SanchezRoige2019auditt23andMe            TRUE
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
    ## 1              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 2              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 3              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 4              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 5              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 6              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 7              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 8              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 9              reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 10             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 11             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 12             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 13             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 14             reported      SWaYJb      2   FALSE           TRUE 5e-06
    ## 15             reported      SWaYJb      2    TRUE          FALSE 5e-06
    ## 16             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 17             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 18             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 19             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 20             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 21             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 22             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 23             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 24             reported      SWaYJb      2   FALSE           TRUE 5e-06
    ## 25             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 26             reported      SWaYJb      2    TRUE           TRUE 5e-06
    ## 27             reported      SWaYJb      2    TRUE           TRUE 5e-06
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
    ## 21              NA            NA          TRUE
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

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs429358          19    45411941     4.067e-07      0.01672

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
    ## 1            FALSE   0.02897314 33.30501  0.05 3.988384 0.5148472

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
Hippocampal Volume on AUDIT Total. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on AUDIT Total

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 2      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 3      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 4      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   24  0.003493588 0.004364679
    ## 2                           Weighted median   24 -0.005270752 0.006144901
    ## 3                             Weighted mode   24 -0.004178655 0.005597664
    ## 4                                  MR Egger   24 -0.006364007 0.007553008
    ##        pval
    ## 1 0.4234660
    ## 2 0.3910339
    ## 3 0.4629284
    ## 4 0.4085310

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in AUDIT Total and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 2      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 25.18036   22 0.2885277
    ## 2 Inverse variance weighted 28.33610   23 0.2033383

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##   egger_intercept           se      pval
    ## 1     0.001563157 0.0009413939 0.1110073

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##      pt outliers_removed n_outliers   RSSobs  pval
    ## 1 5e-06            FALSE          0 32.29496 0.161

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 2      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 3      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 4      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   24  0.003493588 0.004364679
    ## 2                           Weighted median   24 -0.005270752 0.006183747
    ## 3                             Weighted mode   24 -0.004178655 0.005484651
    ## 4                                  MR Egger   24 -0.006364007 0.007553008
    ##        pval
    ## 1 0.4234660
    ## 2 0.3940167
    ## 3 0.4538729
    ## 4 0.4085310

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ## 2      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 25.18036   22 0.2885277
    ## 2 Inverse variance weighted 28.33610   23 0.2033383

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      SWaYJb     3veenZ SanchezRoige2019auditt23andMe Hilbar2017hipv
    ##   egger_intercept           se      pval
    ## 1     0.001563157 0.0009413939 0.1110073

<br>
