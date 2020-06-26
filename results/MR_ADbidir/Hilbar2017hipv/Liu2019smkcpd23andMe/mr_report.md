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

### Exposure: Hippocampal Volume

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Hippocampal Volume

    ##          SNP CHROM       POS REF ALT     AF        BETA          SE      Z
    ## 1  rs2268894     2 162856148   C   T 0.5412 -0.05668170 0.008658983 -6.546
    ## 2  rs2289881     5  66084260   G   T 0.3544 -0.05014690 0.009022472 -5.558
    ## 3 rs11979341     7 155797978   C   G 0.3163  0.06558170 0.009708611  6.755
    ## 4  rs7020341     9 119247974   G   C 0.3590  0.05989482 0.009013518  6.645
    ## 5 rs61921502    12  65832468   T   G 0.1534 -0.10788400 0.011964511 -9.017
    ## 6 rs77956314    12 117323367   T   C 0.0840  0.16185400 0.015536016 10.418
    ##           P     N              TRAIT
    ## 1 5.894e-11 26814 Hippocampal_Volume
    ## 2 2.728e-08 26814 Hippocampal_Volume
    ## 3 1.424e-11 24484 Hippocampal_Volume
    ## 4 3.035e-11 26700 Hippocampal_Volume
    ## 5 1.941e-19 26814 Hippocampal_Volume
    ## 6 2.055e-25 26814 Hippocampal_Volume

<br>

### Outcome: Smoking Quantity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Smoking Quantity

    ##          SNP CHROM       POS REF ALT        AF          BETA          SE
    ## 1  rs2268894     2 162856148   C   T 0.5596880 -0.0022736844 0.001719882
    ## 2  rs2289881     5  66084260   G   T 0.3650620 -0.0005462457 0.001723173
    ## 3 rs11979341     7 155797978   C   G 0.3317550 -0.0000673014 0.001725677
    ## 4  rs7020341     9 119247974   G   C 0.4115830 -0.0009472033 0.001722188
    ## 5 rs61921502    12  65832468   T   G 0.1472400 -0.0039194700 0.001717558
    ## 6 rs77956314    12 117323367   T   C 0.0739178  0.0022668200 0.001719893
    ##        Z      P      N              TRAIT
    ## 1 -1.322 0.1861 337334 Cigarettes_Per_Day
    ## 2 -0.317 0.7510 337334 Cigarettes_Per_Day
    ## 3 -0.039 0.9692 337334 Cigarettes_Per_Day
    ## 4 -0.550 0.5825 337334 Cigarettes_Per_Day
    ## 5 -2.282 0.0225 337334 Cigarettes_Per_Day
    ## 6  1.318 0.1875 337334 Cigarettes_Per_Day

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

**Table 4:** Harmonized Hippocampal Volume and Smoking Quantity datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11979341                      G                     C
    ## 2  rs2268894                      T                     C
    ## 3  rs2289881                      T                     G
    ## 4 rs61921502                      G                     T
    ## 5  rs7020341                      C                     G
    ## 6 rs77956314                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                     G                    C    0.06558170 -0.0000673014
    ## 2                     T                    C   -0.05668170 -0.0022736844
    ## 3                     T                    G   -0.05014690 -0.0005462457
    ## 4                     G                    T   -0.10788400 -0.0039194700
    ## 5                     C                    G    0.05989482 -0.0009472033
    ## 6                     C                    T    0.16185400  0.0022668200
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.3163   0.3317550  FALSE        TRUE     FALSE     osMmiA
    ## 2       0.5412   0.5596880  FALSE       FALSE     FALSE     osMmiA
    ## 3       0.3544   0.3650620  FALSE       FALSE     FALSE     osMmiA
    ## 4       0.1534   0.1472400  FALSE       FALSE     FALSE     osMmiA
    ## 5       0.3590   0.4115830  FALSE        TRUE     FALSE     osMmiA
    ## 6       0.0840   0.0739178  FALSE       FALSE     FALSE     osMmiA
    ##   chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           7   155797978 0.001725677    -0.039       0.9692
    ## 2           2   162856148 0.001719882    -1.322       0.1861
    ## 3           5    66084260 0.001723173    -0.317       0.7510
    ## 4          12    65832468 0.001717558    -2.282       0.0225
    ## 5           9   119247974 0.001722188    -0.550       0.5825
    ## 6          12   117323367 0.001719893     1.318       0.1875
    ##   samplesize.outcome              outcome mr_keep.outcome
    ## 1             337334 Liu2019smkcpd23andMe            TRUE
    ## 2             337334 Liu2019smkcpd23andMe            TRUE
    ## 3             337334 Liu2019smkcpd23andMe            TRUE
    ## 4             337334 Liu2019smkcpd23andMe            TRUE
    ## 5             337334 Liu2019smkcpd23andMe            TRUE
    ## 6             337334 Liu2019smkcpd23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            7    155797978 0.009708611      6.755
    ## 2            reported            2    162856148 0.008658983     -6.546
    ## 3            reported            5     66084260 0.009022472     -5.558
    ## 4            reported           12     65832468 0.011964511     -9.017
    ## 5            reported            9    119247974 0.009013518      6.645
    ## 6            reported           12    117323367 0.015536016     10.418
    ##   pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1     1.424e-11               24484 Hilbar2017hipv             TRUE
    ## 2     5.894e-11               26814 Hilbar2017hipv             TRUE
    ## 3     2.728e-08               26814 Hilbar2017hipv             TRUE
    ## 4     1.941e-19               26814 Hilbar2017hipv             TRUE
    ## 5     3.035e-11               26700 Hilbar2017hipv             TRUE
    ## 6     2.055e-25               26814 Hilbar2017hipv             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ## 2             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ## 3             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ## 4             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ## 5             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ## 6             reported      mxt1AL      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1              NA            NA          TRUE
    ## 2              NA            NA          TRUE
    ## 3              NA            NA          TRUE
    ## 4              NA            NA          TRUE
    ## 5              NA            NA          TRUE
    ## 6              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Smoking
Quantity GWAS

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
    ##   k.outcome = col_logical(),
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.01315175 59.54294  0.05 4.722378 0.5844087

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
Hippocampal Volume on Smoking Quantity. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Smoking
Quantity

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ## 2      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ## 3      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ## 4      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ##                                      method nsnp          b          se
    ## 1 Inverse variance weighted (fixed effects)    6 0.01722732 0.007583515
    ## 2                           Weighted median    6 0.01627266 0.009406263
    ## 3                             Weighted mode    6 0.01523140 0.010326126
    ## 4                                  MR Egger    6 0.02287964 0.017704273
    ##         pval
    ## 1 0.02310587
    ## 2 0.08363351
    ## 3 0.20021786
    ## 4 0.26584778

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Smoking Quantity and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ## 2      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 3.811491    4 0.4321184
    ## 2 Inverse variance weighted 3.936325    5 0.5586196

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome       exposure
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1   -0.0005796638 0.001640631 0.7416848

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
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 5.573232 0.585

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome       exposure   method nsnp
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Liu2019smkcpd23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome       exposure   method  Q
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome       exposure   method
    ## 1      mxt1AL     osMmiA Liu2019smkcpd23andMe Hilbar2017hipv mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
