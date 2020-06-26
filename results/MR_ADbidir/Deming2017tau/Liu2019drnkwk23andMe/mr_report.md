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

### Exposure: CSF Tau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Tau

    ##          SNP CHROM       POS REF ALT        AF     BETA       SE         Z
    ## 1 rs10800664     1 199959856   C   T 0.4182820 -0.02591 0.005653 -4.583407
    ## 2  rs4674842     2 224880514   T   G 0.3079300 -0.03081 0.006491 -4.746572
    ## 3 rs35055419     3 190663557   T   C 0.3498150  0.04004 0.006006  6.666667
    ## 4  rs7737716     5 118217474   C   T 0.1334780  0.04066 0.008535  4.763913
    ## 5 rs13255475     8 121468076   T   C 0.6631540  0.02793 0.006049  4.617290
    ## 6   rs624290     9   3928115   C   T 0.8932200  0.04421 0.009094  4.861450
    ## 7   rs769449    19  45410002   G   A 0.0998545  0.07821 0.006911 11.316741
    ## 8  rs1513737    21  24166144   T   C 0.5373410 -0.02597 0.005620 -4.621000
    ##           P    N   TRAIT
    ## 1 4.770e-06 3146 CSF_tau
    ## 2 2.158e-06 3146 CSF_tau
    ## 3 3.071e-11 3146 CSF_tau
    ## 4 1.984e-06 3146 CSF_tau
    ## 5 4.032e-06 3146 CSF_tau
    ## 6 1.223e-06 3146 CSF_tau
    ## 7 4.054e-29 3146 CSF_tau
    ## 8 3.986e-06 3146 CSF_tau

<br>

### Outcome: Alcohol Consumption

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Alcohol
Consumption

    ##          SNP CHROM       POS REF ALT        AF          BETA          SE
    ## 1 rs10800664     1 199959856   C   T 0.4182820 -0.0020311723 0.001030529
    ## 2  rs4674842     2 224880514   T   G 0.3079300 -0.0008079850 0.001030593
    ## 3 rs35055419     3 190663557   T   C 0.3498150 -0.0030397200 0.001028670
    ## 4  rs7737716     5 118217474   C   T 0.1334780  0.0003949182 0.001031118
    ## 5 rs13255475     8 121468076   T   C 0.6631540 -0.0008687360 0.001030529
    ## 6   rs624290     9   3928115   C   T 0.8932200  0.0006586573 0.001030763
    ## 7   rs769449    19  45410002   G   A 0.0998545 -0.0011610758 0.001030236
    ## 8  rs1513737    21  24166144   T   C 0.5373410 -0.0013607000 0.001030051
    ##        Z        P      N           TRAIT
    ## 1 -1.971 0.048730 939356 Drinks_Per_Week
    ## 2 -0.784 0.433000 941280 Drinks_Per_Week
    ## 3 -2.955 0.003129 941280 Drinks_Per_Week
    ## 4  0.383 0.701800 941280 Drinks_Per_Week
    ## 5 -0.843 0.399500 941280 Drinks_Per_Week
    ## 6  0.639 0.522600 941280 Drinks_Per_Week
    ## 7 -1.127 0.259500 941280 Drinks_Per_Week
    ## 8 -1.321 0.186400 941280 Drinks_Per_Week

<br>

**Table 3:** Proxy SNPs for Alcohol Consumption

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

**Table 4:** Harmonized CSF Tau and Alcohol Consumption datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10800664                      T                     C
    ## 2 rs13255475                      C                     T
    ## 3  rs1513737                      C                     T
    ## 4 rs35055419                      C                     T
    ## 5  rs4674842                      G                     T
    ## 6   rs624290                      T                     C
    ## 7   rs769449                      A                     G
    ## 8  rs7737716                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                     T                    C      -0.02591 -0.0020311723
    ## 2                     C                    T       0.02793 -0.0008687360
    ## 3                     C                    T      -0.02597 -0.0013607000
    ## 4                     C                    T       0.04004 -0.0030397200
    ## 5                     G                    T      -0.03081 -0.0008079850
    ## 6                     T                    C       0.04421  0.0006586573
    ## 7                     A                    G       0.07821 -0.0011610758
    ## 8                     T                    C       0.04066  0.0003949182
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820   0.4182820  FALSE       FALSE     FALSE     chJliK
    ## 2    0.6631540   0.6631540  FALSE       FALSE     FALSE     chJliK
    ## 3    0.5373410   0.5373410  FALSE       FALSE     FALSE     chJliK
    ## 4    0.3498150   0.3498150  FALSE       FALSE     FALSE     chJliK
    ## 5    0.3079300   0.3079300  FALSE       FALSE     FALSE     chJliK
    ## 6    0.8932200   0.8932200  FALSE       FALSE     FALSE     chJliK
    ## 7    0.0998545   0.0998545  FALSE       FALSE     FALSE     chJliK
    ## 8    0.1334780   0.1334780  FALSE       FALSE     FALSE     chJliK
    ##   chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1           1   199959856 0.001030529    -1.971     0.048730
    ## 2           8   121468076 0.001030529    -0.843     0.399500
    ## 3          21    24166144 0.001030051    -1.321     0.186400
    ## 4           3   190663557 0.001028670    -2.955     0.003129
    ## 5           2   224880514 0.001030593    -0.784     0.433000
    ## 6           9     3928115 0.001030763     0.639     0.522600
    ## 7          19    45410002 0.001030236    -1.127     0.259500
    ## 8           5   118217474 0.001031118     0.383     0.701800
    ##   samplesize.outcome              outcome mr_keep.outcome
    ## 1             939356 Liu2019drnkwk23andMe            TRUE
    ## 2             941280 Liu2019drnkwk23andMe            TRUE
    ## 3             941280 Liu2019drnkwk23andMe            TRUE
    ## 4             941280 Liu2019drnkwk23andMe            TRUE
    ## 5             941280 Liu2019drnkwk23andMe            TRUE
    ## 6             941280 Liu2019drnkwk23andMe            TRUE
    ## 7             941280 Liu2019drnkwk23andMe            TRUE
    ## 8             941280 Liu2019drnkwk23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            1    199959856    0.005653  -4.583407
    ## 2            reported            8    121468076    0.006049   4.617290
    ## 3            reported           21     24166144    0.005620  -4.621000
    ## 4            reported            3    190663557    0.006006   6.666667
    ## 5            reported            2    224880514    0.006491  -4.746572
    ## 6            reported            9      3928115    0.009094   4.861450
    ## 7            reported           19     45410002    0.006911  11.316741
    ## 8            reported            5    118217474    0.008535   4.763913
    ##   pval.exposure samplesize.exposure      exposure mr_keep.exposure
    ## 1     4.770e-06                3146 Deming2017tau             TRUE
    ## 2     4.032e-06                3146 Deming2017tau             TRUE
    ## 3     3.986e-06                3146 Deming2017tau             TRUE
    ## 4     3.071e-11                3146 Deming2017tau             TRUE
    ## 5     2.158e-06                3146 Deming2017tau             TRUE
    ## 6     1.223e-06                3146 Deming2017tau             TRUE
    ## 7     4.054e-29                3146 Deming2017tau             TRUE
    ## 8     1.984e-06                3146 Deming2017tau             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 2             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 3             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 4             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 5             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 6             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ## 7             reported      k1hZOx      2    TRUE          FALSE 5e-06
    ## 8             reported      k1hZOx      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    4.711692e-06         0.336          TRUE
    ## 2    1.004395e-06             1          TRUE
    ## 3    2.078511e-06             1          TRUE
    ## 4    1.475687e-05        <0.007         FALSE
    ## 5    7.459599e-07             1          TRUE
    ## 6    6.094508e-07             1          TRUE
    ## 7              NA          <NA>            NA
    ## 8    1.780752e-07             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Alcohol
Consumption GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29       0.2595

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
    ## 1            FALSE   0.05553337 26.35860  0.05 0.0004044846 0.05004634
    ## 2             TRUE   0.04246137 23.19945  0.05 3.0322812709 0.41358055

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
Tau on Alcohol Consumption. <br>

**Table 6** MR causaul estimates for CSF Tau on Alcohol Consumption

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 2      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 3      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 4      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    7  0.00140167 0.01131861
    ## 2                           Weighted median    7  0.01253081 0.01672033
    ## 3                             Weighted mode    7  0.01563862 0.01953734
    ## 4                                  MR Egger    7 -0.09212298 0.08781486
    ##        pval
    ## 1 0.9014438
    ## 2 0.4535949
    ## 3 0.4539701
    ## 4 0.3421886

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Alcohol Consumption and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 2      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 13.11593    5 0.02231629
    ## 2 Inverse variance weighted 16.22690    6 0.01258656

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">
Fig. 2: Funnel plot of the MR causal estimates against their precession
</p>
:::

<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR)
can be used to visualize influential data points with large
contributions to Cochran's Q Statistic that may bias causal effect
estimates.

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##   egger_intercept          se      pval
    ## 1     0.003290272 0.003021331 0.3258297

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome      exposure    pt
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 22.73063 0.016

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 2      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 3      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 4      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    6  0.02002365 0.01260818
    ## 2                           Weighted median    6  0.01448904 0.01664894
    ## 3                             Weighted mode    6  0.01580569 0.01805163
    ## 4                                  MR Egger    6 -0.02900342 0.05996094
    ##        pval
    ## 1 0.1122530
    ## 2 0.3841540
    ## 3 0.4213207
    ## 4 0.6538823

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Liu2019drnkwk23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ## 2      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 4.243784    4 0.3740175
    ## 2 Inverse variance weighted 4.987991    5 0.4173475

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome      exposure
    ## 1      k1hZOx     chJliK Liu2019drnkwk23andMe Deming2017tau
    ##   egger_intercept          se      pval
    ## 1     0.001675829 0.002000918 0.4494193

<br>
