Instrumental Variables
----------------------

**SNP Inclusion:** SNPS associated with at a p-value threshold of p \<
5e-8 were included in this analysis. <br>

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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1     rs679515     1 207750568   T   C 0.8126 -0.1508 0.0183 -8.240440
    ## 2    rs6733839     2 127892810   C   T 0.4067  0.1693 0.0154 10.993506
    ## 3   rs34665982     6  32560306   T   C 0.5213 -0.0967 0.0166 -5.825300
    ## 4  rs114812713     6  41034000   G   C 0.0301  0.2980 0.0431  6.914153
    ## 5    rs1385742     6  47595155   A   T 0.6344 -0.0876 0.0157 -5.579620
    ## 6   rs11767557     7 143109139   T   C 0.1968 -0.1028 0.0182 -5.648350
    ## 7   rs73223431     8  27219987   C   T 0.3669  0.0936 0.0153  6.117647
    ## 8     rs867230     8  27468503   C   A 0.6029  0.1333 0.0158  8.436709
    ## 9   rs12416487    10  11721057   A   T 0.6519  0.0850 0.0154  5.519480
    ## 10   rs3740688    11  47380340   G   T 0.5524  0.0935 0.0144  6.493056
    ## 11   rs1582763    11  60021948   G   A 0.3729 -0.1232 0.0149 -8.268456
    ## 12   rs3851179    11  85868640   T   C 0.6410  0.1198 0.0148  8.094590
    ## 13  rs11218343    11 121435587   T   C 0.0401 -0.2053 0.0369 -5.563690
    ## 14  rs12590654    14  92938855   G   A 0.3353 -0.0906 0.0157 -5.770701
    ## 15  rs12151021    19   1050874   A   G 0.6753 -0.1071 0.0169 -6.337280
    ## 16 rs111358663    19  45196958   T   A 0.0111 -0.5369 0.0795 -6.753459
    ## 17   rs4803765    19  45358448   C   T 0.0243  0.7165 0.0610 11.745902
    ## 18  rs12972156    19  45387459   C   G 0.2027  0.9653 0.0189 51.074100
    ## 19 rs117310449    19  45393516   C   T 0.0130  0.9879 0.0691 14.296671
    ## 20  rs73033507    19  45431403   C   T 0.0239 -0.3620 0.0657 -5.509893
    ## 21 rs114533385    19  45436753   C   T 0.0210  0.8281 0.0661 12.527988
    ## 22 rs139995984    19  45574482   G   C 0.0155 -0.5343 0.0879 -6.078498
    ##                P     N TRAIT
    ## 1   1.555000e-16 63926  LOAD
    ## 2   4.022000e-28 63926  LOAD
    ## 3   5.798000e-09 63926  LOAD
    ## 4   4.467000e-12 63926  LOAD
    ## 5   2.232000e-08 63926  LOAD
    ## 6   1.561000e-08 63926  LOAD
    ## 7   8.342000e-10 63926  LOAD
    ## 8   3.492000e-17 63926  LOAD
    ## 9   3.417000e-08 63926  LOAD
    ## 10  9.702000e-11 63926  LOAD
    ## 11  1.186000e-16 63926  LOAD
    ## 12  5.809000e-16 63926  LOAD
    ## 13  2.633000e-08 63926  LOAD
    ## 14  8.729000e-09 63926  LOAD
    ## 15  2.562000e-10 63926  LOAD
    ## 16  1.436000e-11 63926  LOAD
    ## 17  7.131000e-32 63926  LOAD
    ## 18 2.225074e-308 63926  LOAD
    ## 19  2.275000e-46 63926  LOAD
    ## 20  3.646000e-08 63926  LOAD
    ## 21  5.434000e-36 63926  LOAD
    ## 22  1.192000e-09 63926  LOAD

<br>

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Social Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1     rs679515     1 207750568    T    C 0.822636 -0.00027548 0.00268141
    ## 2    rs6733839     2 127892810    C    T 0.391079  0.00096754 0.00209888
    ## 3   rs34665982    NA        NA <NA> <NA>       NA          NA         NA
    ## 4  rs114812713     6  41034000    G    C 0.026600 -0.00657729 0.00636523
    ## 5    rs1385742     6  47595155    A    T 0.646838 -0.00240520 0.00214297
    ## 6   rs11767557     7 143109139    T    C 0.213882  0.00243225 0.00249787
    ## 7   rs73223431     8  27219987    C    T 0.366301 -0.00062303 0.00212589
    ## 8     rs867230     8  27468503    C    A 0.586984 -0.00261719 0.00208019
    ## 9   rs12416487    10  11721057    A    T 0.656695 -0.00343914 0.00215714
    ## 10   rs3740688    11  47380340    G    T 0.544818  0.00804757 0.00205675
    ## 11   rs1582763    11  60021948    G    A 0.380114  0.00078686 0.00211002
    ## 12   rs3851179    11  85868640    T    C 0.628764 -0.00204719 0.00211998
    ## 13  rs11218343    11 121435587    T    C 0.037070  0.00173279 0.00542115
    ## 14  rs12590654    14  92938855    G    A 0.339776 -0.00223486 0.00216251
    ## 15  rs12151021    19   1050874    A    G 0.674199  0.00318801 0.00218540
    ## 16 rs111358663    19  45196958    T    A 0.015690  0.01316460 0.00824182
    ## 17   rs4803765    NA        NA <NA> <NA>       NA          NA         NA
    ## 18  rs12972156    19  45387459    C    G 0.148476  0.00115936 0.00288054
    ## 19 rs117310449    19  45393516    C    T 0.012059  0.00663367 0.00938381
    ## 20  rs73033507    19  45431403    C    T 0.038443 -0.01303930 0.00532726
    ## 21 rs114533385    19  45436753    C    T 0.011168  0.00460969 0.00974656
    ## 22 rs139995984    19  45574482    G    C 0.013403  0.00382230 0.00890696
    ##            Z          P      N            TRAIT
    ## 1  -0.102738 0.91817077 452302 Social_Isolation
    ## 2   0.460981 0.64481208 452302 Social_Isolation
    ## 3         NA         NA     NA             <NA>
    ## 4  -1.033320 0.30145621 452302 Social_Isolation
    ## 5  -1.122370 0.26170657 452302 Social_Isolation
    ## 6   0.973730 0.33019068 452302 Social_Isolation
    ## 7  -0.293068 0.76947052 452302 Social_Isolation
    ## 8  -1.258150 0.20833906 452302 Social_Isolation
    ## 9  -1.594300 0.11086794 452302 Social_Isolation
    ## 10  3.912750 0.00009125 452302 Social_Isolation
    ## 11  0.372915 0.70921192 452302 Social_Isolation
    ## 12 -0.965666 0.33421118 452302 Social_Isolation
    ## 13  0.319635 0.74924518 452302 Social_Isolation
    ## 14 -1.033460 0.30138992 452302 Social_Isolation
    ## 15  1.458780 0.14462556 452302 Social_Isolation
    ## 16  1.597290 0.11020160 452302 Social_Isolation
    ## 17        NA         NA     NA             <NA>
    ## 18  0.402481 0.68733025 452302 Social_Isolation
    ## 19  0.706927 0.47961166 452302 Social_Isolation
    ## 20 -2.447650 0.01437922 452302 Social_Isolation
    ## 21  0.472956 0.63624466 452302 Social_Isolation
    ## 22  0.429136 0.66782432 452302 Social_Isolation

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs34665982        NA    NA     NA        NA        NA
    ## 2            NA  rs4803765        NA    NA     NA        NA        NA
    ##   CHROM POS ALT.proxy REF.proxy AF BETA SE  P  N ref alt ALT REF PHASE
    ## 1    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA
    ## 2    NA  NA        NA        NA NA   NA NA NA NA  NA  NA  NA  NA    NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Social Isolation datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1  rs111358663                      A                     T
    ## 2   rs11218343                      C                     T
    ## 3  rs114533385                      T                     C
    ## 4  rs114812713                      C                     G
    ## 5  rs117310449                      T                     C
    ## 6   rs11767557                      C                     T
    ## 7   rs12151021                      G                     A
    ## 8   rs12416487                      T                     A
    ## 9   rs12590654                      A                     G
    ## 10  rs12972156                      G                     C
    ## 11   rs1385742                      T                     A
    ## 12 rs139995984                      C                     G
    ## 13   rs1582763                      A                     G
    ## 14   rs3740688                      T                     G
    ## 15   rs3851179                      C                     T
    ## 16   rs6733839                      T                     C
    ## 17    rs679515                      C                     T
    ## 18  rs73033507                      T                     C
    ## 19  rs73223431                      T                     C
    ## 20    rs867230                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    T       -0.5369   0.01316460
    ## 2                      C                    T       -0.2053   0.00173279
    ## 3                      T                    C        0.8281   0.00460969
    ## 4                      C                    G        0.2980  -0.00657729
    ## 5                      T                    C        0.9879   0.00663367
    ## 6                      C                    T       -0.1028   0.00243225
    ## 7                      G                    A       -0.1071   0.00318801
    ## 8                      T                    A        0.0850  -0.00343914
    ## 9                      A                    G       -0.0906  -0.00223486
    ## 10                     G                    C        0.9653   0.00115936
    ## 11                     T                    A       -0.0876  -0.00240520
    ## 12                     C                    G       -0.5343   0.00382230
    ## 13                     A                    G       -0.1232   0.00078686
    ## 14                     T                    G        0.0935   0.00804757
    ## 15                     C                    T        0.1198  -0.00204719
    ## 16                     T                    C        0.1693   0.00096754
    ## 17                     C                    T       -0.1508  -0.00027548
    ## 18                     T                    C       -0.3620  -0.01303930
    ## 19                     T                    C        0.0936  -0.00062303
    ## 20                     A                    C        0.1333  -0.00261719
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0111    0.015690  FALSE        TRUE     FALSE     eopwDm
    ## 2        0.0401    0.037070  FALSE       FALSE     FALSE     eopwDm
    ## 3        0.0210    0.011168  FALSE       FALSE     FALSE     eopwDm
    ## 4        0.0301    0.026600  FALSE        TRUE     FALSE     eopwDm
    ## 5        0.0130    0.012059  FALSE       FALSE     FALSE     eopwDm
    ## 6        0.1968    0.213882  FALSE       FALSE     FALSE     eopwDm
    ## 7        0.6753    0.674199  FALSE       FALSE     FALSE     eopwDm
    ## 8        0.6519    0.656695  FALSE        TRUE     FALSE     eopwDm
    ## 9        0.3353    0.339776  FALSE       FALSE     FALSE     eopwDm
    ## 10       0.2027    0.148476  FALSE        TRUE     FALSE     eopwDm
    ## 11       0.6344    0.646838  FALSE        TRUE     FALSE     eopwDm
    ## 12       0.0155    0.013403  FALSE        TRUE     FALSE     eopwDm
    ## 13       0.3729    0.380114  FALSE       FALSE     FALSE     eopwDm
    ## 14       0.5524    0.544818  FALSE       FALSE     FALSE     eopwDm
    ## 15       0.6410    0.628764  FALSE       FALSE     FALSE     eopwDm
    ## 16       0.4067    0.391079  FALSE       FALSE     FALSE     eopwDm
    ## 17       0.8126    0.822636  FALSE       FALSE     FALSE     eopwDm
    ## 18       0.0239    0.038443  FALSE       FALSE     FALSE     eopwDm
    ## 19       0.3669    0.366301  FALSE       FALSE     FALSE     eopwDm
    ## 20       0.6029    0.586984  FALSE       FALSE     FALSE     eopwDm
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           19    45196958 0.00824182  1.597290   0.11020160
    ## 2           11   121435587 0.00542115  0.319635   0.74924518
    ## 3           19    45436753 0.00974656  0.472956   0.63624466
    ## 4            6    41034000 0.00636523 -1.033320   0.30145621
    ## 5           19    45393516 0.00938381  0.706927   0.47961166
    ## 6            7   143109139 0.00249787  0.973730   0.33019068
    ## 7           19     1050874 0.00218540  1.458780   0.14462556
    ## 8           10    11721057 0.00215714 -1.594300   0.11086794
    ## 9           14    92938855 0.00216251 -1.033460   0.30138992
    ## 10          19    45387459 0.00288054  0.402481   0.68733025
    ## 11           6    47595155 0.00214297 -1.122370   0.26170657
    ## 12          19    45574482 0.00890696  0.429136   0.66782432
    ## 13          11    60021948 0.00211002  0.372915   0.70921192
    ## 14          11    47380340 0.00205675  3.912750   0.00009125
    ## 15          11    85868640 0.00211998 -0.965666   0.33421118
    ## 16           2   127892810 0.00209888  0.460981   0.64481208
    ## 17           1   207750568 0.00268141 -0.102738   0.91817077
    ## 18          19    45431403 0.00532726 -2.447650   0.01437922
    ## 19           8    27219987 0.00212589 -0.293068   0.76947052
    ## 20           8    27468503 0.00208019 -1.258150   0.20833906
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1              452302 Day2018sociso            TRUE            reported
    ## 2              452302 Day2018sociso            TRUE            reported
    ## 3              452302 Day2018sociso            TRUE            reported
    ## 4              452302 Day2018sociso            TRUE            reported
    ## 5              452302 Day2018sociso            TRUE            reported
    ## 6              452302 Day2018sociso            TRUE            reported
    ## 7              452302 Day2018sociso            TRUE            reported
    ## 8              452302 Day2018sociso            TRUE            reported
    ## 9              452302 Day2018sociso            TRUE            reported
    ## 10             452302 Day2018sociso            TRUE            reported
    ## 11             452302 Day2018sociso            TRUE            reported
    ## 12             452302 Day2018sociso            TRUE            reported
    ## 13             452302 Day2018sociso            TRUE            reported
    ## 14             452302 Day2018sociso            TRUE            reported
    ## 15             452302 Day2018sociso            TRUE            reported
    ## 16             452302 Day2018sociso            TRUE            reported
    ## 17             452302 Day2018sociso            TRUE            reported
    ## 18             452302 Day2018sociso            TRUE            reported
    ## 19             452302 Day2018sociso            TRUE            reported
    ## 20             452302 Day2018sociso            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            19     45196958      0.0795  -6.753459     1.436e-11
    ## 2            11    121435587      0.0369  -5.563690     2.633e-08
    ## 3            19     45436753      0.0661  12.527988     5.434e-36
    ## 4             6     41034000      0.0431   6.914153     4.467e-12
    ## 5            19     45393516      0.0691  14.296671     2.275e-46
    ## 6             7    143109139      0.0182  -5.648350     1.561e-08
    ## 7            19      1050874      0.0169  -6.337280     2.562e-10
    ## 8            10     11721057      0.0154   5.519480     3.417e-08
    ## 9            14     92938855      0.0157  -5.770701     8.729e-09
    ## 10           19     45387459      0.0189  51.074100    1.000e-200
    ## 11            6     47595155      0.0157  -5.579620     2.232e-08
    ## 12           19     45574482      0.0879  -6.078498     1.192e-09
    ## 13           11     60021948      0.0149  -8.268456     1.186e-16
    ## 14           11     47380340      0.0144   6.493056     9.702e-11
    ## 15           11     85868640      0.0148   8.094590     5.809e-16
    ## 16            2    127892810      0.0154  10.993506     4.022e-28
    ## 17            1    207750568      0.0183  -8.240440     1.555e-16
    ## 18           19     45431403      0.0657  -5.509893     3.646e-08
    ## 19            8     27219987      0.0153   6.117647     8.342e-10
    ## 20            8     27468503      0.0158   8.436709     3.492e-17
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                63926 Kunkle2019load             TRUE
    ## 2                63926 Kunkle2019load             TRUE
    ## 3                63926 Kunkle2019load             TRUE
    ## 4                63926 Kunkle2019load             TRUE
    ## 5                63926 Kunkle2019load             TRUE
    ## 6                63926 Kunkle2019load             TRUE
    ## 7                63926 Kunkle2019load             TRUE
    ## 8                63926 Kunkle2019load             TRUE
    ## 9                63926 Kunkle2019load             TRUE
    ## 10               63926 Kunkle2019load             TRUE
    ## 11               63926 Kunkle2019load             TRUE
    ## 12               63926 Kunkle2019load             TRUE
    ## 13               63926 Kunkle2019load             TRUE
    ## 14               63926 Kunkle2019load             TRUE
    ## 15               63926 Kunkle2019load             TRUE
    ## 16               63926 Kunkle2019load             TRUE
    ## 17               63926 Kunkle2019load             TRUE
    ## 18               63926 Kunkle2019load             TRUE
    ## 19               63926 Kunkle2019load             TRUE
    ## 20               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 2              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 3              reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 4              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 5              reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 6              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 7              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 8              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 9              reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 10             reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 11             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 12             reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 13             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 14             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 15             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 16             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 17             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 18             reported      5FK6FN      2    TRUE          FALSE 5e-08
    ## 19             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ## 20             reported      5FK6FN      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA          <NA>            NA
    ## 2     1.580035e-06             1          TRUE
    ## 3               NA          <NA>            NA
    ## 4     3.821029e-05             1          TRUE
    ## 5               NA          <NA>            NA
    ## 6     5.168811e-06             1          TRUE
    ## 7     9.711087e-06             1          TRUE
    ## 8     1.130856e-05             1          TRUE
    ## 9     6.701985e-06             1          TRUE
    ## 10              NA          <NA>            NA
    ## 11    7.579079e-06             1          TRUE
    ## 12              NA          <NA>            NA
    ## 13    2.703643e-07             1          TRUE
    ## 14    7.700845e-05        <0.014         FALSE
    ## 15    3.629960e-06             1          TRUE
    ## 16    2.882826e-06             1          TRUE
    ## 17    5.216863e-07             1          TRUE
    ## 18              NA          <NA>            NA
    ## 19    1.641225e-07             1          TRUE
    ## 20    6.554574e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11   0.11020160
    ## 2 rs114533385          19    45436753     5.434e-36   0.63624466
    ## 3 rs117310449          19    45393516     2.275e-46   0.47961166
    ## 4  rs12972156          19    45387459    1.000e-200   0.68733025
    ## 5 rs139995984          19    45574482     1.192e-09   0.66782432
    ## 6  rs73033507          19    45431403     3.646e-08   0.01437922

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

    ##   outliers_removed pve.exposure        F Alpha      NCP      Power
    ## 1            FALSE   0.01119347 51.67743  0.05 0.206465 0.07396923
    ## 2             TRUE   0.01054566 52.39829  0.05 2.123630 0.30790528

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

Table 6 presents the MR causal estimates of genetically predicted LOAD
on Social Isolation. <br>

**Table 6** MR causaul estimates for LOAD on Social Isolation

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 2      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 3      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 4      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   14 -0.002554349 0.005192893
    ## 2                           Weighted median   14 -0.006566191 0.007283803
    ## 3                             Weighted mode   14 -0.010096539 0.009679748
    ## 4                                  MR Egger   14 -0.024495799 0.027752829
    ##        pval
    ## 1 0.6227948
    ## 2 0.3673340
    ## 3 0.3159309
    ## 4 0.3947678

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Social Isolation and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 2      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 25.69969   12 0.01183396
    ## 2 Inverse variance weighted 27.14683   13 0.01187745

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load     0.002736776
    ##            se      pval
    ## 1 0.003329328 0.4270967

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
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 30.72313 0.012

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 2      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 3      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 4      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   13 -0.007784769 0.005343933
    ## 2                           Weighted median   13 -0.006642744 0.007242494
    ## 3                             Weighted mode   13 -0.010262704 0.011009816
    ## 4                                  MR Egger   13 -0.008199168 0.019403852
    ##        pval
    ## 1 0.1451857
    ## 2 0.3590430
    ## 3 0.3696390
    ## 4 0.6807627

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ## 2      5FK6FN     eopwDm Day2018sociso Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 9.956485   11 0.5343055
    ## 2 Inverse variance weighted 9.956979   12 0.6197350

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      5FK6FN     eopwDm Day2018sociso Kunkle2019load    5.272773e-05
    ##            se      pval
    ## 1 0.002373451 0.9826738

<br>
