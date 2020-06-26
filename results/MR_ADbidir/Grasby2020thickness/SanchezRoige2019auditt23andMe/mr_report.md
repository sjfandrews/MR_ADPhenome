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

### Exposure: Cortical Thickness

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Thickness

    ##          SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1  rs6738528     2  27149258   T   A 0.3984  0.0045 0.0008  5.625000
    ## 2 rs11692435     2  98275354   G   A 0.0910 -0.0091 0.0015 -6.066667
    ## 3   rs533577     3  39489651   C   T 0.4935 -0.0050 0.0008 -6.250000
    ## 4 rs35021943     4 121643239   A   C 0.2422  0.0051 0.0009  5.666670
    ## 5  rs7824177     8 110585288   A   G 0.1616 -0.0059 0.0010 -5.900000
    ## 6  rs2316766    17  43919068   G   T 0.2098  0.0069 0.0011  6.272727
    ##           P     N              TRAIT
    ## 1 7.324e-09 32872 Cortical_Thickness
    ## 2 3.179e-10 29128 Cortical_Thickness
    ## 3 8.426e-11 32872 Cortical_Thickness
    ## 4 2.979e-09 32872 Cortical_Thickness
    ## 5 8.922e-09 32872 Cortical_Thickness
    ## 6 2.903e-10 26063 Cortical_Thickness

<br>

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in AUDIT
Total

    ##          SNP CHROM       POS REF ALT       AF         BETA          SE
    ## 1  rs6738528     2  27149258   T   A 0.421779 -0.003399162 0.002655596
    ## 2 rs11692435     2  98275354   G   A 0.140881  0.008026644 0.002683599
    ## 3   rs533577     3  39489651   C   T 0.449239  0.003481237 0.002655406
    ## 4 rs35021943     4 121643239   A   C 0.224119 -0.004933300 0.002660895
    ## 5  rs7824177     8 110585288   A   G 0.113266  0.004653760 0.002654740
    ## 6  rs2316766    17  43919068   G   T 0.147571 -0.014767283 0.002652170
    ##        Z         P      N       TRAIT
    ## 1 -1.280 2.007e-01 141354 AUDIT_Total
    ## 2  2.991 2.778e-03 137398 AUDIT_Total
    ## 3  1.311 1.897e-01 141353 AUDIT_Total
    ## 4 -1.854 6.372e-02 140427 AUDIT_Total
    ## 5  1.753 7.966e-02 141143 AUDIT_Total
    ## 6 -5.568 2.573e-08 139273 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

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

**Table 4:** Harmonized Cortical Thickness and AUDIT Total datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091  0.008026644
    ## 2                     T                    G        0.0069 -0.014767283
    ## 3                     C                    A        0.0051 -0.004933300
    ## 4                     T                    C       -0.0050  0.003481237
    ## 5                     A                    T        0.0045 -0.003399162
    ## 6                     G                    A       -0.0059  0.004653760
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910    0.140881  FALSE       FALSE     FALSE     C5KNzM
    ## 2       0.2098    0.147571  FALSE       FALSE     FALSE     C5KNzM
    ## 3       0.2422    0.224119  FALSE       FALSE     FALSE     C5KNzM
    ## 4       0.4935    0.449239  FALSE       FALSE     FALSE     C5KNzM
    ## 5       0.3984    0.421779  FALSE        TRUE      TRUE     C5KNzM
    ## 6       0.1616    0.113266  FALSE       FALSE     FALSE     C5KNzM
    ##   chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           2    98275354 0.002683599     2.991    2.778e-03
    ## 2          17    43919068 0.002652170    -5.568    2.573e-08
    ## 3           4   121643239 0.002660895    -1.854    6.372e-02
    ## 4           3    39489651 0.002655406     1.311    1.897e-01
    ## 5           2    27149258 0.002655596    -1.280    2.007e-01
    ## 6           8   110585288 0.002654740     1.753    7.966e-02
    ##   samplesize.outcome                       outcome mr_keep.outcome
    ## 1             137398 SanchezRoige2019auditt23andMe            TRUE
    ## 2             139273 SanchezRoige2019auditt23andMe            TRUE
    ## 3             140427 SanchezRoige2019auditt23andMe            TRUE
    ## 4             141353 SanchezRoige2019auditt23andMe            TRUE
    ## 5             141354 SanchezRoige2019auditt23andMe            TRUE
    ## 6             141143 SanchezRoige2019auditt23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            2     98275354      0.0015  -6.066667
    ## 2            reported           17     43919068      0.0011   6.272727
    ## 3            reported            4    121643239      0.0009   5.666670
    ## 4            reported            3     39489651      0.0008  -6.250000
    ## 5            reported            2     27149258      0.0008   5.625000
    ## 6            reported            8    110585288      0.0010  -5.900000
    ##   pval.exposure samplesize.exposure            exposure mr_keep.exposure
    ## 1     3.179e-10               29128 Grasby2020thickness             TRUE
    ## 2     2.903e-10               26063 Grasby2020thickness             TRUE
    ## 3     2.979e-09               32872 Grasby2020thickness             TRUE
    ## 4     8.426e-11               32872 Grasby2020thickness             TRUE
    ## 5     7.324e-09               32872 Grasby2020thickness             TRUE
    ## 6     8.922e-09               32872 Grasby2020thickness             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      4zANdD      2    TRUE           TRUE 5e-08
    ## 2             reported      4zANdD      2    TRUE          FALSE 5e-08
    ## 3             reported      4zANdD      2    TRUE           TRUE 5e-08
    ## 4             reported      4zANdD      2    TRUE           TRUE 5e-08
    ## 5             reported      4zANdD      2   FALSE           TRUE 5e-08
    ## 6             reported      4zANdD      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1              NA            NA          TRUE
    ## 2              NA            NA          TRUE
    ## 3              NA            NA          TRUE
    ## 4              NA            NA          TRUE
    ## 5              NA            NA            NA
    ## 6              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs2316766          17    43919068     2.903e-10    2.573e-08

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
    ## 1            FALSE  0.004279465 36.21375  0.05 15.82147 0.9781865

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

Table 6 presents the MR causal estimates of genetically predicted
Cortical Thickness on AUDIT Total. <br>

**Table 6** MR causaul estimates for Cortical Thickness on AUDIT Total

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 2      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 3      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 4      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    4 -0.8479680 0.2055988
    ## 2                           Weighted median    4 -0.8508211 0.2514493
    ## 3                             Weighted mode    4 -0.8677435 0.3100629
    ## 4                                  MR Egger    4 -0.9612685 0.8023021
    ##           pval
    ## 1 3.717315e-05
    ## 2 7.152427e-04
    ## 3 6.793151e-02
    ## 4 3.535877e-01

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in AUDIT Total and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 2      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger 0.1432567    2 0.9308768
    ## 2 Inverse variance weighted 0.1646013    3 0.9830908

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">
Fig. 2: Funnel plot of the MR causal estimates against their precession
</p>
:::

<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR)
can be used to visualize influential data points with large
contributions to Cochran's Q Statistic that may bias causal effect
estimates.

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1    0.0007592713 0.00519701 0.8972402

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##      pt outliers_removed n_outliers    RSSobs  pval
    ## 1 5e-08            FALSE          0 0.2644669 0.988

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 2      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 3      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 4      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    4 -0.8479680 0.2055988
    ## 2                           Weighted median    4 -0.8508211 0.2600815
    ## 3                             Weighted mode    4 -0.8677435 0.2847142
    ## 4                                  MR Egger    4 -0.9612685 0.8023021
    ##           pval
    ## 1 3.717315e-05
    ## 2 1.070300e-03
    ## 3 5.552558e-02
    ## 4 3.535877e-01

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ## 2      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger 0.1432567    2 0.9308768
    ## 2 Inverse variance weighted 0.1646013    3 0.9830908

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome            exposure
    ## 1      4zANdD     C5KNzM SanchezRoige2019auditt23andMe Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1    0.0007592713 0.00519701 0.8972402

<br>
