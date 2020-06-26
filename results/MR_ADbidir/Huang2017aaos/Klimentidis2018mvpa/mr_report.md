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

### Outcome: Moderate-Vigours Physical Activity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with AAOS avaliable in Moderate-Vigours
Physical Activity

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1    rs2649062     1   5799177    A    G 0.312864 -5.63136e-03 0.00238261
    ## 2    rs4662080    NA        NA <NA> <NA>       NA           NA         NA
    ## 3   rs10919252     1 169802956    C    G 0.326389 -1.16885e-03 0.00235263
    ## 4    rs6701713     1 207786289    A    G 0.818109 -2.85609e-03 0.00285338
    ## 5  rs144505123     1 221802052    C    T 0.006434  6.95662e-03 0.01479730
    ## 6    rs6718282     2  18039651    G    A 0.051754  9.32391e-04 0.00505895
    ## 7  rs114131510     2  78420700    A    G 0.008185  2.71980e-02 0.01295120
    ## 8   rs12615104     2 109820829    T    C 0.259955  9.33673e-04 0.00251632
    ## 9  rs111906619     2 127789085    C    T 0.078820  2.01876e-03 0.00409250
    ## 10   rs6431219     2 127862133    C    T 0.414472  3.75295e-03 0.00223939
    ## 11    rs359982     2 219826934    A    G 0.071143  6.03924e-03 0.00428042
    ## 12 rs116341973     3  63462893    A    G 0.022843  1.21286e-02 0.00739812
    ## 13 rs145799027     3 114438213    T    C 0.007847  5.63390e-03 0.01373030
    ## 14  rs71602496     4    661002    A    G 0.153082  5.69886e-03 0.00306362
    ## 15 rs115803892     4 134185712    G    A 0.010239 -1.00440e-02 0.01101350
    ## 16   rs1689013     4 181048651    T    C 0.239324  2.77134e-03 0.00258438
    ## 17 rs144202318     5 165711579    G    A 0.012872 -1.32162e-02 0.00991495
    ## 18  rs77345379     6  69273670    C    T 0.018802 -6.21436e-03 0.00834054
    ## 19  rs12153819     6  83773049    C    T 0.124306 -2.82177e-03 0.00334163
    ## 20  rs17170228     7  33076314    G    A 0.068574  2.82486e-03 0.00436386
    ## 21 rs149907089     7 151626353    G    C 0.012344 -1.04291e-02 0.01133900
    ## 22   rs2725066     8   4438058    T    A 0.521877  1.73649e-03 0.00221401
    ## 23 rs117201713     8 121340499    G    C 0.039613  1.16509e-03 0.00565834
    ## 24  rs36033332     9  26834807    C    G 0.051735  4.23178e-03 0.00502573
    ## 25   rs7930318    11  60033371    C    T 0.596097  2.64869e-04 0.00224741
    ## 26    rs567075    11  85830157    T    C 0.678228  1.94643e-03 0.00236037
    ## 27  rs11218343    11 121435587    T    C 0.037506 -4.70450e-03 0.00580715
    ## 28   rs7958488    12   6546166    A    T 0.023766  1.78508e-04 0.00740328
    ## 29   rs1118069    12  84739181    A    T 0.716975  1.42614e-04 0.00244658
    ## 30 rs140016885    12  99679113    A    G 0.014288 -1.08539e-03 0.00983684
    ## 31   rs9582517    13 102331030    T    C 0.489467 -5.76231e-03 0.00220877
    ## 32 rs146189059    14  47173254    C    G 0.008012  1.52099e-02 0.01299360
    ## 33  rs17125944    14  53400629    T    C 0.091442  3.51915e-03 0.00383029
    ## 34 rs150193285    15  75224360    C    T 0.010873 -4.25594e-03 0.01070510
    ## 35   rs9947273    NA        NA <NA> <NA>       NA           NA         NA
    ## 36  rs62117204    19  45242967    C    T 0.071846 -4.73442e-05 0.00427019
    ## 37  rs76205446    19  45355267    T    A 0.010832  2.86922e-02 0.01084620
    ## 38   rs2075650    19  45395619    A    G 0.145403  1.63874e-02 0.00312687
    ## 39 rs141441332    19  45438575    C    A 0.011317  3.79182e-02 0.01079480
    ## 40    rs204469    19  45490285    A    G 0.956399  4.50255e-03 0.00544760
    ## 41   rs2827191    21  23361798    C    T 0.289773 -9.13755e-04 0.00242974
    ## 42   rs1043441    22  39130964    C    T 0.293982  2.96883e-03 0.00242078
    ##             Z       P      N TRAIT
    ## 1  -2.3635300 1.8e-02 377234  MVPA
    ## 2          NA      NA     NA  <NA>
    ## 3  -0.4968270 6.2e-01 377234  MVPA
    ## 4  -1.0009500 3.2e-01 377234  MVPA
    ## 5   0.4701280 6.4e-01 377234  MVPA
    ## 6   0.1843050 8.5e-01 377234  MVPA
    ## 7   2.1000400 3.6e-02 377234  MVPA
    ## 8   0.3710470 7.1e-01 377234  MVPA
    ## 9   0.4932830 6.2e-01 377234  MVPA
    ## 10  1.6758800 9.4e-02 377234  MVPA
    ## 11  1.4109000 1.6e-01 377234  MVPA
    ## 12  1.6394200 1.0e-01 377234  MVPA
    ## 13  0.4103260 6.8e-01 377234  MVPA
    ## 14  1.8601700 6.3e-02 377234  MVPA
    ## 15 -0.9119720 3.6e-01 377234  MVPA
    ## 16  1.0723400 2.8e-01 377234  MVPA
    ## 17 -1.3329600 1.8e-01 377234  MVPA
    ## 18 -0.7450790 4.6e-01 377234  MVPA
    ## 19 -0.8444290 4.0e-01 377234  MVPA
    ## 20  0.6473310 5.2e-01 377234  MVPA
    ## 21 -0.9197550 3.6e-01 377234  MVPA
    ## 22  0.7843190 4.3e-01 377234  MVPA
    ## 23  0.2059070 8.4e-01 377234  MVPA
    ## 24  0.8420230 4.0e-01 377234  MVPA
    ## 25  0.1178550 9.1e-01 377234  MVPA
    ## 26  0.8246290 4.1e-01 377234  MVPA
    ## 27 -0.8101220 4.2e-01 377234  MVPA
    ## 28  0.0241120 9.8e-01 377234  MVPA
    ## 29  0.0582912 9.5e-01 377234  MVPA
    ## 30 -0.1103390 9.1e-01 377234  MVPA
    ## 31 -2.6088300 9.1e-03 377234  MVPA
    ## 32  1.1705700 2.4e-01 377234  MVPA
    ## 33  0.9187690 3.6e-01 377234  MVPA
    ## 34 -0.3975620 6.9e-01 377234  MVPA
    ## 35         NA      NA     NA  <NA>
    ## 36 -0.0110871 9.9e-01 377234  MVPA
    ## 37  2.6453700 8.2e-03 377234  MVPA
    ## 38  5.2408300 1.6e-07 377234  MVPA
    ## 39  3.5126400 4.4e-04 377234  MVPA
    ## 40  0.8265200 4.1e-01 377234  MVPA
    ## 41 -0.3760710 7.1e-01 377234  MVPA
    ## 42  1.2263900 2.2e-01 377234  MVPA

<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity

    ##   target_snp  proxy_snp ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs4662080  rs4662076     1      1 CT/TG  NA     1 14357851         T
    ## 2  rs9947273 rs28702850     1      1 AT/GC  NA    18 35373923         C
    ##   ALT.proxy       AF        BETA         SE         Z     P      N TRAIT
    ## 1         G 0.749664  0.00223142 0.00255843  0.872183 0.380 377234  MVPA
    ## 2         T 0.151139 -0.00533028 0.00309464 -1.722420 0.085 377234  MVPA
    ##   ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1   C      TRUE   T         G   T   C          TRUE
    ## 2   A      TRUE   G         C   A   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized AAOS and Moderate-Vigours Physical Activity
datasets

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
    ## 1                      T                    C       -0.0639  2.96883e-03
    ## 2                      G                    C        0.0975 -1.16885e-03
    ## 3                      T                    A        0.1012  1.42614e-04
    ## 4                      T                    C        0.1268  2.01876e-03
    ## 5                      C                    T       -0.1653 -4.70450e-03
    ## 6                      G                    A        0.6419  2.71980e-02
    ## 7                      A                    G        0.9151 -1.00440e-02
    ## 8                      G                    A        0.2057  1.21286e-02
    ## 9                      C                    G        0.2125  1.16509e-03
    ## 10                     T                    C       -0.1092 -2.82177e-03
    ## 11                     C                    T       -0.1057  9.33673e-04
    ## 12                     G                    A        0.6851 -1.08539e-03
    ## 13                     A                    C        0.5383  3.79182e-02
    ## 14                     A                    G        0.7219 -1.32162e-02
    ## 15                     T                    C        0.7709  6.95662e-03
    ## 16                     C                    T        0.7485  5.63390e-03
    ## 17                     G                    C        0.9444  1.52099e-02
    ## 18                     C                    G        0.7109 -1.04291e-02
    ## 19                     T                    C        0.7622 -4.25594e-03
    ## 20                     C                    T        0.0637  2.77134e-03
    ## 21                     C                    T        0.0960  3.51915e-03
    ## 22                     A                    G        0.1215  2.82486e-03
    ## 23                     G                    A        0.1588  4.50255e-03
    ## 24                     G                    A        0.5502  1.63874e-02
    ## 25                     G                    A        0.0652 -5.63136e-03
    ## 26                     A                    T       -0.0936  1.73649e-03
    ## 27                     T                    C        0.1277 -9.13755e-04
    ## 28                     G                    A        0.2660  6.03924e-03
    ## 29                     G                    C        0.4601  4.23178e-03
    ## 30                     T                    C        0.1421  2.23142e-03
    ## 31                     C                    T        0.0900  1.94643e-03
    ## 32                     T                    C       -0.1867 -4.73442e-05
    ## 33                     T                    C        0.0774  3.75295e-03
    ## 34                     G                    A       -0.0709 -2.85609e-03
    ## 35                     A                    G       -0.1421  9.32391e-04
    ## 36                     G                    A        0.0780  5.69886e-03
    ## 37                     A                    T        0.7096  2.86922e-02
    ## 38                     T                    C        0.2291 -6.21436e-03
    ## 39                     T                    C        0.0750  2.64869e-04
    ## 40                     T                    A        0.5085  1.78508e-04
    ## 41                     C                    T       -0.1185 -5.76231e-03
    ## 42                     A                    G       -0.0853 -5.33028e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.2893    0.293982  FALSE       FALSE     FALSE     Srn5AL
    ## 2        0.3275    0.326389  FALSE        TRUE     FALSE     Srn5AL
    ## 3        0.7195    0.716975  FALSE        TRUE     FALSE     Srn5AL
    ## 4        0.0709    0.078820  FALSE       FALSE     FALSE     Srn5AL
    ## 5        0.0395    0.037506  FALSE       FALSE     FALSE     Srn5AL
    ## 6        0.0162    0.008185  FALSE       FALSE     FALSE     Srn5AL
    ## 7        0.0129    0.010239  FALSE       FALSE     FALSE     Srn5AL
    ## 8        0.0227    0.022843  FALSE       FALSE     FALSE     Srn5AL
    ## 9        0.0408    0.039613  FALSE        TRUE     FALSE     Srn5AL
    ## 10       0.1018    0.124306  FALSE       FALSE     FALSE     Srn5AL
    ## 11       0.2566    0.259955  FALSE       FALSE     FALSE     Srn5AL
    ## 12       0.0144    0.014288  FALSE       FALSE     FALSE     Srn5AL
    ## 13       0.0110    0.011317  FALSE       FALSE     FALSE     Srn5AL
    ## 14       0.0135    0.012872  FALSE       FALSE     FALSE     Srn5AL
    ## 15       0.0113    0.006434  FALSE       FALSE     FALSE     Srn5AL
    ## 16       0.0147    0.007847  FALSE       FALSE     FALSE     Srn5AL
    ## 17       0.0111    0.008012  FALSE        TRUE     FALSE     Srn5AL
    ## 18       0.0162    0.012344  FALSE        TRUE     FALSE     Srn5AL
    ## 19       0.0109    0.010873  FALSE       FALSE     FALSE     Srn5AL
    ## 20       0.2493    0.239324  FALSE       FALSE     FALSE     Srn5AL
    ## 21       0.0924    0.091442  FALSE       FALSE     FALSE     Srn5AL
    ## 22       0.0623    0.068574  FALSE       FALSE     FALSE     Srn5AL
    ## 23       0.9632    0.956399  FALSE       FALSE     FALSE     Srn5AL
    ## 24       0.2197    0.145403  FALSE       FALSE     FALSE     Srn5AL
    ## 25       0.3192    0.312864  FALSE       FALSE     FALSE     Srn5AL
    ## 26       0.5128    0.521877  FALSE        TRUE      TRUE     Srn5AL
    ## 27       0.2857    0.289773  FALSE       FALSE     FALSE     Srn5AL
    ## 28       0.0781    0.071143  FALSE       FALSE     FALSE     Srn5AL
    ## 29       0.0386    0.051735  FALSE        TRUE     FALSE     Srn5AL
    ## 30       0.6649    0.749664  FALSE       FALSE     FALSE     Srn5AL
    ## 31       0.6903    0.678228  FALSE       FALSE     FALSE     Srn5AL
    ## 32       0.0601    0.071846  FALSE       FALSE     FALSE     Srn5AL
    ## 33       0.4163    0.414472  FALSE       FALSE     FALSE     Srn5AL
    ## 34       0.7983    0.818109  FALSE       FALSE     FALSE     Srn5AL
    ## 35       0.0440    0.051754  FALSE       FALSE     FALSE     Srn5AL
    ## 36       0.1453    0.153082  FALSE       FALSE     FALSE     Srn5AL
    ## 37       0.0143    0.010832  FALSE        TRUE     FALSE     Srn5AL
    ## 38       0.0185    0.018802  FALSE       FALSE     FALSE     Srn5AL
    ## 39       0.5996    0.596097  FALSE       FALSE     FALSE     Srn5AL
    ## 40       0.0195    0.023766  FALSE        TRUE     FALSE     Srn5AL
    ## 41       0.5073    0.489467  FALSE       FALSE     FALSE     Srn5AL
    ## 42       0.1431    0.151139  FALSE       FALSE     FALSE     Srn5AL
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           22    39130964 0.00242078  1.2263900      2.2e-01
    ## 2            1   169802956 0.00235263 -0.4968270      6.2e-01
    ## 3           12    84739181 0.00244658  0.0582912      9.5e-01
    ## 4            2   127789085 0.00409250  0.4932830      6.2e-01
    ## 5           11   121435587 0.00580715 -0.8101220      4.2e-01
    ## 6            2    78420700 0.01295120  2.1000400      3.6e-02
    ## 7            4   134185712 0.01101350 -0.9119720      3.6e-01
    ## 8            3    63462893 0.00739812  1.6394200      1.0e-01
    ## 9            8   121340499 0.00565834  0.2059070      8.4e-01
    ## 10           6    83773049 0.00334163 -0.8444290      4.0e-01
    ## 11           2   109820829 0.00251632  0.3710470      7.1e-01
    ## 12          12    99679113 0.00983684 -0.1103390      9.1e-01
    ## 13          19    45438575 0.01079480  3.5126400      4.4e-04
    ## 14           5   165711579 0.00991495 -1.3329600      1.8e-01
    ## 15           1   221802052 0.01479730  0.4701280      6.4e-01
    ## 16           3   114438213 0.01373030  0.4103260      6.8e-01
    ## 17          14    47173254 0.01299360  1.1705700      2.4e-01
    ## 18           7   151626353 0.01133900 -0.9197550      3.6e-01
    ## 19          15    75224360 0.01070510 -0.3975620      6.9e-01
    ## 20           4   181048651 0.00258438  1.0723400      2.8e-01
    ## 21          14    53400629 0.00383029  0.9187690      3.6e-01
    ## 22           7    33076314 0.00436386  0.6473310      5.2e-01
    ## 23          19    45490285 0.00544760  0.8265200      4.1e-01
    ## 24          19    45395619 0.00312687  5.2408300      1.6e-07
    ## 25           1     5799177 0.00238261 -2.3635300      1.8e-02
    ## 26           8     4438058 0.00221401  0.7843190      4.3e-01
    ## 27          21    23361798 0.00242974 -0.3760710      7.1e-01
    ## 28           2   219826934 0.00428042  1.4109000      1.6e-01
    ## 29           9    26834807 0.00502573  0.8420230      4.0e-01
    ## 30           1    14357851 0.00255843  0.8721830      3.8e-01
    ## 31          11    85830157 0.00236037  0.8246290      4.1e-01
    ## 32          19    45242967 0.00427019 -0.0110871      9.9e-01
    ## 33           2   127862133 0.00223939  1.6758800      9.4e-02
    ## 34           1   207786289 0.00285338 -1.0009500      3.2e-01
    ## 35           2    18039651 0.00505895  0.1843050      8.5e-01
    ## 36           4      661002 0.00306362  1.8601700      6.3e-02
    ## 37          19    45355267 0.01084620  2.6453700      8.2e-03
    ## 38           6    69273670 0.00834054 -0.7450790      4.6e-01
    ## 39          11    60033371 0.00224741  0.1178550      9.1e-01
    ## 40          12     6546166 0.00740328  0.0241120      9.8e-01
    ## 41          13   102331030 0.00220877 -2.6088300      9.1e-03
    ## 42          18    35373923 0.00309464 -1.7224200      8.5e-02
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
    ## 28             377234 Klimentidis2018mvpa            TRUE
    ## 29             377234 Klimentidis2018mvpa            TRUE
    ## 30             377234 Klimentidis2018mvpa            TRUE
    ## 31             377234 Klimentidis2018mvpa            TRUE
    ## 32             377234 Klimentidis2018mvpa            TRUE
    ## 33             377234 Klimentidis2018mvpa            TRUE
    ## 34             377234 Klimentidis2018mvpa            TRUE
    ## 35             377234 Klimentidis2018mvpa            TRUE
    ## 36             377234 Klimentidis2018mvpa            TRUE
    ## 37             377234 Klimentidis2018mvpa            TRUE
    ## 38             377234 Klimentidis2018mvpa            TRUE
    ## 39             377234 Klimentidis2018mvpa            TRUE
    ## 40             377234 Klimentidis2018mvpa            TRUE
    ## 41             377234 Klimentidis2018mvpa            TRUE
    ## 42             377234 Klimentidis2018mvpa            TRUE
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
    ## 1       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 2       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 3       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 4       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 5       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 6       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 7       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 8       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 9       Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 10      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 11      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 12      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 13      Y9MM0f      2    TRUE          FALSE 5e-06              NA
    ## 14      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 15      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 16      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 17      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 18      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 19      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 20      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 21      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 22      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 23      Y9MM0f      2    TRUE          FALSE 5e-06              NA
    ## 24      Y9MM0f      2    TRUE          FALSE 5e-06              NA
    ## 25      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 26      Y9MM0f      2   FALSE           TRUE 5e-06              NA
    ## 27      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 28      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 29      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 30      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 31      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 32      Y9MM0f      2    TRUE          FALSE 5e-06              NA
    ## 33      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 34      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 35      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 36      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 37      Y9MM0f      2    TRUE          FALSE 5e-06              NA
    ## 38      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 39      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 40      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 41      Y9MM0f      2    TRUE           TRUE 5e-06              NA
    ## 42      Y9MM0f      2    TRUE           TRUE 5e-06              NA
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
    ## 23            NA          TRUE
    ## 24            NA          TRUE
    ## 25            NA          TRUE
    ## 26            NA            NA
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
    ## 40            NA          TRUE
    ## 41            NA          TRUE
    ## 42            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the
Moderate-Vigours Physical Activity GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs141441332          19    45438575     1.713e-17      4.4e-04
    ## 2    rs204469          19    45490285     3.269e-06      4.1e-01
    ## 3   rs2075650          19    45395619    5.980e-134      1.6e-07
    ## 4  rs62117204          19    45242967     1.864e-11      9.9e-01
    ## 5  rs76205446          19    45355267     9.010e-09      8.2e-03

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

    ##   outliers_removed pve.exposure       F Alpha      NCP     Power
    ## 1            FALSE   0.02165173 24.7239  0.05 6.141644 0.6978696

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
on Moderate-Vigours Physical Activity. <br>

**Table 6** MR causaul estimates for AAOS on Moderate-Vigours Physical
Activity

    ##   id.exposure id.outcome             outcome      exposure
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 2      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 3      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 4      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   36 0.0063583087 0.003406625
    ## 2                           Weighted median   36 0.0036945697 0.005103780
    ## 3                             Weighted mode   36 0.0006826219 0.006330187
    ## 4                                  MR Egger   36 0.0010635603 0.005396232
    ##         pval
    ## 1 0.06197791
    ## 2 0.46913396
    ## 3 0.91474162
    ## 4 0.84492815

<br>

Figure 1 illustrates the SNP-specific associations with AAOS versus the
association in Moderate-Vigours Physical Activity and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome             outcome      exposure
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 2      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 40.30986   34 0.2112266
    ## 2 Inverse variance weighted 42.47367   35 0.1800790

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Klimentidis2018mvpa/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Klimentidis2018mvpa/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome             outcome      exposure egger_intercept
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos     0.001231018
    ##             se      pval
    ## 1 0.0009112169 0.1856305

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome             outcome      exposure    pt
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          0 44.85551 0.1852

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome             outcome      exposure
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 2      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 3      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 4      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   36 0.0063583087 0.003406625
    ## 2                           Weighted median   36 0.0036945697 0.005041152
    ## 3                             Weighted mode   36 0.0006826219 0.006785205
    ## 4                                  MR Egger   36 0.0010635603 0.005396232
    ##         pval
    ## 1 0.06197791
    ## 2 0.46363043
    ## 3 0.92043855
    ## 4 0.84492815

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Huang2017aaos/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome             outcome      exposure
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ## 2      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 40.30986   34 0.2112266
    ## 2 Inverse variance weighted 42.47367   35 0.1800790

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome             outcome      exposure egger_intercept
    ## 1      Y9MM0f     Srn5AL Klimentidis2018mvpa Huang2017aaos     0.001231018
    ##             se      pval
    ## 1 0.0009112169 0.1856305

<br>
