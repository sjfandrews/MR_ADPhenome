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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Diabetes

    ##            SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1    rs2649062     1   5799177    A    G 0.3144780 -0.0089 0.0085
    ## 2    rs4662080    NA        NA <NA> <NA>        NA      NA     NA
    ## 3   rs10919252     1 169802956    C    G 0.3251000  0.0074 0.0083
    ## 4    rs6701713     1 207786289    A    G 0.8164390 -0.0034 0.0100
    ## 5  rs144505123    NA        NA <NA> <NA>        NA      NA     NA
    ## 6    rs6718282     2  18039651    G    A 0.0488147  0.0216 0.0181
    ## 7  rs114131510    NA        NA <NA> <NA>        NA      NA     NA
    ## 8   rs12615104     2 109820829    T    C 0.2593300  0.0139 0.0089
    ## 9  rs111906619    NA        NA <NA> <NA>        NA      NA     NA
    ## 10   rs6431219    NA        NA <NA> <NA>        NA      NA     NA
    ## 11    rs359982    NA        NA <NA> <NA>        NA      NA     NA
    ## 12 rs116341973    NA        NA <NA> <NA>        NA      NA     NA
    ## 13 rs145799027    NA        NA <NA> <NA>        NA      NA     NA
    ## 14  rs71602496     4    661002    A    G 0.1497070  0.0036 0.0111
    ## 15 rs115803892    NA        NA <NA> <NA>        NA      NA     NA
    ## 16   rs1689013     4 181048651    T    C 0.2392910  0.0131 0.0091
    ## 17 rs144202318    NA        NA <NA> <NA>        NA      NA     NA
    ## 18  rs77345379    NA        NA <NA> <NA>        NA      NA     NA
    ## 19  rs12153819     6  83773049    C    T 0.1231420 -0.0198 0.0120
    ## 20  rs17170228     7  33076314    G    A 0.0678444  0.0085 0.0156
    ## 21 rs149907089    NA        NA <NA> <NA>        NA      NA     NA
    ## 22   rs2725066     8   4438058    T    A 0.5231450 -0.0130 0.0080
    ## 23 rs117201713     8 121340499    G    C 0.0385398 -0.0376 0.0209
    ## 24  rs36033332    NA        NA <NA> <NA>        NA      NA     NA
    ## 25   rs7930318    11  60033371    C    T 0.5965780  0.0191 0.0080
    ## 26    rs567075    11  85830157    T    C 0.6790610  0.0101 0.0084
    ## 27  rs11218343    11 121435587    T    C 0.0383622 -0.0711 0.0204
    ## 28   rs7958488    NA        NA <NA> <NA>        NA      NA     NA
    ## 29   rs1118069    12  84739181    A    T 0.7161500  0.0079 0.0088
    ## 30 rs140016885    NA        NA <NA> <NA>        NA      NA     NA
    ## 31   rs9582517    13 102331030    T    C 0.4899970 -0.0018 0.0078
    ## 32 rs146189059    NA        NA <NA> <NA>        NA      NA     NA
    ## 33  rs17125944    14  53400629    T    C 0.0910177  0.0143 0.0130
    ## 34 rs150193285    NA        NA <NA> <NA>        NA      NA     NA
    ## 35   rs9947273    NA        NA <NA> <NA>        NA      NA     NA
    ## 36  rs62117204    NA        NA <NA> <NA>        NA      NA     NA
    ## 37  rs76205446    NA        NA <NA> <NA>        NA      NA     NA
    ## 38   rs2075650    NA        NA <NA> <NA>        NA      NA     NA
    ## 39 rs141441332    NA        NA <NA> <NA>        NA      NA     NA
    ## 40    rs204469    NA        NA <NA> <NA>        NA      NA     NA
    ## 41   rs2827191    21  23361798    C    T 0.2881740 -0.0057 0.0087
    ## 42   rs1043441    22  39130964    C    T 0.2935380  0.0062 0.0086
    ##             Z         P      N           TRAIT
    ## 1  -1.0470588 0.2944000 569011 Type_2_Diabetes
    ## 2          NA        NA     NA            <NA>
    ## 3   0.8915663 0.3746000 572205 Type_2_Diabetes
    ## 4  -0.3400000 0.7332000 573704 Type_2_Diabetes
    ## 5          NA        NA     NA            <NA>
    ## 6   1.1933702 0.2335000 567653 Type_2_Diabetes
    ## 7          NA        NA     NA            <NA>
    ## 8   1.5617978 0.1179000 569913 Type_2_Diabetes
    ## 9          NA        NA     NA            <NA>
    ## 10         NA        NA     NA            <NA>
    ## 11         NA        NA     NA            <NA>
    ## 12         NA        NA     NA            <NA>
    ## 13         NA        NA     NA            <NA>
    ## 14  0.3243243 0.7442000 572641 Type_2_Diabetes
    ## 15         NA        NA     NA            <NA>
    ## 16  1.4395604 0.1507000 571356 Type_2_Diabetes
    ## 17         NA        NA     NA            <NA>
    ## 18         NA        NA     NA            <NA>
    ## 19 -1.6500000 0.0990000 572546 Type_2_Diabetes
    ## 20  0.5448718 0.5844000 579240 Type_2_Diabetes
    ## 21         NA        NA     NA            <NA>
    ## 22 -1.6250000 0.1025000 569669 Type_2_Diabetes
    ## 23 -1.7990431 0.0718500 573177 Type_2_Diabetes
    ## 24         NA        NA     NA            <NA>
    ## 25  2.3875000 0.0170800 573625 Type_2_Diabetes
    ## 26  1.2023800 0.2317000 572388 Type_2_Diabetes
    ## 27 -3.4852941 0.0005019 572734 Type_2_Diabetes
    ## 28         NA        NA     NA            <NA>
    ## 29  0.8977270 0.3688000 572012 Type_2_Diabetes
    ## 30         NA        NA     NA            <NA>
    ## 31 -0.2307692 0.8217000 571002 Type_2_Diabetes
    ## 32         NA        NA     NA            <NA>
    ## 33  1.1000000 0.2736000 577560 Type_2_Diabetes
    ## 34         NA        NA     NA            <NA>
    ## 35         NA        NA     NA            <NA>
    ## 36         NA        NA     NA            <NA>
    ## 37         NA        NA     NA            <NA>
    ## 38         NA        NA     NA            <NA>
    ## 39         NA        NA     NA            <NA>
    ## 40         NA        NA     NA            <NA>
    ## 41 -0.6551724 0.5116000 572834 Type_2_Diabetes
    ## 42  0.7209302 0.4719000 572532 Type_2_Diabetes

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##     target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1    rs4662080  rs4662076 1.000000 1.000000 CT/TG  NA     1 14357851
    ## 2    rs9947273 rs28702850 1.000000 1.000000 AT/GC  NA    18 35373923
    ## 3   rs62117204  rs4803750 0.907521 0.980289 TG/CA  NA    19 45247627
    ## 4  rs144505123       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 5  rs114131510       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 6  rs111906619       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 7    rs6431219       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 8     rs359982       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 9  rs116341973       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 10 rs145799027       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 11 rs115803892       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 12 rs144202318       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 13  rs77345379       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 14 rs149907089       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 15  rs36033332       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 16   rs7958488       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 17 rs140016885       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 18 rs146189059       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 19 rs150193285       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 20  rs76205446       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 21   rs2075650       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 22 rs141441332       <NA>       NA       NA  <NA>  NA    NA       NA
    ## 23    rs204469       <NA>       NA       NA  <NA>  NA    NA       NA
    ##    REF.proxy ALT.proxy        AF    BETA     SE          Z      P      N
    ## 1          T         G 0.7492550 -0.0078 0.0091 -0.8571430 0.3919 564989
    ## 2          C         T 0.1495250  0.0032 0.0112  0.2857143 0.7765 568479
    ## 3          A         G 0.0696567 -0.0123 0.0143 -0.8601399 0.3871 593528
    ## 4       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 5       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 6       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 7       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 8       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 9       <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 10      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 11      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 12      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 13      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 14      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 15      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 16      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 17      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 18      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 19      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 20      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 21      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 22      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ## 23      <NA>      <NA>        NA      NA     NA         NA     NA     NA
    ##              TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1  Type_2_Diabetes    C         T    T         G    T    C          TRUE
    ## 2  Type_2_Diabetes    A         T    G         C    A    G          TRUE
    ## 3  Type_2_Diabetes    T         G    C         A    T    C          TRUE
    ## 4             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 5             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 7             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 8             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 9             <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 10            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
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
    ## 21            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 22            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 23            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Diabetes datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1    rs1043441                      T                     C
    ## 2   rs10919252                      G                     C
    ## 3    rs1118069                      T                     A
    ## 4   rs11218343                      C                     T
    ## 5  rs117201713                      C                     G
    ## 6   rs12153819                      T                     C
    ## 7   rs12615104                      C                     T
    ## 8    rs1689013                      C                     T
    ## 9   rs17125944                      C                     T
    ## 10  rs17170228                      A                     G
    ## 11   rs2649062                      G                     A
    ## 12   rs2725066                      A                     T
    ## 13   rs2827191                      T                     C
    ## 14   rs4662080                      T                     C
    ## 15    rs567075                      C                     T
    ## 16  rs62117204                      T                     C
    ## 17   rs6701713                      G                     A
    ## 18   rs6718282                      A                     G
    ## 19  rs71602496                      G                     A
    ## 20   rs7930318                      T                     C
    ## 21   rs9582517                      C                     T
    ## 22   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639       0.0062
    ## 2                      G                    C        0.0975       0.0074
    ## 3                      T                    A        0.1012       0.0079
    ## 4                      C                    T       -0.1653      -0.0711
    ## 5                      C                    G        0.2125      -0.0376
    ## 6                      T                    C       -0.1092      -0.0198
    ## 7                      C                    T       -0.1057       0.0139
    ## 8                      C                    T        0.0637       0.0131
    ## 9                      C                    T        0.0960       0.0143
    ## 10                     A                    G        0.1215       0.0085
    ## 11                     G                    A        0.0652      -0.0089
    ## 12                     A                    T       -0.0936      -0.0130
    ## 13                     T                    C        0.1277      -0.0057
    ## 14                     T                    C        0.1421      -0.0078
    ## 15                     C                    T        0.0900       0.0101
    ## 16                     T                    C       -0.1867      -0.0123
    ## 17                     G                    A       -0.0709      -0.0034
    ## 18                     A                    G       -0.1421       0.0216
    ## 19                     G                    A        0.0780       0.0036
    ## 20                     T                    C        0.0750       0.0191
    ## 21                     C                    T       -0.1185      -0.0018
    ## 22                     A                    G       -0.0853       0.0032
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893   0.2935380  FALSE       FALSE     FALSE     egU9JH
    ## 2        0.3275   0.3251000  FALSE        TRUE     FALSE     egU9JH
    ## 3        0.7195   0.7161500  FALSE        TRUE     FALSE     egU9JH
    ## 4        0.0395   0.0383622  FALSE       FALSE     FALSE     egU9JH
    ## 5        0.0408   0.0385398  FALSE        TRUE     FALSE     egU9JH
    ## 6        0.1018   0.1231420  FALSE       FALSE     FALSE     egU9JH
    ## 7        0.2566   0.2593300  FALSE       FALSE     FALSE     egU9JH
    ## 8        0.2493   0.2392910  FALSE       FALSE     FALSE     egU9JH
    ## 9        0.0924   0.0910177  FALSE       FALSE     FALSE     egU9JH
    ## 10       0.0623   0.0678444  FALSE       FALSE     FALSE     egU9JH
    ## 11       0.3192   0.3144780  FALSE       FALSE     FALSE     egU9JH
    ## 12       0.5128   0.5231450  FALSE        TRUE      TRUE     egU9JH
    ## 13       0.2857   0.2881740  FALSE       FALSE     FALSE     egU9JH
    ## 14       0.6649   0.7492550  FALSE       FALSE     FALSE     egU9JH
    ## 15       0.6903   0.6790610  FALSE       FALSE     FALSE     egU9JH
    ## 16       0.0601   0.0696567  FALSE       FALSE     FALSE     egU9JH
    ## 17       0.7983   0.8164390  FALSE       FALSE     FALSE     egU9JH
    ## 18       0.0440   0.0488147  FALSE       FALSE     FALSE     egU9JH
    ## 19       0.1453   0.1497070  FALSE       FALSE     FALSE     egU9JH
    ## 20       0.5996   0.5965780  FALSE       FALSE     FALSE     egU9JH
    ## 21       0.5073   0.4899970  FALSE       FALSE     FALSE     egU9JH
    ## 22       0.1431   0.1495250  FALSE       FALSE     FALSE     egU9JH
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           22    39130964     0.0086  0.7209302    0.4719000
    ## 2            1   169802956     0.0083  0.8915663    0.3746000
    ## 3           12    84739181     0.0088  0.8977270    0.3688000
    ## 4           11   121435587     0.0204 -3.4852941    0.0005019
    ## 5            8   121340499     0.0209 -1.7990431    0.0718500
    ## 6            6    83773049     0.0120 -1.6500000    0.0990000
    ## 7            2   109820829     0.0089  1.5617978    0.1179000
    ## 8            4   181048651     0.0091  1.4395604    0.1507000
    ## 9           14    53400629     0.0130  1.1000000    0.2736000
    ## 10           7    33076314     0.0156  0.5448718    0.5844000
    ## 11           1     5799177     0.0085 -1.0470588    0.2944000
    ## 12           8     4438058     0.0080 -1.6250000    0.1025000
    ## 13          21    23361798     0.0087 -0.6551724    0.5116000
    ## 14           1    14357851     0.0091 -0.8571430    0.3919000
    ## 15          11    85830157     0.0084  1.2023800    0.2317000
    ## 16          19    45247627     0.0143 -0.8601399    0.3871000
    ## 17           1   207786289     0.0100 -0.3400000    0.7332000
    ## 18           2    18039651     0.0181  1.1933702    0.2335000
    ## 19           4      661002     0.0111  0.3243243    0.7442000
    ## 20          11    60033371     0.0080  2.3875000    0.0170800
    ## 21          13   102331030     0.0078 -0.2307692    0.8217000
    ## 22          18    35373923     0.0112  0.2857143    0.7765000
    ##    samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1              572532 Xue2018diab            TRUE            reported
    ## 2              572205 Xue2018diab            TRUE            reported
    ## 3              572012 Xue2018diab            TRUE            reported
    ## 4              572734 Xue2018diab            TRUE            reported
    ## 5              573177 Xue2018diab            TRUE            reported
    ## 6              572546 Xue2018diab            TRUE            reported
    ## 7              569913 Xue2018diab            TRUE            reported
    ## 8              571356 Xue2018diab            TRUE            reported
    ## 9              577560 Xue2018diab            TRUE            reported
    ## 10             579240 Xue2018diab            TRUE            reported
    ## 11             569011 Xue2018diab            TRUE            reported
    ## 12             569669 Xue2018diab            TRUE            reported
    ## 13             572834 Xue2018diab            TRUE            reported
    ## 14             564989 Xue2018diab            TRUE            reported
    ## 15             572388 Xue2018diab            TRUE            reported
    ## 16             593528 Xue2018diab            TRUE            reported
    ## 17             573704 Xue2018diab            TRUE            reported
    ## 18             567653 Xue2018diab            TRUE            reported
    ## 19             572641 Xue2018diab            TRUE            reported
    ## 20             573625 Xue2018diab            TRUE            reported
    ## 21             571002 Xue2018diab            TRUE            reported
    ## 22             568479 Xue2018diab            TRUE            reported
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
    ## 13            NA               <NA>              <NA>              <NA>
    ## 14          TRUE          rs4662080         rs4662076                 T
    ## 15            NA               <NA>              <NA>              <NA>
    ## 16          TRUE         rs62117204         rs4803750                 T
    ## 17            NA               <NA>              <NA>              <NA>
    ## 18            NA               <NA>              <NA>              <NA>
    ## 19            NA               <NA>              <NA>              <NA>
    ## 20            NA               <NA>              <NA>              <NA>
    ## 21            NA               <NA>              <NA>              <NA>
    ## 22          TRUE          rs9947273        rs28702850                 A
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>           22
    ## 2               <NA>             <NA>             <NA>            1
    ## 3               <NA>             <NA>             <NA>           12
    ## 4               <NA>             <NA>             <NA>           11
    ## 5               <NA>             <NA>             <NA>            8
    ## 6               <NA>             <NA>             <NA>            6
    ## 7               <NA>             <NA>             <NA>            2
    ## 8               <NA>             <NA>             <NA>            4
    ## 9               <NA>             <NA>             <NA>           14
    ## 10              <NA>             <NA>             <NA>            7
    ## 11              <NA>             <NA>             <NA>            1
    ## 12              <NA>             <NA>             <NA>            8
    ## 13              <NA>             <NA>             <NA>           21
    ## 14                 C                G                T            1
    ## 15              <NA>             <NA>             <NA>           11
    ## 16                 C                G                A           19
    ## 17              <NA>             <NA>             <NA>            1
    ## 18              <NA>             <NA>             <NA>            2
    ## 19              <NA>             <NA>             <NA>            4
    ## 20              <NA>             <NA>             <NA>           11
    ## 21              <NA>             <NA>             <NA>           13
    ## 22                 G                T                C           18
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      39130964      0.0135  -4.733333     2.110e-06               40255
    ## 2     169802956      0.0198   4.924240     8.182e-07               40255
    ## 3      84739181      0.0216   4.685190     2.693e-06               40255
    ## 4     121435587      0.0329  -5.024320     5.148e-07               40255
    ## 5     121340499      0.0456   4.660088     3.120e-06               40255
    ## 6      83773049      0.0235  -4.646809     3.291e-06               40255
    ## 7     109820829      0.0221  -4.782810     1.829e-06               40255
    ## 8     181048651      0.0139   4.582730     4.657e-06               40255
    ## 9      53400629      0.0203   4.729060     2.321e-06               40255
    ## 10     33076314      0.0248   4.899194     1.004e-06               40255
    ## 11      5799177      0.0131   4.977100     6.120e-07               40255
    ## 12      4438058      0.0191  -4.900524     9.948e-07               40255
    ## 13     23361798      0.0279   4.577061     4.895e-06               40255
    ## 14     14363419      0.0296   4.800676     1.586e-06               40255
    ## 15     85830157      0.0132   6.818180     9.084e-12               40255
    ## 16     45242967      0.0278  -6.715827     1.864e-11               40255
    ## 17    207786289      0.0146  -4.856160     1.184e-06               40255
    ## 18     18039651      0.0308  -4.613636     3.840e-06               40255
    ## 19       661002      0.0171   4.561400     4.978e-06               40255
    ## 20     60033371      0.0125   6.000000     2.245e-09               40255
    ## 21    102331030      0.0257  -4.610890     3.908e-06               40255
    ## 22     35409158      0.0178  -4.792135     1.593e-06               40255
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 2  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 3  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 4  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 5  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 6  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 7  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 8  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 9  Huang2017aaos             TRUE             reported      QexcEc      2
    ## 10 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 11 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 12 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 13 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 14 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 15 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 16 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 17 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 18 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 19 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 20 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 21 Huang2017aaos             TRUE             reported      QexcEc      2
    ## 22 Huang2017aaos             TRUE             reported      QexcEc      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06    6.109258e-05          1.00
    ## 2     TRUE           TRUE 5e-06    3.173295e-05          1.00
    ## 3     TRUE           TRUE 5e-06    3.676926e-05          1.00
    ## 4     TRUE           TRUE 5e-06    4.856855e-03          0.02
    ## 5     TRUE           TRUE 5e-06    1.981754e-03          0.90
    ## 6     TRUE           TRUE 5e-06    3.286343e-04          1.00
    ## 7     TRUE           TRUE 5e-06    3.035441e-04          0.96
    ## 8     TRUE           TRUE 5e-06    1.436245e-04          1.00
    ## 9     TRUE           TRUE 5e-06    1.567541e-04          1.00
    ## 10    TRUE           TRUE 5e-06    3.604708e-05          1.00
    ## 11    TRUE           TRUE 5e-06    1.131988e-04          1.00
    ## 12   FALSE           TRUE 5e-06              NA            NA
    ## 13    TRUE           TRUE 5e-06    9.039027e-05          1.00
    ## 14    TRUE           TRUE 5e-06    1.537368e-04          1.00
    ## 15    TRUE           TRUE 5e-06    7.396821e-05          1.00
    ## 16    TRUE          FALSE 5e-06              NA            NA
    ## 17    TRUE           TRUE 5e-06    3.557435e-06          1.00
    ## 18    TRUE           TRUE 5e-06    6.498353e-04          1.00
    ## 19    TRUE           TRUE 5e-06    3.725412e-06          1.00
    ## 20    TRUE           TRUE 5e-06    3.323330e-04          0.46
    ## 21    TRUE           TRUE 5e-06    8.275072e-07          1.00
    ## 22    TRUE           TRUE 5e-06    2.729525e-05          1.00
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4          FALSE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE
    ## 12            NA
    ## 13          TRUE
    ## 14          TRUE
    ## 15          TRUE
    ## 16            NA
    ## 17          TRUE
    ## 18          TRUE
    ## 19          TRUE
    ## 20          TRUE
    ## 21          TRUE
    ## 22          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs62117204          19    45247627     1.864e-11       0.3871

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
    ## 1            FALSE   0.01207649 24.59126  0.05 5.356510 0.6385086
    ## 2             TRUE   0.01144504 24.51698  0.05 1.599987 0.2441396

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
on Diabetes. <br>

**Table 6** MR causaul estimates for AAOS on Diabetes

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 2      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 3      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 4      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   20  0.022003605 0.02206778
    ## 2                           Weighted median   20  0.002551631 0.03402377
    ## 3                             Weighted mode   20 -0.004543622 0.04660293
    ## 4                                  MR Egger   20 -0.081945926 0.11007612
    ##        pval
    ## 1 0.3187199
    ## 2 0.9402183
    ## 3 0.9233533
    ## 4 0.4662144

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Diabetes and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 2      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 34.58048   18 0.010669213
    ## 2 Inverse variance weighted 36.43707   19 0.009323733

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome      exposure egger_intercept
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos      0.01091528
    ##           se      pval
    ## 1 0.01110341 0.3386094

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome      exposure    pt outliers_removed
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          1 40.03242 0.014

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 2      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 3      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 4      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)   19  0.008523063 0.02242927
    ## 2                           Weighted median   19 -0.005559552 0.03172735
    ## 3                             Weighted mode   19 -0.006560367 0.04921064
    ## 4                                  MR Egger   19 -0.165280950 0.09016079
    ##        pval
    ## 1 0.7039474
    ## 2 0.8608997
    ## 3 0.8954258
    ## 4 0.0843471

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome      exposure
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ## 2      QexcEc     egU9JH Xue2018diab Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 20.33831   17 0.2572921
    ## 2 Inverse variance weighted 25.13959   18 0.1211191

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome      exposure egger_intercept
    ## 1      QexcEc     egU9JH Xue2018diab Huang2017aaos      0.01803313
    ##            se       pval
    ## 1 0.009001715 0.06135243

<br>
