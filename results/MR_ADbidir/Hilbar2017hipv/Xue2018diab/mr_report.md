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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Diabetes

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1   rs10908512     1 153856498    C    T 0.5619420 -0.0001 0.0078
    ## 2    rs7588305    NA        NA <NA> <NA>        NA      NA     NA
    ## 3   rs59966106     2  96999086    A    G 0.3239330 -0.0111 0.0084
    ## 4    rs2268894     2 162856148    C    T 0.5253640  0.0203 0.0079
    ## 5  rs138012093    NA        NA <NA> <NA>        NA      NA     NA
    ## 6  rs144578582    NA        NA <NA> <NA>        NA      NA     NA
    ## 7    rs6552737    NA        NA <NA> <NA>        NA      NA     NA
    ## 8    rs2289881     5  66084260    G    T 0.3571630  0.0158 0.0082
    ## 9  rs148054686    NA        NA <NA> <NA>        NA      NA     NA
    ## 10  rs10041542     5 167832067    T    C 0.2453950  0.0144 0.0091
    ## 11  rs17172044     7  42397586    A    C 0.0705863  0.0050 0.0152
    ## 12   rs2346440     7 133685512    G    C 0.4592550  0.0036 0.0079
    ## 13  rs11979341    NA        NA <NA> <NA>        NA      NA     NA
    ## 14  rs11993215    NA        NA <NA> <NA>        NA      NA     NA
    ## 15 rs113835443    NA        NA <NA> <NA>        NA      NA     NA
    ## 16  rs62583528     9 106929593    G    A 0.2150630  0.0019 0.0095
    ## 17   rs7020341     9 119247974    G    C 0.3602470  0.0187 0.0080
    ## 18  rs11245365    10 126482389    G    A 0.5720120  0.0162 0.0079
    ## 19  rs12802656    11  16534415    A    C 0.4761860 -0.0072 0.0072
    ## 20    rs659065    12   4008887    C    G 0.1471300 -0.0068 0.0111
    ## 21  rs61921502    NA        NA <NA> <NA>        NA      NA     NA
    ## 22  rs79522035    NA        NA <NA> <NA>        NA      NA     NA
    ## 23  rs77956314    12 117323367    T    C 0.0816455  0.0144 0.0143
    ## 24 rs143933797    NA        NA <NA> <NA>        NA      NA     NA
    ## 25  rs79727675    NA        NA <NA> <NA>        NA      NA     NA
    ## 26    rs429358    NA        NA <NA> <NA>        NA      NA     NA
    ## 27   rs6060504    20  34197619    T    C 0.1453120  0.0255 0.0112
    ## 28   rs5753220    22  30986350    T    C 0.2668210 -0.0021 0.0088
    ##             Z        P      N           TRAIT
    ## 1  -0.0128205 0.986300 573551 Type_2_Diabetes
    ## 2          NA       NA     NA            <NA>
    ## 3  -1.3214286 0.183200 573520 Type_2_Diabetes
    ## 4   2.5696200 0.009852 568228 Type_2_Diabetes
    ## 5          NA       NA     NA            <NA>
    ## 6          NA       NA     NA            <NA>
    ## 7          NA       NA     NA            <NA>
    ## 8   1.9268293 0.053340 564857 Type_2_Diabetes
    ## 9          NA       NA     NA            <NA>
    ## 10  1.5824176 0.113100 571709 Type_2_Diabetes
    ## 11  0.3289474 0.744100 572761 Type_2_Diabetes
    ## 12  0.4556962 0.645500 569719 Type_2_Diabetes
    ## 13         NA       NA     NA            <NA>
    ## 14         NA       NA     NA            <NA>
    ## 15         NA       NA     NA            <NA>
    ## 16  0.2000000 0.845600 569270 Type_2_Diabetes
    ## 17  2.3375000 0.020120 578976 Type_2_Diabetes
    ## 18  2.0506300 0.041130 573358 Type_2_Diabetes
    ## 19 -1.0000000 0.314900 595180 Type_2_Diabetes
    ## 20 -0.6126126 0.535700 572983 Type_2_Diabetes
    ## 21         NA       NA     NA            <NA>
    ## 22         NA       NA     NA            <NA>
    ## 23  1.0069930 0.311200 573397 Type_2_Diabetes
    ## 24         NA       NA     NA            <NA>
    ## 25         NA       NA     NA            <NA>
    ## 26         NA       NA     NA            <NA>
    ## 27  2.2767857 0.022090 572280 Type_2_Diabetes
    ## 28 -0.2386364 0.807200 575368 Type_2_Diabetes

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##     target_snp proxy_snp    ld.r2  Dprime PHASE X12 CHROM       POS
    ## 1    rs6552737 rs4862288 0.809048 0.93861 AG/TA  NA     4 184957118
    ## 2    rs7588305      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 3  rs138012093      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 4  rs144578582      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 5  rs148054686      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 6   rs11979341      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 7   rs11993215      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 8  rs113835443      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 9   rs61921502      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 10  rs79522035      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 11 rs143933797      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 12  rs79727675      <NA>       NA      NA  <NA>  NA    NA        NA
    ## 13    rs429358      <NA>       NA      NA  <NA>  NA    NA        NA
    ##    REF.proxy ALT.proxy       AF    BETA     SE          Z      P      N
    ## 1          A         G 0.421713 -0.0028 0.0079 -0.3544304 0.7226 560652
    ## 2       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 3       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 4       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 5       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 6       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 7       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 8       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 9       <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 10      <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 11      <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 12      <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ## 13      <NA>      <NA>       NA      NA     NA         NA     NA     NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1  Type_2_Diabetes    A         G TRUE         A    A TRUE          TRUE
    ## 2             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 3             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 4             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 5             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 6             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 7             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 8             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 9             <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 10            <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 11            <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 12            <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA
    ## 13            <NA> <NA>      <NA>   NA      <NA> <NA>   NA            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Hippocampal Volume and Diabetes datasets

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
    ## 16 rs77956314                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      C                    T   -0.04686000       0.0144
    ## 2                      T                    C    0.04051169      -0.0001
    ## 3                      A                    G   -0.04474128       0.0162
    ## 4                      C                    A   -0.03979580      -0.0072
    ## 5                      C                    A   -0.07408290       0.0050
    ## 6                      T                    C   -0.05668170       0.0203
    ## 7                      T                    G   -0.05014690       0.0158
    ## 8                      C                    G    0.04059843       0.0036
    ## 9                      C                    T   -0.04931970      -0.0021
    ## 10                     G                    A    0.04276760      -0.0111
    ## 11                     C                    T    0.06315530       0.0255
    ## 12                     A                    G    0.05622208       0.0019
    ## 13                     A                    T   -0.04324518      -0.0028
    ## 14                     G                    C   -0.06743310      -0.0068
    ## 15                     C                    G    0.05989482       0.0187
    ## 16                     C                    T    0.16185400       0.0144
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2452   0.2453950  FALSE       FALSE     FALSE     fALyOL
    ## 2        0.5624   0.5619420  FALSE       FALSE     FALSE     fALyOL
    ## 3        0.5648   0.5720120  FALSE       FALSE     FALSE     fALyOL
    ## 4        0.4696   0.4761860  FALSE       FALSE     FALSE     fALyOL
    ## 5        0.0775   0.0705863  FALSE       FALSE     FALSE     fALyOL
    ## 6        0.5412   0.5253640  FALSE       FALSE     FALSE     fALyOL
    ## 7        0.3544   0.3571630  FALSE       FALSE     FALSE     fALyOL
    ## 8        0.4591   0.4592550  FALSE        TRUE      TRUE     fALyOL
    ## 9        0.2497   0.2668210  FALSE       FALSE     FALSE     fALyOL
    ## 10       0.3114   0.3239330  FALSE       FALSE     FALSE     fALyOL
    ## 11       0.1624   0.1453120  FALSE       FALSE     FALSE     fALyOL
    ## 12       0.1951   0.2150630  FALSE       FALSE     FALSE     fALyOL
    ## 13       0.4152   0.4217130  FALSE        TRUE      TRUE     fALyOL
    ## 14       0.1413   0.1471300  FALSE        TRUE     FALSE     fALyOL
    ## 15       0.3590   0.3602470  FALSE        TRUE     FALSE     fALyOL
    ## 16       0.0840   0.0816455  FALSE       FALSE     FALSE     fALyOL
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            5   167832067     0.0091  1.5824176     0.113100
    ## 2            1   153856498     0.0078 -0.0128205     0.986300
    ## 3           10   126482389     0.0079  2.0506300     0.041130
    ## 4           11    16534415     0.0072 -1.0000000     0.314900
    ## 5            7    42397586     0.0152  0.3289474     0.744100
    ## 6            2   162856148     0.0079  2.5696200     0.009852
    ## 7            5    66084260     0.0082  1.9268293     0.053340
    ## 8            7   133685512     0.0079  0.4556962     0.645500
    ## 9           22    30986350     0.0088 -0.2386364     0.807200
    ## 10           2    96999086     0.0084 -1.3214286     0.183200
    ## 11          20    34197619     0.0112  2.2767857     0.022090
    ## 12           9   106929593     0.0095  0.2000000     0.845600
    ## 13           4   184957118     0.0079 -0.3544304     0.722600
    ## 14          12     4008887     0.0111 -0.6126126     0.535700
    ## 15           9   119247974     0.0080  2.3375000     0.020120
    ## 16          12   117323367     0.0143  1.0069930     0.311200
    ##    samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1              571709 Xue2018diab            TRUE            reported
    ## 2              573551 Xue2018diab            TRUE            reported
    ## 3              573358 Xue2018diab            TRUE            reported
    ## 4              595180 Xue2018diab            TRUE            reported
    ## 5              572761 Xue2018diab            TRUE            reported
    ## 6              568228 Xue2018diab            TRUE            reported
    ## 7              564857 Xue2018diab            TRUE            reported
    ## 8              569719 Xue2018diab            TRUE            reported
    ## 9              575368 Xue2018diab            TRUE            reported
    ## 10             573520 Xue2018diab            TRUE            reported
    ## 11             572280 Xue2018diab            TRUE            reported
    ## 12             569270 Xue2018diab            TRUE            reported
    ## 13             560652 Xue2018diab            TRUE            reported
    ## 14             572983 Xue2018diab            TRUE            reported
    ## 15             578976 Xue2018diab            TRUE            reported
    ## 16             573397 Xue2018diab            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8             NA               <NA>              <NA>              <NA>
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ## 12            NA               <NA>              <NA>              <NA>
    ## 13          TRUE          rs6552737         rs4862288                 A
    ## 14            NA               <NA>              <NA>              <NA>
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 NA             <NA>             <NA>            5
    ## 2                 NA             <NA>             <NA>            1
    ## 3                 NA             <NA>             <NA>           10
    ## 4                 NA             <NA>             <NA>           11
    ## 5                 NA             <NA>             <NA>            7
    ## 6                 NA             <NA>             <NA>            2
    ## 7                 NA             <NA>             <NA>            5
    ## 8                 NA             <NA>             <NA>            7
    ## 9                 NA             <NA>             <NA>           22
    ## 10                NA             <NA>             <NA>            2
    ## 11                NA             <NA>             <NA>           20
    ## 12                NA             <NA>             <NA>            9
    ## 13              TRUE                G                A            4
    ## 14                NA             <NA>             <NA>           12
    ## 15                NA             <NA>             <NA>            9
    ## 16                NA             <NA>             <NA>           12
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
    ## 16    117323367 0.015536016     10.418     2.055e-25               26814
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 2  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 3  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 4  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 5  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 6  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 7  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 8  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 9  Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 10 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 11 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 12 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 13 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 14 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 15 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ## 16 Hilbar2017hipv             TRUE             reported      O5qwjE      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    2.155118e-04         1.000
    ## 2     TRUE           TRUE 5e-06    6.554870e-08         1.000
    ## 3     TRUE           TRUE 5e-06    2.807797e-04         0.532
    ## 4     TRUE           TRUE 5e-06    6.338831e-05         1.000
    ## 5     TRUE           TRUE 5e-06    2.079047e-05         1.000
    ## 6     TRUE           TRUE 5e-06    4.739926e-04         0.126
    ## 7     TRUE           TRUE 5e-06    2.704635e-04         0.882
    ## 8    FALSE           TRUE 5e-06              NA            NA
    ## 9     TRUE           TRUE 5e-06    7.100109e-06         1.000
    ## 10    TRUE           TRUE 5e-06    1.264432e-04         1.000
    ## 11    TRUE           TRUE 5e-06    7.597305e-04         0.252
    ## 12    TRUE           TRUE 5e-06    6.410465e-06         1.000
    ## 13   FALSE           TRUE 5e-06              NA            NA
    ## 14    TRUE           TRUE 5e-06    6.208211e-05         1.000
    ## 15    TRUE           TRUE 5e-06    4.531567e-04         0.196
    ## 16    TRUE           TRUE 5e-06    4.123618e-04         1.000
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8             NA
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12          TRUE
    ## 13            NA
    ## 14          TRUE
    ## 15          TRUE
    ## 16          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

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
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP   Power
    ## 1            FALSE   0.01738717 33.87171  0.05 0.07141004 0.05822

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
Hippocampal Volume on Diabetes. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Diabetes

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 2      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 3      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 4      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   14 -0.008491181 0.04174027
    ## 2                           Weighted median   14  0.051522634 0.06498527
    ## 3                             Weighted mode   14  0.080611133 0.08754502
    ## 4                                  MR Egger   14  0.203673688 0.17997640
    ##        pval
    ## 1 0.8387998
    ## 2 0.4278736
    ## 3 0.3739286
    ## 4 0.2798821

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Diabetes and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 2      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 28.22916   12 0.005120407
    ## 2 Inverse variance weighted 31.97186   13 0.002425473

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv     -0.01304508
    ##           se      pval
    ## 1 0.01034219 0.2311537

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome       exposure    pt outliers_removed
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          0 37.64467 0.003

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 2      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 3      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 4      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   14 -0.008491181 0.04174027
    ## 2                           Weighted median   14  0.051522634 0.06430693
    ## 3                             Weighted mode   14  0.080611133 0.08612647
    ## 4                                  MR Egger   14  0.203673688 0.17997640
    ##        pval
    ## 1 0.8387998
    ## 2 0.4230166
    ## 3 0.3663547
    ## 4 0.2798821

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ## 2      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 28.22916   12 0.005120407
    ## 2 Inverse variance weighted 31.97186   13 0.002425473

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      O5qwjE     fALyOL Xue2018diab Hilbar2017hipv     -0.01304508
    ##           se      pval
    ## 1 0.01034219 0.2311537

<br>
