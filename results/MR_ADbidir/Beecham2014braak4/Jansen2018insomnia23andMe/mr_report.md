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

### Outcome: Insomnia

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Insomnia

    ##            SNP CHROM       POS REF ALT         AF          BETA
    ## 1   rs11675119     2   3476422   C   A 0.24011600 -0.0015085160
    ## 2   rs34487851     2 106642554   A   G 0.30781800 -0.0028350700
    ## 3   rs10166461     2 127859413   G   A 0.19279700  0.0013590296
    ## 4  rs116351076     3 118356759   C   T 0.01765140  0.0014852491
    ## 5  rs114498064     5 161442770   C   T 0.00599782 -0.0005692360
    ## 6  rs117530689     7 102030935   C   A 0.03594890 -0.0021786488
    ## 7   rs12595161    15  52922890   G   A 0.03249820 -0.0010639860
    ## 8   rs75680843    17  26640212   C   T 0.06272660 -0.0001674305
    ## 9   rs11654699    17  30903310   C   T 0.49963700 -0.0001575845
    ## 10      rs6857    19  45392254   C   T 0.17547500 -0.0035154201
    ##              SE      Z         P       N             TRAIT
    ## 1  0.0008669632 -1.740 0.0818700 1328180 Insomnia_Symptoms
    ## 2  0.0010272003 -2.760 0.0057790  944267 Insomnia_Symptoms
    ## 3  0.0008667280  1.568 0.1168000 1329230 Insomnia_Symptoms
    ## 4  0.0008685667  1.710 0.0872800 1323333 Insomnia_Symptoms
    ## 5  0.0008677379 -0.656 0.5116000 1328124 Insomnia_Symptoms
    ## 6  0.0016258574 -1.340 0.1804000  377505 Insomnia_Symptoms
    ## 7  0.0008664381 -1.228 0.2193000 1330800 Insomnia_Symptoms
    ## 8  0.0008675155 -0.193 0.8472000 1330428 Insomnia_Symptoms
    ## 9  0.0010299642 -0.153 0.8787000  944267 Insomnia_Symptoms
    ## 10 0.0008650148 -4.064 0.0000483 1330082 Insomnia_Symptoms

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

**Table 4:** Harmonized Neurofibrillary Tangles and Insomnia datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10166461                      A                     G
    ## 2  rs114498064                      T                     C
    ## 3  rs116351076                      T                     C
    ## 4   rs11654699                      T                     C
    ## 5   rs11675119                      A                     C
    ## 6  rs117530689                      A                     C
    ## 7   rs12595161                      A                     G
    ## 8   rs34487851                      G                     A
    ## 9       rs6857                      T                     C
    ## 10  rs75680843                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      A                    G       -0.2636  0.0013590296
    ## 2                      T                    C       -1.5100 -0.0005692360
    ## 3                      T                    C       -0.6753  0.0014852491
    ## 4                      T                    C        0.2055 -0.0001575845
    ## 5                      A                    C       -0.2541 -0.0015085160
    ## 6                      A                    C       -4.0337 -0.0021786488
    ## 7                      A                    G       -0.4178 -0.0010639860
    ## 8                      G                    A       -0.2523 -0.0028350700
    ## 9                      T                    C        0.7871 -0.0035154201
    ## 10                     T                    C       -0.3709 -0.0001674305
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.1733  0.19279700  FALSE       FALSE     FALSE     43WPYs
    ## 2        0.0131  0.00599782  FALSE       FALSE     FALSE     43WPYs
    ## 3        0.0358  0.01765140  FALSE       FALSE     FALSE     43WPYs
    ## 4        0.5243  0.49963700  FALSE       FALSE     FALSE     43WPYs
    ## 5        0.2699  0.24011600  FALSE       FALSE     FALSE     43WPYs
    ## 6        0.0178  0.03594890  FALSE       FALSE     FALSE     43WPYs
    ## 7        0.0511  0.03249820  FALSE       FALSE     FALSE     43WPYs
    ## 8        0.2686  0.30781800  FALSE       FALSE     FALSE     43WPYs
    ## 9        0.3219  0.17547500  FALSE       FALSE     FALSE     43WPYs
    ## 10       0.0721  0.06272660  FALSE       FALSE     FALSE     43WPYs
    ##    chr.outcome pos.outcome   se.outcome z.outcome pval.outcome
    ## 1            2   127859413 0.0008667280     1.568    0.1168000
    ## 2            5   161442770 0.0008677379    -0.656    0.5116000
    ## 3            3   118356759 0.0008685667     1.710    0.0872800
    ## 4           17    30903310 0.0010299642    -0.153    0.8787000
    ## 5            2     3476422 0.0008669632    -1.740    0.0818700
    ## 6            7   102030935 0.0016258574    -1.340    0.1804000
    ## 7           15    52922890 0.0008664381    -1.228    0.2193000
    ## 8            2   106642554 0.0010272003    -2.760    0.0057790
    ## 9           19    45392254 0.0008650148    -4.064    0.0000483
    ## 10          17    26640212 0.0008675155    -0.193    0.8472000
    ##    samplesize.outcome                   outcome mr_keep.outcome
    ## 1             1329230 Jansen2018insomnia23andMe            TRUE
    ## 2             1328124 Jansen2018insomnia23andMe            TRUE
    ## 3             1323333 Jansen2018insomnia23andMe            TRUE
    ## 4              944267 Jansen2018insomnia23andMe            TRUE
    ## 5             1328180 Jansen2018insomnia23andMe            TRUE
    ## 6              377505 Jansen2018insomnia23andMe            TRUE
    ## 7             1330800 Jansen2018insomnia23andMe            TRUE
    ## 8              944267 Jansen2018insomnia23andMe            TRUE
    ## 9             1330082 Jansen2018insomnia23andMe            TRUE
    ## 10            1330428 Jansen2018insomnia23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            2    127859413      0.0570  -4.624561
    ## 2             reported            5    161442770      0.3137  -4.813516
    ## 3             reported            3    118356759      0.1461  -4.622177
    ## 4             reported           17     30903310      0.0449   4.576837
    ## 5             reported            2      3476422      0.0488  -5.206967
    ## 6             reported            7    102030935      0.8423  -4.788911
    ## 7             reported           15     52922890      0.0914  -4.571116
    ## 8             reported            2    106642554      0.0550  -4.587270
    ## 9             reported           19     45392254      0.0565  13.930973
    ## 10            reported           17     26640212      0.0809  -4.584672
    ##    pval.exposure samplesize.exposure          exposure mr_keep.exposure
    ## 1      3.816e-06                4735 Beecham2014braak4             TRUE
    ## 2      1.480e-06                4735 Beecham2014braak4             TRUE
    ## 3      3.826e-06                4735 Beecham2014braak4             TRUE
    ## 4      4.628e-06                4735 Beecham2014braak4             TRUE
    ## 5      1.931e-07                4735 Beecham2014braak4             TRUE
    ## 6      1.678e-06                4735 Beecham2014braak4             TRUE
    ## 7      4.883e-06                4735 Beecham2014braak4             TRUE
    ## 8      4.459e-06                4735 Beecham2014braak4             TRUE
    ## 9      4.830e-44                4735 Beecham2014braak4             TRUE
    ## 10     4.590e-06                4735 Beecham2014braak4             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 2              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 3              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 4              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 5              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 6              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 7              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 8              reported      72X9FY      2    TRUE           TRUE 5e-06
    ## 9              reported      72X9FY      2    TRUE          FALSE 5e-06
    ## 10             reported      72X9FY      2    TRUE           TRUE 5e-06
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44     4.83e-05

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

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.04306798 23.62831  0.05 0.02278712 0.05261441

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
Neurofibrillary Tangles on Insomnia. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Insomnia

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ## 2      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ## 3      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ## 4      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)    9 0.0004285265 0.0003088762
    ## 2                           Weighted median    9 0.0004878440 0.0003779069
    ## 3                             Weighted mode    9 0.0004588399 0.0003574858
    ## 4                                  MR Egger    9 0.0003086511 0.0006365181
    ##        pval
    ## 1 0.1653280
    ## 2 0.1967347
    ## 3 0.2352379
    ## 4 0.6425493

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Insomnia and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ## 2      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 17.67673    7 0.01351686
    ## 2 Inverse variance weighted 17.89768    8 0.02200680

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##   egger_intercept           se      pval
    ## 1    0.0001904461 0.0006438361 0.7759658

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                   outcome          exposure    pt
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 19.03032 0.122

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##     method nsnp  b se pval
    ## 1 mrpresso   NA NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Jansen2018insomnia23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##     method  Q Q_df Q_pval
    ## 1 mrpresso NA   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                   outcome          exposure
    ## 1      72X9FY     43WPYs Jansen2018insomnia23andMe Beecham2014braak4
    ##     method egger_intercept se pval
    ## 1 mrpresso              NA NA   NA

<br>
