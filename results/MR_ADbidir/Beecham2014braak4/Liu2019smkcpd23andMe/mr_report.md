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

### Exposure: Neurofibrillary Tangles

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Neurofibrillary Tangles

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1   rs11675119     2   3476422   C   A 0.2699 -0.2541 0.0488 -5.206967
    ## 2   rs34487851     2 106642554   A   G 0.2686 -0.2523 0.0550 -4.587270
    ## 3   rs10166461     2 127859413   G   A 0.1733 -0.2636 0.0570 -4.624561
    ## 4  rs116351076     3 118356759   C   T 0.0358 -0.6753 0.1461 -4.622177
    ## 5  rs114498064     5 161442770   C   T 0.0131 -1.5100 0.3137 -4.813516
    ## 6  rs117530689     7 102030935   C   A 0.0178 -4.0337 0.8423 -4.788911
    ## 7   rs12595161    15  52922890   G   A 0.0511 -0.4178 0.0914 -4.571116
    ## 8   rs75680843    17  26640212   C   T 0.0721 -0.3709 0.0809 -4.584672
    ## 9   rs11654699    17  30903310   C   T 0.5243  0.2055 0.0449  4.576837
    ## 10      rs6857    19  45392254   C   T 0.3219  0.7871 0.0565 13.930973
    ##            P    N                   TRAIT
    ## 1  1.931e-07 4735 Neurofibrillary_Tangles
    ## 2  4.459e-06 4735 Neurofibrillary_Tangles
    ## 3  3.816e-06 4735 Neurofibrillary_Tangles
    ## 4  3.826e-06 4735 Neurofibrillary_Tangles
    ## 5  1.480e-06 4735 Neurofibrillary_Tangles
    ## 6  1.678e-06 4735 Neurofibrillary_Tangles
    ## 7  4.883e-06 4735 Neurofibrillary_Tangles
    ## 8  4.590e-06 4735 Neurofibrillary_Tangles
    ## 9  4.628e-06 4735 Neurofibrillary_Tangles
    ## 10 4.830e-44 4735 Neurofibrillary_Tangles

<br>

### Outcome: Smoking Quantity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Smoking Quantity

    ##            SNP CHROM       POS  REF  ALT         AF          BETA
    ## 1   rs11675119     2   3476422    C    A 0.24011600 -8.636716e-06
    ## 2   rs34487851     2 106642554    A    G 0.30781800 -1.112310e-03
    ## 3   rs10166461     2 127859413    G    A 0.19279700  7.527877e-04
    ## 4  rs116351076     3 118356759    C    T 0.01765140 -2.431263e-04
    ## 5  rs114498064     5 161442770    C    T 0.00599782  8.112930e-04
    ## 6  rs117530689    NA        NA <NA> <NA>         NA            NA
    ## 7   rs12595161    15  52922890    G    A 0.03249820  2.258953e-04
    ## 8   rs75680843    17  26640212    C    T 0.06272660 -3.845952e-03
    ## 9   rs11654699    17  30903310    C    T 0.49963700 -1.380226e-03
    ## 10      rs6857    19  45392254    C    T 0.17547500 -3.859788e-03
    ##             SE      Z       P      N              TRAIT
    ## 1  0.001727343 -0.005 0.99610 337334 Cigarettes_Per_Day
    ## 2  0.001721846 -0.646 0.51810 337334 Cigarettes_Per_Day
    ## 3  0.001722626  0.437 0.66180 337334 Cigarettes_Per_Day
    ## 4  0.001724300 -0.141 0.88770 337334 Cigarettes_Per_Day
    ## 5  0.001722490  0.471 0.63780 337334 Cigarettes_Per_Day
    ## 6           NA     NA      NA     NA               <NA>
    ## 7  0.001724391  0.131 0.89580 337334 Cigarettes_Per_Day
    ## 8  0.001734755 -2.217 0.02662 330721 Cigarettes_Per_Day
    ## 9  0.001847691 -0.747 0.45510 292829 Cigarettes_Per_Day
    ## 10 0.001734736 -2.225 0.02608 330721 Cigarettes_Per_Day

<br>

**Table 3:** Proxy SNPs for Smoking Quantity

    ##   proxy.outcome  target_snp proxy_snp ld.r2 Dprime ref.proxy alt.proxy
    ## 1            NA rs117530689        NA    NA     NA        NA        NA
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

**Table 4:** Harmonized Neurofibrillary Tangles and Smoking Quantity
datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10166461                      A                     G
    ## 2 rs114498064                      T                     C
    ## 3 rs116351076                      T                     C
    ## 4  rs11654699                      T                     C
    ## 5  rs11675119                      A                     C
    ## 6  rs12595161                      A                     G
    ## 7  rs34487851                      G                     A
    ## 8      rs6857                      T                     C
    ## 9  rs75680843                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                     A                    G       -0.2636  7.527877e-04
    ## 2                     T                    C       -1.5100  8.112930e-04
    ## 3                     T                    C       -0.6753 -2.431263e-04
    ## 4                     T                    C        0.2055 -1.380226e-03
    ## 5                     A                    C       -0.2541 -8.636716e-06
    ## 6                     A                    G       -0.4178  2.258953e-04
    ## 7                     G                    A       -0.2523 -1.112310e-03
    ## 8                     T                    C        0.7871 -3.859788e-03
    ## 9                     T                    C       -0.3709 -3.845952e-03
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.1733  0.19279700  FALSE       FALSE     FALSE     txew7l
    ## 2       0.0131  0.00599782  FALSE       FALSE     FALSE     txew7l
    ## 3       0.0358  0.01765140  FALSE       FALSE     FALSE     txew7l
    ## 4       0.5243  0.49963700  FALSE       FALSE     FALSE     txew7l
    ## 5       0.2699  0.24011600  FALSE       FALSE     FALSE     txew7l
    ## 6       0.0511  0.03249820  FALSE       FALSE     FALSE     txew7l
    ## 7       0.2686  0.30781800  FALSE       FALSE     FALSE     txew7l
    ## 8       0.3219  0.17547500  FALSE       FALSE     FALSE     txew7l
    ## 9       0.0721  0.06272660  FALSE       FALSE     FALSE     txew7l
    ##   chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           2   127859413 0.001722626     0.437      0.66180
    ## 2           5   161442770 0.001722490     0.471      0.63780
    ## 3           3   118356759 0.001724300    -0.141      0.88770
    ## 4          17    30903310 0.001847691    -0.747      0.45510
    ## 5           2     3476422 0.001727343    -0.005      0.99610
    ## 6          15    52922890 0.001724391     0.131      0.89580
    ## 7           2   106642554 0.001721846    -0.646      0.51810
    ## 8          19    45392254 0.001734736    -2.225      0.02608
    ## 9          17    26640212 0.001734755    -2.217      0.02662
    ##   samplesize.outcome              outcome mr_keep.outcome
    ## 1             337334 Liu2019smkcpd23andMe            TRUE
    ## 2             337334 Liu2019smkcpd23andMe            TRUE
    ## 3             337334 Liu2019smkcpd23andMe            TRUE
    ## 4             292829 Liu2019smkcpd23andMe            TRUE
    ## 5             337334 Liu2019smkcpd23andMe            TRUE
    ## 6             337334 Liu2019smkcpd23andMe            TRUE
    ## 7             337334 Liu2019smkcpd23andMe            TRUE
    ## 8             330721 Liu2019smkcpd23andMe            TRUE
    ## 9             330721 Liu2019smkcpd23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            2    127859413      0.0570  -4.624561
    ## 2            reported            5    161442770      0.3137  -4.813516
    ## 3            reported            3    118356759      0.1461  -4.622177
    ## 4            reported           17     30903310      0.0449   4.576837
    ## 5            reported            2      3476422      0.0488  -5.206967
    ## 6            reported           15     52922890      0.0914  -4.571116
    ## 7            reported            2    106642554      0.0550  -4.587270
    ## 8            reported           19     45392254      0.0565  13.930973
    ## 9            reported           17     26640212      0.0809  -4.584672
    ##   pval.exposure samplesize.exposure          exposure mr_keep.exposure
    ## 1     3.816e-06                4735 Beecham2014braak4             TRUE
    ## 2     1.480e-06                4735 Beecham2014braak4             TRUE
    ## 3     3.826e-06                4735 Beecham2014braak4             TRUE
    ## 4     4.628e-06                4735 Beecham2014braak4             TRUE
    ## 5     1.931e-07                4735 Beecham2014braak4             TRUE
    ## 6     4.883e-06                4735 Beecham2014braak4             TRUE
    ## 7     4.459e-06                4735 Beecham2014braak4             TRUE
    ## 8     4.830e-44                4735 Beecham2014braak4             TRUE
    ## 9     4.590e-06                4735 Beecham2014braak4             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 2             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 3             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 4             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 5             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 6             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 7             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ## 8             reported      6LcGQH      2    TRUE          FALSE 5e-06
    ## 9             reported      6LcGQH      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1              NA            NA          TRUE
    ## 2              NA            NA          TRUE
    ## 3              NA            NA          TRUE
    ## 4              NA            NA          TRUE
    ## 5              NA            NA          TRUE
    ## 6              NA            NA          TRUE
    ## 7              NA            NA          TRUE
    ## 8              NA            NA          TRUE
    ## 9              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Smoking
Quantity GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44      0.02608

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.03816053 23.43773  0.05 0.2639469 0.08074536

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
Neurofibrillary Tangles on Smoking Quantity. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Smoking
Quantity

    ##   id.exposure id.outcome              outcome          exposure
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ## 2      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ## 3      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ## 4      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)    8  2.717394e-05 0.000951223
    ## 2                           Weighted median    8 -4.357986e-04 0.001172306
    ## 3                             Weighted mode    8 -4.010895e-04 0.001000668
    ## 4                                  MR Egger    8 -7.477201e-04 0.001495440
    ##        pval
    ## 1 0.9772096
    ## 2 0.7100830
    ## 3 0.7005037
    ## 4 0.6348800

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Smoking Quantity and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome          exposure
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ## 2      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 5.888513    6 0.4357943
    ## 2 Inverse variance weighted 6.339473    7 0.5007164

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome          exposure
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4
    ##   egger_intercept           se      pval
    ## 1     0.000649229 0.0009667826 0.5268743

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome          exposure    pt
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers  RSSobs  pval
    ## 1            FALSE          0 9.20973 0.471

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome          exposure   method
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4 mrpresso
    ##   nsnp  b se pval
    ## 1   NA NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome          exposure   method
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4 mrpresso
    ##    Q Q_df Q_pval
    ## 1 NA   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome          exposure   method
    ## 1      6LcGQH     txew7l Liu2019smkcpd23andMe Beecham2014braak4 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
