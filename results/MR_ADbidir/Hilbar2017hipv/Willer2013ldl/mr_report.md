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

### Outcome: LDL cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in LDL
cholesterol

    ##            SNP CHROM       POS  REF  ALT       AF    BETA     SE
    ## 1   rs10908512    NA        NA <NA> <NA>       NA      NA     NA
    ## 2    rs7588305     2   8780959    G    C 0.569222 -0.0128 0.0063
    ## 3   rs59966106    NA        NA <NA> <NA>       NA      NA     NA
    ## 4    rs2268894     2 162856148    C    T 0.559688  0.0131 0.0052
    ## 5  rs138012093    NA        NA <NA> <NA>       NA      NA     NA
    ## 6  rs144578582    NA        NA <NA> <NA>       NA      NA     NA
    ## 7    rs6552737    NA        NA <NA> <NA>       NA      NA     NA
    ## 8    rs2289881     5  66084260    G    T 0.365062  0.0044 0.0054
    ## 9  rs148054686    NA        NA <NA> <NA>       NA      NA     NA
    ## 10  rs10041542     5 167832067    T    C 0.240889  0.0036 0.0063
    ## 11  rs17172044    NA        NA <NA> <NA>       NA      NA     NA
    ## 12   rs2346440     7 133685512    G    C 0.474536  0.0026 0.0052
    ## 13  rs11979341    NA        NA <NA> <NA>       NA      NA     NA
    ## 14  rs11993215    NA        NA <NA> <NA>       NA      NA     NA
    ## 15 rs113835443    NA        NA <NA> <NA>       NA      NA     NA
    ## 16  rs62583528    NA        NA <NA> <NA>       NA      NA     NA
    ## 17   rs7020341     9 119247974    G    C 0.411583 -0.0046 0.0054
    ## 18  rs11245365    NA        NA <NA> <NA>       NA      NA     NA
    ## 19  rs12802656    11  16534415    A    C 0.520894  0.0059 0.0037
    ## 20    rs659065    NA        NA <NA> <NA>       NA      NA     NA
    ## 21  rs61921502    NA        NA <NA> <NA>       NA      NA     NA
    ## 22  rs79522035    NA        NA <NA> <NA>       NA      NA     NA
    ## 23  rs77956314    NA        NA <NA> <NA>       NA      NA     NA
    ## 24 rs143933797    NA        NA <NA> <NA>       NA      NA     NA
    ## 25  rs79727675    NA        NA <NA> <NA>       NA      NA     NA
    ## 26    rs429358    NA        NA <NA> <NA>       NA      NA     NA
    ## 27   rs6060504    NA        NA <NA> <NA>       NA      NA     NA
    ## 28   rs5753220    22  30986350    T    C 0.209648 -0.0003 0.0060
    ##             Z       P      N           TRAIT
    ## 1          NA      NA     NA            <NA>
    ## 2  -2.0317500 0.05496  89203 LDL_Cholesterol
    ## 3          NA      NA     NA            <NA>
    ## 4   2.5192308 0.02200  89888 LDL_Cholesterol
    ## 5          NA      NA     NA            <NA>
    ## 6          NA      NA     NA            <NA>
    ## 7          NA      NA     NA            <NA>
    ## 8   0.8148148 0.39120  89888 LDL_Cholesterol
    ## 9          NA      NA     NA            <NA>
    ## 10  0.5714286 0.35990  89874 LDL_Cholesterol
    ## 11         NA      NA     NA            <NA>
    ## 12  0.5000000 0.74230  89888 LDL_Cholesterol
    ## 13         NA      NA     NA            <NA>
    ## 14         NA      NA     NA            <NA>
    ## 15         NA      NA     NA            <NA>
    ## 16         NA      NA     NA            <NA>
    ## 17 -0.8518520 0.69060  89883 LDL_Cholesterol
    ## 18         NA      NA     NA            <NA>
    ## 19  1.5945946 0.16260 173011 LDL_Cholesterol
    ## 20         NA      NA     NA            <NA>
    ## 21         NA      NA     NA            <NA>
    ## 22         NA      NA     NA            <NA>
    ## 23         NA      NA     NA            <NA>
    ## 24         NA      NA     NA            <NA>
    ## 25         NA      NA     NA            <NA>
    ## 26         NA      NA     NA            <NA>
    ## 27         NA      NA     NA            <NA>
    ## 28 -0.0500000 0.96200  88377 LDL_Cholesterol

<br>

**Table 3:** Proxy SNPs for LDL cholesterol

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1   rs10908512 rs10494303 0.948971 1.000000 CA/TG  NA     1 153893023
    ## 2   rs59966106  rs4907310 1.000000 1.000000 GT/AC  NA     2  96980113
    ## 3    rs6552737  rs1970892 0.805769 0.942465 AA/TT  NA     4 184955853
    ## 4   rs17172044 rs10951684 0.966872 0.983297 CT/AG  NA     7  42411818
    ## 5   rs62583528   rs980249 0.828577 0.974832 AC/GT  NA     9 106888517
    ## 6   rs11245365 rs12570348 0.995995 1.000000 GG/AT  NA    10 126438963
    ## 7     rs659065   rs671811 0.957992 1.000000 GT/CC  NA    12   4008326
    ## 8   rs79522035   rs461075 0.815963 1.000000 TC/CT  NA    12  73060382
    ## 9   rs77956314  rs7294919 0.864397 0.974878 CC/TT  NA    12 117327592
    ## 10   rs6060504  rs6060507 1.000000 1.000000 CG/TA  NA    20  34198334
    ## 11 rs138012093       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 12 rs144578582       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 13 rs148054686       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 14  rs11979341       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 15  rs11993215       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 16 rs113835443       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 17  rs61921502       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 18 rs143933797       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 19  rs79727675       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 20    rs429358       <NA>       NA       NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy        AF    BETA     SE          Z       P     N
    ## 1          G         A 0.4139370  0.0041 0.0052  0.7884615 0.25440 89873
    ## 2          C         T 0.2843920 -0.0050 0.0055 -0.9090910 0.50530 89888
    ## 3          T         A 0.3892940 -0.0014 0.0053 -0.2641510 0.50200 89774
    ## 4          G         T 0.0629764  0.0015 0.0101  0.1485149 0.81410 89888
    ## 5          T         C 0.2059570 -0.0112 0.0062 -1.8064500 0.07718 89888
    ## 6          G         T 0.6062750 -0.0122 0.0052 -2.3461500 0.05549 89819
    ## 7          C         T 0.1458180  0.0061 0.0077  0.7922078 0.31300 89888
    ## 8          C         T 0.9401310 -0.0229 0.0174 -1.3160900 0.09935 64765
    ## 9          T         C 0.0922012  0.0065 0.0094  0.6914894 0.56540 89855
    ## 10         A         G 0.1588320 -0.0157 0.0072 -2.1805600 0.02818 88433
    ## 11      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 12      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 13      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 14      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 15      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 16      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 17      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 18      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 19      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ## 20      <NA>      <NA>        NA      NA     NA         NA      NA    NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1  LDL_Cholesterol    C         A    T         G    C    T          TRUE
    ## 2  LDL_Cholesterol    G         T    A         C    G    A          TRUE
    ## 3  LDL_Cholesterol    A         A    T         T    A    T          TRUE
    ## 4  LDL_Cholesterol    C         T    A         G    C    A          TRUE
    ## 5  LDL_Cholesterol    A         C    G         T    A    G          TRUE
    ## 6  LDL_Cholesterol    G         G    A         T    A    G          TRUE
    ## 7  LDL_Cholesterol    G         T    C         C    G    C          TRUE
    ## 8  LDL_Cholesterol    T         C    C         T    C    T          TRUE
    ## 9  LDL_Cholesterol    C         C    T         T    C    T          TRUE
    ## 10 LDL_Cholesterol    C         G    T         A    C    T          TRUE
    ## 11            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 12            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 13            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 14            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 15            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 16            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 17            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 18            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 19            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 20            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Hippocampal Volume and LDL cholesterol datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10041542                      C                     T
    ## 2  rs10908512                      T                     C
    ## 3  rs11245365                      A                     G
    ## 4  rs12802656                      C                     A
    ## 5  rs17172044                      C                     A
    ## 6   rs2268894                      T                     C
    ## 7   rs2289881                      T                     G
    ## 8   rs2346440                      C                     G
    ## 9   rs5753220                      C                     T
    ## 10 rs59966106                      G                     A
    ## 11  rs6060504                      C                     T
    ## 12 rs62583528                      A                     G
    ## 13  rs6552737                      A                     T
    ## 14   rs659065                      G                     C
    ## 15  rs7020341                      C                     G
    ## 16  rs7588305                      C                     G
    ## 17 rs77956314                      C                     T
    ## 18 rs79522035                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T   -0.04686000       0.0036
    ## 2                      T                    C    0.04051169      -0.0041
    ## 3                      A                    G   -0.04474128      -0.0122
    ## 4                      C                    A   -0.03979580       0.0059
    ## 5                      C                    A   -0.07408290       0.0015
    ## 6                      T                    C   -0.05668170       0.0131
    ## 7                      T                    G   -0.05014690       0.0044
    ## 8                      C                    G    0.04059843       0.0026
    ## 9                      C                    T   -0.04931970      -0.0003
    ## 10                     G                    A    0.04276760      -0.0050
    ## 11                     C                    T    0.06315530      -0.0157
    ## 12                     A                    G    0.05622208      -0.0112
    ## 13                     A                    T   -0.04324518      -0.0014
    ## 14                     G                    C   -0.06743310       0.0061
    ## 15                     C                    G    0.05989482      -0.0046
    ## 16                     C                    G   -0.04002256      -0.0128
    ## 17                     C                    T    0.16185400       0.0065
    ## 18                     T                    C    0.09939183       0.0229
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452   0.2408890  FALSE       FALSE     FALSE     i3O6zm
    ## 2        0.5624   0.5860630  FALSE       FALSE     FALSE     i3O6zm
    ## 3        0.5648   0.6062750  FALSE       FALSE     FALSE     i3O6zm
    ## 4        0.4696   0.5208940  FALSE       FALSE     FALSE     i3O6zm
    ## 5        0.0775   0.0629764  FALSE       FALSE     FALSE     i3O6zm
    ## 6        0.5412   0.5596880  FALSE       FALSE     FALSE     i3O6zm
    ## 7        0.3544   0.3650620  FALSE       FALSE     FALSE     i3O6zm
    ## 8        0.4591   0.4745360  FALSE        TRUE      TRUE     i3O6zm
    ## 9        0.2497   0.2096480  FALSE       FALSE     FALSE     i3O6zm
    ## 10       0.3114   0.2843920  FALSE       FALSE     FALSE     i3O6zm
    ## 11       0.1624   0.1588320  FALSE       FALSE     FALSE     i3O6zm
    ## 12       0.1951   0.2059570  FALSE       FALSE     FALSE     i3O6zm
    ## 13       0.4152   0.3892940  FALSE        TRUE     FALSE     i3O6zm
    ## 14       0.1413   0.1458180  FALSE        TRUE     FALSE     i3O6zm
    ## 15       0.3590   0.4115830  FALSE        TRUE     FALSE     i3O6zm
    ## 16       0.5308   0.5692220  FALSE        TRUE      TRUE     i3O6zm
    ## 17       0.0840   0.0922012  FALSE       FALSE     FALSE     i3O6zm
    ## 18       0.0419   0.0598690  FALSE       FALSE     FALSE     i3O6zm
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   167832067     0.0063  0.5714286      0.35990
    ## 2            1   153893023     0.0052  0.7884615      0.25440
    ## 3           10   126438963     0.0052 -2.3461500      0.05549
    ## 4           11    16534415     0.0037  1.5945946      0.16260
    ## 5            7    42411818     0.0101  0.1485149      0.81410
    ## 6            2   162856148     0.0052  2.5192308      0.02200
    ## 7            5    66084260     0.0054  0.8148148      0.39120
    ## 8            7   133685512     0.0052  0.5000000      0.74230
    ## 9           22    30986350     0.0060 -0.0500000      0.96200
    ## 10           2    96980113     0.0055 -0.9090910      0.50530
    ## 11          20    34198334     0.0072 -2.1805600      0.02818
    ## 12           9   106888517     0.0062 -1.8064500      0.07718
    ## 13           4   184955853     0.0053 -0.2641510      0.50200
    ## 14          12     4008326     0.0077  0.7922078      0.31300
    ## 15           9   119247974     0.0054 -0.8518520      0.69060
    ## 16           2     8780959     0.0063 -2.0317500      0.05496
    ## 17          12   117327592     0.0094  0.6914894      0.56540
    ## 18          12    73060382     0.0174 -1.3160900      0.09935
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1               89874 Willer2013ldl            TRUE            reported
    ## 2               89873 Willer2013ldl            TRUE            reported
    ## 3               89819 Willer2013ldl            TRUE            reported
    ## 4              173011 Willer2013ldl            TRUE            reported
    ## 5               89888 Willer2013ldl            TRUE            reported
    ## 6               89888 Willer2013ldl            TRUE            reported
    ## 7               89888 Willer2013ldl            TRUE            reported
    ## 8               89888 Willer2013ldl            TRUE            reported
    ## 9               88377 Willer2013ldl            TRUE            reported
    ## 10              89888 Willer2013ldl            TRUE            reported
    ## 11              88433 Willer2013ldl            TRUE            reported
    ## 12              89888 Willer2013ldl            TRUE            reported
    ## 13              89774 Willer2013ldl            TRUE            reported
    ## 14              89888 Willer2013ldl            TRUE            reported
    ## 15              89883 Willer2013ldl            TRUE            reported
    ## 16              89203 Willer2013ldl            TRUE            reported
    ## 17              89855 Willer2013ldl            TRUE            reported
    ## 18              64765 Willer2013ldl            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2           TRUE         rs10908512        rs10494303                 C
    ## 3           TRUE         rs11245365        rs12570348                 A
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE         rs17172044        rs10951684                 C
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10          TRUE         rs59966106         rs4907310                 G
    ## 11          TRUE          rs6060504         rs6060507                 C
    ## 12          TRUE         rs62583528          rs980249                 A
    ## 13          TRUE          rs6552737         rs1970892                 A
    ## 14          TRUE           rs659065          rs671811                 G
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ## 17          TRUE         rs77956314         rs7294919                 C
    ## 18          TRUE         rs79522035          rs461075                 C
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            5
    ## 2                  T                A                G            1
    ## 3                  G                T                G           10
    ## 4               <NA>             <NA>             <NA>           11
    ## 5                  A                T                G            7
    ## 6               <NA>             <NA>             <NA>            2
    ## 7               <NA>             <NA>             <NA>            5
    ## 8               <NA>             <NA>             <NA>            7
    ## 9               <NA>             <NA>             <NA>           22
    ## 10                 A                T                C            2
    ## 11                 T                G                A           20
    ## 12                 G                C                T            9
    ## 13                 T                A                T            4
    ## 14                 C                T                C           12
    ## 15              <NA>             <NA>             <NA>            9
    ## 16              <NA>             <NA>             <NA>            2
    ## 17                 T                C                T           12
    ## 18                 T                T                C           12
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     167832067 0.010070917     -4.653     3.273e-06               26615
    ## 2     153856498 0.008700965      4.656     3.217e-06               26814
    ## 3     126482389 0.008786582     -5.092     3.547e-07               26322
    ## 4      16534415 0.008681459     -4.584     4.560e-06               26614
    ## 5      42397586 0.016143574     -4.589     4.464e-06               26814
    ## 6     162856148 0.008658983     -6.546     5.894e-11               26814
    ## 7      66084260 0.009022472     -5.558     2.728e-08               26814
    ## 8     133685512 0.008661921      4.687     2.767e-06               26814
    ## 9      30986350 0.010038609     -4.913     8.988e-07               26459
    ## 10     96999086 0.009321611      4.588     4.470e-06               26814
    ## 11     34197619 0.011701919      5.397     6.762e-08               26814
    ## 12    106929593 0.010891531      5.162     2.447e-07               26814
    ## 13    184955461 0.008759404     -4.937     7.922e-07               26814
    ## 14      4008887 0.012611389     -5.347     8.931e-08               25881
    ## 15    119247974 0.009013518      6.645     3.035e-11               26700
    ## 16      8780959 0.008681684     -4.610     4.023e-06               26615
    ## 17    117323367 0.015536016     10.418     2.055e-25               26814
    ## 18     72956782 0.021592837      4.603     4.164e-06               26692
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 2  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 3  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 4  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 5  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 6  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 7  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 8  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 9  Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 10 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 11 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 12 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 13 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 14 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 15 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 16 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 17 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ## 18 Hilbar2017hipv             TRUE             reported      ueCYrY      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    1.070620e-06         1.000
    ## 2     TRUE           TRUE 5e-06    3.720809e-06         1.000
    ## 3     TRUE           TRUE 5e-06    2.395959e-04         0.032
    ## 4     TRUE           TRUE 5e-06    1.606598e-05         1.000
    ## 5     TRUE           TRUE 5e-06    7.394060e-06         1.000
    ## 6     TRUE           TRUE 5e-06    1.174859e-04         0.672
    ## 7     TRUE           TRUE 5e-06    2.939899e-06         1.000
    ## 8    FALSE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06    1.017955e-05         1.000
    ## 10    TRUE           TRUE 5e-06    7.491131e-06         1.000
    ## 11    TRUE           TRUE 5e-06    1.657339e-04         1.000
    ## 12    TRUE           TRUE 5e-06    7.329383e-05         1.000
    ## 13    TRUE           TRUE 5e-06    1.589890e-05         1.000
    ## 14    TRUE           TRUE 5e-06    6.165937e-06         1.000
    ## 15    TRUE           TRUE 5e-06    1.928259e-06         1.000
    ## 16   FALSE           TRUE 5e-06              NA            NA
    ## 17    TRUE           TRUE 5e-06    3.798554e-04         0.832
    ## 18    TRUE           TRUE 5e-06    8.456838e-04         1.000
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3          FALSE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8             NA
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16            NA
    ## 17          TRUE
    ## 18          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the LDL
cholesterol GWAS

    ## [1] SNP           chr.outcome   pos.outcome   pval.exposure pval.outcome 
    ## <0 rows> (or 0-length row.names)

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
    ## 1            FALSE   0.01909961 32.61113  0.05 4.582875 0.5717588
    ## 2             TRUE   0.01811108 32.95285  0.05 7.339127 0.7731085

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
Hippocampal Volume on LDL cholesterol. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on LDL
cholesterol

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 2      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 3      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 4      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   16 -0.05558789 0.02628671
    ## 2                           Weighted median   16 -0.07681498 0.04057919
    ## 3                             Weighted mode   16 -0.07796962 0.06608534
    ## 4                                  MR Egger   16  0.04276019 0.09275029
    ##         pval
    ## 1 0.03445755
    ## 2 0.05836256
    ## 3 0.25644075
    ## 4 0.65186140

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in LDL cholesterol and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 2      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 22.01291   14 0.07834951
    ## 2 Inverse variance weighted 24.03633   15 0.06447907

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013ldl/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013ldl/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv    -0.005896429
    ##            se     pval
    ## 1 0.005197811 0.275675

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome       exposure    pt
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 28.17959 0.046

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 2      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 3      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 4      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   15 -0.07328548 0.02698600
    ## 2                           Weighted median   15 -0.07682308 0.03999379
    ## 3                             Weighted mode   15 -0.08595045 0.07208405
    ## 4                                  MR Egger   15  0.07031887 0.07444713
    ##          pval
    ## 1 0.006613882
    ## 2 0.054747419
    ## 3 0.252937248
    ## 4 0.362114949

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ## 2      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 11.34512   13 0.5819299
    ## 2 Inverse variance weighted 15.62881   14 0.3365642

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      ueCYrY     i3O6zm Willer2013ldl Hilbar2017hipv    -0.008770534
    ##            se       pval
    ## 1 0.004237575 0.05896104

<br>
