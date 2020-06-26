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

### Exposure: AAOS

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with AAOS

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1    rs2649062     1   5799177   A   G 0.3192  0.0652 0.0131  4.977100
    ## 2    rs4662080     1  14363419   C   T 0.6649  0.1421 0.0296  4.800676
    ## 3   rs10919252     1 169802956   C   G 0.3275  0.0975 0.0198  4.924240
    ## 4    rs6701713     1 207786289   A   G 0.7983 -0.0709 0.0146 -4.856160
    ## 5  rs144505123     1 221802052   C   T 0.0113  0.7709 0.1609  4.791175
    ## 6    rs6718282     2  18039651   G   A 0.0440 -0.1421 0.0308 -4.613636
    ## 7  rs114131510     2  78420700   A   G 0.0162  0.6419 0.1406  4.565430
    ## 8   rs12615104     2 109820829   T   C 0.2566 -0.1057 0.0221 -4.782810
    ## 9  rs111906619     2 127789085   C   T 0.0709  0.1268 0.0256  4.953125
    ## 10   rs6431219     2 127862133   C   T 0.4163  0.0774 0.0124  6.241935
    ## 11    rs359982     2 219826934   A   G 0.0781  0.2660 0.0513  5.185190
    ## 12 rs116341973     3  63462893   A   G 0.0227  0.2057 0.0399  5.155390
    ## 13 rs145799027     3 114438213   T   C 0.0147  0.7485 0.1601  4.675200
    ## 14  rs71602496     4    661002   A   G 0.1453  0.0780 0.0171  4.561400
    ## 15 rs115803892     4 134185712   G   A 0.0129  0.9151 0.1973  4.638115
    ## 16   rs1689013     4 181048651   T   C 0.2493  0.0637 0.0139  4.582730
    ## 17 rs144202318     5 165711579   G   A 0.0135  0.7219 0.1572  4.592239
    ## 18  rs77345379     6  69273670   C   T 0.0185  0.2291 0.0501  4.572854
    ## 19  rs12153819     6  83773049   C   T 0.1018 -0.1092 0.0235 -4.646809
    ## 20  rs17170228     7  33076314   G   A 0.0623  0.1215 0.0248  4.899194
    ## 21 rs149907089     7 151626353   G   C 0.0162  0.7109 0.1535  4.631270
    ## 22   rs2725066     8   4438058   T   A 0.5128 -0.0936 0.0191 -4.900524
    ## 23 rs117201713     8 121340499   G   C 0.0408  0.2125 0.0456  4.660088
    ## 24  rs36033332     9  26834807   C   G 0.0386  0.4601 0.0865  5.319080
    ## 25   rs7930318    11  60033371   C   T 0.5996  0.0750 0.0125  6.000000
    ## 26    rs567075    11  85830157   T   C 0.6903  0.0900 0.0132  6.818180
    ## 27  rs11218343    11 121435587   T   C 0.0395 -0.1653 0.0329 -5.024320
    ## 28   rs7958488    12   6546166   A   T 0.0195  0.5085 0.1111  4.576960
    ## 29   rs1118069    12  84739181   A   T 0.7195  0.1012 0.0216  4.685190
    ## 30 rs140016885    12  99679113   A   G 0.0144  0.6851 0.1416  4.838280
    ## 31   rs9582517    13 102331030   T   C 0.5073 -0.1185 0.0257 -4.610890
    ## 32 rs146189059    14  47173254   C   G 0.0111  0.9444 0.1835  5.146590
    ## 33  rs17125944    14  53400629   T   C 0.0924  0.0960 0.0203  4.729060
    ## 34 rs150193285    15  75224360   C   T 0.0109  0.7622 0.1650  4.619394
    ## 35   rs9947273    18  35409158   G   A 0.1431 -0.0853 0.0178 -4.792135
    ## 36  rs62117204    19  45242967   C   T 0.0601 -0.1867 0.0278 -6.715827
    ## 37  rs76205446    19  45355267   T   A 0.0143  0.7096 0.1234  5.750405
    ## 38   rs2075650    19  45395619   A   G 0.2197  0.5502 0.0223 24.672600
    ## 39 rs141441332    19  45438575   C   A 0.0110  0.5383 0.0632  8.517405
    ## 40    rs204469    19  45490285   A   G 0.9632  0.1588 0.0341  4.656890
    ## 41   rs2827191    21  23361798   C   T 0.2857  0.1277 0.0279  4.577061
    ## 42   rs1043441    22  39130964   C   T 0.2893 -0.0639 0.0135 -4.733333
    ##             P     N TRAIT
    ## 1   6.120e-07 40255  AAOS
    ## 2   1.586e-06 40255  AAOS
    ## 3   8.182e-07 40255  AAOS
    ## 4   1.184e-06 40255  AAOS
    ## 5   1.661e-06 40255  AAOS
    ## 6   3.840e-06 40255  AAOS
    ## 7   4.949e-06 40255  AAOS
    ## 8   1.829e-06 40255  AAOS
    ## 9   7.088e-07 40255  AAOS
    ## 10  3.897e-10 40255  AAOS
    ## 11  2.159e-07 40255  AAOS
    ## 12  2.478e-07 40255  AAOS
    ## 13  2.933e-06 40255  AAOS
    ## 14  4.978e-06 40255  AAOS
    ## 15  3.498e-06 40255  AAOS
    ## 16  4.657e-06 40255  AAOS
    ## 17  4.356e-06 40255  AAOS
    ## 18  4.830e-06 40255  AAOS
    ## 19  3.291e-06 40255  AAOS
    ## 20  1.004e-06 40255  AAOS
    ## 21  3.637e-06 40255  AAOS
    ## 22  9.948e-07 40255  AAOS
    ## 23  3.120e-06 40255  AAOS
    ## 24  1.030e-07 40255  AAOS
    ## 25  2.245e-09 40255  AAOS
    ## 26  9.084e-12 40255  AAOS
    ## 27  5.148e-07 40255  AAOS
    ## 28  4.719e-06 40255  AAOS
    ## 29  2.693e-06 40255  AAOS
    ## 30  1.310e-06 40255  AAOS
    ## 31  3.908e-06 40255  AAOS
    ## 32  2.634e-07 40255  AAOS
    ## 33  2.321e-06 40255  AAOS
    ## 34  3.834e-06 40255  AAOS
    ## 35  1.593e-06 40255  AAOS
    ## 36  1.864e-11 40255  AAOS
    ## 37  9.010e-09 40255  AAOS
    ## 38 5.980e-134 40255  AAOS
    ## 39  1.713e-17 40255  AAOS
    ## 40  3.269e-06 40255  AAOS
    ## 41  4.895e-06 40255  AAOS
    ## 42  2.110e-06 40255  AAOS

<br>

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in AUDIT Total

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1    rs2649062     1   5799177    A    G 0.32036400  6.382430e-04
    ## 2    rs4662080     1  14363419    C    T 0.69553200  4.209088e-04
    ## 3   rs10919252     1 169802956    C    G 0.31039100 -1.104060e-03
    ## 4    rs6701713     1 207786289    A    G 0.77515400  2.228620e-03
    ## 5  rs144505123     1 221802052    C    T 0.00744913 -4.664439e-03
    ## 6    rs6718282     2  18039651    G    A 0.08463490  5.709415e-03
    ## 7  rs114131510     2  78420700    A    G 0.00839110  2.740760e-03
    ## 8   rs12615104     2 109820829    T    C 0.32661600  1.377880e-03
    ## 9  rs111906619     2 127789085    C    T 0.05424060  2.340305e-03
    ## 10   rs6431219     2 127862133    C    T 0.39324600 -3.951157e-03
    ## 11    rs359982     2 219826934    A    G 0.05341570  7.549150e-04
    ## 12 rs116341973     3  63462893    A    G 0.01417150  1.659830e-03
    ## 13 rs145799027    NA        NA <NA> <NA>         NA            NA
    ## 14  rs71602496     4    661002    A    G 0.14947100 -1.016080e-03
    ## 15 rs115803892     4 134185712    G    A 0.02500000 -6.250659e-04
    ## 16   rs1689013     4 181048651    T    C 0.22133500  2.053260e-03
    ## 17 rs144202318     5 165711579    G    A 0.01040480 -4.899025e-04
    ## 18  rs77345379     6  69273670    C    T 0.02319680  3.277662e-03
    ## 19  rs12153819     6  83773049    C    T 0.16679800 -1.386386e-04
    ## 20  rs17170228     7  33076314    G    A 0.05569710 -7.594458e-03
    ## 21 rs149907089    NA        NA <NA> <NA>         NA            NA
    ## 22   rs2725066     8   4438058    T    A 0.54336700  5.692038e-03
    ## 23 rs117201713     8 121340499    G    C 0.03194600  1.182647e-03
    ## 24  rs36033332     9  26834807    C    G 0.08303120 -1.465560e-03
    ## 25   rs7930318    11  60033371    C    T 0.65976800  2.165270e-03
    ## 26    rs567075    11  85830157    T    C 0.69089900 -5.907590e-03
    ## 27  rs11218343    11 121435587    T    C 0.03449530  4.159290e-03
    ## 28   rs7958488    12   6546166    A    T 0.01840830 -2.974770e-03
    ## 29   rs1118069    12  84739181    A    T 0.62582100 -3.586390e-03
    ## 30 rs140016885    NA        NA <NA> <NA>         NA            NA
    ## 31   rs9582517    13 102331030    T    C 0.48209100  3.356140e-03
    ## 32 rs146189059    14  47173254    C    G 0.01144620 -1.427010e-03
    ## 33  rs17125944    14  53400629    T    C 0.09734350 -7.881280e-04
    ## 34 rs150193285    15  75224360    C    T 0.02104500  4.929938e-03
    ## 35   rs9947273    NA        NA <NA> <NA>         NA            NA
    ## 36  rs62117204    19  45242967    C    T 0.07418880  1.868393e-05
    ## 37  rs76205446    19  45355267    T    A 0.00945455  3.542814e-04
    ## 38   rs2075650    19  45395619    A    G 0.15559200 -6.005590e-03
    ## 39 rs141441332    19  45438575    C    A 0.00789570 -1.823072e-03
    ## 40    rs204469    19  45490285    A    G 0.96476600  4.504320e-03
    ## 41   rs2827191    21  23361798    C    T 0.29854800  1.846142e-03
    ## 42   rs1043441    22  39130964    C    T 0.30681800 -1.313655e-03
    ##             SE      Z        P      N       TRAIT
    ## 1  0.002670473  0.239 0.810900 140692 AUDIT_Total
    ## 2  0.002680948  0.157 0.875100 139739 AUDIT_Total
    ## 3  0.002660376 -0.415 0.678500 141538 AUDIT_Total
    ## 4  0.002653120  0.840 0.401200 141932 AUDIT_Total
    ## 5  0.002656287 -1.756 0.079040 140976 AUDIT_Total
    ## 6  0.002660492  2.146 0.031890 140295 AUDIT_Total
    ## 7  0.002660936  1.030 0.303000 140958 AUDIT_Total
    ## 8  0.002665143  0.517 0.605100 140928 AUDIT_Total
    ## 9  0.002653408  0.882 0.378000 141869 AUDIT_Total
    ## 10 0.002657133 -1.487 0.137100 141055 AUDIT_Total
    ## 11 0.002658153  0.284 0.776100 141932 AUDIT_Total
    ## 12 0.002655728  0.625 0.531800 141829 AUDIT_Total
    ## 13          NA     NA       NA     NA        <NA>
    ## 14 0.002659908 -0.382 0.702500 141624 AUDIT_Total
    ## 15 0.002659855 -0.235 0.814100 141822 AUDIT_Total
    ## 16 0.002659664  0.772 0.440100 141287 AUDIT_Total
    ## 17 0.002662514 -0.184 0.854100 141625 AUDIT_Total
    ## 18 0.002658283  1.233 0.217500 141099 AUDIT_Total
    ## 19 0.002666126 -0.052 0.958800 141605 AUDIT_Total
    ## 20 0.002641551 -2.875 0.004044 141897 AUDIT_Total
    ## 21          NA     NA       NA     NA        <NA>
    ## 22 0.002654868  2.144 0.032020 140893 AUDIT_Total
    ## 23 0.002657633  0.445 0.656000 141797 AUDIT_Total
    ## 24 0.002664661 -0.550 0.582500 140948 AUDIT_Total
    ## 25 0.002653517  0.816 0.414700 141908 AUDIT_Total
    ## 26 0.002647955 -2.231 0.025700 141581 AUDIT_Total
    ## 27 0.002649231  1.570 0.116300 141846 AUDIT_Total
    ## 28 0.002660794 -1.118 0.263500 140911 AUDIT_Total
    ## 29 0.002650697 -1.353 0.176000 141829 AUDIT_Total
    ## 30          NA     NA       NA     NA        <NA>
    ## 31 0.002657277  1.263 0.206600 141186 AUDIT_Total
    ## 32 0.002662335 -0.536 0.591800 141207 AUDIT_Total
    ## 33 0.002662595 -0.296 0.767300 141444 AUDIT_Total
    ## 34 0.002647657  1.862 0.062600 141834 AUDIT_Total
    ## 35          NA     NA       NA     NA        <NA>
    ## 36 0.002669133  0.007 0.994000 141699 AUDIT_Total
    ## 37 0.002663770  0.133 0.894400 141596 AUDIT_Total
    ## 38 0.002644472 -2.271 0.023170 141932 AUDIT_Total
    ## 39 0.002661419 -0.685 0.493400 141172 AUDIT_Total
    ## 40 0.002654285  1.697 0.089710 141226 AUDIT_Total
    ## 41 0.002656320  0.695 0.487000 141706 AUDIT_Total
    ## 42 0.002659221 -0.494 0.621600 141579 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

    ##    target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1   rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ## 2 rs145799027       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 3 rs149907089       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ## 4 rs140016885       <NA>    NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy       AF          BETA          SE      Z      P      N
    ## 1      TRUE 0.181702 -0.0003689699 0.002673695 -0.138 0.8905 140538
    ## 2        NA       NA            NA          NA     NA     NA     NA
    ## 3        NA       NA            NA          NA     NA     NA     NA
    ## 4        NA       NA            NA          NA     NA     NA     NA
    ##         TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 AUDIT_Total    A      TRUE    G         C    A    G          TRUE
    ## 2        <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 3        <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA
    ## 4        <NA> <NA>        NA <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and AUDIT Total datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1    rs1043441                      T                     C
    ## 2   rs10919252                      G                     C
    ## 3    rs1118069                      T                     A
    ## 4  rs111906619                      T                     C
    ## 5   rs11218343                      C                     T
    ## 6  rs114131510                      G                     A
    ## 7  rs115803892                      A                     G
    ## 8  rs116341973                      G                     A
    ## 9  rs117201713                      C                     G
    ## 10  rs12153819                      T                     C
    ## 11  rs12615104                      C                     T
    ## 12 rs141441332                      A                     C
    ## 13 rs144202318                      A                     G
    ## 14 rs144505123                      T                     C
    ## 15 rs146189059                      G                     C
    ## 16 rs150193285                      T                     C
    ## 17   rs1689013                      C                     T
    ## 18  rs17125944                      C                     T
    ## 19  rs17170228                      A                     G
    ## 20    rs204469                      G                     A
    ## 21   rs2075650                      G                     A
    ## 22   rs2649062                      G                     A
    ## 23   rs2725066                      A                     T
    ## 24   rs2827191                      T                     C
    ## 25    rs359982                      G                     A
    ## 26  rs36033332                      G                     C
    ## 27   rs4662080                      T                     C
    ## 28    rs567075                      C                     T
    ## 29  rs62117204                      T                     C
    ## 30   rs6431219                      T                     C
    ## 31   rs6701713                      G                     A
    ## 32   rs6718282                      A                     G
    ## 33  rs71602496                      G                     A
    ## 34  rs76205446                      A                     T
    ## 35  rs77345379                      T                     C
    ## 36   rs7930318                      T                     C
    ## 37   rs7958488                      T                     A
    ## 38   rs9582517                      C                     T
    ## 39   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      T                    C       -0.0639 -1.313655e-03
    ## 2                      G                    C        0.0975 -1.104060e-03
    ## 3                      T                    A        0.1012 -3.586390e-03
    ## 4                      T                    C        0.1268  2.340305e-03
    ## 5                      C                    T       -0.1653  4.159290e-03
    ## 6                      G                    A        0.6419  2.740760e-03
    ## 7                      A                    G        0.9151 -6.250659e-04
    ## 8                      G                    A        0.2057  1.659830e-03
    ## 9                      C                    G        0.2125  1.182647e-03
    ## 10                     T                    C       -0.1092 -1.386386e-04
    ## 11                     C                    T       -0.1057  1.377880e-03
    ## 12                     A                    C        0.5383 -1.823072e-03
    ## 13                     A                    G        0.7219 -4.899025e-04
    ## 14                     T                    C        0.7709 -4.664439e-03
    ## 15                     G                    C        0.9444 -1.427010e-03
    ## 16                     T                    C        0.7622  4.929938e-03
    ## 17                     C                    T        0.0637  2.053260e-03
    ## 18                     C                    T        0.0960 -7.881280e-04
    ## 19                     A                    G        0.1215 -7.594458e-03
    ## 20                     G                    A        0.1588  4.504320e-03
    ## 21                     G                    A        0.5502 -6.005590e-03
    ## 22                     G                    A        0.0652  6.382430e-04
    ## 23                     A                    T       -0.0936  5.692038e-03
    ## 24                     T                    C        0.1277  1.846142e-03
    ## 25                     G                    A        0.2660  7.549150e-04
    ## 26                     G                    C        0.4601 -1.465560e-03
    ## 27                     T                    C        0.1421  4.209088e-04
    ## 28                     C                    T        0.0900 -5.907590e-03
    ## 29                     T                    C       -0.1867  1.868393e-05
    ## 30                     T                    C        0.0774 -3.951157e-03
    ## 31                     G                    A       -0.0709  2.228620e-03
    ## 32                     A                    G       -0.1421  5.709415e-03
    ## 33                     G                    A        0.0780 -1.016080e-03
    ## 34                     A                    T        0.7096  3.542814e-04
    ## 35                     T                    C        0.2291  3.277662e-03
    ## 36                     T                    C        0.0750  2.165270e-03
    ## 37                     T                    A        0.5085 -2.974770e-03
    ## 38                     C                    T       -0.1185  3.356140e-03
    ## 39                     A                    G       -0.0853 -3.689699e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893  0.30681800  FALSE       FALSE     FALSE     rsg7rX
    ## 2        0.3275  0.31039100  FALSE        TRUE     FALSE     rsg7rX
    ## 3        0.7195  0.62582100  FALSE        TRUE     FALSE     rsg7rX
    ## 4        0.0709  0.05424060  FALSE       FALSE     FALSE     rsg7rX
    ## 5        0.0395  0.03449530  FALSE       FALSE     FALSE     rsg7rX
    ## 6        0.0162  0.00839110  FALSE       FALSE     FALSE     rsg7rX
    ## 7        0.0129  0.02500000  FALSE       FALSE     FALSE     rsg7rX
    ## 8        0.0227  0.01417150  FALSE       FALSE     FALSE     rsg7rX
    ## 9        0.0408  0.03194600  FALSE        TRUE     FALSE     rsg7rX
    ## 10       0.1018  0.16679800  FALSE       FALSE     FALSE     rsg7rX
    ## 11       0.2566  0.32661600  FALSE       FALSE     FALSE     rsg7rX
    ## 12       0.0110  0.00789570  FALSE       FALSE     FALSE     rsg7rX
    ## 13       0.0135  0.01040480  FALSE       FALSE     FALSE     rsg7rX
    ## 14       0.0113  0.00744913  FALSE       FALSE     FALSE     rsg7rX
    ## 15       0.0111  0.01144620  FALSE        TRUE     FALSE     rsg7rX
    ## 16       0.0109  0.02104500  FALSE       FALSE     FALSE     rsg7rX
    ## 17       0.2493  0.22133500  FALSE       FALSE     FALSE     rsg7rX
    ## 18       0.0924  0.09734350  FALSE       FALSE     FALSE     rsg7rX
    ## 19       0.0623  0.05569710  FALSE       FALSE     FALSE     rsg7rX
    ## 20       0.9632  0.96476600  FALSE       FALSE     FALSE     rsg7rX
    ## 21       0.2197  0.15559200  FALSE       FALSE     FALSE     rsg7rX
    ## 22       0.3192  0.32036400  FALSE       FALSE     FALSE     rsg7rX
    ## 23       0.5128  0.54336700  FALSE        TRUE      TRUE     rsg7rX
    ## 24       0.2857  0.29854800  FALSE       FALSE     FALSE     rsg7rX
    ## 25       0.0781  0.05341570  FALSE       FALSE     FALSE     rsg7rX
    ## 26       0.0386  0.08303120  FALSE        TRUE     FALSE     rsg7rX
    ## 27       0.6649  0.69553200  FALSE       FALSE     FALSE     rsg7rX
    ## 28       0.6903  0.69089900  FALSE       FALSE     FALSE     rsg7rX
    ## 29       0.0601  0.07418880  FALSE       FALSE     FALSE     rsg7rX
    ## 30       0.4163  0.39324600  FALSE       FALSE     FALSE     rsg7rX
    ## 31       0.7983  0.77515400  FALSE       FALSE     FALSE     rsg7rX
    ## 32       0.0440  0.08463490  FALSE       FALSE     FALSE     rsg7rX
    ## 33       0.1453  0.14947100  FALSE       FALSE     FALSE     rsg7rX
    ## 34       0.0143  0.00945455  FALSE        TRUE     FALSE     rsg7rX
    ## 35       0.0185  0.02319680  FALSE       FALSE     FALSE     rsg7rX
    ## 36       0.5996  0.65976800  FALSE       FALSE     FALSE     rsg7rX
    ## 37       0.0195  0.01840830  FALSE        TRUE     FALSE     rsg7rX
    ## 38       0.5073  0.48209100  FALSE       FALSE     FALSE     rsg7rX
    ## 39       0.1431  0.18170200  FALSE       FALSE     FALSE     rsg7rX
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           22    39130964 0.002659221    -0.494     0.621600
    ## 2            1   169802956 0.002660376    -0.415     0.678500
    ## 3           12    84739181 0.002650697    -1.353     0.176000
    ## 4            2   127789085 0.002653408     0.882     0.378000
    ## 5           11   121435587 0.002649231     1.570     0.116300
    ## 6            2    78420700 0.002660936     1.030     0.303000
    ## 7            4   134185712 0.002659855    -0.235     0.814100
    ## 8            3    63462893 0.002655728     0.625     0.531800
    ## 9            8   121340499 0.002657633     0.445     0.656000
    ## 10           6    83773049 0.002666126    -0.052     0.958800
    ## 11           2   109820829 0.002665143     0.517     0.605100
    ## 12          19    45438575 0.002661419    -0.685     0.493400
    ## 13           5   165711579 0.002662514    -0.184     0.854100
    ## 14           1   221802052 0.002656287    -1.756     0.079040
    ## 15          14    47173254 0.002662335    -0.536     0.591800
    ## 16          15    75224360 0.002647657     1.862     0.062600
    ## 17           4   181048651 0.002659664     0.772     0.440100
    ## 18          14    53400629 0.002662595    -0.296     0.767300
    ## 19           7    33076314 0.002641551    -2.875     0.004044
    ## 20          19    45490285 0.002654285     1.697     0.089710
    ## 21          19    45395619 0.002644472    -2.271     0.023170
    ## 22           1     5799177 0.002670473     0.239     0.810900
    ## 23           8     4438058 0.002654868     2.144     0.032020
    ## 24          21    23361798 0.002656320     0.695     0.487000
    ## 25           2   219826934 0.002658153     0.284     0.776100
    ## 26           9    26834807 0.002664661    -0.550     0.582500
    ## 27           1    14363419 0.002680948     0.157     0.875100
    ## 28          11    85830157 0.002647955    -2.231     0.025700
    ## 29          19    45242967 0.002669133     0.007     0.994000
    ## 30           2   127862133 0.002657133    -1.487     0.137100
    ## 31           1   207786289 0.002653120     0.840     0.401200
    ## 32           2    18039651 0.002660492     2.146     0.031890
    ## 33           4      661002 0.002659908    -0.382     0.702500
    ## 34          19    45355267 0.002663770     0.133     0.894400
    ## 35           6    69273670 0.002658283     1.233     0.217500
    ## 36          11    60033371 0.002653517     0.816     0.414700
    ## 37          12     6546166 0.002660794    -1.118     0.263500
    ## 38          13   102331030 0.002657277     1.263     0.206600
    ## 39          18    35373923 0.002673695    -0.138     0.890500
    ##    samplesize.outcome                       outcome mr_keep.outcome
    ## 1              141579 SanchezRoige2019auditt23andMe            TRUE
    ## 2              141538 SanchezRoige2019auditt23andMe            TRUE
    ## 3              141829 SanchezRoige2019auditt23andMe            TRUE
    ## 4              141869 SanchezRoige2019auditt23andMe            TRUE
    ## 5              141846 SanchezRoige2019auditt23andMe            TRUE
    ## 6              140958 SanchezRoige2019auditt23andMe            TRUE
    ## 7              141822 SanchezRoige2019auditt23andMe            TRUE
    ## 8              141829 SanchezRoige2019auditt23andMe            TRUE
    ## 9              141797 SanchezRoige2019auditt23andMe            TRUE
    ## 10             141605 SanchezRoige2019auditt23andMe            TRUE
    ## 11             140928 SanchezRoige2019auditt23andMe            TRUE
    ## 12             141172 SanchezRoige2019auditt23andMe            TRUE
    ## 13             141625 SanchezRoige2019auditt23andMe            TRUE
    ## 14             140976 SanchezRoige2019auditt23andMe            TRUE
    ## 15             141207 SanchezRoige2019auditt23andMe            TRUE
    ## 16             141834 SanchezRoige2019auditt23andMe            TRUE
    ## 17             141287 SanchezRoige2019auditt23andMe            TRUE
    ## 18             141444 SanchezRoige2019auditt23andMe            TRUE
    ## 19             141897 SanchezRoige2019auditt23andMe            TRUE
    ## 20             141226 SanchezRoige2019auditt23andMe            TRUE
    ## 21             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 22             140692 SanchezRoige2019auditt23andMe            TRUE
    ## 23             140893 SanchezRoige2019auditt23andMe            TRUE
    ## 24             141706 SanchezRoige2019auditt23andMe            TRUE
    ## 25             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 26             140948 SanchezRoige2019auditt23andMe            TRUE
    ## 27             139739 SanchezRoige2019auditt23andMe            TRUE
    ## 28             141581 SanchezRoige2019auditt23andMe            TRUE
    ## 29             141699 SanchezRoige2019auditt23andMe            TRUE
    ## 30             141055 SanchezRoige2019auditt23andMe            TRUE
    ## 31             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 32             140295 SanchezRoige2019auditt23andMe            TRUE
    ## 33             141624 SanchezRoige2019auditt23andMe            TRUE
    ## 34             141596 SanchezRoige2019auditt23andMe            TRUE
    ## 35             141099 SanchezRoige2019auditt23andMe            TRUE
    ## 36             141908 SanchezRoige2019auditt23andMe            TRUE
    ## 37             140911 SanchezRoige2019auditt23andMe            TRUE
    ## 38             141186 SanchezRoige2019auditt23andMe            TRUE
    ## 39             140538 SanchezRoige2019auditt23andMe            TRUE
    ##    pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1             reported            NA               <NA>              <NA>
    ## 2             reported            NA               <NA>              <NA>
    ## 3             reported            NA               <NA>              <NA>
    ## 4             reported            NA               <NA>              <NA>
    ## 5             reported            NA               <NA>              <NA>
    ## 6             reported            NA               <NA>              <NA>
    ## 7             reported            NA               <NA>              <NA>
    ## 8             reported            NA               <NA>              <NA>
    ## 9             reported            NA               <NA>              <NA>
    ## 10            reported            NA               <NA>              <NA>
    ## 11            reported            NA               <NA>              <NA>
    ## 12            reported            NA               <NA>              <NA>
    ## 13            reported            NA               <NA>              <NA>
    ## 14            reported            NA               <NA>              <NA>
    ## 15            reported            NA               <NA>              <NA>
    ## 16            reported            NA               <NA>              <NA>
    ## 17            reported            NA               <NA>              <NA>
    ## 18            reported            NA               <NA>              <NA>
    ## 19            reported            NA               <NA>              <NA>
    ## 20            reported            NA               <NA>              <NA>
    ## 21            reported            NA               <NA>              <NA>
    ## 22            reported            NA               <NA>              <NA>
    ## 23            reported            NA               <NA>              <NA>
    ## 24            reported            NA               <NA>              <NA>
    ## 25            reported            NA               <NA>              <NA>
    ## 26            reported            NA               <NA>              <NA>
    ## 27            reported            NA               <NA>              <NA>
    ## 28            reported            NA               <NA>              <NA>
    ## 29            reported            NA               <NA>              <NA>
    ## 30            reported            NA               <NA>              <NA>
    ## 31            reported            NA               <NA>              <NA>
    ## 32            reported            NA               <NA>              <NA>
    ## 33            reported            NA               <NA>              <NA>
    ## 34            reported            NA               <NA>              <NA>
    ## 35            reported            NA               <NA>              <NA>
    ## 36            reported            NA               <NA>              <NA>
    ## 37            reported            NA               <NA>              <NA>
    ## 38            reported            NA               <NA>              <NA>
    ## 39            reported          TRUE          rs9947273        rs28702850
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>              <NA>               NA             <NA>
    ## 2               <NA>              <NA>               NA             <NA>
    ## 3               <NA>              <NA>               NA             <NA>
    ## 4               <NA>              <NA>               NA             <NA>
    ## 5               <NA>              <NA>               NA             <NA>
    ## 6               <NA>              <NA>               NA             <NA>
    ## 7               <NA>              <NA>               NA             <NA>
    ## 8               <NA>              <NA>               NA             <NA>
    ## 9               <NA>              <NA>               NA             <NA>
    ## 10              <NA>              <NA>               NA             <NA>
    ## 11              <NA>              <NA>               NA             <NA>
    ## 12              <NA>              <NA>               NA             <NA>
    ## 13              <NA>              <NA>               NA             <NA>
    ## 14              <NA>              <NA>               NA             <NA>
    ## 15              <NA>              <NA>               NA             <NA>
    ## 16              <NA>              <NA>               NA             <NA>
    ## 17              <NA>              <NA>               NA             <NA>
    ## 18              <NA>              <NA>               NA             <NA>
    ## 19              <NA>              <NA>               NA             <NA>
    ## 20              <NA>              <NA>               NA             <NA>
    ## 21              <NA>              <NA>               NA             <NA>
    ## 22              <NA>              <NA>               NA             <NA>
    ## 23              <NA>              <NA>               NA             <NA>
    ## 24              <NA>              <NA>               NA             <NA>
    ## 25              <NA>              <NA>               NA             <NA>
    ## 26              <NA>              <NA>               NA             <NA>
    ## 27              <NA>              <NA>               NA             <NA>
    ## 28              <NA>              <NA>               NA             <NA>
    ## 29              <NA>              <NA>               NA             <NA>
    ## 30              <NA>              <NA>               NA             <NA>
    ## 31              <NA>              <NA>               NA             <NA>
    ## 32              <NA>              <NA>               NA             <NA>
    ## 33              <NA>              <NA>               NA             <NA>
    ## 34              <NA>              <NA>               NA             <NA>
    ## 35              <NA>              <NA>               NA             <NA>
    ## 36              <NA>              <NA>               NA             <NA>
    ## 37              <NA>              <NA>               NA             <NA>
    ## 38              <NA>              <NA>               NA             <NA>
    ## 39                 A                 G             TRUE                C
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            22     39130964      0.0135  -4.733333     2.110e-06
    ## 2             1    169802956      0.0198   4.924240     8.182e-07
    ## 3            12     84739181      0.0216   4.685190     2.693e-06
    ## 4             2    127789085      0.0256   4.953125     7.088e-07
    ## 5            11    121435587      0.0329  -5.024320     5.148e-07
    ## 6             2     78420700      0.1406   4.565430     4.949e-06
    ## 7             4    134185712      0.1973   4.638115     3.498e-06
    ## 8             3     63462893      0.0399   5.155390     2.478e-07
    ## 9             8    121340499      0.0456   4.660088     3.120e-06
    ## 10            6     83773049      0.0235  -4.646809     3.291e-06
    ## 11            2    109820829      0.0221  -4.782810     1.829e-06
    ## 12           19     45438575      0.0632   8.517405     1.713e-17
    ## 13            5    165711579      0.1572   4.592239     4.356e-06
    ## 14            1    221802052      0.1609   4.791175     1.661e-06
    ## 15           14     47173254      0.1835   5.146590     2.634e-07
    ## 16           15     75224360      0.1650   4.619394     3.834e-06
    ## 17            4    181048651      0.0139   4.582730     4.657e-06
    ## 18           14     53400629      0.0203   4.729060     2.321e-06
    ## 19            7     33076314      0.0248   4.899194     1.004e-06
    ## 20           19     45490285      0.0341   4.656890     3.269e-06
    ## 21           19     45395619      0.0223  24.672600    5.980e-134
    ## 22            1      5799177      0.0131   4.977100     6.120e-07
    ## 23            8      4438058      0.0191  -4.900524     9.948e-07
    ## 24           21     23361798      0.0279   4.577061     4.895e-06
    ## 25            2    219826934      0.0513   5.185190     2.159e-07
    ## 26            9     26834807      0.0865   5.319080     1.030e-07
    ## 27            1     14363419      0.0296   4.800676     1.586e-06
    ## 28           11     85830157      0.0132   6.818180     9.084e-12
    ## 29           19     45242967      0.0278  -6.715827     1.864e-11
    ## 30            2    127862133      0.0124   6.241935     3.897e-10
    ## 31            1    207786289      0.0146  -4.856160     1.184e-06
    ## 32            2     18039651      0.0308  -4.613636     3.840e-06
    ## 33            4       661002      0.0171   4.561400     4.978e-06
    ## 34           19     45355267      0.1234   5.750405     9.010e-09
    ## 35            6     69273670      0.0501   4.572854     4.830e-06
    ## 36           11     60033371      0.0125   6.000000     2.245e-09
    ## 37           12      6546166      0.1111   4.576960     4.719e-06
    ## 38           13    102331030      0.0257  -4.610890     3.908e-06
    ## 39           18     35409158      0.0178  -4.792135     1.593e-06
    ##    samplesize.exposure      exposure mr_keep.exposure pval_origin.exposure
    ## 1                40255 Huang2017aaos             TRUE             reported
    ## 2                40255 Huang2017aaos             TRUE             reported
    ## 3                40255 Huang2017aaos             TRUE             reported
    ## 4                40255 Huang2017aaos             TRUE             reported
    ## 5                40255 Huang2017aaos             TRUE             reported
    ## 6                40255 Huang2017aaos             TRUE             reported
    ## 7                40255 Huang2017aaos             TRUE             reported
    ## 8                40255 Huang2017aaos             TRUE             reported
    ## 9                40255 Huang2017aaos             TRUE             reported
    ## 10               40255 Huang2017aaos             TRUE             reported
    ## 11               40255 Huang2017aaos             TRUE             reported
    ## 12               40255 Huang2017aaos             TRUE             reported
    ## 13               40255 Huang2017aaos             TRUE             reported
    ## 14               40255 Huang2017aaos             TRUE             reported
    ## 15               40255 Huang2017aaos             TRUE             reported
    ## 16               40255 Huang2017aaos             TRUE             reported
    ## 17               40255 Huang2017aaos             TRUE             reported
    ## 18               40255 Huang2017aaos             TRUE             reported
    ## 19               40255 Huang2017aaos             TRUE             reported
    ## 20               40255 Huang2017aaos             TRUE             reported
    ## 21               40255 Huang2017aaos             TRUE             reported
    ## 22               40255 Huang2017aaos             TRUE             reported
    ## 23               40255 Huang2017aaos             TRUE             reported
    ## 24               40255 Huang2017aaos             TRUE             reported
    ## 25               40255 Huang2017aaos             TRUE             reported
    ## 26               40255 Huang2017aaos             TRUE             reported
    ## 27               40255 Huang2017aaos             TRUE             reported
    ## 28               40255 Huang2017aaos             TRUE             reported
    ## 29               40255 Huang2017aaos             TRUE             reported
    ## 30               40255 Huang2017aaos             TRUE             reported
    ## 31               40255 Huang2017aaos             TRUE             reported
    ## 32               40255 Huang2017aaos             TRUE             reported
    ## 33               40255 Huang2017aaos             TRUE             reported
    ## 34               40255 Huang2017aaos             TRUE             reported
    ## 35               40255 Huang2017aaos             TRUE             reported
    ## 36               40255 Huang2017aaos             TRUE             reported
    ## 37               40255 Huang2017aaos             TRUE             reported
    ## 38               40255 Huang2017aaos             TRUE             reported
    ## 39               40255 Huang2017aaos             TRUE             reported
    ##    id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 2       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 3       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 4       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 5       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 6       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 7       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 8       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 9       x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 10      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 11      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 12      x4V9Uf      2    TRUE          FALSE 5e-06              NA
    ## 13      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 14      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 15      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 16      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 17      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 18      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 19      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 20      x4V9Uf      2    TRUE          FALSE 5e-06              NA
    ## 21      x4V9Uf      2    TRUE          FALSE 5e-06              NA
    ## 22      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 23      x4V9Uf      2   FALSE           TRUE 5e-06              NA
    ## 24      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 25      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 26      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 27      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 28      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 29      x4V9Uf      2    TRUE          FALSE 5e-06              NA
    ## 30      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 31      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 32      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 33      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 34      x4V9Uf      2    TRUE          FALSE 5e-06              NA
    ## 35      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 36      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 37      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 38      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ## 39      x4V9Uf      2    TRUE           TRUE 5e-06              NA
    ##    mrpresso_pval mrpresso_keep
    ## 1             NA          TRUE
    ## 2             NA          TRUE
    ## 3             NA          TRUE
    ## 4             NA          TRUE
    ## 5             NA          TRUE
    ## 6             NA          TRUE
    ## 7             NA          TRUE
    ## 8             NA          TRUE
    ## 9             NA          TRUE
    ## 10            NA          TRUE
    ## 11            NA          TRUE
    ## 12            NA          TRUE
    ## 13            NA          TRUE
    ## 14            NA          TRUE
    ## 15            NA          TRUE
    ## 16            NA          TRUE
    ## 17            NA          TRUE
    ## 18            NA          TRUE
    ## 19            NA          TRUE
    ## 20            NA          TRUE
    ## 21            NA          TRUE
    ## 22            NA          TRUE
    ## 23            NA            NA
    ## 24            NA          TRUE
    ## 25            NA          TRUE
    ## 26            NA          TRUE
    ## 27            NA          TRUE
    ## 28            NA          TRUE
    ## 29            NA          TRUE
    ## 30            NA          TRUE
    ## 31            NA          TRUE
    ## 32            NA          TRUE
    ## 33            NA          TRUE
    ## 34            NA          TRUE
    ## 35            NA          TRUE
    ## 36            NA          TRUE
    ## 37            NA          TRUE
    ## 38            NA          TRUE
    ## 39            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17      0.49340
    ## 2    rs204469          19    45490285     3.269e-06      0.08971
    ## 3   rs2075650          19    45395619    5.980e-134      0.02317
    ## 4  rs62117204          19    45242967     1.864e-11      0.99400
    ## 5  rs76205446          19    45355267     9.010e-09      0.89440

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
    ## 1            FALSE    0.0200011 24.87524  0.05 3.439008 0.4580547

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

Table 6 presents the MR causal estimates of genetically predicted AAOS
on AUDIT Total. <br>

**Table 6** MR causaul estimates for AAOS on AUDIT Total

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 2      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 3      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 4      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   33 -0.0009498950 0.001219949
    ## 2                           Weighted median   33 -0.0008170022 0.001826275
    ## 3                             Weighted mode   33 -0.0006522654 0.001470843
    ## 4                                  MR Egger   33  0.0010676606 0.001902514
    ##        pval
    ## 1 0.4361948
    ## 2 0.6546153
    ## 3 0.6604145
    ## 4 0.5787065

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in AUDIT Total and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 2      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 38.47272   31 0.1672223
    ## 2 Inverse variance weighted 41.32274   32 0.1251096

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    -0.001093843 0.0007218151 0.1398008

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome      exposure    pt
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 44.05569 0.1272

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 2      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 3      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 4      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   33 -0.0009498950 0.001219949
    ## 2                           Weighted median   33 -0.0008170022 0.001833417
    ## 3                             Weighted mode   33 -0.0006522654 0.001396475
    ## 4                                  MR Egger   33  0.0010676606 0.001902514
    ##        pval
    ## 1 0.4361948
    ## 2 0.6558737
    ## 3 0.6436076
    ## 4 0.5787065

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ## 2      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 38.47272   31 0.1672223
    ## 2 Inverse variance weighted 41.32274   32 0.1251096

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome      exposure
    ## 1      x4V9Uf     rsg7rX SanchezRoige2019auditt23andMe Huang2017aaos
    ##   egger_intercept           se      pval
    ## 1    -0.001093843 0.0007218151 0.1398008

<br>
