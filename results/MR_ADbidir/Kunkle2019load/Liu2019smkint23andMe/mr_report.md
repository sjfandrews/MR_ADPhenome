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

### Outcome: Somking Initiation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Somking Initiation

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1     rs679515     1 207750568    T    C 0.77687400 -0.0001433480
    ## 2    rs6733839     2 127892810    C    T 0.39480400  0.0008178402
    ## 3   rs34665982    NA        NA <NA> <NA>         NA            NA
    ## 4  rs114812713     6  41034000    G    C 0.01853210 -0.0016497808
    ## 5    rs1385742     6  47595155    A    T 0.65556000  0.0020325800
    ## 6   rs11767557     7 143109139    T    C 0.20315900  0.0006612250
    ## 7   rs73223431     8  27219987    C    T 0.29417100  0.0005513891
    ## 8     rs867230     8  27468503    C    A 0.60841800 -0.0045416225
    ## 9   rs12416487    10  11721057    A    T 0.66439400  0.0000784527
    ## 10   rs3740688    11  47380340    G    T 0.52621000  0.0018139054
    ## 11   rs1582763    11  60021948    G    A 0.32763000 -0.0006639254
    ## 12   rs3851179    11  85868640    T    C 0.66715100 -0.0012218000
    ## 13  rs11218343    11 121435587    T    C 0.03449530  0.0004325260
    ## 14  rs12590654    14  92938855    G    A 0.34703500 -0.0011659994
    ## 15  rs12151021    19   1050874    A    G 0.67926600 -0.0018052600
    ## 16 rs111358663    19  45196958    T    A 0.01463510 -0.0007179349
    ## 17   rs4803765    19  45358448    C    T 0.01856760 -0.0012331651
    ## 18  rs12972156    19  45387459    C    G 0.15468800 -0.0029213700
    ## 19 rs117310449    19  45393516    C    T 0.01178820 -0.0003109332
    ## 20  rs73033507    19  45431403    C    T 0.03120440 -0.0016668588
    ## 21 rs114533385    19  45436753    C    T 0.00751466 -0.0003307506
    ## 22 rs139995984    19  45574482    G    C 0.01251360 -0.0019903449
    ##              SE      Z         P       N              TRAIT
    ## 1  0.0009015603 -0.159 8.733e-01 1232091 Smoking_Initiation
    ## 2  0.0009007050  0.908 3.641e-01 1232091 Smoking_Initiation
    ## 3            NA     NA        NA      NA               <NA>
    ## 4  0.0009000441 -1.833 6.677e-02 1232091 Smoking_Initiation
    ## 5  0.0008997698  2.259 2.390e-02 1232091 Smoking_Initiation
    ## 6  0.0009008510  0.734 4.629e-01 1232091 Smoking_Initiation
    ## 7  0.0009009627  0.612 5.404e-01 1232091 Smoking_Initiation
    ## 8  0.0008980863 -5.057 4.256e-07 1232091 Smoking_Initiation
    ## 9  0.0009017555  0.087 9.308e-01 1232091 Smoking_Initiation
    ## 10 0.0009015434  2.012 4.419e-02 1227673 Smoking_Initiation
    ## 11 0.0009008485 -0.737 4.612e-01 1232091 Smoking_Initiation
    ## 12 0.0009003679 -1.357 1.748e-01 1232091 Smoking_Initiation
    ## 13 0.0009010966  0.480 6.311e-01 1232091 Smoking_Initiation
    ## 14 0.0009010815 -1.294 1.957e-01 1230262 Smoking_Initiation
    ## 15 0.0008999314 -2.006 4.485e-02 1232091 Smoking_Initiation
    ## 16 0.0009007966 -0.797 4.255e-01 1232091 Smoking_Initiation
    ## 17 0.0012912723 -0.955 3.394e-01  599289 Smoking_Initiation
    ## 18 0.0008991588 -3.249 1.157e-03 1232091 Smoking_Initiation
    ## 19 0.0009012557 -0.345 7.297e-01 1232091 Smoking_Initiation
    ## 20 0.0009000317 -1.852 6.402e-02 1232091 Smoking_Initiation
    ## 21 0.0009012278 -0.367 7.134e-01 1232091 Smoking_Initiation
    ## 22 0.0012557381 -1.585 1.130e-01  632802 Smoking_Initiation

<br>

**Table 3:** Proxy SNPs for Somking Initiation

    ##   proxy.outcome target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs34665982        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized LOAD and Somking Initiation datasets

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
    ## 16   rs4803765                      T                     C
    ## 17   rs6733839                      T                     C
    ## 18    rs679515                      C                     T
    ## 19  rs73033507                      T                     C
    ## 20  rs73223431                      T                     C
    ## 21    rs867230                      A                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      A                    T       -0.5369 -0.0007179349
    ## 2                      C                    T       -0.2053  0.0004325260
    ## 3                      T                    C        0.8281 -0.0003307506
    ## 4                      C                    G        0.2980 -0.0016497808
    ## 5                      T                    C        0.9879 -0.0003109332
    ## 6                      C                    T       -0.1028  0.0006612250
    ## 7                      G                    A       -0.1071 -0.0018052600
    ## 8                      T                    A        0.0850  0.0000784527
    ## 9                      A                    G       -0.0906 -0.0011659994
    ## 10                     G                    C        0.9653 -0.0029213700
    ## 11                     T                    A       -0.0876  0.0020325800
    ## 12                     C                    G       -0.5343 -0.0019903449
    ## 13                     A                    G       -0.1232 -0.0006639254
    ## 14                     T                    G        0.0935  0.0018139054
    ## 15                     C                    T        0.1198 -0.0012218000
    ## 16                     T                    C        0.7165 -0.0012331651
    ## 17                     T                    C        0.1693  0.0008178402
    ## 18                     C                    T       -0.1508 -0.0001433480
    ## 19                     T                    C       -0.3620 -0.0016668588
    ## 20                     T                    C        0.0936  0.0005513891
    ## 21                     A                    C        0.1333 -0.0045416225
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0111  0.01463510  FALSE        TRUE     FALSE     fbYIpo
    ## 2        0.0401  0.03449530  FALSE       FALSE     FALSE     fbYIpo
    ## 3        0.0210  0.00751466  FALSE       FALSE     FALSE     fbYIpo
    ## 4        0.0301  0.01853210  FALSE        TRUE     FALSE     fbYIpo
    ## 5        0.0130  0.01178820  FALSE       FALSE     FALSE     fbYIpo
    ## 6        0.1968  0.20315900  FALSE       FALSE     FALSE     fbYIpo
    ## 7        0.6753  0.67926600  FALSE       FALSE     FALSE     fbYIpo
    ## 8        0.6519  0.66439400  FALSE        TRUE     FALSE     fbYIpo
    ## 9        0.3353  0.34703500  FALSE       FALSE     FALSE     fbYIpo
    ## 10       0.2027  0.15468800  FALSE        TRUE     FALSE     fbYIpo
    ## 11       0.6344  0.65556000  FALSE        TRUE     FALSE     fbYIpo
    ## 12       0.0155  0.01251360  FALSE        TRUE     FALSE     fbYIpo
    ## 13       0.3729  0.32763000  FALSE       FALSE     FALSE     fbYIpo
    ## 14       0.5524  0.52621000  FALSE       FALSE     FALSE     fbYIpo
    ## 15       0.6410  0.66715100  FALSE       FALSE     FALSE     fbYIpo
    ## 16       0.0243  0.01856760  FALSE       FALSE     FALSE     fbYIpo
    ## 17       0.4067  0.39480400  FALSE       FALSE     FALSE     fbYIpo
    ## 18       0.8126  0.77687400  FALSE       FALSE     FALSE     fbYIpo
    ## 19       0.0239  0.03120440  FALSE       FALSE     FALSE     fbYIpo
    ## 20       0.3669  0.29417100  FALSE       FALSE     FALSE     fbYIpo
    ## 21       0.6029  0.60841800  FALSE       FALSE     FALSE     fbYIpo
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1           19    45196958 0.0009007966    -0.797    4.255e-01
    ## 2           11   121435587 0.0009010966     0.480    6.311e-01
    ## 3           19    45436753 0.0009012278    -0.367    7.134e-01
    ## 4            6    41034000 0.0009000441    -1.833    6.677e-02
    ## 5           19    45393516 0.0009012557    -0.345    7.297e-01
    ## 6            7   143109139 0.0009008510     0.734    4.629e-01
    ## 7           19     1050874 0.0008999314    -2.006    4.485e-02
    ## 8           10    11721057 0.0009017555     0.087    9.308e-01
    ## 9           14    92938855 0.0009010815    -1.294    1.957e-01
    ## 10          19    45387459 0.0008991588    -3.249    1.157e-03
    ## 11           6    47595155 0.0008997698     2.259    2.390e-02
    ## 12          19    45574482 0.0012557381    -1.585    1.130e-01
    ## 13          11    60021948 0.0009008485    -0.737    4.612e-01
    ## 14          11    47380340 0.0009015434     2.012    4.419e-02
    ## 15          11    85868640 0.0009003679    -1.357    1.748e-01
    ## 16          19    45358448 0.0012912723    -0.955    3.394e-01
    ## 17           2   127892810 0.0009007050     0.908    3.641e-01
    ## 18           1   207750568 0.0009015603    -0.159    8.733e-01
    ## 19          19    45431403 0.0009000317    -1.852    6.402e-02
    ## 20           8    27219987 0.0009009627     0.612    5.404e-01
    ## 21           8    27468503 0.0008980863    -5.057    4.256e-07
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1             1232091 Liu2019smkint23andMe            TRUE
    ## 2             1232091 Liu2019smkint23andMe            TRUE
    ## 3             1232091 Liu2019smkint23andMe            TRUE
    ## 4             1232091 Liu2019smkint23andMe            TRUE
    ## 5             1232091 Liu2019smkint23andMe            TRUE
    ## 6             1232091 Liu2019smkint23andMe            TRUE
    ## 7             1232091 Liu2019smkint23andMe            TRUE
    ## 8             1232091 Liu2019smkint23andMe            TRUE
    ## 9             1230262 Liu2019smkint23andMe            TRUE
    ## 10            1232091 Liu2019smkint23andMe            TRUE
    ## 11            1232091 Liu2019smkint23andMe            TRUE
    ## 12             632802 Liu2019smkint23andMe            TRUE
    ## 13            1232091 Liu2019smkint23andMe            TRUE
    ## 14            1227673 Liu2019smkint23andMe            TRUE
    ## 15            1232091 Liu2019smkint23andMe            TRUE
    ## 16             599289 Liu2019smkint23andMe            TRUE
    ## 17            1232091 Liu2019smkint23andMe            TRUE
    ## 18            1232091 Liu2019smkint23andMe            TRUE
    ## 19            1232091 Liu2019smkint23andMe            TRUE
    ## 20            1232091 Liu2019smkint23andMe            TRUE
    ## 21            1232091 Liu2019smkint23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           19     45196958      0.0795  -6.753459
    ## 2             reported           11    121435587      0.0369  -5.563690
    ## 3             reported           19     45436753      0.0661  12.527988
    ## 4             reported            6     41034000      0.0431   6.914153
    ## 5             reported           19     45393516      0.0691  14.296671
    ## 6             reported            7    143109139      0.0182  -5.648350
    ## 7             reported           19      1050874      0.0169  -6.337280
    ## 8             reported           10     11721057      0.0154   5.519480
    ## 9             reported           14     92938855      0.0157  -5.770701
    ## 10            reported           19     45387459      0.0189  51.074100
    ## 11            reported            6     47595155      0.0157  -5.579620
    ## 12            reported           19     45574482      0.0879  -6.078498
    ## 13            reported           11     60021948      0.0149  -8.268456
    ## 14            reported           11     47380340      0.0144   6.493056
    ## 15            reported           11     85868640      0.0148   8.094590
    ## 16            reported           19     45358448      0.0610  11.745902
    ## 17            reported            2    127892810      0.0154  10.993506
    ## 18            reported            1    207750568      0.0183  -8.240440
    ## 19            reported           19     45431403      0.0657  -5.509893
    ## 20            reported            8     27219987      0.0153   6.117647
    ## 21            reported            8     27468503      0.0158   8.436709
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      1.436e-11               63926 Kunkle2019load             TRUE
    ## 2      2.633e-08               63926 Kunkle2019load             TRUE
    ## 3      5.434e-36               63926 Kunkle2019load             TRUE
    ## 4      4.467e-12               63926 Kunkle2019load             TRUE
    ## 5      2.275e-46               63926 Kunkle2019load             TRUE
    ## 6      1.561e-08               63926 Kunkle2019load             TRUE
    ## 7      2.562e-10               63926 Kunkle2019load             TRUE
    ## 8      3.417e-08               63926 Kunkle2019load             TRUE
    ## 9      8.729e-09               63926 Kunkle2019load             TRUE
    ## 10    1.000e-200               63926 Kunkle2019load             TRUE
    ## 11     2.232e-08               63926 Kunkle2019load             TRUE
    ## 12     1.192e-09               63926 Kunkle2019load             TRUE
    ## 13     1.186e-16               63926 Kunkle2019load             TRUE
    ## 14     9.702e-11               63926 Kunkle2019load             TRUE
    ## 15     5.809e-16               63926 Kunkle2019load             TRUE
    ## 16     7.131e-32               63926 Kunkle2019load             TRUE
    ## 17     4.022e-28               63926 Kunkle2019load             TRUE
    ## 18     1.555e-16               63926 Kunkle2019load             TRUE
    ## 19     3.646e-08               63926 Kunkle2019load             TRUE
    ## 20     8.342e-10               63926 Kunkle2019load             TRUE
    ## 21     3.492e-17               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 2              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 3              reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 4              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 5              reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 6              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 7              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 8              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 9              reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 10             reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 11             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 12             reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 13             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 14             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 15             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 16             reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 17             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 18             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 19             reported      gHATRI      2    TRUE          FALSE 5e-08
    ## 20             reported      gHATRI      2    TRUE           TRUE 5e-08
    ## 21             reported      gHATRI      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA          <NA>            NA
    ## 2     2.641501e-08             1          TRUE
    ## 3               NA          <NA>            NA
    ## 4     1.388504e-06             1          TRUE
    ## 5               NA          <NA>            NA
    ## 6     1.513489e-07             1          TRUE
    ## 7     4.793907e-06         0.336          TRUE
    ## 8     1.043906e-07             1          TRUE
    ## 9     2.129245e-06             1          TRUE
    ## 10              NA          <NA>            NA
    ## 11    3.374431e-06         0.602          TRUE
    ## 12              NA          <NA>            NA
    ## 13    1.128004e-06             1          TRUE
    ## 14    4.571243e-06          0.28          TRUE
    ## 15    8.725368e-07             1          TRUE
    ## 16              NA          <NA>            NA
    ## 17    2.043000e-06             1          TRUE
    ## 18    3.728777e-07             1          TRUE
    ## 19              NA          <NA>            NA
    ## 20    7.006974e-07             1          TRUE
    ## 21    1.973060e-05        <0.014         FALSE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Somking
Initiation GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs111358663          19    45196958     1.436e-11     0.425500
    ## 2 rs114533385          19    45436753     5.434e-36     0.713400
    ## 3 rs117310449          19    45393516     2.275e-46     0.729700
    ## 4  rs12972156          19    45387459    1.000e-200     0.001157
    ## 5 rs139995984          19    45574482     1.192e-09     0.113000
    ## 6   rs4803765          19    45358448     7.131e-32     0.339400
    ## 7  rs73033507          19    45431403     3.646e-08     0.064020

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

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.01119347 51.67743  0.05 0.17662033 0.07046754
    ## 2             TRUE   0.01010517 50.18726  0.05 0.01348171 0.05154579

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
on Somking Initiation. <br>

**Table 6** MR causaul estimates for LOAD on Somking Initiation

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 2      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 3      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 4      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   14 -0.002784461 0.001665545
    ## 2                           Weighted median   14 -0.002625979 0.002571702
    ## 3                             Weighted mode   14 -0.002867320 0.002372814
    ## 4                                  MR Egger   14 -0.007616575 0.008092978
    ##         pval
    ## 1 0.09456332
    ## 2 0.30720449
    ## 3 0.24841379
    ## 4 0.36519683

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Somking Initiation and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 2      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 43.83300   12 1.630485e-05
    ## 2 Inverse variance weighted 45.37354   13 1.812749e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Liu2019smkint23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Liu2019smkint23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##   egger_intercept         se      pval
    ## 1    0.0007595424 0.00116957 0.5283019

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome       exposure    pt
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 51.16467 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 2      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 3      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 4      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   13 -0.0007479974 0.001718896
    ## 2                           Weighted median   13 -0.0022649440 0.002563227
    ## 3                             Weighted mode   13 -0.0031273118 0.002588559
    ## 4                                  MR Egger   13 -0.0075722512 0.005608400
    ##        pval
    ## 1 0.6634452
    ## 2 0.3768960
    ## 3 0.2502683
    ## 4 0.2040895

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Liu2019smkint23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ## 2      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 19.29621   11 0.05597938
    ## 2 Inverse variance weighted 22.40584   12 0.03321513

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      gHATRI     fbYIpo Liu2019smkint23andMe Kunkle2019load
    ##   egger_intercept           se      pval
    ## 1     0.001085339 0.0008151735 0.2099841

<br>
