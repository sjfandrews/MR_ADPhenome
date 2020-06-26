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

### Outcome: Pulse Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Pulse Pressure

    ##           SNP CHROM       POS REF ALT     AF    BETA     SE          Z
    ## 1   rs4267554     2  46901045   A   G 0.1351 -0.0277 0.0306 -0.9052290
    ## 2  rs35055419     3 190663557   T   C 0.3766  0.0422 0.0213  1.9812200
    ## 3  rs16897042     5  67107448   T   C 0.0269  0.0162 0.0643  0.2519440
    ## 4  rs60871478     7    827325   A   G 0.8234  0.0423 0.0270  1.5666700
    ## 5   rs7798280     7  15093202   C   A 0.3374 -0.0135 0.0219 -0.6164384
    ## 6   rs2439313     8  32533316   A   G 0.6128 -0.0386 0.0211 -1.8293800
    ## 7    rs514716     9   3929424   C   T 0.8747  0.0257 0.0311  0.8263666
    ## 8   rs9527039    13  53504675   T   C 0.0786 -0.0167 0.0389 -0.4293060
    ## 9  rs12889974    14  77609298   C   G 0.0939 -0.0192 0.0360 -0.5333330
    ## 10 rs12961169    18  77381649   C   T 0.1675  0.0199 0.0286  0.6958042
    ## 11   rs769449    19  45410002   G   A 0.1258  0.1659 0.0317  5.2334385
    ## 12 rs34871495    20  55310283   C   T 0.0268 -0.0579 0.0679 -0.8527246
    ## 13    rs41157    22  30405151   T   C 0.6181  0.0117 0.0210  0.5571430
    ##            P      N          TRAIT
    ## 1  3.654e-01 738168 Pulse_Pressure
    ## 2  4.755e-02 738170 Pulse_Pressure
    ## 3  8.013e-01 737164 Pulse_Pressure
    ## 4  1.175e-01 738169 Pulse_Pressure
    ## 5  5.380e-01 737165 Pulse_Pressure
    ## 6  6.755e-02 736050 Pulse_Pressure
    ## 7  4.090e-01 743699 Pulse_Pressure
    ## 8  6.669e-01 745819 Pulse_Pressure
    ## 9  5.942e-01 745818 Pulse_Pressure
    ## 10 4.849e-01 738899 Pulse_Pressure
    ## 11 1.611e-07 740415 Pulse_Pressure
    ## 12 3.941e-01 743200 Pulse_Pressure
    ## 13 5.767e-01 745819 Pulse_Pressure

<br>

**Table 3:** Proxy SNPs for Pulse Pressure

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

**Table 4:** Harmonized CSF Ptau and Pulse Pressure datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    C       0.04955      -0.0192
    ## 2                      T                    C       0.05004       0.0199
    ## 3                      C                    T       0.07870       0.0162
    ## 4                      G                    A      -0.02653      -0.0386
    ## 5                      T                    C       0.08995      -0.0579
    ## 6                      C                    T       0.03490       0.0422
    ## 7                      C                    T      -0.02538       0.0117
    ## 8                      G                    A      -0.04197      -0.0277
    ## 9                      T                    C       0.04876       0.0257
    ## 10                     G                    A      -0.03472       0.0423
    ## 11                     A                    G       0.07930       0.1659
    ## 12                     A                    C      -0.03378      -0.0135
    ## 13                     C                    T      -0.06098      -0.0167
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0913043      0.0939  FALSE        TRUE     FALSE     Rlas7b
    ## 2     0.1395560      0.1675  FALSE       FALSE     FALSE     Rlas7b
    ## 3     0.0184850      0.0269  FALSE       FALSE     FALSE     Rlas7b
    ## 4     0.5620010      0.6128  FALSE       FALSE     FALSE     Rlas7b
    ## 5     0.0282916      0.0268  FALSE       FALSE     FALSE     Rlas7b
    ## 6     0.3498150      0.3766  FALSE       FALSE     FALSE     Rlas7b
    ## 7     0.7146230      0.6181  FALSE       FALSE     FALSE     Rlas7b
    ## 8     0.1037360      0.1351  FALSE       FALSE     FALSE     Rlas7b
    ## 9     0.8443070      0.8747  FALSE       FALSE     FALSE     Rlas7b
    ## 10    0.7729760      0.8234  FALSE       FALSE     FALSE     Rlas7b
    ## 11    0.0998545      0.1258  FALSE       FALSE     FALSE     Rlas7b
    ## 12    0.3549910      0.3374  FALSE       FALSE     FALSE     Rlas7b
    ## 13    0.0810909      0.0786  FALSE       FALSE     FALSE     Rlas7b
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           14    77609298     0.0360 -0.5333330    5.942e-01
    ## 2           18    77381649     0.0286  0.6958042    4.849e-01
    ## 3            5    67107448     0.0643  0.2519440    8.013e-01
    ## 4            8    32533316     0.0211 -1.8293800    6.755e-02
    ## 5           20    55310283     0.0679 -0.8527246    3.941e-01
    ## 6            3   190663557     0.0213  1.9812200    4.755e-02
    ## 7           22    30405151     0.0210  0.5571430    5.767e-01
    ## 8            2    46901045     0.0306 -0.9052290    3.654e-01
    ## 9            9     3929424     0.0311  0.8263666    4.090e-01
    ## 10           7      827325     0.0270  1.5666700    1.175e-01
    ## 11          19    45410002     0.0317  5.2334385    1.611e-07
    ## 12           7    15093202     0.0219 -0.6164384    5.380e-01
    ## 13          13    53504675     0.0389 -0.4293060    6.669e-01
    ##    samplesize.outcome         outcome mr_keep.outcome pval_origin.outcome
    ## 1              745818 Evangelou2018pp            TRUE            reported
    ## 2              738899 Evangelou2018pp            TRUE            reported
    ## 3              737164 Evangelou2018pp            TRUE            reported
    ## 4              736050 Evangelou2018pp            TRUE            reported
    ## 5              743200 Evangelou2018pp            TRUE            reported
    ## 6              738170 Evangelou2018pp            TRUE            reported
    ## 7              745819 Evangelou2018pp            TRUE            reported
    ## 8              738168 Evangelou2018pp            TRUE            reported
    ## 9              743699 Evangelou2018pp            TRUE            reported
    ## 10             738169 Evangelou2018pp            TRUE            reported
    ## 11             740415 Evangelou2018pp            TRUE            reported
    ## 12             737165 Evangelou2018pp            TRUE            reported
    ## 13             745819 Evangelou2018pp            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            14     77609298    0.010660   4.648218     3.555e-06
    ## 2            18     77381649    0.008013   6.244852     5.117e-10
    ## 3             5     67107448    0.016050   4.903427     9.998e-07
    ## 4             8     32533316    0.005418  -4.896640     1.025e-06
    ## 5            20     55310283    0.016740   5.373357     8.307e-08
    ## 6             3    190663557    0.005653   6.173713     7.624e-10
    ## 7            22     30405151    0.005504  -4.611190     4.182e-06
    ## 8             2     46901045    0.008801  -4.768776     1.976e-06
    ## 9             9      3929424    0.008764   5.563670     2.935e-08
    ## 10            7       827325    0.006863  -5.059010     4.505e-07
    ## 11           19     45410002    0.006542  12.121675     5.299e-33
    ## 12            7     15093202    0.006773  -4.987450     6.699e-07
    ## 13           13     53504675    0.010450  -5.835407     5.947e-09
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                 3146 Deming2017ptau             TRUE
    ## 2                 3146 Deming2017ptau             TRUE
    ## 3                 3146 Deming2017ptau             TRUE
    ## 4                 3146 Deming2017ptau             TRUE
    ## 5                 3146 Deming2017ptau             TRUE
    ## 6                 3146 Deming2017ptau             TRUE
    ## 7                 3146 Deming2017ptau             TRUE
    ## 8                 3146 Deming2017ptau             TRUE
    ## 9                 3146 Deming2017ptau             TRUE
    ## 10                3146 Deming2017ptau             TRUE
    ## 11                3146 Deming2017ptau             TRUE
    ## 12                3146 Deming2017ptau             TRUE
    ## 13                3146 Deming2017ptau             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 2              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 3              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 4              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 5              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 6              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 7              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 8              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 9              reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 10             reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 11             reported      1QvK4J      2    TRUE          FALSE 5e-06
    ## 12             reported      1QvK4J      2    TRUE           TRUE 5e-06
    ## 13             reported      1QvK4J      2    TRUE           TRUE 5e-06
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

**Table 5:** SNPs that were genome-wide significant in the Pulse
Pressure GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33    1.611e-07

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
    ## 1            FALSE    0.1065711 31.14288  0.05 1.724756 0.2594562

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
Ptau on Pulse Pressure. <br>

**Table 6** MR causaul estimates for CSF Ptau on Pulse Pressure

    ##   id.exposure id.outcome         outcome       exposure
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ## 2      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ## 3      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ## 4      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)   12  0.2698021 0.2009487
    ## 2                           Weighted median   12  0.3958041 0.2855834
    ## 3                             Weighted mode   12  0.3981064 0.4362242
    ## 4                                  MR Egger   12 -0.2419497 0.6699632
    ##        pval
    ## 1 0.1793881
    ## 2 0.1657624
    ## 3 0.3810098
    ## 4 0.7255086

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Pulse Pressure and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome         outcome       exposure
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ## 2      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 11.13766   10 0.3468942
    ## 2 Inverse variance weighted 11.85987   11 0.3742680

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Evangelou2018pp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Evangelou2018pp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome         outcome       exposure egger_intercept
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau      0.02164103
    ##           se      pval
    ## 1 0.02687464 0.4393977

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome         outcome       exposure    pt
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 13.91267 0.367

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome         outcome       exposure   method nsnp  b
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Evangelou2018pp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome         outcome       exposure   method  Q Q_df
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome         outcome       exposure   method
    ## 1      1QvK4J     Rlas7b Evangelou2018pp Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
