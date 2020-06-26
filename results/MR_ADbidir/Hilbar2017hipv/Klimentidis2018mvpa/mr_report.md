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

### Outcome: Moderate-Vigours Physical Activity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Moderate-Vigours Physical Activity

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1   rs10908512     1 153856498    C    T 0.561382 -9.68884e-03 0.00222069
    ## 2    rs7588305     2   8780959    G    C 0.542480 -1.28421e-03 0.00220923
    ## 3   rs59966106     2  96999086    A    G 0.324745  3.80395e-03 0.00235111
    ## 4    rs2268894     2 162856148    C    T 0.522447 -7.44378e-03 0.00221579
    ## 5  rs138012093     4 134506440    G    A 0.015475  2.25442e-03 0.00922166
    ## 6  rs144578582     4 155539564    G    A 0.007930 -1.16195e-02 0.01300710
    ## 7    rs6552737     4 184955461    T    A 0.436745  1.56089e-04 0.00224633
    ## 8    rs2289881     5  66084260    G    T 0.357487  3.55381e-03 0.00231033
    ## 9  rs148054686     5  94459128    G    A 0.010376  3.20554e-04 0.01156580
    ## 10  rs10041542     5 167832067    T    C 0.246999 -4.03329e-03 0.00256725
    ## 11  rs17172044     7  42397586    A    C 0.071034  1.59283e-03 0.00429894
    ## 12   rs2346440     7 133685512    G    C 0.457463 -1.21135e-02 0.00221928
    ## 13  rs11979341     7 155797978    C    G 0.300104 -3.72631e-04 0.00242621
    ## 14  rs11993215    NA        NA <NA> <NA>       NA           NA         NA
    ## 15 rs113835443     8 144717251    C    T 0.104912  2.03307e-03 0.00362030
    ## 16  rs62583528     9 106929593    G    A 0.216895 -4.05935e-04 0.00268262
    ## 17   rs7020341     9 119247974    G    C 0.361375  5.12688e-04 0.00229637
    ## 18  rs11245365    10 126482389    G    A 0.572670 -2.72972e-05 0.00222633
    ## 19  rs12802656    11  16534415    A    C 0.478930  1.85802e-03 0.00220675
    ## 20    rs659065    12   4008887    C    G 0.147476 -1.55931e-03 0.00310713
    ## 21  rs61921502    12  65832468    T    G 0.171991 -3.13989e-03 0.00294604
    ## 22  rs79522035    12  72956782    C    T 0.038331 -1.60738e-02 0.00582390
    ## 23  rs77956314    12 117323367    T    C 0.081929 -1.33139e-03 0.00402333
    ## 24 rs143933797    17  78252238    G    A 0.030658 -1.11953e-03 0.00647265
    ## 25  rs79727675    18  11653053    C    A 0.050994 -3.43880e-03 0.00500531
    ## 26    rs429358    19  45411941    T    C 0.154172  2.19822e-02 0.00305356
    ## 27   rs6060504    20  34197619    T    C 0.145219  5.65641e-04 0.00313134
    ## 28   rs5753220    22  30986350    T    C 0.266348 -7.98151e-04 0.00249001
    ##             Z       P      N TRAIT
    ## 1  -4.3629900 1.3e-05 377234  MVPA
    ## 2  -0.5812930 5.6e-01 377234  MVPA
    ## 3   1.6179400 1.1e-01 377234  MVPA
    ## 4  -3.3594200 7.8e-04 377234  MVPA
    ## 5   0.2444700 8.1e-01 377234  MVPA
    ## 6  -0.8933200 3.7e-01 377234  MVPA
    ## 7   0.0694862 9.4e-01 377234  MVPA
    ## 8   1.5382300 1.2e-01 377234  MVPA
    ## 9   0.0277157 9.8e-01 377234  MVPA
    ## 10 -1.5710500 1.2e-01 377234  MVPA
    ## 11  0.3705170 7.1e-01 377234  MVPA
    ## 12 -5.4583000 4.8e-08 377234  MVPA
    ## 13 -0.1535860 8.8e-01 377234  MVPA
    ## 14         NA      NA     NA  <NA>
    ## 15  0.5615750 5.7e-01 377234  MVPA
    ## 16 -0.1513200 8.8e-01 377234  MVPA
    ## 17  0.2232600 8.2e-01 377234  MVPA
    ## 18 -0.0122611 9.9e-01 377234  MVPA
    ## 19  0.8419710 4.0e-01 377234  MVPA
    ## 20 -0.5018490 6.2e-01 377234  MVPA
    ## 21 -1.0658000 2.9e-01 377234  MVPA
    ## 22 -2.7599700 5.8e-03 377234  MVPA
    ## 23 -0.3309170 7.4e-01 377234  MVPA
    ## 24 -0.1729630 8.6e-01 377234  MVPA
    ## 25 -0.6870300 4.9e-01 377234  MVPA
    ## 26  7.1988800 6.1e-13 377234  MVPA
    ## 27  0.1806390 8.6e-01 377234  MVPA
    ## 28 -0.3205410 7.5e-01 377234  MVPA

<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity

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

**Table 4:** Harmonized Hippocampal Volume and Moderate-Vigours Physical
Activity datasets

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
    ## 1                      C                    T   -0.04686000 -4.03329e-03
    ## 2                      T                    C    0.04051169 -9.68884e-03
    ## 3                      A                    G   -0.04474128 -2.72972e-05
    ## 4                      T                    C    0.07553081  2.03307e-03
    ## 5                      G                    C    0.06558170 -3.72631e-04
    ## 6                      C                    A   -0.03979580  1.85802e-03
    ## 7                      A                    G   -0.16180284  2.25442e-03
    ## 8                      A                    G    0.22638451 -1.11953e-03
    ## 9                      A                    G   -0.36225028 -1.16195e-02
    ## 10                     A                    G   -0.21659175  3.20554e-04
    ## 11                     C                    A   -0.07408290  1.59283e-03
    ## 12                     T                    C   -0.05668170 -7.44378e-03
    ## 13                     T                    G   -0.05014690  3.55381e-03
    ## 14                     C                    G    0.04059843 -1.21135e-02
    ## 15                     C                    T   -0.06342470  2.19822e-02
    ## 16                     C                    T   -0.04931970 -7.98151e-04
    ## 17                     G                    A    0.04276760  3.80395e-03
    ## 18                     C                    T    0.06315530  5.65641e-04
    ## 19                     G                    T   -0.10788400 -3.13989e-03
    ## 20                     A                    G    0.05622208 -4.05935e-04
    ## 21                     A                    T   -0.04324518  1.56089e-04
    ## 22                     G                    C   -0.06743310 -1.55931e-03
    ## 23                     C                    G    0.05989482  5.12688e-04
    ## 24                     C                    G   -0.04002256 -1.28421e-03
    ## 25                     C                    T    0.16185400 -1.33139e-03
    ## 26                     T                    C    0.09939183 -1.60738e-02
    ## 27                     A                    C   -0.13610794 -3.43880e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452    0.246999  FALSE       FALSE     FALSE     arc7Vk
    ## 2        0.5624    0.561382  FALSE       FALSE     FALSE     arc7Vk
    ## 3        0.5648    0.572670  FALSE       FALSE     FALSE     arc7Vk
    ## 4        0.0904    0.104912  FALSE       FALSE     FALSE     arc7Vk
    ## 5        0.3163    0.300104  FALSE        TRUE     FALSE     arc7Vk
    ## 6        0.4696    0.478930  FALSE       FALSE     FALSE     arc7Vk
    ## 7        0.0173    0.015475  FALSE       FALSE     FALSE     arc7Vk
    ## 8        0.0166    0.030658  FALSE       FALSE     FALSE     arc7Vk
    ## 9        0.0068    0.007930  FALSE       FALSE     FALSE     arc7Vk
    ## 10       0.0124    0.010376  FALSE       FALSE     FALSE     arc7Vk
    ## 11       0.0775    0.071034  FALSE       FALSE     FALSE     arc7Vk
    ## 12       0.5412    0.522447  FALSE       FALSE     FALSE     arc7Vk
    ## 13       0.3544    0.357487  FALSE       FALSE     FALSE     arc7Vk
    ## 14       0.4591    0.457463  FALSE        TRUE      TRUE     arc7Vk
    ## 15       0.1537    0.154172  FALSE       FALSE     FALSE     arc7Vk
    ## 16       0.2497    0.266348  FALSE       FALSE     FALSE     arc7Vk
    ## 17       0.3114    0.324745  FALSE       FALSE     FALSE     arc7Vk
    ## 18       0.1624    0.145219  FALSE       FALSE     FALSE     arc7Vk
    ## 19       0.1534    0.171991  FALSE       FALSE     FALSE     arc7Vk
    ## 20       0.1951    0.216895  FALSE       FALSE     FALSE     arc7Vk
    ## 21       0.4152    0.436745  FALSE        TRUE      TRUE     arc7Vk
    ## 22       0.1413    0.147476  FALSE        TRUE     FALSE     arc7Vk
    ## 23       0.3590    0.361375  FALSE        TRUE     FALSE     arc7Vk
    ## 24       0.5308    0.542480  FALSE        TRUE      TRUE     arc7Vk
    ## 25       0.0840    0.081929  FALSE       FALSE     FALSE     arc7Vk
    ## 26       0.0419    0.038331  FALSE       FALSE     FALSE     arc7Vk
    ## 27       0.0472    0.050994  FALSE       FALSE     FALSE     arc7Vk
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   167832067 0.00256725 -1.5710500      1.2e-01
    ## 2            1   153856498 0.00222069 -4.3629900      1.3e-05
    ## 3           10   126482389 0.00222633 -0.0122611      9.9e-01
    ## 4            8   144717251 0.00362030  0.5615750      5.7e-01
    ## 5            7   155797978 0.00242621 -0.1535860      8.8e-01
    ## 6           11    16534415 0.00220675  0.8419710      4.0e-01
    ## 7            4   134506440 0.00922166  0.2444700      8.1e-01
    ## 8           17    78252238 0.00647265 -0.1729630      8.6e-01
    ## 9            4   155539564 0.01300710 -0.8933200      3.7e-01
    ## 10           5    94459128 0.01156580  0.0277157      9.8e-01
    ## 11           7    42397586 0.00429894  0.3705170      7.1e-01
    ## 12           2   162856148 0.00221579 -3.3594200      7.8e-04
    ## 13           5    66084260 0.00231033  1.5382300      1.2e-01
    ## 14           7   133685512 0.00221928 -5.4583000      4.8e-08
    ## 15          19    45411941 0.00305356  7.1988800      6.1e-13
    ## 16          22    30986350 0.00249001 -0.3205410      7.5e-01
    ## 17           2    96999086 0.00235111  1.6179400      1.1e-01
    ## 18          20    34197619 0.00313134  0.1806390      8.6e-01
    ## 19          12    65832468 0.00294604 -1.0658000      2.9e-01
    ## 20           9   106929593 0.00268262 -0.1513200      8.8e-01
    ## 21           4   184955461 0.00224633  0.0694862      9.4e-01
    ## 22          12     4008887 0.00310713 -0.5018490      6.2e-01
    ## 23           9   119247974 0.00229637  0.2232600      8.2e-01
    ## 24           2     8780959 0.00220923 -0.5812930      5.6e-01
    ## 25          12   117323367 0.00402333 -0.3309170      7.4e-01
    ## 26          12    72956782 0.00582390 -2.7599700      5.8e-03
    ## 27          18    11653053 0.00500531 -0.6870300      4.9e-01
    ##    samplesize.outcome             outcome mr_keep.outcome
    ## 1              377234 Klimentidis2018mvpa            TRUE
    ## 2              377234 Klimentidis2018mvpa            TRUE
    ## 3              377234 Klimentidis2018mvpa            TRUE
    ## 4              377234 Klimentidis2018mvpa            TRUE
    ## 5              377234 Klimentidis2018mvpa            TRUE
    ## 6              377234 Klimentidis2018mvpa            TRUE
    ## 7              377234 Klimentidis2018mvpa            TRUE
    ## 8              377234 Klimentidis2018mvpa            TRUE
    ## 9              377234 Klimentidis2018mvpa            TRUE
    ## 10             377234 Klimentidis2018mvpa            TRUE
    ## 11             377234 Klimentidis2018mvpa            TRUE
    ## 12             377234 Klimentidis2018mvpa            TRUE
    ## 13             377234 Klimentidis2018mvpa            TRUE
    ## 14             377234 Klimentidis2018mvpa            TRUE
    ## 15             377234 Klimentidis2018mvpa            TRUE
    ## 16             377234 Klimentidis2018mvpa            TRUE
    ## 17             377234 Klimentidis2018mvpa            TRUE
    ## 18             377234 Klimentidis2018mvpa            TRUE
    ## 19             377234 Klimentidis2018mvpa            TRUE
    ## 20             377234 Klimentidis2018mvpa            TRUE
    ## 21             377234 Klimentidis2018mvpa            TRUE
    ## 22             377234 Klimentidis2018mvpa            TRUE
    ## 23             377234 Klimentidis2018mvpa            TRUE
    ## 24             377234 Klimentidis2018mvpa            TRUE
    ## 25             377234 Klimentidis2018mvpa            TRUE
    ## 26             377234 Klimentidis2018mvpa            TRUE
    ## 27             377234 Klimentidis2018mvpa            TRUE
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
    ## 1              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 2              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 3              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 4              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 5              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 6              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 7              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 8              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 9              reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 10             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 11             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 12             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 13             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 14             reported      vnlDgt      2   FALSE          FALSE 5e-06
    ## 15             reported      vnlDgt      2    TRUE          FALSE 5e-06
    ## 16             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 17             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 18             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 19             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 20             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 21             reported      vnlDgt      2   FALSE           TRUE 5e-06
    ## 22             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 23             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 24             reported      vnlDgt      2   FALSE           TRUE 5e-06
    ## 25             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 26             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ## 27             reported      vnlDgt      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.559274e-05             1          TRUE
    ## 2     1.019863e-04        <0.023         FALSE
    ## 3     2.313113e-08             1          TRUE
    ## 4     3.227669e-06             1          TRUE
    ## 5     4.425393e-07             1          TRUE
    ## 6     4.259082e-06             1          TRUE
    ## 7     8.729934e-06             1          TRUE
    ## 8     4.866626e-06             1          TRUE
    ## 9     1.173691e-04             1          TRUE
    ## 10    1.435590e-06             1          TRUE
    ## 11    3.705855e-06             1          TRUE
    ## 12    5.767747e-05        <0.023         FALSE
    ## 13    1.510774e-05             1          TRUE
    ## 14              NA          <NA>            NA
    ## 15              NA          <NA>            NA
    ## 16    3.891376e-07             1          TRUE
    ## 17    1.390766e-05             1          TRUE
    ## 18    1.082021e-07             1          TRUE
    ## 19    9.132216e-06             1          TRUE
    ## 20    4.184170e-07             1          TRUE
    ## 21              NA          <NA>            NA
    ## 22    1.804356e-06             1          TRUE
    ## 23    8.623992e-08             1          TRUE
    ## 24              NA          <NA>            NA
    ## 25    4.993168e-06             1          TRUE
    ## 26    2.832220e-04         0.046         FALSE
    ## 27    9.471149e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the
Moderate-Vigours Physical Activity GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs2346440           7   133685512     2.767e-06      4.8e-08
    ## 2  rs429358          19    45411941     4.067e-07      6.1e-13

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.02804462 33.60843  0.05 0.1388151 0.06604881
    ## 2             TRUE   0.02482364 34.10151  0.05 0.6130926 0.12264974

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
Hippocampal Volume on Moderate-Vigours Physical Activity. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on
Moderate-Vigours Physical Activity

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 2      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 3      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 4      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   23 0.003906592 0.008654349
    ## 2                           Weighted median   23 0.001913047 0.012252543
    ## 3                             Weighted mode   23 0.001344840 0.015048494
    ## 4                                  MR Egger   23 0.013863608 0.027723735
    ##        pval
    ## 1 0.6516997
    ## 2 0.8759269
    ## 3 0.9295988
    ## 4 0.6222306

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Moderate-Vigours Physical Activity and
the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 2      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 49.04829   21 0.0004940936
    ## 2 Inverse variance weighted 49.43833   22 0.0006980786

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Klimentidis2018mvpa/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Klimentidis2018mvpa/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1   -0.0008080436 0.001977328 0.6869307

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome             outcome       exposure    pt
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          3 52.88925 0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 2      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 3      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 4      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   20  0.0076962562 0.009101031
    ## 2                           Weighted median   20  0.0009846339 0.012366534
    ## 3                             Weighted mode   20 -0.0015860940 0.017532814
    ## 4                                  MR Egger   20  0.0079005914 0.018626688
    ##        pval
    ## 1 0.3977499
    ## 2 0.9365388
    ## 3 0.9288651
    ## 4 0.6764792

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ## 2      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 10.98799   18 0.8948655
    ## 2 Inverse variance weighted 10.98815   19 0.9242364

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome             outcome       exposure
    ## 1      vnlDgt     arc7Vk Klimentidis2018mvpa Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1   -1.739347e-05 0.001383399 0.9901068

<br>
