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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT         AF    BETA     SE         Z
    ## 1    rs1410397     1 193627682   C   T 0.45082000 -0.0766 0.0160 -4.787500
    ## 2    rs1752684     1 207747296   A   G 0.77110600 -0.1541 0.0196 -7.862240
    ## 3    rs7584040     2 127863224   C   T 0.20790800  0.1110 0.0207  5.362319
    ## 4    rs4663105     2 127891427   A   C 0.41197700  0.1837 0.0172 10.680233
    ## 5   rs62273237     3 128310107   T   C 0.59216800 -0.0748 0.0160 -4.675000
    ## 6    rs7657553     4  11723235   A   G 0.68050000 -0.0830 0.0172 -4.825580
    ## 7     rs190982     5  88223420   G   A 0.66279500  0.0799 0.0170  4.700000
    ## 8    rs2878896     5 139710507   G   A 0.46264100 -0.0833 0.0156 -5.339740
    ## 9    rs9272561     6  32607141   G   A 0.64853000 -0.1360 0.0230 -5.913043
    ## 10   rs9381563     6  47432637   C   T 0.65647400 -0.0968 0.0166 -5.831330
    ## 11  rs59415886     7  37882632   G   A 0.67619200  0.0742 0.0162  4.580250
    ## 12   rs7384878     7  99932049   C   T 0.70971300  0.0839 0.0179  4.687150
    ## 13  rs10808026     7 143099133   C   A 0.20418100 -0.1393 0.0206 -6.762136
    ## 14    rs755951     8  27226790   A   C 0.33181300  0.0817 0.0157  5.203822
    ## 15      rs7982     8  27462481   A   G 0.61556700  0.1400 0.0165  8.484850
    ## 16  rs34746581     8  71901351   A   G 0.06508340  0.1387 0.0297  4.670034
    ## 17   rs2635147     8  98329581   C   T 0.05190560  0.1995 0.0414  4.818841
    ## 18  rs11257242    10  11721119   C   G 0.66253700  0.0809 0.0170  4.758820
    ## 19  rs10509088    10  59941791   C   T 0.04476260 -0.1813 0.0387 -4.684755
    ## 20  rs71475924    11  47603006   C   T 0.14576500  0.1244 0.0258  4.821705
    ## 21  rs72924659    11  60103385   C   T 0.25353600 -0.1413 0.0196 -7.209184
    ## 22  rs10792832    11  85867875   A   G 0.66727500  0.1297 0.0161  8.055900
    ## 23 rs150020881    11  97694151   C   A 0.02066720  0.3853 0.0842  4.576010
    ## 24  rs11218343    11 121435587   T   C 0.03449530 -0.2697 0.0410 -6.578049
    ## 25  rs10143128    14  75398902   T   C 0.05885630  0.2091 0.0393  5.320611
    ## 26  rs12590654    14  92938855   G   A 0.34703500 -0.0965 0.0176 -5.482955
    ## 27 rs149720917    15  64724693   C   G 0.01704130  0.3357 0.0706  4.754958
    ## 28    rs905450    15  82444437   A   G 0.82607900  0.0869 0.0186  4.672040
    ## 29   rs8078173    17   4763551   T   C 0.10579700  0.1279 0.0273  4.684982
    ## 30   rs2632516    17  56409089   G   C 0.46395600 -0.0782 0.0159 -4.918239
    ## 31   rs8093731    18  29088958   C   T 0.00761697 -0.6136 0.1123 -5.463936
    ## 32 rs111278892    19   1039323   C   G 0.16460800  0.1867 0.0371  5.032345
    ## 33   rs4147929    19   1063443   A   G 0.83992600 -0.1348 0.0224 -6.017860
    ## 34  rs11083742    19  45071070   G   T 0.56143500  0.1046 0.0216  4.842590
    ## 35  rs12972156    19  45387459   C   G 0.15468800  1.1399 0.0256 44.527344
    ## 36 rs117310449    19  45393516   C   T 0.01178820  1.2135 0.0966 12.562112
    ## 37  rs12977604    19  45442528   C   G 0.52832700  0.1507 0.0184  8.190217
    ## 38   rs6014724    20  54998544   A   G 0.08865120 -0.1380 0.0283 -4.876325
    ##                P     N TRAIT
    ## 1   1.616000e-06 54162  LOAD
    ## 2   3.653000e-15 54162  LOAD
    ## 3   7.998000e-08 54162  LOAD
    ## 4   1.001000e-26 54162  LOAD
    ## 5   2.768000e-06 54162  LOAD
    ## 6   1.462000e-06 54162  LOAD
    ## 7   2.547000e-06 54162  LOAD
    ## 8   9.219000e-08 54162  LOAD
    ## 9   3.376000e-09 54162  LOAD
    ## 10  5.300000e-09 54162  LOAD
    ## 11  4.557000e-06 54162  LOAD
    ## 12  2.947000e-06 54162  LOAD
    ## 13  1.417000e-11 54162  LOAD
    ## 14  1.991000e-07 54162  LOAD
    ## 15  2.477000e-17 54162  LOAD
    ## 16  3.089000e-06 54162  LOAD
    ## 17  1.480000e-06 54162  LOAD
    ## 18  1.952000e-06 54162  LOAD
    ## 19  2.786000e-06 54162  LOAD
    ## 20  1.440000e-06 54162  LOAD
    ## 21  5.354000e-13 54162  LOAD
    ## 22  6.534000e-16 54162  LOAD
    ## 23  4.727000e-06 54162  LOAD
    ## 24  4.976000e-11 54162  LOAD
    ## 25  1.004000e-07 54162  LOAD
    ## 26  4.097000e-08 54162  LOAD
    ## 27  1.965000e-06 54162  LOAD
    ## 28  2.819000e-06 54162  LOAD
    ## 29  2.871000e-06 54162  LOAD
    ## 30  9.522000e-07 54162  LOAD
    ## 31  4.630000e-08 54162  LOAD
    ## 32  4.813000e-07 54162  LOAD
    ## 33  1.701000e-09 54162  LOAD
    ## 34  1.259000e-06 54162  LOAD
    ## 35 2.225074e-308 54162  LOAD
    ## 36  3.695000e-36 54162  LOAD
    ## 37  2.920000e-16 54162  LOAD
    ## 38  1.054000e-06 54162  LOAD

<br>

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in AUDIT Total

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1    rs1410397     1 193627682    C    T 0.45082000  6.189634e-03
    ## 2    rs1752684     1 207747296    A    G 0.77110600  2.861270e-03
    ## 3    rs7584040     2 127863224    C    T 0.20790800 -4.022380e-03
    ## 4    rs4663105     2 127891427    A    C 0.41197700 -6.216140e-05
    ## 5   rs62273237     3 128310107    T    C 0.59216800  3.039470e-03
    ## 6    rs7657553     4  11723235    A    G 0.68050000  1.279930e-03
    ## 7     rs190982     5  88223420    G    A 0.66279500 -5.815366e-03
    ## 8    rs2878896     5 139710507    G    A 0.46264100  1.531103e-03
    ## 9    rs9272561    NA        NA <NA> <NA>         NA            NA
    ## 10   rs9381563     6  47432637    C    T 0.65647400 -1.208687e-04
    ## 11  rs59415886     7  37882632    G    A 0.67619200  3.866770e-03
    ## 12   rs7384878     7  99932049    C    T 0.70971300 -6.402858e-03
    ## 13  rs10808026     7 143099133    C    A 0.20418100  1.830631e-03
    ## 14    rs755951     8  27226790    A    C 0.33181300  4.617690e-04
    ## 15      rs7982     8  27462481    A    G 0.61556700 -3.495280e-03
    ## 16  rs34746581     8  71901351    A    G 0.06508340  2.649830e-03
    ## 17   rs2635147     8  98329581    C    T 0.05190560  5.991331e-04
    ## 18  rs11257242    10  11721119    C    G 0.66253700  2.526470e-03
    ## 19  rs10509088    10  59941791    C    T 0.04476260 -1.585120e-03
    ## 20  rs71475924    11  47603006    C    T 0.14576500  1.019347e-02
    ## 21  rs72924659    11  60103385    C    T 0.25353600 -4.394363e-03
    ## 22  rs10792832    11  85867875    A    G 0.66727500 -7.419850e-03
    ## 23 rs150020881    11  97694151    C    A 0.02066720  2.214090e-03
    ## 24  rs11218343    11 121435587    T    C 0.03449530  4.159290e-03
    ## 25  rs10143128    14  75398902    T    C 0.05885630  3.354920e-03
    ## 26  rs12590654    14  92938855    G    A 0.34703500 -5.299710e-04
    ## 27 rs149720917    15  64724693    C    G 0.01704130  1.686770e-03
    ## 28    rs905450    15  82444437    A    G 0.82607900  3.383250e-03
    ## 29   rs8078173    17   4763551    T    C 0.10579700 -3.854610e-03
    ## 30   rs2632516    17  56409089    G    C 0.46395600  2.314894e-03
    ## 31   rs8093731    18  29088958    C    T 0.00761697 -1.086606e-03
    ## 32 rs111278892    19   1039323    C    G 0.16460800  2.853550e-03
    ## 33   rs4147929    19   1063443    A    G 0.83992600 -4.295390e-03
    ## 34  rs11083742    19  45071070    G    T 0.56143500 -1.643775e-03
    ## 35  rs12972156    19  45387459    C    G 0.15468800 -5.350060e-03
    ## 36 rs117310449    19  45393516    C    T 0.01178820  5.332681e-05
    ## 37  rs12977604    NA        NA <NA> <NA>         NA            NA
    ## 38   rs6014724    20  54998544    A    G 0.08865120  1.229000e-04
    ##             SE      Z         P      N       TRAIT
    ## 1  0.002648538  2.337 0.0194500 141456 AUDIT_Total
    ## 2  0.002654235  1.078 0.2809000 141637 AUDIT_Total
    ## 3  0.002660304 -1.512 0.1305000 140702 AUDIT_Total
    ## 4  0.002702672 -0.023 0.9817000 137999 AUDIT_Total
    ## 5  0.002659207  1.143 0.2529000 141062 AUDIT_Total
    ## 6  0.002672079  0.479 0.6320000 140235 AUDIT_Total
    ## 7  0.002714923 -2.142 0.0322300 134709 AUDIT_Total
    ## 8  0.002676753  0.572 0.5670000 139657 AUDIT_Total
    ## 9           NA     NA        NA     NA        <NA>
    ## 10 0.002685970 -0.045 0.9643000 139562 AUDIT_Total
    ## 11 0.002652105  1.458 0.1449000 141610 AUDIT_Total
    ## 12 0.002662311 -2.405 0.0161800 139951 AUDIT_Total
    ## 13 0.002668558  0.686 0.4929000 140417 AUDIT_Total
    ## 14 0.002684704  0.172 0.8638000 139321 AUDIT_Total
    ## 15 0.002649943 -1.319 0.1870000 141932 AUDIT_Total
    ## 16 0.002655139  0.998 0.3184000 141598 AUDIT_Total
    ## 17 0.002662814  0.225 0.8223000 141524 AUDIT_Total
    ## 18 0.002659440  0.950 0.3423000 141175 AUDIT_Total
    ## 19 0.002655143 -0.597 0.5508000 141917 AUDIT_Total
    ## 20 0.002640111  3.861 0.0001131 141498 AUDIT_Total
    ## 21 0.002664865 -1.649 0.0992400 140134 AUDIT_Total
    ## 22 0.002642397 -2.808 0.0049910 141844 AUDIT_Total
    ## 23 0.002657971  0.833 0.4047000 141419 AUDIT_Total
    ## 24 0.002649231  1.570 0.1163000 141846 AUDIT_Total
    ## 25 0.002658412  1.262 0.2070000 141066 AUDIT_Total
    ## 26 0.002690208 -0.197 0.8435000 138706 AUDIT_Total
    ## 27 0.002656331  0.635 0.5254000 141756 AUDIT_Total
    ## 28 0.002655611  1.274 0.2026000 141356 AUDIT_Total
    ## 29 0.002649219 -1.455 0.1456000 141921 AUDIT_Total
    ## 30 0.002676178  0.865 0.3869000 139476 AUDIT_Total
    ## 31 0.002656737 -0.409 0.6828000 141932 AUDIT_Total
    ## 32 0.002656935  1.074 0.2828000 141352 AUDIT_Total
    ## 33 0.002651477 -1.620 0.1052000 141574 AUDIT_Total
    ## 34 0.002677157 -0.614 0.5394000 139578 AUDIT_Total
    ## 35 0.002660397 -2.011 0.0443000 140385 AUDIT_Total
    ## 36 0.002666340  0.020 0.9840000 141799 AUDIT_Total
    ## 37          NA     NA        NA     NA        <NA>
    ## 38 0.002671739  0.046 0.9633000 141041 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

    ##   target_snp  proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1 rs12977604 rs10413096 0.996031      1 GA/CG  NA    19 45442962         G
    ## 2  rs9272561       <NA>       NA     NA  <NA>  NA    NA       NA      <NA>
    ##   ALT.proxy      AF         BETA          SE      Z      P      N
    ## 1         A 0.53142 -0.004078149 0.002853848 -1.429 0.1531 122277
    ## 2      <NA>      NA           NA          NA     NA     NA     NA
    ##         TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 AUDIT_Total    G         A    C         G    G    C          TRUE
    ## 2        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and AUDIT Total datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10143128                      C                     T
    ## 2   rs10509088                      T                     C
    ## 3   rs10792832                      G                     A
    ## 4   rs10808026                      A                     C
    ## 5   rs11083742                      T                     G
    ## 6  rs111278892                      G                     C
    ## 7   rs11218343                      C                     T
    ## 8   rs11257242                      G                     C
    ## 9  rs117310449                      T                     C
    ## 10  rs12590654                      A                     G
    ## 11  rs12972156                      G                     C
    ## 12  rs12977604                      G                     C
    ## 13   rs1410397                      T                     C
    ## 14 rs149720917                      G                     C
    ## 15 rs150020881                      A                     C
    ## 16   rs1752684                      G                     A
    ## 17    rs190982                      A                     G
    ## 18   rs2632516                      C                     G
    ## 19   rs2635147                      T                     C
    ## 20   rs2878896                      A                     G
    ## 21  rs34746581                      G                     A
    ## 22   rs4147929                      G                     A
    ## 23   rs4663105                      C                     A
    ## 24  rs59415886                      A                     G
    ## 25   rs6014724                      G                     A
    ## 26  rs62273237                      C                     T
    ## 27  rs71475924                      T                     C
    ## 28  rs72924659                      T                     C
    ## 29   rs7384878                      T                     C
    ## 30    rs755951                      C                     A
    ## 31   rs7584040                      T                     C
    ## 32   rs7657553                      G                     A
    ## 33      rs7982                      G                     A
    ## 34   rs8078173                      C                     T
    ## 35   rs8093731                      T                     C
    ## 36    rs905450                      G                     A
    ## 37   rs9381563                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    T        0.2091  3.354920e-03
    ## 2                      T                    C       -0.1813 -1.585120e-03
    ## 3                      G                    A        0.1297 -7.419850e-03
    ## 4                      A                    C       -0.1393  1.830631e-03
    ## 5                      T                    G        0.1046 -1.643775e-03
    ## 6                      G                    C        0.1867  2.853550e-03
    ## 7                      C                    T       -0.2697  4.159290e-03
    ## 8                      G                    C        0.0809  2.526470e-03
    ## 9                      T                    C        1.2135  5.332681e-05
    ## 10                     A                    G       -0.0965 -5.299710e-04
    ## 11                     G                    C        1.1399 -5.350060e-03
    ## 12                     G                    C        0.1507 -4.078149e-03
    ## 13                     T                    C       -0.0766  6.189634e-03
    ## 14                     G                    C        0.3357  1.686770e-03
    ## 15                     A                    C        0.3853  2.214090e-03
    ## 16                     G                    A       -0.1541  2.861270e-03
    ## 17                     A                    G        0.0799 -5.815366e-03
    ## 18                     C                    G       -0.0782  2.314894e-03
    ## 19                     T                    C        0.1995  5.991331e-04
    ## 20                     A                    G       -0.0833  1.531103e-03
    ## 21                     G                    A        0.1387  2.649830e-03
    ## 22                     G                    A       -0.1348 -4.295390e-03
    ## 23                     C                    A        0.1837 -6.216140e-05
    ## 24                     A                    G        0.0742  3.866770e-03
    ## 25                     G                    A       -0.1380  1.229000e-04
    ## 26                     C                    T       -0.0748  3.039470e-03
    ## 27                     T                    C        0.1244  1.019347e-02
    ## 28                     T                    C       -0.1413 -4.394363e-03
    ## 29                     T                    C        0.0839 -6.402858e-03
    ## 30                     C                    A        0.0817  4.617690e-04
    ## 31                     T                    C        0.1110 -4.022380e-03
    ## 32                     G                    A       -0.0830  1.279930e-03
    ## 33                     G                    A        0.1400 -3.495280e-03
    ## 34                     C                    T        0.1279 -3.854610e-03
    ## 35                     T                    C       -0.6136 -1.086606e-03
    ## 36                     G                    A        0.0869  3.383250e-03
    ## 37                     T                    C       -0.0968 -1.208687e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.05885630  0.05885630  FALSE       FALSE     FALSE     mmCaFO
    ## 2    0.04476260  0.04476260  FALSE       FALSE     FALSE     mmCaFO
    ## 3    0.66727500  0.66727500  FALSE       FALSE     FALSE     mmCaFO
    ## 4    0.20418100  0.20418100  FALSE       FALSE     FALSE     mmCaFO
    ## 5    0.56143500  0.56143500  FALSE       FALSE     FALSE     mmCaFO
    ## 6    0.16460800  0.16460800  FALSE        TRUE     FALSE     mmCaFO
    ## 7    0.03449530  0.03449530  FALSE       FALSE     FALSE     mmCaFO
    ## 8    0.66253700  0.66253700  FALSE        TRUE     FALSE     mmCaFO
    ## 9    0.01178820  0.01178820  FALSE       FALSE     FALSE     mmCaFO
    ## 10   0.34703500  0.34703500  FALSE       FALSE     FALSE     mmCaFO
    ## 11   0.15468800  0.15468800  FALSE        TRUE     FALSE     mmCaFO
    ## 12   0.52832700  0.53142000  FALSE        TRUE      TRUE     mmCaFO
    ## 13   0.45082000  0.45082000  FALSE       FALSE     FALSE     mmCaFO
    ## 14   0.01704130  0.01704130  FALSE        TRUE     FALSE     mmCaFO
    ## 15   0.02066720  0.02066720  FALSE       FALSE     FALSE     mmCaFO
    ## 16   0.77110600  0.77110600  FALSE       FALSE     FALSE     mmCaFO
    ## 17   0.66279500  0.66279500  FALSE       FALSE     FALSE     mmCaFO
    ## 18   0.46395600  0.46395600  FALSE        TRUE      TRUE     mmCaFO
    ## 19   0.05190560  0.05190560  FALSE       FALSE     FALSE     mmCaFO
    ## 20   0.46264100  0.46264100  FALSE       FALSE     FALSE     mmCaFO
    ## 21   0.06508340  0.06508340  FALSE       FALSE     FALSE     mmCaFO
    ## 22   0.83992600  0.83992600  FALSE       FALSE     FALSE     mmCaFO
    ## 23   0.41197700  0.41197700  FALSE       FALSE     FALSE     mmCaFO
    ## 24   0.67619200  0.67619200  FALSE       FALSE     FALSE     mmCaFO
    ## 25   0.08865120  0.08865120  FALSE       FALSE     FALSE     mmCaFO
    ## 26   0.59216800  0.59216800  FALSE       FALSE     FALSE     mmCaFO
    ## 27   0.14576500  0.14576500  FALSE       FALSE     FALSE     mmCaFO
    ## 28   0.25353600  0.25353600  FALSE       FALSE     FALSE     mmCaFO
    ## 29   0.70971300  0.70971300  FALSE       FALSE     FALSE     mmCaFO
    ## 30   0.33181300  0.33181300  FALSE       FALSE     FALSE     mmCaFO
    ## 31   0.20790800  0.20790800  FALSE       FALSE     FALSE     mmCaFO
    ## 32   0.68050000  0.68050000  FALSE       FALSE     FALSE     mmCaFO
    ## 33   0.61556700  0.61556700  FALSE       FALSE     FALSE     mmCaFO
    ## 34   0.10579700  0.10579700  FALSE       FALSE     FALSE     mmCaFO
    ## 35   0.00761697  0.00761697  FALSE       FALSE     FALSE     mmCaFO
    ## 36   0.82607900  0.82607900  FALSE       FALSE     FALSE     mmCaFO
    ## 37   0.65647400  0.65647400  FALSE       FALSE     FALSE     mmCaFO
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           14    75398902 0.002658412     1.262    0.2070000
    ## 2           10    59941791 0.002655143    -0.597    0.5508000
    ## 3           11    85867875 0.002642397    -2.808    0.0049910
    ## 4            7   143099133 0.002668558     0.686    0.4929000
    ## 5           19    45071070 0.002677157    -0.614    0.5394000
    ## 6           19     1039323 0.002656935     1.074    0.2828000
    ## 7           11   121435587 0.002649231     1.570    0.1163000
    ## 8           10    11721119 0.002659440     0.950    0.3423000
    ## 9           19    45393516 0.002666340     0.020    0.9840000
    ## 10          14    92938855 0.002690208    -0.197    0.8435000
    ## 11          19    45387459 0.002660397    -2.011    0.0443000
    ## 12          19    45442962 0.002853848    -1.429    0.1531000
    ## 13           1   193627682 0.002648538     2.337    0.0194500
    ## 14          15    64724693 0.002656331     0.635    0.5254000
    ## 15          11    97694151 0.002657971     0.833    0.4047000
    ## 16           1   207747296 0.002654235     1.078    0.2809000
    ## 17           5    88223420 0.002714923    -2.142    0.0322300
    ## 18          17    56409089 0.002676178     0.865    0.3869000
    ## 19           8    98329581 0.002662814     0.225    0.8223000
    ## 20           5   139710507 0.002676753     0.572    0.5670000
    ## 21           8    71901351 0.002655139     0.998    0.3184000
    ## 22          19     1063443 0.002651477    -1.620    0.1052000
    ## 23           2   127891427 0.002702672    -0.023    0.9817000
    ## 24           7    37882632 0.002652105     1.458    0.1449000
    ## 25          20    54998544 0.002671739     0.046    0.9633000
    ## 26           3   128310107 0.002659207     1.143    0.2529000
    ## 27          11    47603006 0.002640111     3.861    0.0001131
    ## 28          11    60103385 0.002664865    -1.649    0.0992400
    ## 29           7    99932049 0.002662311    -2.405    0.0161800
    ## 30           8    27226790 0.002684704     0.172    0.8638000
    ## 31           2   127863224 0.002660304    -1.512    0.1305000
    ## 32           4    11723235 0.002672079     0.479    0.6320000
    ## 33           8    27462481 0.002649943    -1.319    0.1870000
    ## 34          17     4763551 0.002649219    -1.455    0.1456000
    ## 35          18    29088958 0.002656737    -0.409    0.6828000
    ## 36          15    82444437 0.002655611     1.274    0.2026000
    ## 37           6    47432637 0.002685970    -0.045    0.9643000
    ##    samplesize.outcome                       outcome mr_keep.outcome
    ## 1              141066 SanchezRoige2019auditt23andMe            TRUE
    ## 2              141917 SanchezRoige2019auditt23andMe            TRUE
    ## 3              141844 SanchezRoige2019auditt23andMe            TRUE
    ## 4              140417 SanchezRoige2019auditt23andMe            TRUE
    ## 5              139578 SanchezRoige2019auditt23andMe            TRUE
    ## 6              141352 SanchezRoige2019auditt23andMe            TRUE
    ## 7              141846 SanchezRoige2019auditt23andMe            TRUE
    ## 8              141175 SanchezRoige2019auditt23andMe            TRUE
    ## 9              141799 SanchezRoige2019auditt23andMe            TRUE
    ## 10             138706 SanchezRoige2019auditt23andMe            TRUE
    ## 11             140385 SanchezRoige2019auditt23andMe            TRUE
    ## 12             122277 SanchezRoige2019auditt23andMe            TRUE
    ## 13             141456 SanchezRoige2019auditt23andMe            TRUE
    ## 14             141756 SanchezRoige2019auditt23andMe            TRUE
    ## 15             141419 SanchezRoige2019auditt23andMe            TRUE
    ## 16             141637 SanchezRoige2019auditt23andMe            TRUE
    ## 17             134709 SanchezRoige2019auditt23andMe            TRUE
    ## 18             139476 SanchezRoige2019auditt23andMe            TRUE
    ## 19             141524 SanchezRoige2019auditt23andMe            TRUE
    ## 20             139657 SanchezRoige2019auditt23andMe            TRUE
    ## 21             141598 SanchezRoige2019auditt23andMe            TRUE
    ## 22             141574 SanchezRoige2019auditt23andMe            TRUE
    ## 23             137999 SanchezRoige2019auditt23andMe            TRUE
    ## 24             141610 SanchezRoige2019auditt23andMe            TRUE
    ## 25             141041 SanchezRoige2019auditt23andMe            TRUE
    ## 26             141062 SanchezRoige2019auditt23andMe            TRUE
    ## 27             141498 SanchezRoige2019auditt23andMe            TRUE
    ## 28             140134 SanchezRoige2019auditt23andMe            TRUE
    ## 29             139951 SanchezRoige2019auditt23andMe            TRUE
    ## 30             139321 SanchezRoige2019auditt23andMe            TRUE
    ## 31             140702 SanchezRoige2019auditt23andMe            TRUE
    ## 32             140235 SanchezRoige2019auditt23andMe            TRUE
    ## 33             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 34             141921 SanchezRoige2019auditt23andMe            TRUE
    ## 35             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 36             141356 SanchezRoige2019auditt23andMe            TRUE
    ## 37             139562 SanchezRoige2019auditt23andMe            TRUE
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
    ## 12            reported          TRUE         rs12977604        rs10413096
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
    ## 12                 G                 C                A                G
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
    ## 30              <NA>              <NA>             <NA>             <NA>
    ## 31              <NA>              <NA>             <NA>             <NA>
    ## 32              <NA>              <NA>             <NA>             <NA>
    ## 33              <NA>              <NA>             <NA>             <NA>
    ## 34              <NA>              <NA>             <NA>             <NA>
    ## 35              <NA>              <NA>             <NA>             <NA>
    ## 36              <NA>              <NA>             <NA>             <NA>
    ## 37              <NA>              <NA>             <NA>             <NA>
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            14     75398902      0.0393   5.320611     1.004e-07
    ## 2            10     59941791      0.0387  -4.684755     2.786e-06
    ## 3            11     85867875      0.0161   8.055900     6.534e-16
    ## 4             7    143099133      0.0206  -6.762136     1.417e-11
    ## 5            19     45071070      0.0216   4.842590     1.259e-06
    ## 6            19      1039323      0.0371   5.032345     4.813e-07
    ## 7            11    121435587      0.0410  -6.578049     4.976e-11
    ## 8            10     11721119      0.0170   4.758820     1.952e-06
    ## 9            19     45393516      0.0966  12.562112     3.695e-36
    ## 10           14     92938855      0.0176  -5.482955     4.097e-08
    ## 11           19     45387459      0.0256  44.527344    1.000e-200
    ## 12           19     45442528      0.0184   8.190217     2.920e-16
    ## 13            1    193627682      0.0160  -4.787500     1.616e-06
    ## 14           15     64724693      0.0706   4.754958     1.965e-06
    ## 15           11     97694151      0.0842   4.576010     4.727e-06
    ## 16            1    207747296      0.0196  -7.862240     3.653e-15
    ## 17            5     88223420      0.0170   4.700000     2.547e-06
    ## 18           17     56409089      0.0159  -4.918239     9.522e-07
    ## 19            8     98329581      0.0414   4.818841     1.480e-06
    ## 20            5    139710507      0.0156  -5.339740     9.219e-08
    ## 21            8     71901351      0.0297   4.670034     3.089e-06
    ## 22           19      1063443      0.0224  -6.017860     1.701e-09
    ## 23            2    127891427      0.0172  10.680233     1.001e-26
    ## 24            7     37882632      0.0162   4.580250     4.557e-06
    ## 25           20     54998544      0.0283  -4.876325     1.054e-06
    ## 26            3    128310107      0.0160  -4.675000     2.768e-06
    ## 27           11     47603006      0.0258   4.821705     1.440e-06
    ## 28           11     60103385      0.0196  -7.209184     5.354e-13
    ## 29            7     99932049      0.0179   4.687150     2.947e-06
    ## 30            8     27226790      0.0157   5.203822     1.991e-07
    ## 31            2    127863224      0.0207   5.362319     7.998e-08
    ## 32            4     11723235      0.0172  -4.825580     1.462e-06
    ## 33            8     27462481      0.0165   8.484850     2.477e-17
    ## 34           17      4763551      0.0273   4.684982     2.871e-06
    ## 35           18     29088958      0.1123  -5.463936     4.630e-08
    ## 36           15     82444437      0.0186   4.672040     2.819e-06
    ## 37            6     47432637      0.0166  -5.831330     5.300e-09
    ##    samplesize.exposure        exposure mr_keep.exposure
    ## 1                54162 Lambert2013load             TRUE
    ## 2                54162 Lambert2013load             TRUE
    ## 3                54162 Lambert2013load             TRUE
    ## 4                54162 Lambert2013load             TRUE
    ## 5                54162 Lambert2013load             TRUE
    ## 6                54162 Lambert2013load             TRUE
    ## 7                54162 Lambert2013load             TRUE
    ## 8                54162 Lambert2013load             TRUE
    ## 9                54162 Lambert2013load             TRUE
    ## 10               54162 Lambert2013load             TRUE
    ## 11               54162 Lambert2013load             TRUE
    ## 12               54162 Lambert2013load             TRUE
    ## 13               54162 Lambert2013load             TRUE
    ## 14               54162 Lambert2013load             TRUE
    ## 15               54162 Lambert2013load             TRUE
    ## 16               54162 Lambert2013load             TRUE
    ## 17               54162 Lambert2013load             TRUE
    ## 18               54162 Lambert2013load             TRUE
    ## 19               54162 Lambert2013load             TRUE
    ## 20               54162 Lambert2013load             TRUE
    ## 21               54162 Lambert2013load             TRUE
    ## 22               54162 Lambert2013load             TRUE
    ## 23               54162 Lambert2013load             TRUE
    ## 24               54162 Lambert2013load             TRUE
    ## 25               54162 Lambert2013load             TRUE
    ## 26               54162 Lambert2013load             TRUE
    ## 27               54162 Lambert2013load             TRUE
    ## 28               54162 Lambert2013load             TRUE
    ## 29               54162 Lambert2013load             TRUE
    ## 30               54162 Lambert2013load             TRUE
    ## 31               54162 Lambert2013load             TRUE
    ## 32               54162 Lambert2013load             TRUE
    ## 33               54162 Lambert2013load             TRUE
    ## 34               54162 Lambert2013load             TRUE
    ## 35               54162 Lambert2013load             TRUE
    ## 36               54162 Lambert2013load             TRUE
    ## 37               54162 Lambert2013load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 2              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 3              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 4              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 5              reported      lC2y2a      2    TRUE          FALSE 5e-06
    ## 6              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 7              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 8              reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 9              reported      lC2y2a      2    TRUE          FALSE 5e-06
    ## 10             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 11             reported      lC2y2a      2    TRUE          FALSE 5e-06
    ## 12             reported      lC2y2a      2   FALSE          FALSE 5e-06
    ## 13             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 14             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 15             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 16             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 17             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 18             reported      lC2y2a      2   FALSE           TRUE 5e-06
    ## 19             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 20             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 21             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 22             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 23             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 24             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 25             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 26             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 27             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 28             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 29             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 30             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 31             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 32             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 33             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 34             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 35             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 36             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ## 37             reported      lC2y2a      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.053831e-05        1.0000          TRUE
    ## 2     2.034603e-06        1.0000          TRUE
    ## 3     5.887105e-05        0.1024          TRUE
    ## 4     4.064885e-06        1.0000          TRUE
    ## 5               NA            NA            NA
    ## 6     7.452070e-06        1.0000          TRUE
    ## 7     2.256097e-05        1.0000          TRUE
    ## 8     6.009617e-06        1.0000          TRUE
    ## 9               NA            NA            NA
    ## 10    1.828101e-07        1.0000          TRUE
    ## 11              NA            NA            NA
    ## 12              NA            NA            NA
    ## 13    3.975504e-05        0.5824          TRUE
    ## 14    2.127848e-06        1.0000          TRUE
    ## 15    4.203843e-06        1.0000          TRUE
    ## 16    9.563964e-06        1.0000          TRUE
    ## 17    3.520878e-05        0.9472          TRUE
    ## 18              NA            NA            NA
    ## 19    1.551211e-07        1.0000          TRUE
    ## 20    2.662850e-06        1.0000          TRUE
    ## 21    6.448767e-06        1.0000          TRUE
    ## 22    1.774947e-05        1.0000          TRUE
    ## 23    7.338107e-08        1.0000          TRUE
    ## 24    1.446539e-05        1.0000          TRUE
    ## 25    7.757348e-08        1.0000          TRUE
    ## 26    9.836270e-06        1.0000          TRUE
    ## 27    1.038946e-04        0.0064         FALSE
    ## 28    1.859564e-05        1.0000          TRUE
    ## 29    4.268875e-05        0.3584          TRUE
    ## 30    1.401402e-07        1.0000          TRUE
    ## 31    1.753664e-05        1.0000          TRUE
    ## 32    1.901155e-06        1.0000          TRUE
    ## 33    1.376951e-05        1.0000          TRUE
    ## 34    1.641321e-05        1.0000          TRUE
    ## 35    3.712781e-07        1.0000          TRUE
    ## 36    1.095149e-05        1.0000          TRUE
    ## 37    2.235086e-10        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1  rs11083742          19    45071070     1.259e-06       0.5394
    ## 2 rs117310449          19    45393516     3.695e-36       0.9840
    ## 3  rs12972156          19    45387459    1.000e-200       0.0443
    ## 4  rs12977604          19    45442962     2.920e-16       0.1531

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
    ## 1            FALSE   0.01985537 34.26636  0.05 0.649638 0.1270955
    ## 2             TRUE   0.01943052 34.60050  0.05 1.924792 0.2838674

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
on AUDIT Total. <br>

**Table 6** MR causaul estimates for LOAD on AUDIT Total

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 2      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 3      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 4      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)   32 0.001095401 0.002448490
    ## 2                           Weighted median   32 0.002460157 0.003793266
    ## 3                             Weighted mode   32 0.003127421 0.003145013
    ## 4                                  MR Egger   32 0.005834162 0.006271439
    ##        pval
    ## 1 0.6546019
    ## 2 0.5166235
    ## 3 0.3277241
    ## 4 0.3596547

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in AUDIT Total and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 2      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 64.19772   30 0.0002775666
    ## 2 Inverse variance weighted 66.01094   31 0.0002491156

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##   egger_intercept          se      pval
    ## 1    -0.001109987 0.001205845 0.3646518

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##      pt outliers_removed n_outliers   RSSobs  pval
    ## 1 5e-06            FALSE          1 68.14251 4e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 2      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 3      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 4      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   31 4.791585e-06 0.002464950
    ## 2                           Weighted median   31 2.431731e-03 0.003683281
    ## 3                             Weighted mode   31 3.092493e-03 0.003337257
    ## 4                                  MR Egger   31 6.800223e-03 0.005499038
    ##        pval
    ## 1 0.9984490
    ## 2 0.5091204
    ## 3 0.3614999
    ## 4 0.2261498

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ## 2      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 47.56761   29 0.016289266
    ## 2 Inverse variance weighted 51.30376   30 0.009043679

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome        exposure
    ## 1      lC2y2a     mmCaFO SanchezRoige2019auditt23andMe Lambert2013load
    ##   egger_intercept          se      pval
    ## 1    -0.001610919 0.001067378 0.1420591

<br>
