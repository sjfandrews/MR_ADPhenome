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

### Exposure: CSF Ptau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Ptau

    ##           SNP CHROM       POS REF ALT        AF     BETA       SE
    ## 1   rs4267554     2  46901045   A   G 0.1037360 -0.04197 0.008801
    ## 2  rs35055419     3 190663557   T   C 0.3498150  0.03490 0.005653
    ## 3  rs16897042     5  67107448   T   C 0.0184850  0.07870 0.016050
    ## 4  rs60871478     7    827325   A   G 0.7729760 -0.03472 0.006863
    ## 5   rs7798280     7  15093202   C   A 0.3549910 -0.03378 0.006773
    ## 6   rs2439313     8  32533316   A   G 0.5620010 -0.02653 0.005418
    ## 7    rs514716     9   3929424   C   T 0.8443070  0.04876 0.008764
    ## 8   rs9527039    13  53504675   T   C 0.0810909 -0.06098 0.010450
    ## 9  rs12889974    14  77609298   C   G 0.0913043  0.04955 0.010660
    ## 10 rs12961169    18  77381649   C   T 0.1395560  0.05004 0.008013
    ## 11   rs769449    19  45410002   G   A 0.0998545  0.07930 0.006542
    ## 12 rs34871495    20  55310283   C   T 0.0282916  0.08995 0.016740
    ## 13    rs41157    22  30405151   T   C 0.7146230 -0.02538 0.005504
    ##            Z         P    N    TRAIT
    ## 1  -4.768776 1.976e-06 3146 CSF_ptau
    ## 2   6.173713 7.624e-10 3146 CSF_ptau
    ## 3   4.903427 9.998e-07 3146 CSF_ptau
    ## 4  -5.059010 4.505e-07 3146 CSF_ptau
    ## 5  -4.987450 6.699e-07 3146 CSF_ptau
    ## 6  -4.896640 1.025e-06 3146 CSF_ptau
    ## 7   5.563670 2.935e-08 3146 CSF_ptau
    ## 8  -5.835407 5.947e-09 3146 CSF_ptau
    ## 9   4.648218 3.555e-06 3146 CSF_ptau
    ## 10  6.244852 5.117e-10 3146 CSF_ptau
    ## 11 12.121675 5.299e-33 3146 CSF_ptau
    ## 12  5.373357 8.307e-08 3146 CSF_ptau
    ## 13 -4.611190 4.182e-06 3146 CSF_ptau

<br>

### Outcome: Insomnia

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Insomnia

    ##           SNP CHROM       POS REF ALT        AF          BETA           SE
    ## 1   rs4267554     2  46901045   A   G 0.1037360  7.720200e-04 0.0008693923
    ## 2  rs35055419     3 190663557   T   C 0.3498150  1.539500e-03 0.0008673225
    ## 3  rs16897042     5  67107448   T   C 0.0184850  6.942490e-05 0.0008678107
    ## 4  rs60871478     7    827325   A   G 0.7729760  7.738270e-04 0.0008675192
    ## 5   rs7798280     7  15093202   C   A 0.3549910 -2.571644e-04 0.0008687986
    ## 6   rs2439313     8  32533316   A   G 0.5620010  1.671050e-04 0.0008703360
    ## 7    rs514716     9   3929424   C   T 0.8443070  5.762905e-04 0.0008679073
    ## 8   rs9527039    13  53504675   T   C 0.0810909 -1.181540e-04 0.0008687808
    ## 9  rs12889974    14  77609298   C   G 0.0913043 -1.016770e-03 0.0008675475
    ## 10 rs12961169    18  77381649   C   T 0.1395560  7.738479e-05 0.0008694921
    ## 11   rs769449    19  45410002   G   A 0.0998545 -4.160224e-03 0.0008643724
    ## 12 rs34871495    20  55310283   C   T 0.0282916 -7.820726e-04 0.0008670427
    ## 13    rs41157    22  30405151   T   C 0.7146230  7.410850e-04 0.0008667656
    ##         Z         P       N             TRAIT
    ## 1   0.888 3.744e-01 1322506 Insomnia_Symptoms
    ## 2   1.775 7.585e-02 1327012 Insomnia_Symptoms
    ## 3   0.080 9.361e-01 1330336 Insomnia_Symptoms
    ## 4   0.892 3.725e-01 1328216 Insomnia_Symptoms
    ## 5  -0.296 7.675e-01 1326025 Insomnia_Symptoms
    ## 6   0.192 8.476e-01 1321827 Insomnia_Symptoms
    ## 7   0.664 5.066e-01 1327585 Insomnia_Symptoms
    ## 8  -0.136 8.916e-01 1326901 Insomnia_Symptoms
    ## 9  -1.172 2.413e-01 1327515 Insomnia_Symptoms
    ## 10  0.089 9.289e-01 1325111 Insomnia_Symptoms
    ## 11 -4.813 1.483e-06 1330800 Insomnia_Symptoms
    ## 12 -0.902 3.673e-01 1329654 Insomnia_Symptoms
    ## 13  0.855 3.926e-01 1330613 Insomnia_Symptoms

<br>

**Table 3:** Proxy SNPs for Insomnia

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

**Table 4:** Harmonized CSF Ptau and Insomnia datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs12889974                      G                     C
    ## 2  rs12961169                      T                     C
    ## 3  rs16897042                      C                     T
    ## 4   rs2439313                      G                     A
    ## 5  rs34871495                      T                     C
    ## 6  rs35055419                      C                     T
    ## 7     rs41157                      C                     T
    ## 8   rs4267554                      G                     A
    ## 9    rs514716                      T                     C
    ## 10 rs60871478                      G                     A
    ## 11   rs769449                      A                     G
    ## 12  rs7798280                      A                     C
    ## 13  rs9527039                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      G                    C       0.04955 -1.016770e-03
    ## 2                      T                    C       0.05004  7.738479e-05
    ## 3                      C                    T       0.07870  6.942490e-05
    ## 4                      G                    A      -0.02653  1.671050e-04
    ## 5                      T                    C       0.08995 -7.820726e-04
    ## 6                      C                    T       0.03490  1.539500e-03
    ## 7                      C                    T      -0.02538  7.410850e-04
    ## 8                      G                    A      -0.04197  7.720200e-04
    ## 9                      T                    C       0.04876  5.762905e-04
    ## 10                     G                    A      -0.03472  7.738270e-04
    ## 11                     A                    G       0.07930 -4.160224e-03
    ## 12                     A                    C      -0.03378 -2.571644e-04
    ## 13                     C                    T      -0.06098 -1.181540e-04
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0913043   0.0913043  FALSE        TRUE     FALSE     vkJC9F
    ## 2     0.1395560   0.1395560  FALSE       FALSE     FALSE     vkJC9F
    ## 3     0.0184850   0.0184850  FALSE       FALSE     FALSE     vkJC9F
    ## 4     0.5620010   0.5620010  FALSE       FALSE     FALSE     vkJC9F
    ## 5     0.0282916   0.0282916  FALSE       FALSE     FALSE     vkJC9F
    ## 6     0.3498150   0.3498150  FALSE       FALSE     FALSE     vkJC9F
    ## 7     0.7146230   0.7146230  FALSE       FALSE     FALSE     vkJC9F
    ## 8     0.1037360   0.1037360  FALSE       FALSE     FALSE     vkJC9F
    ## 9     0.8443070   0.8443070  FALSE       FALSE     FALSE     vkJC9F
    ## 10    0.7729760   0.7729760  FALSE       FALSE     FALSE     vkJC9F
    ## 11    0.0998545   0.0998545  FALSE       FALSE     FALSE     vkJC9F
    ## 12    0.3549910   0.3549910  FALSE       FALSE     FALSE     vkJC9F
    ## 13    0.0810909   0.0810909  FALSE       FALSE     FALSE     vkJC9F
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1           14    77609298 0.0008675475    -1.172    2.413e-01
    ## 2           18    77381649 0.0008694921     0.089    9.289e-01
    ## 3            5    67107448 0.0008678107     0.080    9.361e-01
    ## 4            8    32533316 0.0008703360     0.192    8.476e-01
    ## 5           20    55310283 0.0008670427    -0.902    3.673e-01
    ## 6            3   190663557 0.0008673225     1.775    7.585e-02
    ## 7           22    30405151 0.0008667656     0.855    3.926e-01
    ## 8            2    46901045 0.0008693923     0.888    3.744e-01
    ## 9            9     3929424 0.0008679073     0.664    5.066e-01
    ## 10           7      827325 0.0008675192     0.892    3.725e-01
    ## 11          19    45410002 0.0008643724    -4.813    1.483e-06
    ## 12           7    15093202 0.0008687986    -0.296    7.675e-01
    ## 13          13    53504675 0.0008687808    -0.136    8.916e-01
    ##    samplesize.outcome                   outcome mr_keep.outcome
    ## 1             1327515 Jansen2018insomnia23andMe            TRUE
    ## 2             1325111 Jansen2018insomnia23andMe            TRUE
    ## 3             1330336 Jansen2018insomnia23andMe            TRUE
    ## 4             1321827 Jansen2018insomnia23andMe            TRUE
    ## 5             1329654 Jansen2018insomnia23andMe            TRUE
    ## 6             1327012 Jansen2018insomnia23andMe            TRUE
    ## 7             1330613 Jansen2018insomnia23andMe            TRUE
    ## 8             1322506 Jansen2018insomnia23andMe            TRUE
    ## 9             1327585 Jansen2018insomnia23andMe            TRUE
    ## 10            1328216 Jansen2018insomnia23andMe            TRUE
    ## 11            1330800 Jansen2018insomnia23andMe            TRUE
    ## 12            1326025 Jansen2018insomnia23andMe            TRUE
    ## 13            1326901 Jansen2018insomnia23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           14     77609298    0.010660   4.648218
    ## 2             reported           18     77381649    0.008013   6.244852
    ## 3             reported            5     67107448    0.016050   4.903427
    ## 4             reported            8     32533316    0.005418  -4.896640
    ## 5             reported           20     55310283    0.016740   5.373357
    ## 6             reported            3    190663557    0.005653   6.173713
    ## 7             reported           22     30405151    0.005504  -4.611190
    ## 8             reported            2     46901045    0.008801  -4.768776
    ## 9             reported            9      3929424    0.008764   5.563670
    ## 10            reported            7       827325    0.006863  -5.059010
    ## 11            reported           19     45410002    0.006542  12.121675
    ## 12            reported            7     15093202    0.006773  -4.987450
    ## 13            reported           13     53504675    0.010450  -5.835407
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      3.555e-06                3146 Deming2017ptau             TRUE
    ## 2      5.117e-10                3146 Deming2017ptau             TRUE
    ## 3      9.998e-07                3146 Deming2017ptau             TRUE
    ## 4      1.025e-06                3146 Deming2017ptau             TRUE
    ## 5      8.307e-08                3146 Deming2017ptau             TRUE
    ## 6      7.624e-10                3146 Deming2017ptau             TRUE
    ## 7      4.182e-06                3146 Deming2017ptau             TRUE
    ## 8      1.976e-06                3146 Deming2017ptau             TRUE
    ## 9      2.935e-08                3146 Deming2017ptau             TRUE
    ## 10     4.505e-07                3146 Deming2017ptau             TRUE
    ## 11     5.299e-33                3146 Deming2017ptau             TRUE
    ## 12     6.699e-07                3146 Deming2017ptau             TRUE
    ## 13     5.947e-09                3146 Deming2017ptau             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 2              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 3              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 4              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 5              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 6              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 7              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 8              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 9              reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 10             reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 11             reported      Sk2VVB      2    TRUE          FALSE 5e-06
    ## 12             reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ## 13             reported      Sk2VVB      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA          TRUE
    ## 2               NA            NA          TRUE
    ## 3               NA            NA          TRUE
    ## 4               NA            NA          TRUE
    ## 5               NA            NA          TRUE
    ## 6               NA            NA          TRUE
    ## 7               NA            NA          TRUE
    ## 8               NA            NA          TRUE
    ## 9               NA            NA          TRUE
    ## 10              NA            NA          TRUE
    ## 11              NA            NA          TRUE
    ## 12              NA            NA          TRUE
    ## 13              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33    1.483e-06

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

    ##   outliers_removed pve.exposure        F Alpha        NCP     Power
    ## 1            FALSE    0.1065711 31.14288  0.05 0.01104603 0.0512663

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

Table 6 presents the MR causal estimates of genetically predicted CSF
Ptau on Insomnia. <br>

**Table 6** MR causaul estimates for CSF Ptau on Insomnia

    ##   id.exposure id.outcome                   outcome       exposure
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ## 2      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ## 3      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ## 4      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   12 -0.003007764 0.004851056
    ## 2                           Weighted median   12 -0.002844085 0.006366278
    ## 3                             Weighted mode   12 -0.002364691 0.007673310
    ## 4                                  MR Egger   12 -0.004239159 0.013026522
    ##        pval
    ## 1 0.5352429
    ## 2 0.6550612
    ## 3 0.7637095
    ## 4 0.7515659

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Insomnia and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                   outcome       exposure
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ## 2      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 7.856458   10 0.6428556
    ## 2 Inverse variance weighted 7.866833   11 0.7251808

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                   outcome       exposure
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau
    ##   egger_intercept           se      pval
    ## 1    6.855203e-05 0.0006730286 0.9208844

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                   outcome       exposure    pt
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 8.986402 0.754

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                   outcome       exposure   method
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau mrpresso
    ##   nsnp  b se pval
    ## 1   NA NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                   outcome       exposure   method
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau mrpresso
    ##    Q Q_df Q_pval
    ## 1 NA   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                   outcome       exposure   method
    ## 1      Sk2VVB     vkJC9F Jansen2018insomnia23andMe Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
