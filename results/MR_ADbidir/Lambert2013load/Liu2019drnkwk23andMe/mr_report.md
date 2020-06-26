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

### Outcome: Alcohol Consumption

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Alcohol Consumption

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1    rs1410397     1 193627682    C    T 0.45082000  0.0021669678
    ## 2    rs1752684     1 207747296    A    G 0.77110600 -0.0011900800
    ## 3    rs7584040     2 127863224    C    T 0.20790800 -0.0034244780
    ## 4    rs4663105     2 127891427    A    C 0.41197700 -0.0019921000
    ## 5   rs62273237     3 128310107    T    C 0.59216800  0.0007369310
    ## 6    rs7657553     4  11723235    A    G 0.68050000 -0.0019489200
    ## 7     rs190982     5  88223420    G    A 0.66279500  0.0002753635
    ## 8    rs2878896     5 139710507    G    A 0.46264100  0.0009500692
    ## 9    rs9272561    NA        NA <NA> <NA>         NA            NA
    ## 10   rs9381563     6  47432637    C    T 0.65647400  0.0007585567
    ## 11  rs59415886     7  37882632    G    A 0.67619200  0.0003052553
    ## 12   rs7384878     7  99932049    C    T 0.70971300 -0.0014440263
    ## 13  rs10808026     7 143099133    C    A 0.20418100  0.0016939515
    ## 14    rs755951     8  27226790    A    C 0.33181300 -0.0008841790
    ## 15      rs7982     8  27462481    A    G 0.61556700  0.0010962400
    ## 16  rs34746581     8  71901351    A    G 0.06508340 -0.0000041310
    ## 17   rs2635147     8  98329581    C    T 0.05190560 -0.0005123814
    ## 18  rs11257242    10  11721119    C    G 0.66253700  0.0005374220
    ## 19  rs10509088    10  59941791    C    T 0.04476260  0.0011754845
    ## 20  rs71475924    11  47603006    C    T 0.14576500  0.0031332059
    ## 21  rs72924659    11  60103385    C    T 0.25353600  0.0000691394
    ## 22  rs10792832    11  85867875    A    G 0.66727500 -0.0017587300
    ## 23 rs150020881    11  97694151    C    A 0.02066720  0.0007163337
    ## 24  rs11218343    11 121435587    T    C 0.03449530  0.0005092910
    ## 25  rs10143128    14  75398902    T    C 0.05885630 -0.0005298950
    ## 26  rs12590654    14  92938855    G    A 0.34703500  0.0002062943
    ## 27 rs149720917    15  64724693    C    G 0.01704130  0.0000144541
    ## 28    rs905450    15  82444437    A    G 0.82607900 -0.0010735900
    ## 29   rs8078173    17   4763551    T    C 0.10579700 -0.0002011400
    ## 30   rs2632516    17  56409089    G    C 0.46395600  0.0019777061
    ## 31   rs8093731    18  29088958    C    T 0.00761697 -0.0009157277
    ## 32 rs111278892    19   1039323    C    G 0.16460800 -0.0011590200
    ## 33   rs4147929    19   1063443    A    G 0.83992600  0.0008326980
    ## 34  rs11083742    19  45071070    G    T 0.56143500  0.0002258825
    ## 35  rs12972156    19  45387459    C    G 0.15468800 -0.0014481400
    ## 36 rs117310449    19  45393516    C    T 0.01178820 -0.0002289753
    ## 37  rs12977604    19  45442528    C    G 0.52832700 -0.0007570990
    ## 38   rs6014724    20  54998544    A    G 0.08865120 -0.0002918560
    ##             SE      Z         P      N           TRAIT
    ## 1  0.001030417  2.103 0.0354900 939356 Drinks_Per_Week
    ## 2  0.001031264 -1.154 0.2486000 939356 Drinks_Per_Week
    ## 3  0.001028372 -3.330 0.0008683 941280 Drinks_Per_Week
    ## 4  0.001029507 -1.935 0.0530100 941280 Drinks_Per_Week
    ## 5  0.001030673  0.715 0.4748000 941280 Drinks_Per_Week
    ## 6  0.001029543 -1.893 0.0584000 941280 Drinks_Per_Week
    ## 7  0.001031324  0.267 0.7891000 941280 Drinks_Per_Week
    ## 8  0.001030444  0.922 0.3565000 941280 Drinks_Per_Week
    ## 9           NA     NA        NA     NA            <NA>
    ## 10 0.001030648  0.736 0.4616000 941280 Drinks_Per_Week
    ## 11 0.001031268  0.296 0.7670000 941280 Drinks_Per_Week
    ## 12 0.001029976 -1.402 0.1608000 941280 Drinks_Per_Week
    ## 13 0.001029758  1.645 0.0999100 941280 Drinks_Per_Week
    ## 14 0.001030512 -0.858 0.3909000 941280 Drinks_Per_Week
    ## 15 0.001030299  1.064 0.2873000 941280 Drinks_Per_Week
    ## 16 0.001032749 -0.004 0.9965000 941280 Drinks_Per_Week
    ## 17 0.001030948 -0.497 0.6194000 941280 Drinks_Per_Week
    ## 18 0.001051706  0.511 0.6091000 904462 Drinks_Per_Week
    ## 19 0.001030223  1.141 0.2540000 941280 Drinks_Per_Week
    ## 20 0.001030660  3.040 0.0023620 937516 Drinks_Per_Week
    ## 21 0.001031931  0.067 0.9464000 941280 Drinks_Per_Week
    ## 22 0.001029702 -1.708 0.0875800 941280 Drinks_Per_Week
    ## 23 0.001030696  0.695 0.4872000 941280 Drinks_Per_Week
    ## 24 0.001030953  0.494 0.6216000 941280 Drinks_Per_Week
    ## 25 0.001030924 -0.514 0.6071000 941280 Drinks_Per_Week
    ## 26 0.001031471  0.200 0.8412000 941280 Drinks_Per_Week
    ## 27 0.001032433  0.014 0.9886000 941280 Drinks_Per_Week
    ## 28 0.001030320 -1.042 0.2973000 941280 Drinks_Per_Week
    ## 29 0.001031485 -0.195 0.8457000 941280 Drinks_Per_Week
    ## 30 0.001029519  1.921 0.0547600 941280 Drinks_Per_Week
    ## 31 0.001057422 -0.866 0.3863000 893955 Drinks_Per_Week
    ## 32 0.001030238 -1.125 0.2606000 941280 Drinks_Per_Week
    ## 33 0.001030567  0.808 0.4190000 941280 Drinks_Per_Week
    ## 34 0.001031427  0.219 0.8265000 941280 Drinks_Per_Week
    ## 35 0.001029973 -1.406 0.1597000 941280 Drinks_Per_Week
    ## 36 0.001031420 -0.222 0.8242000 941280 Drinks_Per_Week
    ## 37 0.001574011 -0.481 0.6304000 403931 Drinks_Per_Week
    ## 38 0.001031294 -0.283 0.7775000 941280 Drinks_Per_Week

<br>

**Table 3:** Proxy SNPs for Alcohol Consumption

    ##   target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1  rs9272561        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Alcohol Consumption datasets

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
    ## 1                      C                    T        0.2091 -0.0005298950
    ## 2                      T                    C       -0.1813  0.0011754845
    ## 3                      G                    A        0.1297 -0.0017587300
    ## 4                      A                    C       -0.1393  0.0016939515
    ## 5                      T                    G        0.1046  0.0002258825
    ## 6                      G                    C        0.1867 -0.0011590200
    ## 7                      C                    T       -0.2697  0.0005092910
    ## 8                      G                    C        0.0809  0.0005374220
    ## 9                      T                    C        1.2135 -0.0002289753
    ## 10                     A                    G       -0.0965  0.0002062943
    ## 11                     G                    C        1.1399 -0.0014481400
    ## 12                     G                    C        0.1507 -0.0007570990
    ## 13                     T                    C       -0.0766  0.0021669678
    ## 14                     G                    C        0.3357  0.0000144541
    ## 15                     A                    C        0.3853  0.0007163337
    ## 16                     G                    A       -0.1541 -0.0011900800
    ## 17                     A                    G        0.0799  0.0002753635
    ## 18                     C                    G       -0.0782  0.0019777061
    ## 19                     T                    C        0.1995 -0.0005123814
    ## 20                     A                    G       -0.0833  0.0009500692
    ## 21                     G                    A        0.1387 -0.0000041310
    ## 22                     G                    A       -0.1348  0.0008326980
    ## 23                     C                    A        0.1837 -0.0019921000
    ## 24                     A                    G        0.0742  0.0003052553
    ## 25                     G                    A       -0.1380 -0.0002918560
    ## 26                     C                    T       -0.0748  0.0007369310
    ## 27                     T                    C        0.1244  0.0031332059
    ## 28                     T                    C       -0.1413  0.0000691394
    ## 29                     T                    C        0.0839 -0.0014440263
    ## 30                     C                    A        0.0817 -0.0008841790
    ## 31                     T                    C        0.1110 -0.0034244780
    ## 32                     G                    A       -0.0830 -0.0019489200
    ## 33                     G                    A        0.1400  0.0010962400
    ## 34                     C                    T        0.1279 -0.0002011400
    ## 35                     T                    C       -0.6136 -0.0009157277
    ## 36                     G                    A        0.0869 -0.0010735900
    ## 37                     T                    C       -0.0968  0.0007585567
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.05885630  0.05885630  FALSE       FALSE     FALSE     15BBm8
    ## 2    0.04476260  0.04476260  FALSE       FALSE     FALSE     15BBm8
    ## 3    0.66727500  0.66727500  FALSE       FALSE     FALSE     15BBm8
    ## 4    0.20418100  0.20418100  FALSE       FALSE     FALSE     15BBm8
    ## 5    0.56143500  0.56143500  FALSE       FALSE     FALSE     15BBm8
    ## 6    0.16460800  0.16460800  FALSE        TRUE     FALSE     15BBm8
    ## 7    0.03449530  0.03449530  FALSE       FALSE     FALSE     15BBm8
    ## 8    0.66253700  0.66253700  FALSE        TRUE     FALSE     15BBm8
    ## 9    0.01178820  0.01178820  FALSE       FALSE     FALSE     15BBm8
    ## 10   0.34703500  0.34703500  FALSE       FALSE     FALSE     15BBm8
    ## 11   0.15468800  0.15468800  FALSE        TRUE     FALSE     15BBm8
    ## 12   0.52832700  0.52832700  FALSE        TRUE      TRUE     15BBm8
    ## 13   0.45082000  0.45082000  FALSE       FALSE     FALSE     15BBm8
    ## 14   0.01704130  0.01704130  FALSE        TRUE     FALSE     15BBm8
    ## 15   0.02066720  0.02066720  FALSE       FALSE     FALSE     15BBm8
    ## 16   0.77110600  0.77110600  FALSE       FALSE     FALSE     15BBm8
    ## 17   0.66279500  0.66279500  FALSE       FALSE     FALSE     15BBm8
    ## 18   0.46395600  0.46395600  FALSE        TRUE      TRUE     15BBm8
    ## 19   0.05190560  0.05190560  FALSE       FALSE     FALSE     15BBm8
    ## 20   0.46264100  0.46264100  FALSE       FALSE     FALSE     15BBm8
    ## 21   0.06508340  0.06508340  FALSE       FALSE     FALSE     15BBm8
    ## 22   0.83992600  0.83992600  FALSE       FALSE     FALSE     15BBm8
    ## 23   0.41197700  0.41197700  FALSE       FALSE     FALSE     15BBm8
    ## 24   0.67619200  0.67619200  FALSE       FALSE     FALSE     15BBm8
    ## 25   0.08865120  0.08865120  FALSE       FALSE     FALSE     15BBm8
    ## 26   0.59216800  0.59216800  FALSE       FALSE     FALSE     15BBm8
    ## 27   0.14576500  0.14576500  FALSE       FALSE     FALSE     15BBm8
    ## 28   0.25353600  0.25353600  FALSE       FALSE     FALSE     15BBm8
    ## 29   0.70971300  0.70971300  FALSE       FALSE     FALSE     15BBm8
    ## 30   0.33181300  0.33181300  FALSE       FALSE     FALSE     15BBm8
    ## 31   0.20790800  0.20790800  FALSE       FALSE     FALSE     15BBm8
    ## 32   0.68050000  0.68050000  FALSE       FALSE     FALSE     15BBm8
    ## 33   0.61556700  0.61556700  FALSE       FALSE     FALSE     15BBm8
    ## 34   0.10579700  0.10579700  FALSE       FALSE     FALSE     15BBm8
    ## 35   0.00761697  0.00761697  FALSE       FALSE     FALSE     15BBm8
    ## 36   0.82607900  0.82607900  FALSE       FALSE     FALSE     15BBm8
    ## 37   0.65647400  0.65647400  FALSE       FALSE     FALSE     15BBm8
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           14    75398902 0.001030924    -0.514    0.6071000
    ## 2           10    59941791 0.001030223     1.141    0.2540000
    ## 3           11    85867875 0.001029702    -1.708    0.0875800
    ## 4            7   143099133 0.001029758     1.645    0.0999100
    ## 5           19    45071070 0.001031427     0.219    0.8265000
    ## 6           19     1039323 0.001030238    -1.125    0.2606000
    ## 7           11   121435587 0.001030953     0.494    0.6216000
    ## 8           10    11721119 0.001051706     0.511    0.6091000
    ## 9           19    45393516 0.001031420    -0.222    0.8242000
    ## 10          14    92938855 0.001031471     0.200    0.8412000
    ## 11          19    45387459 0.001029973    -1.406    0.1597000
    ## 12          19    45442528 0.001574011    -0.481    0.6304000
    ## 13           1   193627682 0.001030417     2.103    0.0354900
    ## 14          15    64724693 0.001032433     0.014    0.9886000
    ## 15          11    97694151 0.001030696     0.695    0.4872000
    ## 16           1   207747296 0.001031264    -1.154    0.2486000
    ## 17           5    88223420 0.001031324     0.267    0.7891000
    ## 18          17    56409089 0.001029519     1.921    0.0547600
    ## 19           8    98329581 0.001030948    -0.497    0.6194000
    ## 20           5   139710507 0.001030444     0.922    0.3565000
    ## 21           8    71901351 0.001032749    -0.004    0.9965000
    ## 22          19     1063443 0.001030567     0.808    0.4190000
    ## 23           2   127891427 0.001029507    -1.935    0.0530100
    ## 24           7    37882632 0.001031268     0.296    0.7670000
    ## 25          20    54998544 0.001031294    -0.283    0.7775000
    ## 26           3   128310107 0.001030673     0.715    0.4748000
    ## 27          11    47603006 0.001030660     3.040    0.0023620
    ## 28          11    60103385 0.001031931     0.067    0.9464000
    ## 29           7    99932049 0.001029976    -1.402    0.1608000
    ## 30           8    27226790 0.001030512    -0.858    0.3909000
    ## 31           2   127863224 0.001028372    -3.330    0.0008683
    ## 32           4    11723235 0.001029543    -1.893    0.0584000
    ## 33           8    27462481 0.001030299     1.064    0.2873000
    ## 34          17     4763551 0.001031485    -0.195    0.8457000
    ## 35          18    29088958 0.001057422    -0.866    0.3863000
    ## 36          15    82444437 0.001030320    -1.042    0.2973000
    ## 37           6    47432637 0.001030648     0.736    0.4616000
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              941280 Liu2019drnkwk23andMe            TRUE
    ## 2              941280 Liu2019drnkwk23andMe            TRUE
    ## 3              941280 Liu2019drnkwk23andMe            TRUE
    ## 4              941280 Liu2019drnkwk23andMe            TRUE
    ## 5              941280 Liu2019drnkwk23andMe            TRUE
    ## 6              941280 Liu2019drnkwk23andMe            TRUE
    ## 7              941280 Liu2019drnkwk23andMe            TRUE
    ## 8              904462 Liu2019drnkwk23andMe            TRUE
    ## 9              941280 Liu2019drnkwk23andMe            TRUE
    ## 10             941280 Liu2019drnkwk23andMe            TRUE
    ## 11             941280 Liu2019drnkwk23andMe            TRUE
    ## 12             403931 Liu2019drnkwk23andMe            TRUE
    ## 13             939356 Liu2019drnkwk23andMe            TRUE
    ## 14             941280 Liu2019drnkwk23andMe            TRUE
    ## 15             941280 Liu2019drnkwk23andMe            TRUE
    ## 16             939356 Liu2019drnkwk23andMe            TRUE
    ## 17             941280 Liu2019drnkwk23andMe            TRUE
    ## 18             941280 Liu2019drnkwk23andMe            TRUE
    ## 19             941280 Liu2019drnkwk23andMe            TRUE
    ## 20             941280 Liu2019drnkwk23andMe            TRUE
    ## 21             941280 Liu2019drnkwk23andMe            TRUE
    ## 22             941280 Liu2019drnkwk23andMe            TRUE
    ## 23             941280 Liu2019drnkwk23andMe            TRUE
    ## 24             941280 Liu2019drnkwk23andMe            TRUE
    ## 25             941280 Liu2019drnkwk23andMe            TRUE
    ## 26             941280 Liu2019drnkwk23andMe            TRUE
    ## 27             937516 Liu2019drnkwk23andMe            TRUE
    ## 28             941280 Liu2019drnkwk23andMe            TRUE
    ## 29             941280 Liu2019drnkwk23andMe            TRUE
    ## 30             941280 Liu2019drnkwk23andMe            TRUE
    ## 31             941280 Liu2019drnkwk23andMe            TRUE
    ## 32             941280 Liu2019drnkwk23andMe            TRUE
    ## 33             941280 Liu2019drnkwk23andMe            TRUE
    ## 34             941280 Liu2019drnkwk23andMe            TRUE
    ## 35             893955 Liu2019drnkwk23andMe            TRUE
    ## 36             941280 Liu2019drnkwk23andMe            TRUE
    ## 37             941280 Liu2019drnkwk23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           14     75398902      0.0393   5.320611
    ## 2             reported           10     59941791      0.0387  -4.684755
    ## 3             reported           11     85867875      0.0161   8.055900
    ## 4             reported            7    143099133      0.0206  -6.762136
    ## 5             reported           19     45071070      0.0216   4.842590
    ## 6             reported           19      1039323      0.0371   5.032345
    ## 7             reported           11    121435587      0.0410  -6.578049
    ## 8             reported           10     11721119      0.0170   4.758820
    ## 9             reported           19     45393516      0.0966  12.562112
    ## 10            reported           14     92938855      0.0176  -5.482955
    ## 11            reported           19     45387459      0.0256  44.527344
    ## 12            reported           19     45442528      0.0184   8.190217
    ## 13            reported            1    193627682      0.0160  -4.787500
    ## 14            reported           15     64724693      0.0706   4.754958
    ## 15            reported           11     97694151      0.0842   4.576010
    ## 16            reported            1    207747296      0.0196  -7.862240
    ## 17            reported            5     88223420      0.0170   4.700000
    ## 18            reported           17     56409089      0.0159  -4.918239
    ## 19            reported            8     98329581      0.0414   4.818841
    ## 20            reported            5    139710507      0.0156  -5.339740
    ## 21            reported            8     71901351      0.0297   4.670034
    ## 22            reported           19      1063443      0.0224  -6.017860
    ## 23            reported            2    127891427      0.0172  10.680233
    ## 24            reported            7     37882632      0.0162   4.580250
    ## 25            reported           20     54998544      0.0283  -4.876325
    ## 26            reported            3    128310107      0.0160  -4.675000
    ## 27            reported           11     47603006      0.0258   4.821705
    ## 28            reported           11     60103385      0.0196  -7.209184
    ## 29            reported            7     99932049      0.0179   4.687150
    ## 30            reported            8     27226790      0.0157   5.203822
    ## 31            reported            2    127863224      0.0207   5.362319
    ## 32            reported            4     11723235      0.0172  -4.825580
    ## 33            reported            8     27462481      0.0165   8.484850
    ## 34            reported           17      4763551      0.0273   4.684982
    ## 35            reported           18     29088958      0.1123  -5.463936
    ## 36            reported           15     82444437      0.0186   4.672040
    ## 37            reported            6     47432637      0.0166  -5.831330
    ##    pval.exposure samplesize.exposure        exposure mr_keep.exposure
    ## 1      1.004e-07               54162 Lambert2013load             TRUE
    ## 2      2.786e-06               54162 Lambert2013load             TRUE
    ## 3      6.534e-16               54162 Lambert2013load             TRUE
    ## 4      1.417e-11               54162 Lambert2013load             TRUE
    ## 5      1.259e-06               54162 Lambert2013load             TRUE
    ## 6      4.813e-07               54162 Lambert2013load             TRUE
    ## 7      4.976e-11               54162 Lambert2013load             TRUE
    ## 8      1.952e-06               54162 Lambert2013load             TRUE
    ## 9      3.695e-36               54162 Lambert2013load             TRUE
    ## 10     4.097e-08               54162 Lambert2013load             TRUE
    ## 11    1.000e-200               54162 Lambert2013load             TRUE
    ## 12     2.920e-16               54162 Lambert2013load             TRUE
    ## 13     1.616e-06               54162 Lambert2013load             TRUE
    ## 14     1.965e-06               54162 Lambert2013load             TRUE
    ## 15     4.727e-06               54162 Lambert2013load             TRUE
    ## 16     3.653e-15               54162 Lambert2013load             TRUE
    ## 17     2.547e-06               54162 Lambert2013load             TRUE
    ## 18     9.522e-07               54162 Lambert2013load             TRUE
    ## 19     1.480e-06               54162 Lambert2013load             TRUE
    ## 20     9.219e-08               54162 Lambert2013load             TRUE
    ## 21     3.089e-06               54162 Lambert2013load             TRUE
    ## 22     1.701e-09               54162 Lambert2013load             TRUE
    ## 23     1.001e-26               54162 Lambert2013load             TRUE
    ## 24     4.557e-06               54162 Lambert2013load             TRUE
    ## 25     1.054e-06               54162 Lambert2013load             TRUE
    ## 26     2.768e-06               54162 Lambert2013load             TRUE
    ## 27     1.440e-06               54162 Lambert2013load             TRUE
    ## 28     5.354e-13               54162 Lambert2013load             TRUE
    ## 29     2.947e-06               54162 Lambert2013load             TRUE
    ## 30     1.991e-07               54162 Lambert2013load             TRUE
    ## 31     7.998e-08               54162 Lambert2013load             TRUE
    ## 32     1.462e-06               54162 Lambert2013load             TRUE
    ## 33     2.477e-17               54162 Lambert2013load             TRUE
    ## 34     2.871e-06               54162 Lambert2013load             TRUE
    ## 35     4.630e-08               54162 Lambert2013load             TRUE
    ## 36     2.819e-06               54162 Lambert2013load             TRUE
    ## 37     5.300e-09               54162 Lambert2013load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 2              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 3              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 4              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 5              reported      zW4z0I      2    TRUE          FALSE 5e-06
    ## 6              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 7              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 8              reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 9              reported      zW4z0I      2    TRUE          FALSE 5e-06
    ## 10             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 11             reported      zW4z0I      2    TRUE          FALSE 5e-06
    ## 12             reported      zW4z0I      2   FALSE          FALSE 5e-06
    ## 13             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 14             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 15             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 16             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 17             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 18             reported      zW4z0I      2   FALSE           TRUE 5e-06
    ## 19             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 20             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 21             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 22             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 23             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 24             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 25             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 26             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 27             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 28             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 29             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 30             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 31             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 32             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 33             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 34             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 35             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 36             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ## 37             reported      zW4z0I      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.329887e-07        1.0000          TRUE
    ## 2     1.102721e-06        1.0000          TRUE
    ## 3     2.795662e-06        1.0000          TRUE
    ## 4     2.565041e-06        1.0000          TRUE
    ## 5               NA            NA            NA
    ## 6     1.061355e-06        1.0000          TRUE
    ## 7     8.826146e-08        1.0000          TRUE
    ## 8     3.720598e-07        1.0000          TRUE
    ## 9               NA            NA            NA
    ## 10    1.555096e-08        1.0000          TRUE
    ## 11              NA            NA            NA
    ## 12              NA            NA            NA
    ## 13    4.460966e-06        1.0000          TRUE
    ## 14    1.116382e-07        1.0000          TRUE
    ## 15    1.439169e-06        1.0000          TRUE
    ## 16    1.821339e-06        1.0000          TRUE
    ## 17    1.194718e-07        1.0000          TRUE
    ## 18              NA            NA            NA
    ## 19    1.251542e-07        1.0000          TRUE
    ## 20    7.815759e-07        1.0000          TRUE
    ## 21    1.357262e-08        1.0000          TRUE
    ## 22    5.310743e-07        1.0000          TRUE
    ## 23    3.572089e-06        1.0000          TRUE
    ## 24    1.372829e-07        1.0000          TRUE
    ## 25    1.737228e-07        1.0000          TRUE
    ## 26    4.572123e-07        1.0000          TRUE
    ## 27    1.078131e-05        0.0384         FALSE
    ## 28    2.777153e-09        1.0000          TRUE
    ## 29    1.906086e-06        1.0000          TRUE
    ## 30    6.707122e-07        1.0000          TRUE
    ## 31    1.132586e-05        0.0320         FALSE
    ## 32    4.129241e-06        1.0000          TRUE
    ## 33    1.530122e-06        1.0000          TRUE
    ## 34    8.646199e-09        1.0000          TRUE
    ## 35    4.340905e-06        1.0000          TRUE
    ## 36    1.011572e-06        1.0000          TRUE
    ## 37    4.640519e-07        1.0000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Alcohol
Consumption GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1  rs11083742          19    45071070     1.259e-06       0.8265
    ## 2 rs117310449          19    45393516     3.695e-36       0.8242
    ## 3  rs12972156          19    45387459    1.000e-200       0.1597
    ## 4  rs12977604          19    45442528     2.920e-16       0.6304

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
    ## 1            FALSE   0.01985537 34.26636  0.05 4.845930 0.5953868
    ## 2             TRUE   0.01890655 34.77177  0.05 4.653597 0.5782055

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
on Alcohol Consumption. <br>

**Table 6** MR causaul estimates for LOAD on Alcohol Consumption

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 2      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 3      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 4      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   32 -0.0008558605
    ## 2                           Weighted median   32  0.0005652736
    ## 3                             Weighted mode   32  0.0005555496
    ## 4                                  MR Egger   32  0.0022780855
    ##             se      pval
    ## 1 0.0009570584 0.3711820
    ## 2 0.0013706129 0.6800287
    ## 3 0.0013492699 0.6833624
    ## 4 0.0020813080 0.2824264

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Alcohol Consumption and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 2      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 45.74736   30 0.03284127
    ## 2 Inverse variance weighted 50.85014   31 0.01375177

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##   egger_intercept           se       pval
    ## 1   -0.0007258362 0.0003967869 0.07731276

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome        exposure    pt
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 54.50641 0.0166

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 2      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 3      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 4      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   30 -0.0008839531
    ## 2                           Weighted median   30  0.0005585427
    ## 3                             Weighted mode   30  0.0005903934
    ## 4                                  MR Egger   30  0.0022288454
    ##             se      pval
    ## 1 0.0009687617 0.3615284
    ## 2 0.0014167806 0.6934085
    ## 3 0.0012370065 0.6367431
    ## 4 0.0016931197 0.1987101

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ## 2      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 25.46149   28 0.6026185
    ## 2 Inverse variance weighted 30.48677   29 0.3900090

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome        exposure
    ## 1      zW4z0I     15BBm8 Liu2019drnkwk23andMe Lambert2013load
    ##   egger_intercept           se       pval
    ## 1    -0.000738411 0.0003293959 0.03308695

<br>
