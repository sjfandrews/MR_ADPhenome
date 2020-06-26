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

### Outcome: Meat related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in
Meat related diet

    ##            SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1   rs11675119     2   3476422    C    A 0.249597  3.07870e-03 0.00281465
    ## 2   rs34487851     2 106642554    A    G 0.278296 -2.98556e-05 0.00276515
    ## 3   rs10166461     2 127859413    G    A 0.189604 -4.34729e-04 0.00310272
    ## 4  rs116351076     3 118356759    C    T 0.025125 -2.02179e-02 0.00784859
    ## 5  rs114498064     5 161442770    C    T 0.011578 -9.57930e-03 0.01137480
    ## 6  rs117530689     7 102030935    C    A 0.029358  3.36764e-03 0.00728510
    ## 7   rs12595161    15  52922890    G    A 0.039452 -2.02277e-05 0.00623161
    ## 8   rs75680843    17  26640212    C    T 0.064527  7.06633e-03 0.00494689
    ## 9   rs11654699    NA        NA <NA> <NA>       NA           NA         NA
    ## 10      rs6857    19  45392254    C    T 0.171238 -1.97233e-02 0.00322947
    ##              Z       P      N           TRAIT
    ## 1   1.09381000 2.7e-01 335576 fish_plant_diet
    ## 2  -0.01079710 9.9e-01 335576 fish_plant_diet
    ## 3  -0.14011200 8.9e-01 335576 fish_plant_diet
    ## 4  -2.57599000 1.0e-02 335576 fish_plant_diet
    ## 5  -0.84215100 4.0e-01 335576 fish_plant_diet
    ## 6   0.46226400 6.4e-01 335576 fish_plant_diet
    ## 7  -0.00324598 1.0e+00 335576 fish_plant_diet
    ## 8   1.42844000 1.5e-01 335576 fish_plant_diet
    ## 9           NA      NA     NA            <NA>
    ## 10 -6.10729000 1.0e-09 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Meat related diet

    ##   target_snp proxy_snp    ld.r2  Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1 rs11654699 rs7225208 0.829211 0.91424 TA/CG  NA    17 30922784         G
    ##   ALT.proxy       AF         BETA         SE           Z    P      N
    ## 1         A 0.502603 -2.02264e-05 0.00243993 -0.00828975 0.99 335576
    ##             TRAIT  ref ref.proxy alt alt.proxy  ALT REF proxy.outcome
    ## 1 fish_plant_diet TRUE         A   C         G TRUE   C          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Neurofibrillary Tangles and Meat related diet
datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    G       -0.2636 -4.34729e-04
    ## 2                      T                    C       -1.5100 -9.57930e-03
    ## 3                      T                    C       -0.6753 -2.02179e-02
    ## 4                      T                    C        0.2055 -2.02264e-05
    ## 5                      A                    C       -0.2541  3.07870e-03
    ## 6                      A                    C       -4.0337  3.36764e-03
    ## 7                      A                    G       -0.4178 -2.02277e-05
    ## 8                      G                    A       -0.2523 -2.98556e-05
    ## 9                      T                    C        0.7871 -1.97233e-02
    ## 10                     T                    C       -0.3709  7.06633e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.1733    0.189604  FALSE       FALSE     FALSE     Aj8xD3
    ## 2        0.0131    0.011578  FALSE       FALSE     FALSE     Aj8xD3
    ## 3        0.0358    0.025125  FALSE       FALSE     FALSE     Aj8xD3
    ## 4        0.5243    0.502603  FALSE       FALSE     FALSE     Aj8xD3
    ## 5        0.2699    0.249597  FALSE       FALSE     FALSE     Aj8xD3
    ## 6        0.0178    0.029358  FALSE       FALSE     FALSE     Aj8xD3
    ## 7        0.0511    0.039452  FALSE       FALSE     FALSE     Aj8xD3
    ## 8        0.2686    0.278296  FALSE       FALSE     FALSE     Aj8xD3
    ## 9        0.3219    0.171238  FALSE       FALSE     FALSE     Aj8xD3
    ## 10       0.0721    0.064527  FALSE       FALSE     FALSE     Aj8xD3
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1            2   127859413 0.00310272 -0.14011200      8.9e-01
    ## 2            5   161442770 0.01137480 -0.84215100      4.0e-01
    ## 3            3   118356759 0.00784859 -2.57599000      1.0e-02
    ## 4           17    30922784 0.00243993 -0.00828975      9.9e-01
    ## 5            2     3476422 0.00281465  1.09381000      2.7e-01
    ## 6            7   102030935 0.00728510  0.46226400      6.4e-01
    ## 7           15    52922890 0.00623161 -0.00324598      1.0e+00
    ## 8            2   106642554 0.00276515 -0.01079710      9.9e-01
    ## 9           19    45392254 0.00322947 -6.10729000      1.0e-09
    ## 10          17    26640212 0.00494689  1.42844000      1.5e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020meat            TRUE            reported
    ## 2              335576 Niarchou2020meat            TRUE            reported
    ## 3              335576 Niarchou2020meat            TRUE            reported
    ## 4              335576 Niarchou2020meat            TRUE            reported
    ## 5              335576 Niarchou2020meat            TRUE            reported
    ## 6              335576 Niarchou2020meat            TRUE            reported
    ## 7              335576 Niarchou2020meat            TRUE            reported
    ## 8              335576 Niarchou2020meat            TRUE            reported
    ## 9              335576 Niarchou2020meat            TRUE            reported
    ## 10             335576 Niarchou2020meat            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>                NA
    ## 2             NA               <NA>              <NA>                NA
    ## 3             NA               <NA>              <NA>                NA
    ## 4           TRUE         rs11654699         rs7225208              TRUE
    ## 5             NA               <NA>              <NA>                NA
    ## 6             NA               <NA>              <NA>                NA
    ## 7             NA               <NA>              <NA>                NA
    ## 8             NA               <NA>              <NA>                NA
    ## 9             NA               <NA>              <NA>                NA
    ## 10            NA               <NA>              <NA>                NA
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>            2
    ## 2               <NA>             <NA>             <NA>            5
    ## 3               <NA>             <NA>             <NA>            3
    ## 4                  C                A                G           17
    ## 5               <NA>             <NA>             <NA>            2
    ## 6               <NA>             <NA>             <NA>            7
    ## 7               <NA>             <NA>             <NA>           15
    ## 8               <NA>             <NA>             <NA>            2
    ## 9               <NA>             <NA>             <NA>           19
    ## 10              <NA>             <NA>             <NA>           17
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     127859413      0.0570  -4.624561     3.816e-06                4735
    ## 2     161442770      0.3137  -4.813516     1.480e-06                4735
    ## 3     118356759      0.1461  -4.622177     3.826e-06                4735
    ## 4      30903310      0.0449   4.576837     4.628e-06                4735
    ## 5       3476422      0.0488  -5.206967     1.931e-07                4735
    ## 6     102030935      0.8423  -4.788911     1.678e-06                4735
    ## 7      52922890      0.0914  -4.571116     4.883e-06                4735
    ## 8     106642554      0.0550  -4.587270     4.459e-06                4735
    ## 9      45392254      0.0565  13.930973     4.830e-44                4735
    ## 10     26640212      0.0809  -4.584672     4.590e-06                4735
    ##             exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 2  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 3  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 4  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 5  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 6  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 7  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 8  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 9  Beecham2014braak4             TRUE             reported      tZZaa3
    ## 10 Beecham2014braak4             TRUE             reported      tZZaa3
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06              NA            NA
    ## 2       2    TRUE           TRUE 5e-06              NA            NA
    ## 3       2    TRUE           TRUE 5e-06              NA            NA
    ## 4       2    TRUE           TRUE 5e-06              NA            NA
    ## 5       2    TRUE           TRUE 5e-06              NA            NA
    ## 6       2    TRUE           TRUE 5e-06              NA            NA
    ## 7       2    TRUE           TRUE 5e-06              NA            NA
    ## 8       2    TRUE           TRUE 5e-06              NA            NA
    ## 9       2    TRUE          FALSE 5e-06              NA            NA
    ## 10      2    TRUE           TRUE 5e-06              NA            NA
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

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Meat related
diet GWAS

    ##      SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs6857          19    45392254      4.83e-44        1e-09

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

    ##   outliers_removed pve.exposure        F Alpha         NCP      Power
    ## 1            FALSE   0.04306798 23.62831  0.05 1.65407e-05 0.05000189

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
Neurofibrillary Tangles on Meat related diet. <br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Meat
related diet

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ## 2      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ## 3      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ## 4      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)    9 -3.112824e-04 0.001638456
    ## 2                           Weighted median    9 -7.473490e-04 0.001820712
    ## 3                             Weighted mode    9 -7.742555e-04 0.001619537
    ## 4                                  MR Egger    9 -2.685080e-06 0.002362521
    ##        pval
    ## 1 0.8493207
    ## 2 0.6814607
    ## 3 0.6453894
    ## 4 0.9991249

<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary
Tangles versus the association in Meat related diet and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ## 2      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 10.68139    7 0.1531332
    ## 2 Inverse variance weighted 10.77923    8 0.2145245

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Niarchou2020meat/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Niarchou2020meat/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome          exposure
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4
    ##   egger_intercept         se     pval
    ## 1   -0.0004570286 0.00180482 0.807369

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome          exposure    pt
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 13.84878 0.362

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome          exposure   method nsnp
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4 mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome          exposure   method  Q
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4 mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome          exposure   method
    ## 1      tZZaa3     Aj8xD3 Niarchou2020meat Beecham2014braak4 mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
