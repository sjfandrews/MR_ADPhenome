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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Diabetes

    ##           SNP CHROM       POS  REF  ALT        AF    BETA     SE
    ## 1   rs4267554     2  46901045    A    G 0.1324270  0.0110 0.0115
    ## 2  rs35055419     3 190663557    T    C 0.3784760  0.0202 0.0081
    ## 3  rs16897042     5  67107448    T    C 0.0262192 -0.0173 0.0244
    ## 4  rs60871478    NA        NA <NA> <NA>        NA      NA     NA
    ## 5   rs7798280     7  15093202    C    A 0.3346700  0.0075 0.0083
    ## 6   rs2439313     8  32533316    A    G 0.6207110 -0.0064 0.0080
    ## 7    rs514716     9   3929424    C    T 0.8794330 -0.0271 0.0120
    ## 8   rs9527039    13  53504675    T    C 0.0774847 -0.0179 0.0148
    ## 9  rs12889974    NA        NA <NA> <NA>        NA      NA     NA
    ## 10 rs12961169    NA        NA <NA> <NA>        NA      NA     NA
    ## 11   rs769449    NA        NA <NA> <NA>        NA      NA     NA
    ## 12 rs34871495    NA        NA <NA> <NA>        NA      NA     NA
    ## 13    rs41157    22  30405151    T    C 0.6123690 -0.0072 0.0081
    ##             Z       P      N           TRAIT
    ## 1   0.9565217 0.34080 564100 Type_2_Diabetes
    ## 2   2.4938272 0.01238 569270 Type_2_Diabetes
    ## 3  -0.7090164 0.47790 573184 Type_2_Diabetes
    ## 4          NA      NA     NA            <NA>
    ## 5   0.9036145 0.36990 568213 Type_2_Diabetes
    ## 6  -0.8000000 0.41930 563286 Type_2_Diabetes
    ## 7  -2.2583300 0.02351 569936 Type_2_Diabetes
    ## 8  -1.2094595 0.22740 569279 Type_2_Diabetes
    ## 9          NA      NA     NA            <NA>
    ## 10         NA      NA     NA            <NA>
    ## 11         NA      NA     NA            <NA>
    ## 12         NA      NA     NA            <NA>
    ## 13 -0.8888890 0.36940 573483 Type_2_Diabetes

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##   target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1 rs60871478        NA    NA     NA    NA  NA    NA  NA        NA
    ## 2 rs12889974        NA    NA     NA    NA  NA    NA  NA        NA
    ## 3 rs12961169        NA    NA     NA    NA  NA    NA  NA        NA
    ## 4   rs769449        NA    NA     NA    NA  NA    NA  NA        NA
    ## 5 rs34871495        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 2        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 3        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 4        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ## 5        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA
    ## 2            NA
    ## 3            NA
    ## 4            NA
    ## 5            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ptau and Diabetes datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs16897042                      C                     T
    ## 2  rs2439313                      G                     A
    ## 3 rs35055419                      C                     T
    ## 4    rs41157                      C                     T
    ## 5  rs4267554                      G                     A
    ## 6   rs514716                      T                     C
    ## 7  rs7798280                      A                     C
    ## 8  rs9527039                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     C                    T       0.07870      -0.0173
    ## 2                     G                    A      -0.02653      -0.0064
    ## 3                     C                    T       0.03490       0.0202
    ## 4                     C                    T      -0.02538      -0.0072
    ## 5                     G                    A      -0.04197       0.0110
    ## 6                     T                    C       0.04876      -0.0271
    ## 7                     A                    C      -0.03378       0.0075
    ## 8                     C                    T      -0.06098      -0.0179
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.0184850   0.0262192  FALSE       FALSE     FALSE     VGlDib
    ## 2    0.5620010   0.6207110  FALSE       FALSE     FALSE     VGlDib
    ## 3    0.3498150   0.3784760  FALSE       FALSE     FALSE     VGlDib
    ## 4    0.7146230   0.6123690  FALSE       FALSE     FALSE     VGlDib
    ## 5    0.1037360   0.1324270  FALSE       FALSE     FALSE     VGlDib
    ## 6    0.8443070   0.8794330  FALSE       FALSE     FALSE     VGlDib
    ## 7    0.3549910   0.3346700  FALSE       FALSE     FALSE     VGlDib
    ## 8    0.0810909   0.0774847  FALSE       FALSE     FALSE     VGlDib
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           5    67107448     0.0244 -0.7090164      0.47790
    ## 2           8    32533316     0.0080 -0.8000000      0.41930
    ## 3           3   190663557     0.0081  2.4938272      0.01238
    ## 4          22    30405151     0.0081 -0.8888890      0.36940
    ## 5           2    46901045     0.0115  0.9565217      0.34080
    ## 6           9     3929424     0.0120 -2.2583300      0.02351
    ## 7           7    15093202     0.0083  0.9036145      0.36990
    ## 8          13    53504675     0.0148 -1.2094595      0.22740
    ##   samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1             573184 Xue2018diab            TRUE            reported
    ## 2             563286 Xue2018diab            TRUE            reported
    ## 3             569270 Xue2018diab            TRUE            reported
    ## 4             573483 Xue2018diab            TRUE            reported
    ## 5             564100 Xue2018diab            TRUE            reported
    ## 6             569936 Xue2018diab            TRUE            reported
    ## 7             568213 Xue2018diab            TRUE            reported
    ## 8             569279 Xue2018diab            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            5     67107448    0.016050   4.903427     9.998e-07
    ## 2            8     32533316    0.005418  -4.896640     1.025e-06
    ## 3            3    190663557    0.005653   6.173713     7.624e-10
    ## 4           22     30405151    0.005504  -4.611190     4.182e-06
    ## 5            2     46901045    0.008801  -4.768776     1.976e-06
    ## 6            9      3929424    0.008764   5.563670     2.935e-08
    ## 7            7     15093202    0.006773  -4.987450     6.699e-07
    ## 8           13     53504675    0.010450  -5.835407     5.947e-09
    ##   samplesize.exposure       exposure mr_keep.exposure pval_origin.exposure
    ## 1                3146 Deming2017ptau             TRUE             reported
    ## 2                3146 Deming2017ptau             TRUE             reported
    ## 3                3146 Deming2017ptau             TRUE             reported
    ## 4                3146 Deming2017ptau             TRUE             reported
    ## 5                3146 Deming2017ptau             TRUE             reported
    ## 6                3146 Deming2017ptau             TRUE             reported
    ## 7                3146 Deming2017ptau             TRUE             reported
    ## 8                3146 Deming2017ptau             TRUE             reported
    ##   id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1      QIU9E8      2    TRUE           TRUE 5e-06    4.407087e-04
    ## 2      QIU9E8      2    TRUE           TRUE 5e-06    4.135395e-05
    ## 3      QIU9E8      2    TRUE           TRUE 5e-06    5.395996e-04
    ## 4      QIU9E8      2    TRUE           TRUE 5e-06    5.272942e-05
    ## 5      QIU9E8      2    TRUE           TRUE 5e-06    1.831467e-04
    ## 6      QIU9E8      2    TRUE           TRUE 5e-06    1.089575e-03
    ## 7      QIU9E8      2    TRUE           TRUE 5e-06    9.355989e-05
    ## 8      QIU9E8      2    TRUE           TRUE 5e-06    3.783984e-04
    ##   mrpresso_pval mrpresso_keep
    ## 1         1.000          TRUE
    ## 2         1.000          TRUE
    ## 3         0.088          TRUE
    ## 4         1.000          TRUE
    ## 5         1.000          TRUE
    ## 6         0.056          TRUE
    ## 7         1.000          TRUE
    ## 8         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

    ## [1] SNP           chr.outcome   pos.outcome   pval.exposure pval.outcome 
    ## <0 rows> (or 0-length row.names)

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.07060578 29.78961  0.05 0.2390696 0.07780776

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
Ptau on Diabetes. <br>

**Table 6** MR causaul estimates for CSF Ptau on Diabetes

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ## 2      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ## 3      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ## 4      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    8  0.02240119 0.09400826
    ## 2                           Weighted median    8 -0.01251035 0.14239421
    ## 3                             Weighted mode    8 -0.24074989 0.31552859
    ## 4                                  MR Egger    8 -0.40131794 0.47654890
    ##        pval
    ## 1 0.8116565
    ## 2 0.9299902
    ## 3 0.4703873
    ## 4 0.4319928

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Diabetes and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome       exposure
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ## 2      QIU9E8     VGlDib Xue2018diab Deming2017ptau
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 14.31096    6 0.02634898
    ## 2 Inverse variance weighted 16.38953    7 0.02178629

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome       exposure egger_intercept
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau      0.01658898
    ##           se      pval
    ## 1 0.01777035 0.3865786

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome       exposure    pt outliers_removed
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau 5e-06            FALSE
    ##   n_outliers   RSSobs  pval
    ## 1          0 22.45141 0.025

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome       exposure   method nsnp  b se
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome       exposure   method  Q Q_df
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome       exposure   method
    ## 1      QIU9E8     VGlDib Xue2018diab Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
