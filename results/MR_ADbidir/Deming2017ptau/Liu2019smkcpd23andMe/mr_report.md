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

### Outcome: Smoking Quantity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Smoking Quantity

    ##           SNP CHROM       POS REF ALT        AF          BETA          SE
    ## 1   rs4267554     2  46901045   A   G 0.1037360  0.0009695650 0.001722140
    ## 2  rs35055419     3 190663557   T   C 0.3498150  0.0028638800 0.001719017
    ## 3  rs16897042     5  67107448   T   C 0.0184850  0.0013636200 0.001847723
    ## 4  rs60871478     7    827325   A   G 0.7729760 -0.0011346700 0.001721803
    ## 5   rs7798280     7  15093202   C   A 0.3549910 -0.0009697111 0.002135927
    ## 6   rs2439313     8  32533316   A   G 0.5620010  0.0006185460 0.001722969
    ## 7    rs514716     9   3929424   C   T 0.8443070 -0.0016623424 0.001720851
    ## 8   rs9527039    13  53504675   T   C 0.0810909 -0.0013770800 0.001721349
    ## 9  rs12889974    14  77609298   C   G 0.0913043 -0.0031520700 0.001735720
    ## 10 rs12961169    18  77381649   C   T 0.1395560 -0.0024106807 0.001736802
    ## 11   rs769449    19  45410002   G   A 0.0998545 -0.0029009872 0.001736078
    ## 12 rs34871495    20  55310283   C   T 0.0282916 -0.0021706917 0.001720041
    ## 13    rs41157    22  30405151   T   C 0.7146230  0.0034912600 0.001718138
    ##         Z       P      N              TRAIT
    ## 1   0.563 0.57360 337334 Cigarettes_Per_Day
    ## 2   1.666 0.09575 337334 Cigarettes_Per_Day
    ## 3   0.738 0.46030 292829 Cigarettes_Per_Day
    ## 4  -0.659 0.50990 337334 Cigarettes_Per_Day
    ## 5  -0.454 0.65000 219449 Cigarettes_Per_Day
    ## 6   0.359 0.71920 337334 Cigarettes_Per_Day
    ## 7  -0.966 0.33380 337334 Cigarettes_Per_Day
    ## 8  -0.800 0.42400 337334 Cigarettes_Per_Day
    ## 9  -1.816 0.06943 330721 Cigarettes_Per_Day
    ## 10 -1.388 0.16530 330721 Cigarettes_Per_Day
    ## 11 -1.671 0.09477 330721 Cigarettes_Per_Day
    ## 12 -1.262 0.20710 337334 Cigarettes_Per_Day
    ## 13  2.032 0.04213 337334 Cigarettes_Per_Day

<br>

**Table 3:** Proxy SNPs for Smoking Quantity

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

**Table 4:** Harmonized CSF Ptau and Smoking Quantity datasets

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
    ## 1                      G                    C       0.04955 -0.0031520700
    ## 2                      T                    C       0.05004 -0.0024106807
    ## 3                      C                    T       0.07870  0.0013636200
    ## 4                      G                    A      -0.02653  0.0006185460
    ## 5                      T                    C       0.08995 -0.0021706917
    ## 6                      C                    T       0.03490  0.0028638800
    ## 7                      C                    T      -0.02538  0.0034912600
    ## 8                      G                    A      -0.04197  0.0009695650
    ## 9                      T                    C       0.04876 -0.0016623424
    ## 10                     G                    A      -0.03472 -0.0011346700
    ## 11                     A                    G       0.07930 -0.0029009872
    ## 12                     A                    C      -0.03378 -0.0009697111
    ## 13                     C                    T      -0.06098 -0.0013770800
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0913043   0.0913043  FALSE        TRUE     FALSE     6IMFzA
    ## 2     0.1395560   0.1395560  FALSE       FALSE     FALSE     6IMFzA
    ## 3     0.0184850   0.0184850  FALSE       FALSE     FALSE     6IMFzA
    ## 4     0.5620010   0.5620010  FALSE       FALSE     FALSE     6IMFzA
    ## 5     0.0282916   0.0282916  FALSE       FALSE     FALSE     6IMFzA
    ## 6     0.3498150   0.3498150  FALSE       FALSE     FALSE     6IMFzA
    ## 7     0.7146230   0.7146230  FALSE       FALSE     FALSE     6IMFzA
    ## 8     0.1037360   0.1037360  FALSE       FALSE     FALSE     6IMFzA
    ## 9     0.8443070   0.8443070  FALSE       FALSE     FALSE     6IMFzA
    ## 10    0.7729760   0.7729760  FALSE       FALSE     FALSE     6IMFzA
    ## 11    0.0998545   0.0998545  FALSE       FALSE     FALSE     6IMFzA
    ## 12    0.3549910   0.3549910  FALSE       FALSE     FALSE     6IMFzA
    ## 13    0.0810909   0.0810909  FALSE       FALSE     FALSE     6IMFzA
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           14    77609298 0.001735720    -1.816      0.06943
    ## 2           18    77381649 0.001736802    -1.388      0.16530
    ## 3            5    67107448 0.001847723     0.738      0.46030
    ## 4            8    32533316 0.001722969     0.359      0.71920
    ## 5           20    55310283 0.001720041    -1.262      0.20710
    ## 6            3   190663557 0.001719017     1.666      0.09575
    ## 7           22    30405151 0.001718138     2.032      0.04213
    ## 8            2    46901045 0.001722140     0.563      0.57360
    ## 9            9     3929424 0.001720851    -0.966      0.33380
    ## 10           7      827325 0.001721803    -0.659      0.50990
    ## 11          19    45410002 0.001736078    -1.671      0.09477
    ## 12           7    15093202 0.002135927    -0.454      0.65000
    ## 13          13    53504675 0.001721349    -0.800      0.42400
    ##    samplesize.outcome              outcome mr_keep.outcome
    ## 1              330721 Liu2019smkcpd23andMe            TRUE
    ## 2              330721 Liu2019smkcpd23andMe            TRUE
    ## 3              292829 Liu2019smkcpd23andMe            TRUE
    ## 4              337334 Liu2019smkcpd23andMe            TRUE
    ## 5              337334 Liu2019smkcpd23andMe            TRUE
    ## 6              337334 Liu2019smkcpd23andMe            TRUE
    ## 7              337334 Liu2019smkcpd23andMe            TRUE
    ## 8              337334 Liu2019smkcpd23andMe            TRUE
    ## 9              337334 Liu2019smkcpd23andMe            TRUE
    ## 10             337334 Liu2019smkcpd23andMe            TRUE
    ## 11             330721 Liu2019smkcpd23andMe            TRUE
    ## 12             219449 Liu2019smkcpd23andMe            TRUE
    ## 13             337334 Liu2019smkcpd23andMe            TRUE
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
    ## 1              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 2              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 3              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 4              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 5              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 6              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 7              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 8              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 9              reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 10             reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 11             reported      jqgIML      2    TRUE          FALSE 5e-06
    ## 12             reported      jqgIML      2    TRUE           TRUE 5e-06
    ## 13             reported      jqgIML      2    TRUE           TRUE 5e-06
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

**Table 5:** SNPs that were genome-wide significant in the Smoking
Quantity GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33      0.09477

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

    ##   outliers_removed pve.exposure        F Alpha     NCP     Power
    ## 1            FALSE    0.1065711 31.14288  0.05 1.07989 0.1799346

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
Ptau on Smoking Quantity. <br>

**Table 6** MR causaul estimates for CSF Ptau on Smoking Quantity

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ## 2      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ## 3      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ## 4      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   12 -0.011610277 0.009819975
    ## 2                           Weighted median   12 -0.023438747 0.014217300
    ## 3                             Weighted mode   12 -0.015457635 0.018400225
    ## 4                                  MR Egger   12 -0.002610985 0.032776424
    ##         pval
    ## 1 0.23708180
    ## 2 0.09922808
    ## 3 0.41874939
    ## 4 0.93807894

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Smoking Quantity and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ## 2      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 15.39317   10 0.1183715
    ## 2 Inverse variance weighted 15.52782   11 0.1595852

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau
    ##   egger_intercept          se     pval
    ## 1   -0.0005013343 0.001695081 0.773465

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
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 18.25299 0.178

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure   method nsnp
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure   method  Q
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure   method
    ## 1      jqgIML     6IMFzA Liu2019smkcpd23andMe Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
