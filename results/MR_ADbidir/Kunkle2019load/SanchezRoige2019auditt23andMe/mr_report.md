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

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1     rs679515     1 207750568   T   C 0.8126 -0.1508 0.0183 -8.240440
    ## 2    rs7584040     2 127863224   C   T 0.2261  0.0862 0.0172  5.011628
    ## 3    rs6733839     2 127892810   C   T 0.4067  0.1693 0.0154 10.993506
    ## 4   rs35695568     2 186794162   G   T 0.0922  0.1152 0.0247  4.663968
    ## 5   rs10933431     2 233981912   G   C 0.7774  0.1001 0.0194  5.159794
    ## 6    rs6805148     3  45101639   A   C 0.0864 -0.1293 0.0257 -5.031130
    ## 7   rs28660482     4  66245059   T   A 0.0243  0.2220 0.0475  4.673684
    ## 8    rs6822989     4 104176240   C   T 0.0082  0.4361 0.0940  4.639362
    ## 9   rs35868327     5  52665230   T   A 0.0132 -0.3753 0.0760 -4.938158
    ## 10  rs11168036     5 139707439   T   G 0.5033 -0.0754 0.0143 -5.272730
    ## 11  rs34665982     6  32560306   T   C 0.5213 -0.0967 0.0166 -5.825300
    ## 12 rs114812713     6  41034000   G   C 0.0301  0.2980 0.0431  6.914153
    ## 13   rs1385742     6  47595155   A   T 0.6344 -0.0876 0.0157 -5.579620
    ## 14 rs143429938     7  33721795   C   T 0.0211  0.3535 0.0769  4.596879
    ## 15   rs9649710     7  50322832   A   G 0.6331  0.0676 0.0148  4.567570
    ## 16 rs117240937     7 127426090   G   A 0.0173 -0.3122 0.0672 -4.645833
    ## 17  rs11767557     7 143109139   T   C 0.1968 -0.1028 0.0182 -5.648350
    ## 18  rs73223431     8  27219987   C   T 0.3669  0.0936 0.0153  6.117647
    ## 19    rs867230     8  27468503   C   A 0.6029  0.1333 0.0158  8.436709
    ## 20  rs13252043     8  71551628   C   T 0.0984  0.1140 0.0237  4.810127
    ## 21   rs6559689     9  85450616   C   T 0.0504  0.1585 0.0335  4.731343
    ## 22  rs12416487    10  11721057   A   T 0.6519  0.0850 0.0154  5.519480
    ## 23   rs3740688    11  47380340   G   T 0.5524  0.0935 0.0144  6.493056
    ## 24   rs1582763    11  60021948   G   A 0.3729 -0.1232 0.0149 -8.268456
    ## 25   rs3851179    11  85868640   T   C 0.6410  0.1198 0.0148  8.094590
    ## 26  rs11218343    11 121435587   T   C 0.0401 -0.2053 0.0369 -5.563690
    ## 27   rs9787911    11 131769402   T   C 0.4249  0.0662 0.0144  4.597220
    ## 28 rs117394726    12 127222883   A   C 0.0400  0.2193 0.0465  4.716130
    ## 29  rs17125924    14  53391680   A   G 0.0926  0.1222 0.0246  4.967480
    ## 30  rs12590654    14  92938855   G   A 0.3353 -0.0906 0.0157 -5.770701
    ## 31    rs383902    15  59034174   C   T 0.3274 -0.0698 0.0151 -4.622517
    ## 32  rs28588186    16  19910313   C   G 0.1981 -0.0880 0.0181 -4.861880
    ## 33  rs62039712    16  79355857   G   A 0.1158  0.1528 0.0288  5.305556
    ## 34  rs34971488    16  81779775   G   A 0.2205  0.0940 0.0198  4.747475
    ## 35   rs2632516    17  56409089   G   C 0.4402 -0.0748 0.0147 -5.088435
    ## 36  rs12151021    19   1050874   A   G 0.6753 -0.1071 0.0169 -6.337280
    ## 37   rs8111708    19  18558876   A   G 0.3427  0.0696 0.0151  4.609270
    ## 38 rs111358663    19  45196958   T   A 0.0111 -0.5369 0.0795 -6.753459
    ## 39   rs4803765    19  45358448   C   T 0.0243  0.7165 0.0610 11.745902
    ## 40  rs12972156    19  45387459   C   G 0.2027  0.9653 0.0189 51.074100
    ## 41 rs117310449    19  45393516   C   T 0.0130  0.9879 0.0691 14.296671
    ## 42  rs73033507    19  45431403   C   T 0.0239 -0.3620 0.0657 -5.509893
    ## 43 rs114533385    19  45436753   C   T 0.0210  0.8281 0.0661 12.527988
    ## 44 rs118004808    19  45439498   C   T 0.0177 -0.5523 0.1015 -5.441379
    ## 45 rs139995984    19  45574482   G   C 0.0155 -0.5343 0.0879 -6.078498
    ## 46  rs80182863    19  45653226   C   T 0.0234  0.2977 0.0623  4.778491
    ## 47   rs6014724    20  54998544   A   G 0.0920 -0.1319 0.0259 -5.092660
    ## 48   rs2830489    21  28148191   C   T 0.2882 -0.0837 0.0162 -5.166667
    ## 49 rs138727474    22  21926584   C   T 0.0269 -0.2515 0.0545 -4.614679
    ##                P     N TRAIT
    ## 1   1.555000e-16 63926  LOAD
    ## 2   5.341000e-07 63926  LOAD
    ## 3   4.022000e-28 63926  LOAD
    ## 4   3.200000e-06 63926  LOAD
    ## 5   2.552000e-07 63926  LOAD
    ## 6   4.774000e-07 63926  LOAD
    ## 7   2.900000e-06 63926  LOAD
    ## 8   3.487000e-06 63926  LOAD
    ## 9   7.796000e-07 63926  LOAD
    ## 10  1.432000e-07 63926  LOAD
    ## 11  5.798000e-09 63926  LOAD
    ## 12  4.467000e-12 63926  LOAD
    ## 13  2.232000e-08 63926  LOAD
    ## 14  4.253000e-06 63926  LOAD
    ## 15  4.794000e-06 63926  LOAD
    ## 16  3.350000e-06 63926  LOAD
    ## 17  1.561000e-08 63926  LOAD
    ## 18  8.342000e-10 63926  LOAD
    ## 19  3.492000e-17 63926  LOAD
    ## 20  1.570000e-06 63926  LOAD
    ## 21  2.169000e-06 63926  LOAD
    ## 22  3.417000e-08 63926  LOAD
    ## 23  9.702000e-11 63926  LOAD
    ## 24  1.186000e-16 63926  LOAD
    ## 25  5.809000e-16 63926  LOAD
    ## 26  2.633000e-08 63926  LOAD
    ## 27  4.386000e-06 63926  LOAD
    ## 28  2.459000e-06 63926  LOAD
    ## 29  6.621000e-07 63926  LOAD
    ## 30  8.729000e-09 63926  LOAD
    ## 31  3.812000e-06 63926  LOAD
    ## 32  1.115000e-06 63926  LOAD
    ## 33  1.171000e-07 63926  LOAD
    ## 34  2.067000e-06 63926  LOAD
    ## 35  3.671000e-07 63926  LOAD
    ## 36  2.562000e-10 63926  LOAD
    ## 37  3.946000e-06 63926  LOAD
    ## 38  1.436000e-11 63926  LOAD
    ## 39  7.131000e-32 63926  LOAD
    ## 40 2.225074e-308 63926  LOAD
    ## 41  2.275000e-46 63926  LOAD
    ## 42  3.646000e-08 63926  LOAD
    ## 43  5.434000e-36 63926  LOAD
    ## 44  5.274000e-08 63926  LOAD
    ## 45  1.192000e-09 63926  LOAD
    ## 46  1.750000e-06 63926  LOAD
    ## 47  3.652000e-07 63926  LOAD
    ## 48  2.422000e-07 63926  LOAD
    ## 49  3.904000e-06 63926  LOAD

<br>

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in AUDIT Total

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1     rs679515     1 207750568    T    C 0.77687400  2.384180e-03
    ## 2    rs7584040     2 127863224    C    T 0.20790800 -4.022380e-03
    ## 3    rs6733839     2 127892810    C    T 0.39480400 -7.754736e-04
    ## 4   rs35695568     2 186794162    G    T 0.09880130 -2.490326e-03
    ## 5   rs10933431     2 233981912    G    C 0.76053000 -7.207392e-03
    ## 6    rs6805148     3  45101639    A    C 0.08409510  3.285560e-04
    ## 7   rs28660482     4  66245059    T    A 0.03339420  1.182549e-03
    ## 8    rs6822989     4 104176240    C    T 0.00435888 -8.536761e-04
    ## 9   rs35868327    NA        NA <NA> <NA>         NA            NA
    ## 10  rs11168036     5 139707439    T    G 0.46130100  1.690730e-03
    ## 11  rs34665982    NA        NA <NA> <NA>         NA            NA
    ## 12 rs114812713     6  41034000    G    C 0.01853210  2.860234e-03
    ## 13   rs1385742     6  47595155    A    T 0.65556000  1.665330e-03
    ## 14 rs143429938     7  33721795    C    T 0.02530030  5.248185e-03
    ## 15   rs9649710     7  50322832    A    G 0.64184500 -1.389620e-03
    ## 16 rs117240937    NA        NA <NA> <NA>         NA            NA
    ## 17  rs11767557     7 143109139    T    C 0.20315900  1.608880e-03
    ## 18  rs73223431     8  27219987    C    T 0.29417100  6.331075e-04
    ## 19    rs867230     8  27468503    C    A 0.60841800 -2.847633e-03
    ## 20  rs13252043     8  71551628    C    T 0.06706630  2.104707e-03
    ## 21   rs6559689     9  85450616    C    T 0.05986940 -2.235954e-04
    ## 22  rs12416487    10  11721057    A    T 0.66439400  2.446730e-03
    ## 23   rs3740688    11  47380340    G    T 0.52621000  1.196944e-02
    ## 24   rs1582763    11  60021948    G    A 0.32763000 -3.773449e-03
    ## 25   rs3851179    11  85868640    T    C 0.66715100 -7.380780e-03
    ## 26  rs11218343    11 121435587    T    C 0.03449530  4.159290e-03
    ## 27   rs9787911    11 131769402    T    C 0.44202100  1.527360e-04
    ## 28 rs117394726    12 127222883    A    C 0.04818840 -9.218230e-03
    ## 29  rs17125924    14  53391680    A    G 0.09941940 -5.515590e-04
    ## 30  rs12590654    14  92938855    G    A 0.34703500 -5.299710e-04
    ## 31    rs383902    15  59034174    C    T 0.34282100  5.183248e-03
    ## 32  rs28588186    16  19910313    C    G 0.17842800 -3.329900e-03
    ## 33  rs62039712    16  79355857    G    A 0.09422940 -4.023155e-04
    ## 34  rs34971488    16  81779775    G    A 0.24727300  2.103669e-03
    ## 35   rs2632516    17  56409089    G    C 0.46395600  2.314894e-03
    ## 36  rs12151021    19   1050874    A    G 0.67926600 -5.559350e-03
    ## 37   rs8111708    19  18558876    A    G 0.36110100 -7.729780e-04
    ## 38 rs111358663    NA        NA <NA> <NA>         NA            NA
    ## 39   rs4803765    19  45358448    C    T 0.01856760 -1.181075e-03
    ## 40  rs12972156    19  45387459    C    G 0.15468800 -5.350060e-03
    ## 41 rs117310449    19  45393516    C    T 0.01178820  5.332681e-05
    ## 42  rs73033507    NA        NA <NA> <NA>         NA            NA
    ## 43 rs114533385    19  45436753    C    T 0.00751466 -1.503936e-03
    ## 44 rs118004808    NA        NA <NA> <NA>         NA            NA
    ## 45 rs139995984    NA        NA <NA> <NA>         NA            NA
    ## 46  rs80182863    19  45653226    C    T 0.03095410 -2.866563e-03
    ## 47   rs6014724    20  54998544    A    G 0.08865120  1.229000e-04
    ## 48   rs2830489    21  28148191    C    T 0.32482700  1.041509e-03
    ## 49 rs138727474    22  21926584    C    T 0.02902620 -5.369330e-04
    ##             SE      Z         P      N       TRAIT
    ## 1  0.002654988  0.898 3.694e-01 141688 AUDIT_Total
    ## 2  0.002660304 -1.512 1.305e-01 140702 AUDIT_Total
    ## 3  0.002730541 -0.284 7.762e-01 134517 AUDIT_Total
    ## 4  0.002654932 -0.938 3.484e-01 141664 AUDIT_Total
    ## 5  0.002642006 -2.728 6.375e-03 141932 AUDIT_Total
    ## 6  0.002671186  0.123 9.019e-01 140835 AUDIT_Total
    ## 7  0.002657412  0.445 6.563e-01 141821 AUDIT_Total
    ## 8  0.002659427 -0.321 7.481e-01 141748 AUDIT_Total
    ## 9           NA     NA        NA     NA        <NA>
    ## 10 0.002679444  0.631 5.282e-01 139325 AUDIT_Total
    ## 11          NA     NA        NA     NA        <NA>
    ## 12 0.002658210  1.076 2.820e-01 141215 AUDIT_Total
    ## 13 0.002699070  0.617 5.369e-01 137318 AUDIT_Total
    ## 14 0.002655964  1.976 4.821e-02 140877 AUDIT_Total
    ## 15 0.002657018 -0.523 6.009e-01 141785 AUDIT_Total
    ## 16          NA     NA        NA     NA        <NA>
    ## 17 0.002654922  0.606 5.444e-01 141932 AUDIT_Total
    ## 18 0.002671340  0.237 8.130e-01 140605 AUDIT_Total
    ## 19 0.002694071 -1.057 2.907e-01 137490 AUDIT_Total
    ## 20 0.002654108  0.793 4.280e-01 141863 AUDIT_Total
    ## 21 0.002661849 -0.084 9.330e-01 141932 AUDIT_Total
    ## 22 0.002659488  0.920 3.577e-01 141192 AUDIT_Total
    ## 23 0.002643426  4.528 5.968e-06 140773 AUDIT_Total
    ## 24 0.002651756 -1.423 1.548e-01 141670 AUDIT_Total
    ## 25 0.002641654 -2.794 5.205e-03 141932 AUDIT_Total
    ## 26 0.002649231  1.570 1.163e-01 141846 AUDIT_Total
    ## 27 0.002679574  0.057 9.543e-01 140166 AUDIT_Total
    ## 28 0.002671950 -3.450 5.600e-04 138349 AUDIT_Total
    ## 29 0.002664537 -0.207 8.360e-01 141370 AUDIT_Total
    ## 30 0.002690208 -0.197 8.435e-01 138706 AUDIT_Total
    ## 31 0.002658076  1.950 5.120e-02 140668 AUDIT_Total
    ## 32 0.002666053 -1.249 2.117e-01 140266 AUDIT_Total
    ## 33 0.002736840 -0.147 8.833e-01 134123 AUDIT_Total
    ## 34 0.002724959  0.772 4.399e-01 134595 AUDIT_Total
    ## 35 0.002676178  0.865 3.869e-01 139476 AUDIT_Total
    ## 36 0.002668916 -2.083 3.729e-02 139445 AUDIT_Total
    ## 37 0.002665443 -0.290 7.717e-01 141150 AUDIT_Total
    ## 38          NA     NA        NA     NA        <NA>
    ## 39 0.002672115 -0.442 6.585e-01 140269 AUDIT_Total
    ## 40 0.002660397 -2.011 4.430e-02 140385 AUDIT_Total
    ## 41 0.002666340  0.020 9.840e-01 141799 AUDIT_Total
    ## 42          NA     NA        NA     NA        <NA>
    ## 43 0.002661833 -0.565 5.718e-01 141233 AUDIT_Total
    ## 44          NA     NA        NA     NA        <NA>
    ## 45          NA     NA        NA     NA        <NA>
    ## 46 0.002664092 -1.076 2.817e-01 140591 AUDIT_Total
    ## 47 0.002671739  0.046 9.633e-01 141041 AUDIT_Total
    ## 48 0.002656911  0.392 6.951e-01 141932 AUDIT_Total
    ## 49 0.002698156 -0.199 8.423e-01 137889 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

    ##    target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1  rs35868327 rs13182752 1.000000 1.000000 GA/TG  NA     5  52672171
    ## 2 rs117240937 rs77214615 0.889956 0.943375 AG/GA  NA     7 127331293
    ## 3  rs34665982       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 4 rs111358663       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 5  rs73033507       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 6 rs118004808       <NA>       NA       NA  <NA>  NA    NA        NA
    ## 7 rs139995984       <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy        AF          BETA          SE      Z      P
    ## 1         G         A 0.0161583 -0.0009804912 0.002657158 -0.369 0.7122
    ## 2         A         G 0.0110869  0.0028683100 0.002660772  1.078 0.2808
    ## 3      <NA>      <NA>        NA            NA          NA     NA     NA
    ## 4      <NA>      <NA>        NA            NA          NA     NA     NA
    ## 5      <NA>      <NA>        NA            NA          NA     NA     NA
    ## 6      <NA>      <NA>        NA            NA          NA     NA     NA
    ## 7      <NA>      <NA>        NA            NA          NA     NA     NA
    ##        N       TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 141932 AUDIT_Total    G         A    T         G    G    T          TRUE
    ## 2 140941 AUDIT_Total    A         G    G         A    A    G          TRUE
    ## 3     NA        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 4     NA        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 5     NA        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6     NA        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 7     NA        <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

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
    ## 1   rs10933431                      C                     G
    ## 2   rs11168036                      G                     T
    ## 3   rs11218343                      C                     T
    ## 4  rs114533385                      T                     C
    ## 5  rs114812713                      C                     G
    ## 6  rs117240937                      A                     G
    ## 7  rs117310449                      T                     C
    ## 8  rs117394726                      C                     A
    ## 9   rs11767557                      C                     T
    ## 10  rs12151021                      G                     A
    ## 11  rs12416487                      T                     A
    ## 12  rs12590654                      A                     G
    ## 13  rs12972156                      G                     C
    ## 14  rs13252043                      T                     C
    ## 15   rs1385742                      T                     A
    ## 16 rs138727474                      T                     C
    ## 17 rs143429938                      T                     C
    ## 18   rs1582763                      A                     G
    ## 19  rs17125924                      G                     A
    ## 20   rs2632516                      C                     G
    ## 21   rs2830489                      T                     C
    ## 22  rs28588186                      G                     C
    ## 23  rs28660482                      A                     T
    ## 24  rs34971488                      A                     G
    ## 25  rs35695568                      T                     G
    ## 26  rs35868327                      A                     T
    ## 27   rs3740688                      T                     G
    ## 28    rs383902                      T                     C
    ## 29   rs3851179                      C                     T
    ## 30   rs4803765                      T                     C
    ## 31   rs6014724                      G                     A
    ## 32  rs62039712                      A                     G
    ## 33   rs6559689                      T                     C
    ## 34   rs6733839                      T                     C
    ## 35    rs679515                      C                     T
    ## 36   rs6805148                      C                     A
    ## 37   rs6822989                      T                     C
    ## 38  rs73223431                      T                     C
    ## 39   rs7584040                      T                     C
    ## 40  rs80182863                      T                     C
    ## 41   rs8111708                      G                     A
    ## 42    rs867230                      A                     C
    ## 43   rs9649710                      G                     A
    ## 44   rs9787911                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      C                    G        0.1001 -7.207392e-03
    ## 2                      G                    T       -0.0754  1.690730e-03
    ## 3                      C                    T       -0.2053  4.159290e-03
    ## 4                      T                    C        0.8281 -1.503936e-03
    ## 5                      C                    G        0.2980  2.860234e-03
    ## 6                      A                    G       -0.3122  2.868310e-03
    ## 7                      T                    C        0.9879  5.332681e-05
    ## 8                      C                    A        0.2193 -9.218230e-03
    ## 9                      C                    T       -0.1028  1.608880e-03
    ## 10                     G                    A       -0.1071 -5.559350e-03
    ## 11                     T                    A        0.0850  2.446730e-03
    ## 12                     A                    G       -0.0906 -5.299710e-04
    ## 13                     G                    C        0.9653 -5.350060e-03
    ## 14                     T                    C        0.1140  2.104707e-03
    ## 15                     T                    A       -0.0876  1.665330e-03
    ## 16                     T                    C       -0.2515 -5.369330e-04
    ## 17                     T                    C        0.3535  5.248185e-03
    ## 18                     A                    G       -0.1232 -3.773449e-03
    ## 19                     G                    A        0.1222 -5.515590e-04
    ## 20                     C                    G       -0.0748  2.314894e-03
    ## 21                     T                    C       -0.0837  1.041509e-03
    ## 22                     G                    C       -0.0880 -3.329900e-03
    ## 23                     A                    T        0.2220  1.182549e-03
    ## 24                     A                    G        0.0940  2.103669e-03
    ## 25                     T                    G        0.1152 -2.490326e-03
    ## 26                     G                    T       -0.3753 -9.804912e-04
    ## 27                     T                    G        0.0935  1.196944e-02
    ## 28                     T                    C       -0.0698  5.183248e-03
    ## 29                     C                    T        0.1198 -7.380780e-03
    ## 30                     T                    C        0.7165 -1.181075e-03
    ## 31                     G                    A       -0.1319  1.229000e-04
    ## 32                     A                    G        0.1528 -4.023155e-04
    ## 33                     T                    C        0.1585 -2.235954e-04
    ## 34                     T                    C        0.1693 -7.754736e-04
    ## 35                     C                    T       -0.1508  2.384180e-03
    ## 36                     C                    A       -0.1293  3.285560e-04
    ## 37                     T                    C        0.4361 -8.536761e-04
    ## 38                     T                    C        0.0936  6.331075e-04
    ## 39                     T                    C        0.0862 -4.022380e-03
    ## 40                     T                    C        0.2977 -2.866563e-03
    ## 41                     G                    A        0.0696 -7.729780e-04
    ## 42                     A                    C        0.1333 -2.847633e-03
    ## 43                     G                    A        0.0676 -1.389620e-03
    ## 44                     C                    T        0.0662  1.527360e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.7774  0.76053000  FALSE        TRUE     FALSE     MwHS5l
    ## 2        0.5033  0.46130100  FALSE       FALSE     FALSE     MwHS5l
    ## 3        0.0401  0.03449530  FALSE       FALSE     FALSE     MwHS5l
    ## 4        0.0210  0.00751466  FALSE       FALSE     FALSE     MwHS5l
    ## 5        0.0301  0.01853210  FALSE        TRUE     FALSE     MwHS5l
    ## 6        0.0173  0.01108690  FALSE       FALSE     FALSE     MwHS5l
    ## 7        0.0130  0.01178820  FALSE       FALSE     FALSE     MwHS5l
    ## 8        0.0400  0.04818840  FALSE       FALSE     FALSE     MwHS5l
    ## 9        0.1968  0.20315900  FALSE       FALSE     FALSE     MwHS5l
    ## 10       0.6753  0.67926600  FALSE       FALSE     FALSE     MwHS5l
    ## 11       0.6519  0.66439400  FALSE        TRUE     FALSE     MwHS5l
    ## 12       0.3353  0.34703500  FALSE       FALSE     FALSE     MwHS5l
    ## 13       0.2027  0.15468800  FALSE        TRUE     FALSE     MwHS5l
    ## 14       0.0984  0.06706630  FALSE       FALSE     FALSE     MwHS5l
    ## 15       0.6344  0.65556000  FALSE        TRUE     FALSE     MwHS5l
    ## 16       0.0269  0.02902620  FALSE       FALSE     FALSE     MwHS5l
    ## 17       0.0211  0.02530030  FALSE       FALSE     FALSE     MwHS5l
    ## 18       0.3729  0.32763000  FALSE       FALSE     FALSE     MwHS5l
    ## 19       0.0926  0.09941940  FALSE       FALSE     FALSE     MwHS5l
    ## 20       0.4402  0.46395600  FALSE        TRUE      TRUE     MwHS5l
    ## 21       0.2882  0.32482700  FALSE       FALSE     FALSE     MwHS5l
    ## 22       0.1981  0.17842800  FALSE        TRUE     FALSE     MwHS5l
    ## 23       0.0243  0.03339420  FALSE        TRUE     FALSE     MwHS5l
    ## 24       0.2205  0.24727300  FALSE       FALSE     FALSE     MwHS5l
    ## 25       0.0922  0.09880130  FALSE       FALSE     FALSE     MwHS5l
    ## 26       0.0132  0.01615830   TRUE        TRUE     FALSE     MwHS5l
    ## 27       0.5524  0.52621000  FALSE       FALSE     FALSE     MwHS5l
    ## 28       0.3274  0.34282100  FALSE       FALSE     FALSE     MwHS5l
    ## 29       0.6410  0.66715100  FALSE       FALSE     FALSE     MwHS5l
    ## 30       0.0243  0.01856760  FALSE       FALSE     FALSE     MwHS5l
    ## 31       0.0920  0.08865120  FALSE       FALSE     FALSE     MwHS5l
    ## 32       0.1158  0.09422940  FALSE       FALSE     FALSE     MwHS5l
    ## 33       0.0504  0.05986940  FALSE       FALSE     FALSE     MwHS5l
    ## 34       0.4067  0.39480400  FALSE       FALSE     FALSE     MwHS5l
    ## 35       0.8126  0.77687400  FALSE       FALSE     FALSE     MwHS5l
    ## 36       0.0864  0.08409510  FALSE       FALSE     FALSE     MwHS5l
    ## 37       0.0082  0.00435888  FALSE       FALSE     FALSE     MwHS5l
    ## 38       0.3669  0.29417100  FALSE       FALSE     FALSE     MwHS5l
    ## 39       0.2261  0.20790800  FALSE       FALSE     FALSE     MwHS5l
    ## 40       0.0234  0.03095410  FALSE       FALSE     FALSE     MwHS5l
    ## 41       0.3427  0.36110100  FALSE       FALSE     FALSE     MwHS5l
    ## 42       0.6029  0.60841800  FALSE       FALSE     FALSE     MwHS5l
    ## 43       0.6331  0.64184500  FALSE       FALSE     FALSE     MwHS5l
    ## 44       0.4249  0.44202100  FALSE       FALSE     FALSE     MwHS5l
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1            2   233981912 0.002642006    -2.728    6.375e-03
    ## 2            5   139707439 0.002679444     0.631    5.282e-01
    ## 3           11   121435587 0.002649231     1.570    1.163e-01
    ## 4           19    45436753 0.002661833    -0.565    5.718e-01
    ## 5            6    41034000 0.002658210     1.076    2.820e-01
    ## 6            7   127331293 0.002660772     1.078    2.808e-01
    ## 7           19    45393516 0.002666340     0.020    9.840e-01
    ## 8           12   127222883 0.002671950    -3.450    5.600e-04
    ## 9            7   143109139 0.002654922     0.606    5.444e-01
    ## 10          19     1050874 0.002668916    -2.083    3.729e-02
    ## 11          10    11721057 0.002659488     0.920    3.577e-01
    ## 12          14    92938855 0.002690208    -0.197    8.435e-01
    ## 13          19    45387459 0.002660397    -2.011    4.430e-02
    ## 14           8    71551628 0.002654108     0.793    4.280e-01
    ## 15           6    47595155 0.002699070     0.617    5.369e-01
    ## 16          22    21926584 0.002698156    -0.199    8.423e-01
    ## 17           7    33721795 0.002655964     1.976    4.821e-02
    ## 18          11    60021948 0.002651756    -1.423    1.548e-01
    ## 19          14    53391680 0.002664537    -0.207    8.360e-01
    ## 20          17    56409089 0.002676178     0.865    3.869e-01
    ## 21          21    28148191 0.002656911     0.392    6.951e-01
    ## 22          16    19910313 0.002666053    -1.249    2.117e-01
    ## 23           4    66245059 0.002657412     0.445    6.563e-01
    ## 24          16    81779775 0.002724959     0.772    4.399e-01
    ## 25           2   186794162 0.002654932    -0.938    3.484e-01
    ## 26           5    52672171 0.002657158    -0.369    7.122e-01
    ## 27          11    47380340 0.002643426     4.528    5.968e-06
    ## 28          15    59034174 0.002658076     1.950    5.120e-02
    ## 29          11    85868640 0.002641654    -2.794    5.205e-03
    ## 30          19    45358448 0.002672115    -0.442    6.585e-01
    ## 31          20    54998544 0.002671739     0.046    9.633e-01
    ## 32          16    79355857 0.002736840    -0.147    8.833e-01
    ## 33           9    85450616 0.002661849    -0.084    9.330e-01
    ## 34           2   127892810 0.002730541    -0.284    7.762e-01
    ## 35           1   207750568 0.002654988     0.898    3.694e-01
    ## 36           3    45101639 0.002671186     0.123    9.019e-01
    ## 37           4   104176240 0.002659427    -0.321    7.481e-01
    ## 38           8    27219987 0.002671340     0.237    8.130e-01
    ## 39           2   127863224 0.002660304    -1.512    1.305e-01
    ## 40          19    45653226 0.002664092    -1.076    2.817e-01
    ## 41          19    18558876 0.002665443    -0.290    7.717e-01
    ## 42           8    27468503 0.002694071    -1.057    2.907e-01
    ## 43           7    50322832 0.002657018    -0.523    6.009e-01
    ## 44          11   131769402 0.002679574     0.057    9.543e-01
    ##    samplesize.outcome                       outcome mr_keep.outcome
    ## 1              141932 SanchezRoige2019auditt23andMe            TRUE
    ## 2              139325 SanchezRoige2019auditt23andMe            TRUE
    ## 3              141846 SanchezRoige2019auditt23andMe            TRUE
    ## 4              141233 SanchezRoige2019auditt23andMe            TRUE
    ## 5              141215 SanchezRoige2019auditt23andMe            TRUE
    ## 6              140941 SanchezRoige2019auditt23andMe            TRUE
    ## 7              141799 SanchezRoige2019auditt23andMe            TRUE
    ## 8              138349 SanchezRoige2019auditt23andMe            TRUE
    ## 9              141932 SanchezRoige2019auditt23andMe            TRUE
    ## 10             139445 SanchezRoige2019auditt23andMe            TRUE
    ## 11             141192 SanchezRoige2019auditt23andMe            TRUE
    ## 12             138706 SanchezRoige2019auditt23andMe            TRUE
    ## 13             140385 SanchezRoige2019auditt23andMe            TRUE
    ## 14             141863 SanchezRoige2019auditt23andMe            TRUE
    ## 15             137318 SanchezRoige2019auditt23andMe            TRUE
    ## 16             137889 SanchezRoige2019auditt23andMe            TRUE
    ## 17             140877 SanchezRoige2019auditt23andMe            TRUE
    ## 18             141670 SanchezRoige2019auditt23andMe            TRUE
    ## 19             141370 SanchezRoige2019auditt23andMe            TRUE
    ## 20             139476 SanchezRoige2019auditt23andMe            TRUE
    ## 21             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 22             140266 SanchezRoige2019auditt23andMe            TRUE
    ## 23             141821 SanchezRoige2019auditt23andMe            TRUE
    ## 24             134595 SanchezRoige2019auditt23andMe            TRUE
    ## 25             141664 SanchezRoige2019auditt23andMe            TRUE
    ## 26             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 27             140773 SanchezRoige2019auditt23andMe            TRUE
    ## 28             140668 SanchezRoige2019auditt23andMe            TRUE
    ## 29             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 30             140269 SanchezRoige2019auditt23andMe            TRUE
    ## 31             141041 SanchezRoige2019auditt23andMe            TRUE
    ## 32             134123 SanchezRoige2019auditt23andMe            TRUE
    ## 33             141932 SanchezRoige2019auditt23andMe            TRUE
    ## 34             134517 SanchezRoige2019auditt23andMe            TRUE
    ## 35             141688 SanchezRoige2019auditt23andMe            TRUE
    ## 36             140835 SanchezRoige2019auditt23andMe            TRUE
    ## 37             141748 SanchezRoige2019auditt23andMe            TRUE
    ## 38             140605 SanchezRoige2019auditt23andMe            TRUE
    ## 39             140702 SanchezRoige2019auditt23andMe            TRUE
    ## 40             140591 SanchezRoige2019auditt23andMe            TRUE
    ## 41             141150 SanchezRoige2019auditt23andMe            TRUE
    ## 42             137490 SanchezRoige2019auditt23andMe            TRUE
    ## 43             141785 SanchezRoige2019auditt23andMe            TRUE
    ## 44             140166 SanchezRoige2019auditt23andMe            TRUE
    ##    pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1             reported            NA               <NA>              <NA>
    ## 2             reported            NA               <NA>              <NA>
    ## 3             reported            NA               <NA>              <NA>
    ## 4             reported            NA               <NA>              <NA>
    ## 5             reported            NA               <NA>              <NA>
    ## 6             reported          TRUE        rs117240937        rs77214615
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
    ## 26            reported          TRUE         rs35868327        rs13182752
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
    ## 39            reported            NA               <NA>              <NA>
    ## 40            reported            NA               <NA>              <NA>
    ## 41            reported            NA               <NA>              <NA>
    ## 42            reported            NA               <NA>              <NA>
    ## 43            reported            NA               <NA>              <NA>
    ## 44            reported            NA               <NA>              <NA>
    ##    target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1               <NA>              <NA>             <NA>             <NA>
    ## 2               <NA>              <NA>             <NA>             <NA>
    ## 3               <NA>              <NA>             <NA>             <NA>
    ## 4               <NA>              <NA>             <NA>             <NA>
    ## 5               <NA>              <NA>             <NA>             <NA>
    ## 6                  A                 G                G                A
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
    ## 26                 G                 T                A                G
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
    ## 38              <NA>              <NA>             <NA>             <NA>
    ## 39              <NA>              <NA>             <NA>             <NA>
    ## 40              <NA>              <NA>             <NA>             <NA>
    ## 41              <NA>              <NA>             <NA>             <NA>
    ## 42              <NA>              <NA>             <NA>             <NA>
    ## 43              <NA>              <NA>             <NA>             <NA>
    ## 44              <NA>              <NA>             <NA>             <NA>
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             2    233981912      0.0194   5.159794     2.552e-07
    ## 2             5    139707439      0.0143  -5.272730     1.432e-07
    ## 3            11    121435587      0.0369  -5.563690     2.633e-08
    ## 4            19     45436753      0.0661  12.527988     5.434e-36
    ## 5             6     41034000      0.0431   6.914153     4.467e-12
    ## 6             7    127426090      0.0672  -4.645833     3.350e-06
    ## 7            19     45393516      0.0691  14.296671     2.275e-46
    ## 8            12    127222883      0.0465   4.716130     2.459e-06
    ## 9             7    143109139      0.0182  -5.648350     1.561e-08
    ## 10           19      1050874      0.0169  -6.337280     2.562e-10
    ## 11           10     11721057      0.0154   5.519480     3.417e-08
    ## 12           14     92938855      0.0157  -5.770701     8.729e-09
    ## 13           19     45387459      0.0189  51.074100    1.000e-200
    ## 14            8     71551628      0.0237   4.810127     1.570e-06
    ## 15            6     47595155      0.0157  -5.579620     2.232e-08
    ## 16           22     21926584      0.0545  -4.614679     3.904e-06
    ## 17            7     33721795      0.0769   4.596879     4.253e-06
    ## 18           11     60021948      0.0149  -8.268456     1.186e-16
    ## 19           14     53391680      0.0246   4.967480     6.621e-07
    ## 20           17     56409089      0.0147  -5.088435     3.671e-07
    ## 21           21     28148191      0.0162  -5.166667     2.422e-07
    ## 22           16     19910313      0.0181  -4.861880     1.115e-06
    ## 23            4     66245059      0.0475   4.673684     2.900e-06
    ## 24           16     81779775      0.0198   4.747475     2.067e-06
    ## 25            2    186794162      0.0247   4.663968     3.200e-06
    ## 26            5     52665230      0.0760  -4.938158     7.796e-07
    ## 27           11     47380340      0.0144   6.493056     9.702e-11
    ## 28           15     59034174      0.0151  -4.622517     3.812e-06
    ## 29           11     85868640      0.0148   8.094590     5.809e-16
    ## 30           19     45358448      0.0610  11.745902     7.131e-32
    ## 31           20     54998544      0.0259  -5.092660     3.652e-07
    ## 32           16     79355857      0.0288   5.305556     1.171e-07
    ## 33            9     85450616      0.0335   4.731343     2.169e-06
    ## 34            2    127892810      0.0154  10.993506     4.022e-28
    ## 35            1    207750568      0.0183  -8.240440     1.555e-16
    ## 36            3     45101639      0.0257  -5.031130     4.774e-07
    ## 37            4    104176240      0.0940   4.639362     3.487e-06
    ## 38            8     27219987      0.0153   6.117647     8.342e-10
    ## 39            2    127863224      0.0172   5.011628     5.341e-07
    ## 40           19     45653226      0.0623   4.778491     1.750e-06
    ## 41           19     18558876      0.0151   4.609270     3.946e-06
    ## 42            8     27468503      0.0158   8.436709     3.492e-17
    ## 43            7     50322832      0.0148   4.567570     4.794e-06
    ## 44           11    131769402      0.0144   4.597220     4.386e-06
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
    ## 23               63926 Kunkle2019load             TRUE
    ## 24               63926 Kunkle2019load             TRUE
    ## 25               63926 Kunkle2019load             TRUE
    ## 26               63926 Kunkle2019load             TRUE
    ## 27               63926 Kunkle2019load             TRUE
    ## 28               63926 Kunkle2019load             TRUE
    ## 29               63926 Kunkle2019load             TRUE
    ## 30               63926 Kunkle2019load             TRUE
    ## 31               63926 Kunkle2019load             TRUE
    ## 32               63926 Kunkle2019load             TRUE
    ## 33               63926 Kunkle2019load             TRUE
    ## 34               63926 Kunkle2019load             TRUE
    ## 35               63926 Kunkle2019load             TRUE
    ## 36               63926 Kunkle2019load             TRUE
    ## 37               63926 Kunkle2019load             TRUE
    ## 38               63926 Kunkle2019load             TRUE
    ## 39               63926 Kunkle2019load             TRUE
    ## 40               63926 Kunkle2019load             TRUE
    ## 41               63926 Kunkle2019load             TRUE
    ## 42               63926 Kunkle2019load             TRUE
    ## 43               63926 Kunkle2019load             TRUE
    ## 44               63926 Kunkle2019load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 2              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 3              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 4              reported      fwQWTM      2    TRUE          FALSE 5e-06
    ## 5              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 6              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 7              reported      fwQWTM      2    TRUE          FALSE 5e-06
    ## 8              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 9              reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 10             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 11             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 12             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 13             reported      fwQWTM      2    TRUE          FALSE 5e-06
    ## 14             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 15             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 16             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 17             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 18             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 19             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 20             reported      fwQWTM      2   FALSE           TRUE 5e-06
    ## 21             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 22             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 23             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 24             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 25             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 26             reported      fwQWTM      2   FALSE           TRUE 5e-06
    ## 27             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 28             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 29             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 30             reported      fwQWTM      2    TRUE          FALSE 5e-06
    ## 31             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 32             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 33             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 34             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 35             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 36             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 37             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 38             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 39             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 40             reported      fwQWTM      2    TRUE          FALSE 5e-06
    ## 41             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 42             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 43             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ## 44             reported      fwQWTM      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.999096e-05        0.2664          TRUE
    ## 2     2.384759e-06             1          TRUE
    ## 3     1.517705e-05             1          TRUE
    ## 4               NA          <NA>            NA
    ## 5     1.438722e-05             1          TRUE
    ## 6     6.030214e-06             1          TRUE
    ## 7               NA          <NA>            NA
    ## 8     8.437168e-05        0.0296         FALSE
    ## 9     1.994384e-06             1          TRUE
    ## 10    3.413513e-05        0.9324          TRUE
    ## 11    6.965963e-06             1          TRUE
    ## 12    5.203923e-07             1          TRUE
    ## 13              NA          <NA>            NA
    ## 14    5.607748e-06             1          TRUE
    ## 15    2.238660e-06             1          TRUE
    ## 16    1.251000e-06             1          TRUE
    ## 17    4.601788e-05        0.5772          TRUE
    ## 18    1.669285e-05             1          TRUE
    ## 19    9.311833e-08             1          TRUE
    ## 20              NA          <NA>            NA
    ## 21    7.667276e-07             1          TRUE
    ## 22    1.250638e-05             1          TRUE
    ## 23    2.954712e-06             1          TRUE
    ## 24    5.359747e-06             1          TRUE
    ## 25    5.211785e-06             1          TRUE
    ## 26              NA          <NA>            NA
    ## 27    1.504235e-04       <0.0074         FALSE
    ## 28    2.563974e-05             1          TRUE
    ## 29    5.234942e-05        0.2738          TRUE
    ## 30              NA          <NA>            NA
    ## 31    2.256115e-08             1          TRUE
    ## 32    8.226987e-09             1          TRUE
    ## 33    1.083834e-08             1          TRUE
    ## 34    1.931513e-07             1          TRUE
    ## 35    4.498184e-06             1          TRUE
    ## 36    4.130670e-09             1          TRUE
    ## 37    2.523126e-09             1          TRUE
    ## 38    6.922987e-07             1          TRUE
    ## 39    1.499955e-05             1          TRUE
    ## 40              NA          <NA>            NA
    ## 41    4.007916e-07             1          TRUE
    ## 42    6.850379e-06             1          TRUE
    ## 43    1.578539e-06             1          TRUE
    ## 44    8.396033e-08             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs114533385          19    45436753     5.434e-36       0.5718
    ## 2 rs117310449          19    45393516     2.275e-46       0.9840
    ## 3  rs12972156          19    45387459    1.000e-200       0.0443
    ## 4   rs4803765          19    45358448     7.131e-32       0.6585
    ## 5  rs80182863          19    45653226     1.750e-06       0.2817

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

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE   0.01959325 34.50785  0.05 0.9393297 0.1625975
    ## 2             TRUE   0.01859931 34.59515  0.05 1.8211118 0.2712399

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

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 2      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 3      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 4      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   37 -0.0020518247 0.002596462
    ## 2                           Weighted median   37 -0.0017917386 0.004260448
    ## 3                             Weighted mode   37 -0.0004460388 0.004229912
    ## 4                                  MR Egger   37  0.0010188739 0.007532506
    ##        pval
    ## 1 0.4293883
    ## 2 0.6740825
    ## 3 0.9166051
    ## 4 0.8931784

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in AUDIT Total and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 2      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 76.38181   35 6.548884e-05
    ## 2 Inverse variance weighted 76.87144   36 8.646376e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##   egger_intercept          se      pval
    ## 1   -0.0006030294 0.001273096 0.6386756

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##      pt outliers_removed n_outliers   RSSobs  pval
    ## 1 5e-06            FALSE          2 81.20787 2e-04

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 2      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 3      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 4      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   35 -0.0012921898 0.002669325
    ## 2                           Weighted median   35 -0.0017277519 0.004389608
    ## 3                             Weighted mode   35 -0.0005522895 0.004572228
    ## 4                                  MR Egger   35  0.0059469054 0.005853877
    ##        pval
    ## 1 0.6283230
    ## 2 0.6938760
    ## 3 0.9045667
    ## 4 0.3170717

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ## 2      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 42.19296   33 0.1310865
    ## 2 Inverse variance weighted 44.85629   34 0.1008319

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      fwQWTM     MwHS5l SanchezRoige2019auditt23andMe Kunkle2019load
    ##   egger_intercept          se      pval
    ## 1    -0.001428473 0.000989744 0.1583693

<br>
