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

### Outcome: Total cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Total
cholesterol

    ##           SNP CHROM      POS  REF  ALT        AF    BETA     SE
    ## 1   rs4267554     2 46901045    A    G 0.1037360  0.0065 0.0082
    ## 2  rs35055419    NA       NA <NA> <NA>        NA      NA     NA
    ## 3  rs16897042     5 67107448    T    C 0.0184850  0.0223 0.0167
    ## 4  rs60871478    NA       NA <NA> <NA>        NA      NA     NA
    ## 5   rs7798280     7 15093202    C    A 0.3549910  0.0004 0.0055
    ## 6   rs2439313    NA       NA <NA> <NA>        NA      NA     NA
    ## 7    rs514716     9  3929424    C    T 0.8443070  0.0005 0.0078
    ## 8   rs9527039    13 53504675    T    C 0.0810909 -0.0100 0.0096
    ## 9  rs12889974    NA       NA <NA> <NA>        NA      NA     NA
    ## 10 rs12961169    NA       NA <NA> <NA>        NA      NA     NA
    ## 11   rs769449    19 45410002    G    A 0.0998545  0.1589 0.0072
    ## 12 rs34871495    NA       NA <NA> <NA>        NA      NA     NA
    ## 13    rs41157    22 30405151    T    C 0.7146230  0.0086 0.0053
    ##              Z          P        N             TRAIT
    ## 1   0.79268293  3.461e-01 94595.00 Total_Cholesterol
    ## 2           NA         NA       NA              <NA>
    ## 3   1.33532934  1.219e-01 91474.00 Total_Cholesterol
    ## 4           NA         NA       NA              <NA>
    ## 5   0.07272727  8.575e-01 94595.00 Total_Cholesterol
    ## 6           NA         NA       NA              <NA>
    ## 7   0.06410256  8.204e-01 94595.00 Total_Cholesterol
    ## 8  -1.04167000  3.745e-01 93623.00 Total_Cholesterol
    ## 9           NA         NA       NA              <NA>
    ## 10          NA         NA       NA              <NA>
    ## 11 22.06944444 6.770e-103 93260.18 Total_Cholesterol
    ## 12          NA         NA       NA              <NA>
    ## 13  1.62264151  1.874e-01 91556.00 Total_Cholesterol

<br>

**Table 3:** Proxy SNPs for Total cholesterol

    ##   target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1 rs35055419 rs2088882 1.000000 1.000000 CG/TA  NA     3 190656524
    ## 2 rs60871478 rs4374882 0.980202 1.000000 AC/GT  NA     7    821798
    ## 3  rs2439313 rs2919392 0.919506 0.978764 AA/GG  NA     8  32524451
    ## 4 rs12961169 rs7233060 0.938982 0.979050 TA/CG  NA    18  77392379
    ## 5 rs12889974      <NA>       NA       NA  <NA>  NA    NA        NA
    ## 6 rs34871495      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy       AF    BETA     SE          Z       P     N
    ## 1         A         G 0.347834  0.0023 0.0052  0.4423077 0.80690 94595
    ## 2         C         T 0.726636  0.0083 0.0077  1.0779221 0.07868 92600
    ## 3         A         G 0.563021 -0.0032 0.0053 -0.6037740 0.42530 94595
    ## 4         G         A 0.139594 -0.0011 0.0075 -0.1466670 0.62040 92797
    ## 5      <NA>      <NA>       NA      NA     NA         NA      NA    NA
    ## 6      <NA>      <NA>       NA      NA     NA         NA      NA    NA
    ##               TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 Total_Cholesterol    C         G    T         A    C    T          TRUE
    ## 2 Total_Cholesterol    A         C    G         T    G    A          TRUE
    ## 3 Total_Cholesterol    A         A    G         G    G    A          TRUE
    ## 4 Total_Cholesterol    T         A    C         G    T    C          TRUE
    ## 5              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA
    ## 6              <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ptau and Total cholesterol datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs12961169                      T                     C
    ## 2  rs16897042                      C                     T
    ## 3   rs2439313                      G                     A
    ## 4  rs35055419                      C                     T
    ## 5     rs41157                      C                     T
    ## 6   rs4267554                      G                     A
    ## 7    rs514716                      T                     C
    ## 8  rs60871478                      G                     A
    ## 9    rs769449                      A                     G
    ## 10  rs7798280                      A                     C
    ## 11  rs9527039                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      T                    C       0.05004      -0.0011
    ## 2                      C                    T       0.07870       0.0223
    ## 3                      G                    A      -0.02653      -0.0032
    ## 4                      C                    T       0.03490       0.0023
    ## 5                      C                    T      -0.02538       0.0086
    ## 6                      G                    A      -0.04197       0.0065
    ## 7                      T                    C       0.04876       0.0005
    ## 8                      G                    A      -0.03472       0.0083
    ## 9                      A                    G       0.07930       0.1589
    ## 10                     A                    C      -0.03378       0.0004
    ## 11                     C                    T      -0.06098      -0.0100
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.1395560   0.1395940  FALSE       FALSE     FALSE     8xxcXe
    ## 2     0.0184850   0.0184850  FALSE       FALSE     FALSE     8xxcXe
    ## 3     0.5620010   0.5630210  FALSE       FALSE     FALSE     8xxcXe
    ## 4     0.3498150   0.3478340  FALSE       FALSE     FALSE     8xxcXe
    ## 5     0.7146230   0.7146230  FALSE       FALSE     FALSE     8xxcXe
    ## 6     0.1037360   0.1037360  FALSE       FALSE     FALSE     8xxcXe
    ## 7     0.8443070   0.8443070  FALSE       FALSE     FALSE     8xxcXe
    ## 8     0.7729760   0.7266360  FALSE       FALSE     FALSE     8xxcXe
    ## 9     0.0998545   0.0998545  FALSE       FALSE     FALSE     8xxcXe
    ## 10    0.3549910   0.3549910  FALSE       FALSE     FALSE     8xxcXe
    ## 11    0.0810909   0.0810909  FALSE       FALSE     FALSE     8xxcXe
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           18    77392379     0.0075 -0.14666700    6.204e-01
    ## 2            5    67107448     0.0167  1.33532934    1.219e-01
    ## 3            8    32524451     0.0053 -0.60377400    4.253e-01
    ## 4            3   190656524     0.0052  0.44230769    8.069e-01
    ## 5           22    30405151     0.0053  1.62264151    1.874e-01
    ## 6            2    46901045     0.0082  0.79268293    3.461e-01
    ## 7            9     3929424     0.0078  0.06410256    8.204e-01
    ## 8            7      821798     0.0077  1.07792208    7.868e-02
    ## 9           19    45410002     0.0072 22.06944444   6.770e-103
    ## 10           7    15093202     0.0055  0.07272727    8.575e-01
    ## 11          13    53504675     0.0096 -1.04167000    3.745e-01
    ##    samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1            92797.00 Willer2013tc            TRUE            reported
    ## 2            91474.00 Willer2013tc            TRUE            reported
    ## 3            94595.00 Willer2013tc            TRUE            reported
    ## 4            94595.00 Willer2013tc            TRUE            reported
    ## 5            91556.00 Willer2013tc            TRUE            reported
    ## 6            94595.00 Willer2013tc            TRUE            reported
    ## 7            94595.00 Willer2013tc            TRUE            reported
    ## 8            92600.00 Willer2013tc            TRUE            reported
    ## 9            93260.18 Willer2013tc            TRUE            reported
    ## 10           94595.00 Willer2013tc            TRUE            reported
    ## 11           93623.00 Willer2013tc            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1           TRUE         rs12961169         rs7233060                 T
    ## 2             NA               <NA>              <NA>              <NA>
    ## 3           TRUE          rs2439313         rs2919392                 G
    ## 4           TRUE         rs35055419         rs2088882                 C
    ## 5             NA               <NA>              <NA>              <NA>
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7             NA               <NA>              <NA>              <NA>
    ## 8           TRUE         rs60871478         rs4374882                 G
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11            NA               <NA>              <NA>              <NA>
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                  C                A                G           18
    ## 2               <NA>             <NA>             <NA>            5
    ## 3                  A                G                A            8
    ## 4                  T                G                A            3
    ## 5               <NA>             <NA>             <NA>           22
    ## 6               <NA>             <NA>             <NA>            2
    ## 7               <NA>             <NA>             <NA>            9
    ## 8                  A                T                C            7
    ## 9               <NA>             <NA>             <NA>           19
    ## 10              <NA>             <NA>             <NA>            7
    ## 11              <NA>             <NA>             <NA>           13
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      77381649    0.008013   6.244852     5.117e-10                3146
    ## 2      67107448    0.016050   4.903427     9.998e-07                3146
    ## 3      32533316    0.005418  -4.896640     1.025e-06                3146
    ## 4     190663557    0.005653   6.173713     7.624e-10                3146
    ## 5      30405151    0.005504  -4.611190     4.182e-06                3146
    ## 6      46901045    0.008801  -4.768776     1.976e-06                3146
    ## 7       3929424    0.008764   5.563670     2.935e-08                3146
    ## 8        827325    0.006863  -5.059010     4.505e-07                3146
    ## 9      45410002    0.006542  12.121675     5.299e-33                3146
    ## 10     15093202    0.006773  -4.987450     6.699e-07                3146
    ## 11     53504675    0.010450  -5.835407     5.947e-09                3146
    ##          exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 2  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 3  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 4  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 5  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 6  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 7  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 8  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 9  Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 10 Deming2017ptau             TRUE             reported      zWiv9J      2
    ## 11 Deming2017ptau             TRUE             reported      zWiv9J      2
    ##    mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1     TRUE           TRUE 5e-06              NA            NA
    ## 2     TRUE           TRUE 5e-06              NA            NA
    ## 3     TRUE           TRUE 5e-06              NA            NA
    ## 4     TRUE           TRUE 5e-06              NA            NA
    ## 5     TRUE           TRUE 5e-06              NA            NA
    ## 6     TRUE           TRUE 5e-06              NA            NA
    ## 7     TRUE           TRUE 5e-06              NA            NA
    ## 8     TRUE           TRUE 5e-06              NA            NA
    ## 9     TRUE          FALSE 5e-06              NA            NA
    ## 10    TRUE           TRUE 5e-06              NA            NA
    ## 11    TRUE           TRUE 5e-06              NA            NA
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Total
cholesterol GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33    6.77e-103

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

    ##   outliers_removed pve.exposure        F Alpha          NCP      Power
    ## 1            FALSE   0.09095326 31.36676  0.05 0.0003275093 0.05003752

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
Ptau on Total cholesterol. <br>

**Table 6** MR causaul estimates for CSF Ptau on Total cholesterol

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ## 2      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ## 3      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ## 4      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   10 0.003673033 0.05560406
    ## 2                           Weighted median   10 0.004995048 0.07713046
    ## 3                             Weighted mode   10 0.032947486 0.10015568
    ## 4                                  MR Egger   10 0.283407254 0.19105542
    ##        pval
    ## 1 0.9473325
    ## 2 0.9483643
    ## 3 0.7497096
    ## 4 0.1762643

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Total cholesterol and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ## 2      zWiv9J     8xxcXe Willer2013tc Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 5.536001    8 0.6990482
    ## 2 Inverse variance weighted 7.878126    9 0.5464734

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau     -0.01116978
    ##            se      pval
    ## 1 0.007298603 0.1644484

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome       exposure    pt
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 9.308096 0.591

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method nsnp  b se
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method  Q Q_df
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure   method
    ## 1      zWiv9J     8xxcXe Willer2013tc Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
