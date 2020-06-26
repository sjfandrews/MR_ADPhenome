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

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Sleep Duration

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1    rs2649062     1   5799177    A    G 0.311769  0.001726430 0.00244709
    ## 2    rs4662080    NA        NA <NA> <NA>       NA           NA         NA
    ## 3   rs10919252     1 169802956    C    G 0.325391 -0.000721616 0.00241509
    ## 4    rs6701713     1 207786289    A    G 0.818076  0.000393376 0.00293032
    ## 5  rs144505123     1 221802052    C    T 0.006488  0.002392890 0.01513780
    ## 6    rs6718282     2  18039651    G    A 0.052010  0.005302590 0.00517750
    ## 7  rs114131510     2  78420700    A    G 0.008213  0.015733800 0.01327680
    ## 8   rs12615104     2 109820829    T    C 0.260455  0.003942010 0.00257872
    ## 9  rs111906619     2 127789085    C    T 0.079136 -0.004024170 0.00418959
    ## 10   rs6431219     2 127862133    C    T 0.414682  0.000257151 0.00229807
    ## 11    rs359982     2 219826934    A    G 0.070861  0.004722780 0.00439776
    ## 12 rs116341973     3  63462893    A    G 0.022948  0.016225300 0.00757416
    ## 13 rs145799027     3 114438213    T    C 0.007793  0.008739080 0.01413820
    ## 14  rs71602496     4    661002    A    G 0.153336 -0.001072350 0.00314369
    ## 15 rs115803892     4 134185712    G    A 0.010203  0.000556603 0.01132960
    ## 16   rs1689013     4 181048651    T    C 0.238126 -0.004048400 0.00265714
    ## 17 rs144202318     5 165711579    G    A 0.012903 -0.001145780 0.01017150
    ## 18  rs77345379     6  69273670    C    T 0.018576 -0.000257124 0.00862568
    ## 19  rs12153819     6  83773049    C    T 0.125103 -0.003609390 0.00342375
    ## 20  rs17170228     7  33076314    G    A 0.069148 -0.002853870 0.00446490
    ## 21 rs149907089     7 151626353    G    C 0.012161 -0.025196200 0.01173110
    ## 22   rs2725066     8   4438058    T    A 0.522568  0.000725924 0.00227233
    ## 23 rs117201713     8 121340499    G    C 0.039587  0.000122036 0.00581215
    ## 24  rs36033332     9  26834807    C    G 0.052207 -0.002644350 0.00513682
    ## 25   rs7930318    11  60033371    C    T 0.596750  0.002599480 0.00230663
    ## 26    rs567075    11  85830157    T    C 0.678430 -0.000151275 0.00242373
    ## 27  rs11218343    11 121435587    T    C 0.037123 -0.001533370 0.00599394
    ## 28   rs7958488    12   6546166    A    T 0.023924  0.004275540 0.00757946
    ## 29   rs1118069    12  84739181    A    T 0.716441 -0.006969390 0.00250935
    ## 30 rs140016885    12  99679113    A    G 0.014061  0.004181740 0.01018060
    ## 31   rs9582517    13 102331030    T    C 0.488489  0.001790330 0.00226981
    ## 32 rs146189059    14  47173254    C    G 0.008003 -0.013538500 0.01334040
    ## 33  rs17125944    14  53400629    T    C 0.092034 -0.012453100 0.00392266
    ## 34 rs150193285    15  75224360    C    T 0.010979  0.002173860 0.01093630
    ## 35   rs9947273    NA        NA <NA> <NA>       NA           NA         NA
    ## 36  rs62117204    19  45242967    C    T 0.072038  0.005899870 0.00438102
    ## 37  rs76205446    19  45355267    T    A 0.010876 -0.019975100 0.01111200
    ## 38   rs2075650    19  45395619    A    G 0.146215 -0.006971160 0.00320585
    ## 39 rs141441332    19  45438575    C    A 0.011218 -0.000340342 0.01113280
    ## 40    rs204469    19  45490285    A    G 0.956253 -0.002794310 0.00558840
    ## 41   rs2827191    21  23361798    C    T 0.289079  0.001194630 0.00249785
    ## 42   rs1043441    22  39130964    C    T 0.294155 -0.010441200 0.00248517
    ##             Z       P      N          TRAIT
    ## 1   0.7055030 4.5e-01 446118 Sleep_Duration
    ## 2          NA      NA     NA           <NA>
    ## 3  -0.2987950 7.9e-01 446118 Sleep_Duration
    ## 4   0.1342430 9.1e-01 446118 Sleep_Duration
    ## 5   0.1580740 8.4e-01 446118 Sleep_Duration
    ## 6   1.0241600 3.0e-01 446118 Sleep_Duration
    ## 7   1.1850600 2.2e-01 446118 Sleep_Duration
    ## 8   1.5286700 1.3e-01 446118 Sleep_Duration
    ## 9  -0.9605160 3.2e-01 446118 Sleep_Duration
    ## 10  0.1118990 9.3e-01 446118 Sleep_Duration
    ## 11  1.0739100 3.0e-01 446118 Sleep_Duration
    ## 12  2.1421900 3.5e-02 446118 Sleep_Duration
    ## 13  0.6181180 5.4e-01 446118 Sleep_Duration
    ## 14 -0.3411120 7.9e-01 446118 Sleep_Duration
    ## 15  0.0491282 8.7e-01 446118 Sleep_Duration
    ## 16 -1.5235900 1.4e-01 446118 Sleep_Duration
    ## 17 -0.1126460 8.9e-01 446118 Sleep_Duration
    ## 18 -0.0298091 9.4e-01 446118 Sleep_Duration
    ## 19 -1.0542200 3.2e-01 446118 Sleep_Duration
    ## 20 -0.6391790 5.3e-01 446118 Sleep_Duration
    ## 21 -2.1478100 2.9e-02 446118 Sleep_Duration
    ## 22  0.3194620 7.4e-01 446118 Sleep_Duration
    ## 23  0.0209967 9.8e-01 446118 Sleep_Duration
    ## 24 -0.5147830 5.8e-01 446118 Sleep_Duration
    ## 25  1.1269600 2.7e-01 446118 Sleep_Duration
    ## 26 -0.0624141 9.3e-01 446118 Sleep_Duration
    ## 27 -0.2558200 8.1e-01 446118 Sleep_Duration
    ## 28  0.5640960 5.9e-01 446118 Sleep_Duration
    ## 29 -2.7773700 4.6e-03 446118 Sleep_Duration
    ## 30  0.4107560 6.7e-01 446118 Sleep_Duration
    ## 31  0.7887580 4.2e-01 446118 Sleep_Duration
    ## 32 -1.0148500 3.2e-01 446118 Sleep_Duration
    ## 33 -3.1746600 1.5e-03 446118 Sleep_Duration
    ## 34  0.1987750 8.0e-01 446118 Sleep_Duration
    ## 35         NA      NA     NA           <NA>
    ## 36  1.3466900 1.7e-01 446118 Sleep_Duration
    ## 37 -1.7976200 6.3e-02 446118 Sleep_Duration
    ## 38 -2.1745100 3.2e-02 446118 Sleep_Duration
    ## 39 -0.0305711 9.5e-01 446118 Sleep_Duration
    ## 40 -0.5000200 6.2e-01 446118 Sleep_Duration
    ## 41  0.4782630 7.0e-01 446118 Sleep_Duration
    ## 42 -4.2014000 3.4e-05 446118 Sleep_Duration

<br>

**Table 3:** Proxy SNPs for Sleep Duration

    ##   target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs4662080  rs4662076     1      1 CT/TG  NA     1 14357851         T
    ## 2  rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ##   ALT.proxy       AF         BETA         SE          Z    P      N
    ## 1         G 0.749452  9.37038e-05 0.00262407  0.0357093 0.97 446118
    ## 2         T 0.150960 -4.15841e-03 0.00318060 -1.3074300 0.19 446118
    ##            TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 Sleep_Duration   C      TRUE   T         G   T   C          TRUE
    ## 2 Sleep_Duration   A      TRUE   G         C   A   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Sleep Duration datasets

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
    ## 12 rs140016885                      G                     A
    ## 13 rs141441332                      A                     C
    ## 14 rs144202318                      A                     G
    ## 15 rs144505123                      T                     C
    ## 16 rs145799027                      C                     T
    ## 17 rs146189059                      G                     C
    ## 18 rs149907089                      C                     G
    ## 19 rs150193285                      T                     C
    ## 20   rs1689013                      C                     T
    ## 21  rs17125944                      C                     T
    ## 22  rs17170228                      A                     G
    ## 23    rs204469                      G                     A
    ## 24   rs2075650                      G                     A
    ## 25   rs2649062                      G                     A
    ## 26   rs2725066                      A                     T
    ## 27   rs2827191                      T                     C
    ## 28    rs359982                      G                     A
    ## 29  rs36033332                      G                     C
    ## 30   rs4662080                      T                     C
    ## 31    rs567075                      C                     T
    ## 32  rs62117204                      T                     C
    ## 33   rs6431219                      T                     C
    ## 34   rs6701713                      G                     A
    ## 35   rs6718282                      A                     G
    ## 36  rs71602496                      G                     A
    ## 37  rs76205446                      A                     T
    ## 38  rs77345379                      T                     C
    ## 39   rs7930318                      T                     C
    ## 40   rs7958488                      T                     A
    ## 41   rs9582517                      C                     T
    ## 42   rs9947273                      A                     G
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       -0.0639 -1.04412e-02
    ## 2                      G                    C        0.0975 -7.21616e-04
    ## 3                      T                    A        0.1012 -6.96939e-03
    ## 4                      T                    C        0.1268 -4.02417e-03
    ## 5                      C                    T       -0.1653 -1.53337e-03
    ## 6                      G                    A        0.6419  1.57338e-02
    ## 7                      A                    G        0.9151  5.56603e-04
    ## 8                      G                    A        0.2057  1.62253e-02
    ## 9                      C                    G        0.2125  1.22036e-04
    ## 10                     T                    C       -0.1092 -3.60939e-03
    ## 11                     C                    T       -0.1057  3.94201e-03
    ## 12                     G                    A        0.6851  4.18174e-03
    ## 13                     A                    C        0.5383 -3.40342e-04
    ## 14                     A                    G        0.7219 -1.14578e-03
    ## 15                     T                    C        0.7709  2.39289e-03
    ## 16                     C                    T        0.7485  8.73908e-03
    ## 17                     G                    C        0.9444 -1.35385e-02
    ## 18                     C                    G        0.7109 -2.51962e-02
    ## 19                     T                    C        0.7622  2.17386e-03
    ## 20                     C                    T        0.0637 -4.04840e-03
    ## 21                     C                    T        0.0960 -1.24531e-02
    ## 22                     A                    G        0.1215 -2.85387e-03
    ## 23                     G                    A        0.1588 -2.79431e-03
    ## 24                     G                    A        0.5502 -6.97116e-03
    ## 25                     G                    A        0.0652  1.72643e-03
    ## 26                     A                    T       -0.0936  7.25924e-04
    ## 27                     T                    C        0.1277  1.19463e-03
    ## 28                     G                    A        0.2660  4.72278e-03
    ## 29                     G                    C        0.4601 -2.64435e-03
    ## 30                     T                    C        0.1421  9.37038e-05
    ## 31                     C                    T        0.0900 -1.51275e-04
    ## 32                     T                    C       -0.1867  5.89987e-03
    ## 33                     T                    C        0.0774  2.57151e-04
    ## 34                     G                    A       -0.0709  3.93376e-04
    ## 35                     A                    G       -0.1421  5.30259e-03
    ## 36                     G                    A        0.0780 -1.07235e-03
    ## 37                     A                    T        0.7096 -1.99751e-02
    ## 38                     T                    C        0.2291 -2.57124e-04
    ## 39                     T                    C        0.0750  2.59948e-03
    ## 40                     T                    A        0.5085  4.27554e-03
    ## 41                     C                    T       -0.1185  1.79033e-03
    ## 42                     A                    G       -0.0853 -4.15841e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893    0.294155  FALSE       FALSE     FALSE     OGAVQG
    ## 2        0.3275    0.325391  FALSE        TRUE     FALSE     OGAVQG
    ## 3        0.7195    0.716441  FALSE        TRUE     FALSE     OGAVQG
    ## 4        0.0709    0.079136  FALSE       FALSE     FALSE     OGAVQG
    ## 5        0.0395    0.037123  FALSE       FALSE     FALSE     OGAVQG
    ## 6        0.0162    0.008213  FALSE       FALSE     FALSE     OGAVQG
    ## 7        0.0129    0.010203  FALSE       FALSE     FALSE     OGAVQG
    ## 8        0.0227    0.022948  FALSE       FALSE     FALSE     OGAVQG
    ## 9        0.0408    0.039587  FALSE        TRUE     FALSE     OGAVQG
    ## 10       0.1018    0.125103  FALSE       FALSE     FALSE     OGAVQG
    ## 11       0.2566    0.260455  FALSE       FALSE     FALSE     OGAVQG
    ## 12       0.0144    0.014061  FALSE       FALSE     FALSE     OGAVQG
    ## 13       0.0110    0.011218  FALSE       FALSE     FALSE     OGAVQG
    ## 14       0.0135    0.012903  FALSE       FALSE     FALSE     OGAVQG
    ## 15       0.0113    0.006488  FALSE       FALSE     FALSE     OGAVQG
    ## 16       0.0147    0.007793  FALSE       FALSE     FALSE     OGAVQG
    ## 17       0.0111    0.008003  FALSE        TRUE     FALSE     OGAVQG
    ## 18       0.0162    0.012161  FALSE        TRUE     FALSE     OGAVQG
    ## 19       0.0109    0.010979  FALSE       FALSE     FALSE     OGAVQG
    ## 20       0.2493    0.238126  FALSE       FALSE     FALSE     OGAVQG
    ## 21       0.0924    0.092034  FALSE       FALSE     FALSE     OGAVQG
    ## 22       0.0623    0.069148  FALSE       FALSE     FALSE     OGAVQG
    ## 23       0.9632    0.956253  FALSE       FALSE     FALSE     OGAVQG
    ## 24       0.2197    0.146215  FALSE       FALSE     FALSE     OGAVQG
    ## 25       0.3192    0.311769  FALSE       FALSE     FALSE     OGAVQG
    ## 26       0.5128    0.522568  FALSE        TRUE      TRUE     OGAVQG
    ## 27       0.2857    0.289079  FALSE       FALSE     FALSE     OGAVQG
    ## 28       0.0781    0.070861  FALSE       FALSE     FALSE     OGAVQG
    ## 29       0.0386    0.052207  FALSE        TRUE     FALSE     OGAVQG
    ## 30       0.6649    0.749452  FALSE       FALSE     FALSE     OGAVQG
    ## 31       0.6903    0.678430  FALSE       FALSE     FALSE     OGAVQG
    ## 32       0.0601    0.072038  FALSE       FALSE     FALSE     OGAVQG
    ## 33       0.4163    0.414682  FALSE       FALSE     FALSE     OGAVQG
    ## 34       0.7983    0.818076  FALSE       FALSE     FALSE     OGAVQG
    ## 35       0.0440    0.052010  FALSE       FALSE     FALSE     OGAVQG
    ## 36       0.1453    0.153336  FALSE       FALSE     FALSE     OGAVQG
    ## 37       0.0143    0.010876  FALSE        TRUE     FALSE     OGAVQG
    ## 38       0.0185    0.018576  FALSE       FALSE     FALSE     OGAVQG
    ## 39       0.5996    0.596750  FALSE       FALSE     FALSE     OGAVQG
    ## 40       0.0195    0.023924  FALSE        TRUE     FALSE     OGAVQG
    ## 41       0.5073    0.488489  FALSE       FALSE     FALSE     OGAVQG
    ## 42       0.1431    0.150960  FALSE       FALSE     FALSE     OGAVQG
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           22    39130964 0.00248517 -4.2014000      3.4e-05
    ## 2            1   169802956 0.00241509 -0.2987950      7.9e-01
    ## 3           12    84739181 0.00250935 -2.7773700      4.6e-03
    ## 4            2   127789085 0.00418959 -0.9605160      3.2e-01
    ## 5           11   121435587 0.00599394 -0.2558200      8.1e-01
    ## 6            2    78420700 0.01327680  1.1850600      2.2e-01
    ## 7            4   134185712 0.01132960  0.0491282      8.7e-01
    ## 8            3    63462893 0.00757416  2.1421900      3.5e-02
    ## 9            8   121340499 0.00581215  0.0209967      9.8e-01
    ## 10           6    83773049 0.00342375 -1.0542200      3.2e-01
    ## 11           2   109820829 0.00257872  1.5286700      1.3e-01
    ## 12          12    99679113 0.01018060  0.4107560      6.7e-01
    ## 13          19    45438575 0.01113280 -0.0305711      9.5e-01
    ## 14           5   165711579 0.01017150 -0.1126460      8.9e-01
    ## 15           1   221802052 0.01513780  0.1580740      8.4e-01
    ## 16           3   114438213 0.01413820  0.6181180      5.4e-01
    ## 17          14    47173254 0.01334040 -1.0148500      3.2e-01
    ## 18           7   151626353 0.01173110 -2.1478100      2.9e-02
    ## 19          15    75224360 0.01093630  0.1987750      8.0e-01
    ## 20           4   181048651 0.00265714 -1.5235900      1.4e-01
    ## 21          14    53400629 0.00392266 -3.1746600      1.5e-03
    ## 22           7    33076314 0.00446490 -0.6391790      5.3e-01
    ## 23          19    45490285 0.00558840 -0.5000200      6.2e-01
    ## 24          19    45395619 0.00320585 -2.1745100      3.2e-02
    ## 25           1     5799177 0.00244709  0.7055030      4.5e-01
    ## 26           8     4438058 0.00227233  0.3194620      7.4e-01
    ## 27          21    23361798 0.00249785  0.4782630      7.0e-01
    ## 28           2   219826934 0.00439776  1.0739100      3.0e-01
    ## 29           9    26834807 0.00513682 -0.5147830      5.8e-01
    ## 30           1    14357851 0.00262407  0.0357093      9.7e-01
    ## 31          11    85830157 0.00242373 -0.0624141      9.3e-01
    ## 32          19    45242967 0.00438102  1.3466900      1.7e-01
    ## 33           2   127862133 0.00229807  0.1118990      9.3e-01
    ## 34           1   207786289 0.00293032  0.1342430      9.1e-01
    ## 35           2    18039651 0.00517750  1.0241600      3.0e-01
    ## 36           4      661002 0.00314369 -0.3411120      7.9e-01
    ## 37          19    45355267 0.01111200 -1.7976200      6.3e-02
    ## 38           6    69273670 0.00862568 -0.0298091      9.4e-01
    ## 39          11    60033371 0.00230663  1.1269600      2.7e-01
    ## 40          12     6546166 0.00757946  0.5640960      5.9e-01
    ## 41          13   102331030 0.00226981  0.7887580      4.2e-01
    ## 42          18    35373923 0.00318060 -1.3074300      1.9e-01
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
    ## 28             446118 Dashti2019slepdur            TRUE
    ## 29             446118 Dashti2019slepdur            TRUE
    ## 30             446118 Dashti2019slepdur            TRUE
    ## 31             446118 Dashti2019slepdur            TRUE
    ## 32             446118 Dashti2019slepdur            TRUE
    ## 33             446118 Dashti2019slepdur            TRUE
    ## 34             446118 Dashti2019slepdur            TRUE
    ## 35             446118 Dashti2019slepdur            TRUE
    ## 36             446118 Dashti2019slepdur            TRUE
    ## 37             446118 Dashti2019slepdur            TRUE
    ## 38             446118 Dashti2019slepdur            TRUE
    ## 39             446118 Dashti2019slepdur            TRUE
    ## 40             446118 Dashti2019slepdur            TRUE
    ## 41             446118 Dashti2019slepdur            TRUE
    ## 42             446118 Dashti2019slepdur            TRUE
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
    ## 30            reported          TRUE          rs4662080         rs4662076
    ## 31            reported            NA               <NA>              <NA>
    ## 32            reported            NA               <NA>              <NA>
    ## 33            reported            NA               <NA>              <NA>
    ## 34            reported            NA               <NA>              <NA>
    ## 35            reported            NA               <NA>              <NA>
    ## 36            reported            NA               <NA>              <NA>
    ## 37            reported            NA               <NA>              <NA>
    ## 38            reported            NA               <NA>              <NA>
    ## 39            reported            NA               <NA>              <NA>
    ## 40            reported            NA               <NA>              <NA>
    ## 41            reported            NA               <NA>              <NA>
    ## 42            reported          TRUE          rs9947273        rs28702850
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>              <NA>             <NA>             <NA>
    ## 2               <NA>              <NA>             <NA>             <NA>
    ## 3               <NA>              <NA>             <NA>             <NA>
    ## 4               <NA>              <NA>             <NA>             <NA>
    ## 5               <NA>              <NA>             <NA>             <NA>
    ## 6               <NA>              <NA>             <NA>             <NA>
    ## 7               <NA>              <NA>             <NA>             <NA>
    ## 8               <NA>              <NA>             <NA>             <NA>
    ## 9               <NA>              <NA>             <NA>             <NA>
    ## 10              <NA>              <NA>             <NA>             <NA>
    ## 11              <NA>              <NA>             <NA>             <NA>
    ## 12              <NA>              <NA>             <NA>             <NA>
    ## 13              <NA>              <NA>             <NA>             <NA>
    ## 14              <NA>              <NA>             <NA>             <NA>
    ## 15              <NA>              <NA>             <NA>             <NA>
    ## 16              <NA>              <NA>             <NA>             <NA>
    ## 17              <NA>              <NA>             <NA>             <NA>
    ## 18              <NA>              <NA>             <NA>             <NA>
    ## 19              <NA>              <NA>             <NA>             <NA>
    ## 20              <NA>              <NA>             <NA>             <NA>
    ## 21              <NA>              <NA>             <NA>             <NA>
    ## 22              <NA>              <NA>             <NA>             <NA>
    ## 23              <NA>              <NA>             <NA>             <NA>
    ## 24              <NA>              <NA>             <NA>             <NA>
    ## 25              <NA>              <NA>             <NA>             <NA>
    ## 26              <NA>              <NA>             <NA>             <NA>
    ## 27              <NA>              <NA>             <NA>             <NA>
    ## 28              <NA>              <NA>             <NA>             <NA>
    ## 29              <NA>              <NA>             <NA>             <NA>
    ## 30                 T                 C                G                T
    ## 31              <NA>              <NA>             <NA>             <NA>
    ## 32              <NA>              <NA>             <NA>             <NA>
    ## 33              <NA>              <NA>             <NA>             <NA>
    ## 34              <NA>              <NA>             <NA>             <NA>
    ## 35              <NA>              <NA>             <NA>             <NA>
    ## 36              <NA>              <NA>             <NA>             <NA>
    ## 37              <NA>              <NA>             <NA>             <NA>
    ## 38              <NA>              <NA>             <NA>             <NA>
    ## 39              <NA>              <NA>             <NA>             <NA>
    ## 40              <NA>              <NA>             <NA>             <NA>
    ## 41              <NA>              <NA>             <NA>             <NA>
    ## 42                 A                 G                T                C
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
    ## 12           12     99679113      0.1416   4.838280     1.310e-06
    ## 13           19     45438575      0.0632   8.517405     1.713e-17
    ## 14            5    165711579      0.1572   4.592239     4.356e-06
    ## 15            1    221802052      0.1609   4.791175     1.661e-06
    ## 16            3    114438213      0.1601   4.675200     2.933e-06
    ## 17           14     47173254      0.1835   5.146590     2.634e-07
    ## 18            7    151626353      0.1535   4.631270     3.637e-06
    ## 19           15     75224360      0.1650   4.619394     3.834e-06
    ## 20            4    181048651      0.0139   4.582730     4.657e-06
    ## 21           14     53400629      0.0203   4.729060     2.321e-06
    ## 22            7     33076314      0.0248   4.899194     1.004e-06
    ## 23           19     45490285      0.0341   4.656890     3.269e-06
    ## 24           19     45395619      0.0223  24.672600    5.980e-134
    ## 25            1      5799177      0.0131   4.977100     6.120e-07
    ## 26            8      4438058      0.0191  -4.900524     9.948e-07
    ## 27           21     23361798      0.0279   4.577061     4.895e-06
    ## 28            2    219826934      0.0513   5.185190     2.159e-07
    ## 29            9     26834807      0.0865   5.319080     1.030e-07
    ## 30            1     14363419      0.0296   4.800676     1.586e-06
    ## 31           11     85830157      0.0132   6.818180     9.084e-12
    ## 32           19     45242967      0.0278  -6.715827     1.864e-11
    ## 33            2    127862133      0.0124   6.241935     3.897e-10
    ## 34            1    207786289      0.0146  -4.856160     1.184e-06
    ## 35            2     18039651      0.0308  -4.613636     3.840e-06
    ## 36            4       661002      0.0171   4.561400     4.978e-06
    ## 37           19     45355267      0.1234   5.750405     9.010e-09
    ## 38            6     69273670      0.0501   4.572854     4.830e-06
    ## 39           11     60033371      0.0125   6.000000     2.245e-09
    ## 40           12      6546166      0.1111   4.576960     4.719e-06
    ## 41           13    102331030      0.0257  -4.610890     3.908e-06
    ## 42           18     35409158      0.0178  -4.792135     1.593e-06
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
    ## 40               40255 Huang2017aaos             TRUE             reported
    ## 41               40255 Huang2017aaos             TRUE             reported
    ## 42               40255 Huang2017aaos             TRUE             reported
    ##    id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1       LJXKId      2    TRUE           TRUE 5e-06    1.126856e-04
    ## 2       LJXKId      2    TRUE           TRUE 5e-06    3.585799e-07
    ## 3       LJXKId      2    TRUE           TRUE 5e-06    4.855525e-05
    ## 4       LJXKId      2    TRUE           TRUE 5e-06    1.515197e-05
    ## 5       LJXKId      2    TRUE           TRUE 5e-06    3.162513e-06
    ## 6       LJXKId      2    TRUE           TRUE 5e-06    2.927536e-04
    ## 7       LJXKId      2    TRUE           TRUE 5e-06    3.916963e-06
    ## 8       LJXKId      2    TRUE           TRUE 5e-06    2.775508e-04
    ## 9       LJXKId      2    TRUE           TRUE 5e-06    1.785952e-07
    ## 10      LJXKId      2    TRUE           TRUE 5e-06    1.449838e-05
    ## 11      LJXKId      2    TRUE           TRUE 5e-06    1.502015e-05
    ## 12      LJXKId      2    TRUE           TRUE 5e-06    2.947649e-05
    ## 13      LJXKId      2    TRUE          FALSE 5e-06              NA
    ## 14      LJXKId      2    TRUE           TRUE 5e-06    2.493056e-08
    ## 15      LJXKId      2    TRUE           TRUE 5e-06    1.275568e-05
    ## 16      LJXKId      2    TRUE           TRUE 5e-06    1.024225e-04
    ## 17      LJXKId      2    TRUE           TRUE 5e-06    1.698398e-04
    ## 18      LJXKId      2    TRUE           TRUE 5e-06    6.427519e-04
    ## 19      LJXKId      2    TRUE           TRUE 5e-06    1.177181e-05
    ## 20      LJXKId      2    TRUE           TRUE 5e-06    1.590740e-05
    ## 21      LJXKId      2    TRUE           TRUE 5e-06    1.540418e-04
    ## 22      LJXKId      2    TRUE           TRUE 5e-06    7.346896e-06
    ## 23      LJXKId      2    TRUE          FALSE 5e-06              NA
    ## 24      LJXKId      2    TRUE          FALSE 5e-06              NA
    ## 25      LJXKId      2    TRUE           TRUE 5e-06    3.357846e-06
    ## 26      LJXKId      2   FALSE           TRUE 5e-06              NA
    ## 27      LJXKId      2    TRUE           TRUE 5e-06    2.006137e-06
    ## 28      LJXKId      2    TRUE           TRUE 5e-06    2.839639e-05
    ## 29      LJXKId      2    TRUE           TRUE 5e-06    4.959794e-06
    ## 30      LJXKId      2    TRUE           TRUE 5e-06    9.052117e-08
    ## 31      LJXKId      2    TRUE           TRUE 5e-06    7.487313e-10
    ## 32      LJXKId      2    TRUE          FALSE 5e-06              NA
    ## 33      LJXKId      2    TRUE           TRUE 5e-06    1.363347e-07
    ## 34      LJXKId      2    TRUE           TRUE 5e-06    8.852274e-08
    ## 35      LJXKId      2    TRUE           TRUE 5e-06    2.656064e-05
    ## 36      LJXKId      2    TRUE           TRUE 5e-06    9.445461e-07
    ## 37      LJXKId      2    TRUE          FALSE 5e-06              NA
    ## 38      LJXKId      2    TRUE           TRUE 5e-06    3.599204e-09
    ## 39      LJXKId      2    TRUE           TRUE 5e-06    7.499586e-06
    ## 40      LJXKId      2    TRUE           TRUE 5e-06    2.775481e-05
    ## 41      LJXKId      2    TRUE           TRUE 5e-06    2.831369e-06
    ## 42      LJXKId      2    TRUE           TRUE 5e-06    1.861269e-05
    ##    mrpresso_pval mrpresso_keep
    ## 1        <0.0072         FALSE
    ## 2              1          TRUE
    ## 3         0.2088          TRUE
    ## 4              1          TRUE
    ## 5              1          TRUE
    ## 6              1          TRUE
    ## 7              1          TRUE
    ## 8              1          TRUE
    ## 9              1          TRUE
    ## 10             1          TRUE
    ## 11             1          TRUE
    ## 12             1          TRUE
    ## 13          <NA>            NA
    ## 14             1          TRUE
    ## 15             1          TRUE
    ## 16             1          TRUE
    ## 17             1          TRUE
    ## 18             1          TRUE
    ## 19             1          TRUE
    ## 20             1          TRUE
    ## 21        0.0648          TRUE
    ## 22             1          TRUE
    ## 23          <NA>            NA
    ## 24          <NA>            NA
    ## 25             1          TRUE
    ## 26          <NA>            NA
    ## 27             1          TRUE
    ## 28             1          TRUE
    ## 29             1          TRUE
    ## 30             1          TRUE
    ## 31             1          TRUE
    ## 32          <NA>            NA
    ## 33             1          TRUE
    ## 34             1          TRUE
    ## 35             1          TRUE
    ## 36             1          TRUE
    ## 37          <NA>            NA
    ## 38             1          TRUE
    ## 39             1          TRUE
    ## 40             1          TRUE
    ## 41             1          TRUE
    ## 42             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17        0.950
    ## 2    rs204469          19    45490285     3.269e-06        0.620
    ## 3   rs2075650          19    45395619    5.980e-134        0.032
    ## 4  rs62117204          19    45242967     1.864e-11        0.170
    ## 5  rs76205446          19    45355267     9.010e-09        0.063

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
    ## 1            FALSE   0.02165173 24.72390  0.05 0.03003252 0.0534474
    ## 2             TRUE   0.02108661 24.75288  0.05 0.77633941 0.1425726

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
on Sleep Duration. <br>

**Table 6** MR causaul estimates for AAOS on Sleep Duration

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 2      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 3      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 4      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   36 -0.0013819280 0.003497328
    ## 2                           Weighted median   36  0.0006129995 0.004975460
    ## 3                             Weighted mode   36  0.0014140735 0.006278538
    ## 4                                  MR Egger   36 -0.0017079232 0.006875989
    ##        pval
    ## 1 0.6927408
    ## 2 0.9019451
    ## 3 0.8231154
    ## 4 0.8053273

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Sleep Duration and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 2      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 62.06907   34 0.002297243
    ## 2 Inverse variance weighted 62.07685   35 0.003212048

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Dashti2019slepdur/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome           outcome      exposure egger_intercept
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos    7.576414e-05
    ##            se     pval
    ## 1 0.001160887 0.948346

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome      exposure    pt
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos 5e-06
    ##   outliers_removed n_outliers  RSSobs   pval
    ## 1            FALSE          1 64.1646 0.0054

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 2      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 3      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 4      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   35 -0.0027252976 0.003511555
    ## 2                           Weighted median   35  0.0006109979 0.004942590
    ## 3                             Weighted mode   35  0.0007595418 0.006161276
    ## 4                                  MR Egger   35  0.0010694335 0.005850712
    ##        pval
    ## 1 0.4376933
    ## 2 0.9016170
    ## 3 0.9026139
    ## 4 0.8560836

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome      exposure
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ## 2      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 42.94816   33 0.1151234
    ## 2 Inverse variance weighted 43.97888   34 0.1174643

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome      exposure egger_intercept
    ## 1      LJXKId     OGAVQG Dashti2019slepdur Huang2017aaos   -0.0009013055
    ##            se      pval
    ## 1 0.001012787 0.3799474

<br>
