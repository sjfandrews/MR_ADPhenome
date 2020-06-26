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

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Education

    ##          SNP CHROM       POS REF ALT     AF        BETA          SE
    ## 1  rs2268894     2 162856148   C   T 0.5358  0.01278450 0.001405987
    ## 2  rs2289881     5  66084260   G   T 0.3532 -0.00143804 0.001468665
    ## 3 rs11979341     7 155797978   C   G 0.3122  0.00234125 0.001547631
    ## 4  rs7020341     9 119247974   G   C 0.3620 -0.00133644 0.001459571
    ## 5 rs61921502    12  65832468   T   G 0.1581  0.00339011 0.001936420
    ## 6 rs77956314    12 117323367   T   C 0.0819  0.00601588 0.002557108
    ##            Z            P       N     TRAIT
    ## 1  9.0928955 9.643595e-20 1131881 Education
    ## 2 -0.9791474 3.275072e-01 1129371 Education
    ## 3  1.5128000 1.303312e-01 1082046 Education
    ## 4 -0.9156403 3.598556e-01 1131084 Education
    ## 5  1.7507100 7.999557e-02 1115020 Education
    ## 6  2.3526100 1.864229e-02 1131881 Education

<br>

**Table 3:** Proxy SNPs for Education

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

**Table 4:** Harmonized Hippocampal Volume and Education datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11979341                      G                     C
    ## 2  rs2268894                      T                     C
    ## 3  rs2289881                      T                     G
    ## 4 rs61921502                      G                     T
    ## 5  rs7020341                      C                     G
    ## 6 rs77956314                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     G                    C    0.06558170   0.00234125
    ## 2                     T                    C   -0.05668170   0.01278450
    ## 3                     T                    G   -0.05014690  -0.00143804
    ## 4                     G                    T   -0.10788400   0.00339011
    ## 5                     C                    G    0.05989482  -0.00133644
    ## 6                     C                    T    0.16185400   0.00601588
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.3163      0.3122  FALSE        TRUE     FALSE     dYgN5z
    ## 2       0.5412      0.5358  FALSE       FALSE     FALSE     dYgN5z
    ## 3       0.3544      0.3532  FALSE       FALSE     FALSE     dYgN5z
    ## 4       0.1534      0.1581  FALSE       FALSE     FALSE     dYgN5z
    ## 5       0.3590      0.3620  FALSE        TRUE     FALSE     dYgN5z
    ## 6       0.0840      0.0819  FALSE       FALSE     FALSE     dYgN5z
    ##   chr.outcome pos.outcome  se.outcome  z.outcome pval.outcome
    ## 1           7   155797978 0.001547631  1.5128000 1.303312e-01
    ## 2           2   162856148 0.001405987  9.0928955 9.643595e-20
    ## 3           5    66084260 0.001468665 -0.9791474 3.275072e-01
    ## 4          12    65832468 0.001936420  1.7507100 7.999557e-02
    ## 5           9   119247974 0.001459571 -0.9156403 3.598556e-01
    ## 6          12   117323367 0.002557108  2.3526100 1.864229e-02
    ##   samplesize.outcome                 outcome mr_keep.outcome
    ## 1            1082046 Lee2018education23andMe            TRUE
    ## 2            1131881 Lee2018education23andMe            TRUE
    ## 3            1129371 Lee2018education23andMe            TRUE
    ## 4            1115020 Lee2018education23andMe            TRUE
    ## 5            1131084 Lee2018education23andMe            TRUE
    ## 6            1131881 Lee2018education23andMe            TRUE
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
    ## 1             reported      pjNh9L      2    TRUE           TRUE 5e-08
    ## 2             reported      pjNh9L      2    TRUE          FALSE 5e-08
    ## 3             reported      pjNh9L      2    TRUE           TRUE 5e-08
    ## 4             reported      pjNh9L      2    TRUE           TRUE 5e-08
    ## 5             reported      pjNh9L      2    TRUE           TRUE 5e-08
    ## 6             reported      pjNh9L      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    4.121952e-06         0.970          TRUE
    ## 2              NA            NA            NA
    ## 3    1.143056e-06         1.000          TRUE
    ## 4    3.593603e-05         0.035         FALSE
    ## 5    4.937182e-06         0.670          TRUE
    ## 6    4.624867e-05         0.210          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs2268894           2   162856148     5.894e-11 9.643595e-20

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
    ## 1            FALSE  0.011507342 62.41601  0.05 1.017144 0.1721898
    ## 2             TRUE  0.008387419 56.69006  0.05 5.003852 0.6091101

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
Hippocampal Volume on Education. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Education

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 2      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 3      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 4      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##                                      method nsnp           b          se
    ## 1 Inverse variance weighted (fixed effects)    5 0.009470801 0.009223042
    ## 2                           Weighted median    5 0.030847576 0.013687777
    ## 3                             Weighted mode    5 0.035741732 0.018758768
    ## 4                                  MR Egger    5 0.018246675 0.045166909
    ##         pval
    ## 1 0.30448500
    ## 2 0.02421766
    ## 3 0.12944008
    ## 4 0.71329872

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Education and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 2      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 11.45947    3 0.009483952
    ## 2 Inverse variance weighted 11.63099    4 0.020316992

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##   egger_intercept          se      pval
    ## 1   -0.0007799825 0.003680794 0.8457605

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome       exposure    pt
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 21.22504 0.012

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 2      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 3      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 4      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)    4 0.02414220 0.01075093
    ## 2                           Weighted median    4 0.03597336 0.01357267
    ## 3                             Weighted mode    4 0.03637067 0.01386342
    ## 4                                  MR Egger    4 0.04946627 0.03330841
    ##          pval
    ## 1 0.024730171
    ## 2 0.008039034
    ## 3 0.078764011
    ## 4 0.275821636

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ## 2      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 3.388509    2 0.1837362
    ## 2 Inverse variance weighted 4.577773    3 0.2054572

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      pjNh9L     dYgN5z Lee2018education23andMe Hilbar2017hipv
    ##   egger_intercept          se     pval
    ## 1    -0.002116956 0.002526748 0.490303

<br>
