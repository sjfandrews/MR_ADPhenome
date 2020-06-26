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

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Hearing Difficulty

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1     rs679515     1 207750568   T   C 0.822475 -0.002313600 0.00172481
    ## 2    rs6733839     2 127892810   C   T 0.392564  0.002783530 0.00137094
    ## 3   rs34665982     6  32560306   T   C 0.560524  0.001473400 0.00132923
    ## 4  rs114812713     6  41034000   G   C 0.026655  0.004620500 0.00416719
    ## 5    rs1385742     6  47595155   A   T 0.647132 -0.001163960 0.00139644
    ## 6   rs11767557     7 143109139   T   C 0.214293 -0.000904002 0.00160615
    ## 7   rs73223431     8  27219987   C   T 0.366373 -0.000432550 0.00137058
    ## 8     rs867230     8  27468503   C   A 0.586828  0.002898550 0.00135090
    ## 9   rs12416487    10  11721057   A   T 0.657233 -0.002473270 0.00139040
    ## 10   rs3740688    11  47380340   G   T 0.544018  0.002175910 0.00132806
    ## 11   rs1582763    11  60021948   G   A 0.380316 -0.003224680 0.00135984
    ## 12   rs3851179    11  85868640   T   C 0.628284 -0.000187229 0.00136368
    ## 13  rs11218343    11 121435587   T   C 0.037339  0.001421820 0.00348571
    ## 14  rs12590654    14  92938855   G   A 0.339705  0.002277520 0.00140235
    ## 15  rs12151021    19   1050874   A   G 0.674505  0.001812200 0.00141490
    ## 16 rs111358663    19  45196958   T   A 0.015890  0.007170420 0.00536153
    ## 17   rs4803765    19  45358448   C   T 0.009395  0.005230240 0.00760186
    ## 18  rs12972156    19  45387459   C   G 0.148626  0.001232550 0.00187061
    ## 19 rs117310449    19  45393516   C   T 0.011970 -0.004624800 0.00610451
    ## 20  rs73033507    19  45431403   C   T 0.038781  0.003775510 0.00347531
    ## 21 rs114533385    19  45436753   C   T 0.011043  0.000671419 0.00650306
    ## 22 rs139995984    19  45574482   G   C 0.013652 -0.003783860 0.00635591
    ##            Z     P      N              TRAIT
    ## 1  -1.341370 0.180 250389 Hearing_Difficulty
    ## 2   2.030380 0.042 250389 Hearing_Difficulty
    ## 3   1.108460 0.270 250389 Hearing_Difficulty
    ## 4   1.108780 0.270 250389 Hearing_Difficulty
    ## 5  -0.833520 0.400 250389 Hearing_Difficulty
    ## 6  -0.562838 0.570 250389 Hearing_Difficulty
    ## 7  -0.315596 0.750 250389 Hearing_Difficulty
    ## 8   2.145640 0.032 250389 Hearing_Difficulty
    ## 9  -1.778820 0.075 250389 Hearing_Difficulty
    ## 10  1.638410 0.100 250389 Hearing_Difficulty
    ## 11 -2.371370 0.018 250389 Hearing_Difficulty
    ## 12 -0.137297 0.890 250389 Hearing_Difficulty
    ## 13  0.407900 0.680 250389 Hearing_Difficulty
    ## 14  1.624070 0.100 250389 Hearing_Difficulty
    ## 15  1.280800 0.200 250389 Hearing_Difficulty
    ## 16  1.337380 0.180 250389 Hearing_Difficulty
    ## 17  0.688021 0.490 250389 Hearing_Difficulty
    ## 18  0.658903 0.510 250389 Hearing_Difficulty
    ## 19 -0.757604 0.450 250389 Hearing_Difficulty
    ## 20  1.086380 0.280 250389 Hearing_Difficulty
    ## 21  0.103247 0.920 250389 Hearing_Difficulty
    ## 22 -0.595329 0.550 250389 Hearing_Difficulty

<br>

**Table 3:** Proxy SNPs for Hearing Difficulty

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA         NA        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized LOAD and Hearing Difficulty datasets

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
    ## 14  rs34665982                      C                     T
    ## 15   rs3740688                      T                     G
    ## 16   rs3851179                      C                     T
    ## 17   rs4803765                      T                     C
    ## 18   rs6733839                      T                     C
    ## 19    rs679515                      C                     T
    ## 20  rs73033507                      T                     C
    ## 21  rs73223431                      T                     C
    ## 22    rs867230                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    T       -0.5369  0.007170420
    ## 2                      C                    T       -0.2053  0.001421820
    ## 3                      T                    C        0.8281  0.000671419
    ## 4                      C                    G        0.2980  0.004620500
    ## 5                      T                    C        0.9879 -0.004624800
    ## 6                      C                    T       -0.1028 -0.000904002
    ## 7                      G                    A       -0.1071  0.001812200
    ## 8                      T                    A        0.0850 -0.002473270
    ## 9                      A                    G       -0.0906  0.002277520
    ## 10                     G                    C        0.9653  0.001232550
    ## 11                     T                    A       -0.0876 -0.001163960
    ## 12                     C                    G       -0.5343 -0.003783860
    ## 13                     A                    G       -0.1232 -0.003224680
    ## 14                     C                    T       -0.0967  0.001473400
    ## 15                     T                    G        0.0935  0.002175910
    ## 16                     C                    T        0.1198 -0.000187229
    ## 17                     T                    C        0.7165  0.005230240
    ## 18                     T                    C        0.1693  0.002783530
    ## 19                     C                    T       -0.1508 -0.002313600
    ## 20                     T                    C       -0.3620  0.003775510
    ## 21                     T                    C        0.0936 -0.000432550
    ## 22                     A                    C        0.1333  0.002898550
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0111    0.015890  FALSE        TRUE     FALSE     4WOh1W
    ## 2        0.0401    0.037339  FALSE       FALSE     FALSE     4WOh1W
    ## 3        0.0210    0.011043  FALSE       FALSE     FALSE     4WOh1W
    ## 4        0.0301    0.026655  FALSE        TRUE     FALSE     4WOh1W
    ## 5        0.0130    0.011970  FALSE       FALSE     FALSE     4WOh1W
    ## 6        0.1968    0.214293  FALSE       FALSE     FALSE     4WOh1W
    ## 7        0.6753    0.674505  FALSE       FALSE     FALSE     4WOh1W
    ## 8        0.6519    0.657233  FALSE        TRUE     FALSE     4WOh1W
    ## 9        0.3353    0.339705  FALSE       FALSE     FALSE     4WOh1W
    ## 10       0.2027    0.148626  FALSE        TRUE     FALSE     4WOh1W
    ## 11       0.6344    0.647132  FALSE        TRUE     FALSE     4WOh1W
    ## 12       0.0155    0.013652  FALSE        TRUE     FALSE     4WOh1W
    ## 13       0.3729    0.380316  FALSE       FALSE     FALSE     4WOh1W
    ## 14       0.5213    0.560524  FALSE       FALSE     FALSE     4WOh1W
    ## 15       0.5524    0.544018  FALSE       FALSE     FALSE     4WOh1W
    ## 16       0.6410    0.628284  FALSE       FALSE     FALSE     4WOh1W
    ## 17       0.0243    0.009395  FALSE       FALSE     FALSE     4WOh1W
    ## 18       0.4067    0.392564  FALSE       FALSE     FALSE     4WOh1W
    ## 19       0.8126    0.822475  FALSE       FALSE     FALSE     4WOh1W
    ## 20       0.0239    0.038781  FALSE       FALSE     FALSE     4WOh1W
    ## 21       0.3669    0.366373  FALSE       FALSE     FALSE     4WOh1W
    ## 22       0.6029    0.586828  FALSE       FALSE     FALSE     4WOh1W
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           19    45196958 0.00536153  1.337380        0.180
    ## 2           11   121435587 0.00348571  0.407900        0.680
    ## 3           19    45436753 0.00650306  0.103247        0.920
    ## 4            6    41034000 0.00416719  1.108780        0.270
    ## 5           19    45393516 0.00610451 -0.757604        0.450
    ## 6            7   143109139 0.00160615 -0.562838        0.570
    ## 7           19     1050874 0.00141490  1.280800        0.200
    ## 8           10    11721057 0.00139040 -1.778820        0.075
    ## 9           14    92938855 0.00140235  1.624070        0.100
    ## 10          19    45387459 0.00187061  0.658903        0.510
    ## 11           6    47595155 0.00139644 -0.833520        0.400
    ## 12          19    45574482 0.00635591 -0.595329        0.550
    ## 13          11    60021948 0.00135984 -2.371370        0.018
    ## 14           6    32560306 0.00132923  1.108460        0.270
    ## 15          11    47380340 0.00132806  1.638410        0.100
    ## 16          11    85868640 0.00136368 -0.137297        0.890
    ## 17          19    45358448 0.00760186  0.688021        0.490
    ## 18           2   127892810 0.00137094  2.030380        0.042
    ## 19           1   207750568 0.00172481 -1.341370        0.180
    ## 20          19    45431403 0.00347531  1.086380        0.280
    ## 21           8    27219987 0.00137058 -0.315596        0.750
    ## 22           8    27468503 0.00135090  2.145640        0.032
    ##    samplesize.outcome        outcome mr_keep.outcome pval_origin.outcome
    ## 1              250389 Wells2019hdiff            TRUE            reported
    ## 2              250389 Wells2019hdiff            TRUE            reported
    ## 3              250389 Wells2019hdiff            TRUE            reported
    ## 4              250389 Wells2019hdiff            TRUE            reported
    ## 5              250389 Wells2019hdiff            TRUE            reported
    ## 6              250389 Wells2019hdiff            TRUE            reported
    ## 7              250389 Wells2019hdiff            TRUE            reported
    ## 8              250389 Wells2019hdiff            TRUE            reported
    ## 9              250389 Wells2019hdiff            TRUE            reported
    ## 10             250389 Wells2019hdiff            TRUE            reported
    ## 11             250389 Wells2019hdiff            TRUE            reported
    ## 12             250389 Wells2019hdiff            TRUE            reported
    ## 13             250389 Wells2019hdiff            TRUE            reported
    ## 14             250389 Wells2019hdiff            TRUE            reported
    ## 15             250389 Wells2019hdiff            TRUE            reported
    ## 16             250389 Wells2019hdiff            TRUE            reported
    ## 17             250389 Wells2019hdiff            TRUE            reported
    ## 18             250389 Wells2019hdiff            TRUE            reported
    ## 19             250389 Wells2019hdiff            TRUE            reported
    ## 20             250389 Wells2019hdiff            TRUE            reported
    ## 21             250389 Wells2019hdiff            TRUE            reported
    ## 22             250389 Wells2019hdiff            TRUE            reported
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
    ## 14            6     32560306      0.0166  -5.825300     5.798e-09
    ## 15           11     47380340      0.0144   6.493056     9.702e-11
    ## 16           11     85868640      0.0148   8.094590     5.809e-16
    ## 17           19     45358448      0.0610  11.745902     7.131e-32
    ## 18            2    127892810      0.0154  10.993506     4.022e-28
    ## 19            1    207750568      0.0183  -8.240440     1.555e-16
    ## 20           19     45431403      0.0657  -5.509893     3.646e-08
    ## 21            8     27219987      0.0153   6.117647     8.342e-10
    ## 22            8     27468503      0.0158   8.436709     3.492e-17
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
    ## 21               63926 Kunkle2019load             TRUE
    ## 22               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      744iWz      2    TRUE          FALSE 5e-08
    ## 2              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 3              reported      744iWz      2    TRUE          FALSE 5e-08
    ## 4              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 5              reported      744iWz      2    TRUE          FALSE 5e-08
    ## 6              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 7              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 8              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 9              reported      744iWz      2    TRUE           TRUE 5e-08
    ## 10             reported      744iWz      2    TRUE          FALSE 5e-08
    ## 11             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 12             reported      744iWz      2    TRUE          FALSE 5e-08
    ## 13             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 14             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 15             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 16             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 17             reported      744iWz      2    TRUE          FALSE 5e-08
    ## 18             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 19             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 20             reported      744iWz      2    TRUE          FALSE 5e-08
    ## 21             reported      744iWz      2    TRUE           TRUE 5e-08
    ## 22             reported      744iWz      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA            NA
    ## 2     8.446995e-06         1.000          TRUE
    ## 3               NA            NA            NA
    ## 4     7.689907e-06         1.000          TRUE
    ## 5               NA            NA            NA
    ## 6     5.031461e-08         1.000          TRUE
    ## 7     7.264688e-06         0.765          TRUE
    ## 8     1.004747e-05         0.345          TRUE
    ## 9     9.118383e-06         0.555          TRUE
    ## 10              NA            NA            NA
    ## 11    3.620118e-07         1.000          TRUE
    ## 12              NA            NA            NA
    ## 13    6.909318e-06         0.855          TRUE
    ## 14    5.057897e-06         1.000          TRUE
    ## 15    2.674111e-06         1.000          TRUE
    ## 16    1.165646e-06         1.000          TRUE
    ## 17              NA            NA            NA
    ## 18    3.874082e-06         1.000          TRUE
    ## 19    2.010131e-06         1.000          TRUE
    ## 20              NA            NA            NA
    ## 21    1.245160e-06         1.000          TRUE
    ## 22    5.003561e-06         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11         0.18
    ## 2 rs114533385          19    45436753     5.434e-36         0.92
    ## 3 rs117310449          19    45393516     2.275e-46         0.45
    ## 4  rs12972156          19    45387459    1.000e-200         0.51
    ## 5 rs139995984          19    45574482     1.192e-09         0.55
    ## 6   rs4803765          19    45358448     7.131e-32         0.49
    ## 7  rs73033507          19    45431403     3.646e-08         0.28

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
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.01173309 50.58429  0.05 4.502559 0.5643534

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
on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for LOAD on Hearing Difficulty

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ## 2      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ## 3      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ## 4      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   15 0.006707168 0.003266421
    ## 2                           Weighted median   15 0.015257402 0.004711253
    ## 3                             Weighted mode   15 0.017152720 0.006486110
    ## 4                                  MR Egger   15 0.035585535 0.014989802
    ##          pval
    ## 1 0.040036811
    ## 2 0.001201593
    ## 3 0.019233380
    ## 4 0.033684461

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Hearing Difficulty and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ## 2      744iWz     4WOh1W Wells2019hdiff Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 19.73992   13 0.10188771
    ## 2 Inverse variance weighted 25.81366   14 0.02733468

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome       exposure egger_intercept
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load    -0.003539034
    ##            se       pval
    ## 1 0.001769529 0.06684206

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome       exposure    pt
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 29.68962 0.032

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome       exposure   method nsnp  b se
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome       exposure   method  Q Q_df
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome       exposure   method
    ## 1      744iWz     4WOh1W Wells2019hdiff Kunkle2019load mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
