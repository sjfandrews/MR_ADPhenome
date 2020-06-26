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

### Exposure: CSF Ptau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Ptau

    ##          SNP CHROM       POS REF ALT        AF     BETA       SE         Z
    ## 1 rs35055419     3 190663557   T   C 0.3498150  0.03490 0.005653  6.173713
    ## 2   rs514716     9   3929424   C   T 0.8443070  0.04876 0.008764  5.563670
    ## 3  rs9527039    13  53504675   T   C 0.0810909 -0.06098 0.010450 -5.835407
    ## 4 rs12961169    18  77381649   C   T 0.1395560  0.05004 0.008013  6.244852
    ## 5   rs769449    19  45410002   G   A 0.0998545  0.07930 0.006542 12.121675
    ##           P    N    TRAIT
    ## 1 7.624e-10 3146 CSF_ptau
    ## 2 2.935e-08 3146 CSF_ptau
    ## 3 5.947e-09 3146 CSF_ptau
    ## 4 5.117e-10 3146 CSF_ptau
    ## 5 5.299e-33 3146 CSF_ptau

<br>

### Outcome: Triglycerides

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Triglycerides

    ##          SNP CHROM      POS  REF  ALT        AF    BETA     SE         Z
    ## 1 rs35055419    NA       NA <NA> <NA>        NA      NA     NA        NA
    ## 2   rs514716     9  3929424    C    T 0.8443070 -0.0029 0.0071 -0.408451
    ## 3  rs9527039    13 53504675    T    C 0.0810909 -0.0079 0.0089 -0.887640
    ## 4 rs12961169    NA       NA <NA> <NA>        NA      NA     NA        NA
    ## 5   rs769449    19 45410002    G    A 0.0998545  0.0423 0.0069  6.130435
    ##           P        N         TRAIT
    ## 1        NA       NA          <NA>
    ## 2 8.813e-01 91013.00 Triglycerides
    ## 3 3.888e-01 90042.00 Triglycerides
    ## 4        NA       NA          <NA>
    ## 5 3.150e-09 87395.76 Triglycerides

<br>

**Table 3:** Proxy SNPs for Triglycerides

    ##   target_snp proxy_snp    ld.r2  Dprime PHASE X12 CHROM       POS
    ## 1 rs35055419 rs2088882 1.000000 1.00000 CG/TA  NA     3 190656524
    ## 2 rs12961169 rs7233060 0.938982 0.97905 TA/CG  NA    18  77392379
    ##   REF.proxy ALT.proxy       AF   BETA     SE          Z      P     N
    ## 1         A         G 0.347834 0.0026 0.0048 0.54166667 0.7000 91013
    ## 2         G         A 0.139594 0.0003 0.0069 0.04347826 0.6323 89215
    ##           TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 Triglycerides   C         G   T         A   C   T          TRUE
    ## 2 Triglycerides   T         A   C         G   T   C          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ptau and Triglycerides datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs12961169                      T                     C
    ## 2 rs35055419                      C                     T
    ## 3   rs514716                      T                     C
    ## 4   rs769449                      A                     G
    ## 5  rs9527039                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C       0.05004       0.0003
    ## 2                     C                    T       0.03490       0.0026
    ## 3                     T                    C       0.04876      -0.0029
    ## 4                     A                    G       0.07930       0.0423
    ## 5                     C                    T      -0.06098      -0.0079
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.1395560   0.1395940  FALSE       FALSE     FALSE     dAvkCn
    ## 2    0.3498150   0.3478340  FALSE       FALSE     FALSE     dAvkCn
    ## 3    0.8443070   0.8443070  FALSE       FALSE     FALSE     dAvkCn
    ## 4    0.0998545   0.0998545  FALSE       FALSE     FALSE     dAvkCn
    ## 5    0.0810909   0.0810909  FALSE       FALSE     FALSE     dAvkCn
    ##   chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1          18    77392379     0.0069  0.04347826    6.323e-01
    ## 2           3   190656524     0.0048  0.54166667    7.000e-01
    ## 3           9     3929424     0.0071 -0.40845100    8.813e-01
    ## 4          19    45410002     0.0069  6.13043478    3.150e-09
    ## 5          13    53504675     0.0089 -0.88764000    3.888e-01
    ##   samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1           89215.00 Willer2013tg            TRUE            reported
    ## 2           91013.00 Willer2013tg            TRUE            reported
    ## 3           91013.00 Willer2013tg            TRUE            reported
    ## 4           87395.76 Willer2013tg            TRUE            reported
    ## 5           90042.00 Willer2013tg            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1          TRUE         rs12961169         rs7233060                 T
    ## 2          TRUE         rs35055419         rs2088882                 C
    ## 3            NA               <NA>              <NA>              <NA>
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 C                A                G           18
    ## 2                 T                G                A            3
    ## 3              <NA>             <NA>             <NA>            9
    ## 4              <NA>             <NA>             <NA>           19
    ## 5              <NA>             <NA>             <NA>           13
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     77381649    0.008013   6.244852     5.117e-10                3146
    ## 2    190663557    0.005653   6.173713     7.624e-10                3146
    ## 3      3929424    0.008764   5.563670     2.935e-08                3146
    ## 4     45410002    0.006542  12.121675     5.299e-33                3146
    ## 5     53504675    0.010450  -5.835407     5.947e-09                3146
    ##         exposure mr_keep.exposure pval_origin.exposure id.exposure action
    ## 1 Deming2017ptau             TRUE             reported      MO0HUI      2
    ## 2 Deming2017ptau             TRUE             reported      MO0HUI      2
    ## 3 Deming2017ptau             TRUE             reported      MO0HUI      2
    ## 4 Deming2017ptau             TRUE             reported      MO0HUI      2
    ## 5 Deming2017ptau             TRUE             reported      MO0HUI      2
    ##   mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 2    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 3    TRUE           TRUE 5e-08              NA            NA          TRUE
    ## 4    TRUE          FALSE 5e-08              NA            NA          TRUE
    ## 5    TRUE           TRUE 5e-08              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Triglycerides
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33     3.15e-09

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

    ##   outliers_removed pve.exposure       F Alpha       NCP      Power
    ## 1            FALSE   0.04366455 35.8531  0.05 0.2925054 0.08412673

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
Ptau on Triglycerides. <br>

**Table 6** MR causaul estimates for CSF Ptau on Triglycerides

    ##   id.exposure id.outcome      outcome       exposure
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ## 2      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ## 3      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ## 4      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)    4 0.03773356 0.07078706
    ## 2                           Weighted median    4 0.03953454 0.08085454
    ## 3                             Weighted mode    4 0.05302281 0.11293653
    ## 4                                  MR Egger    4 0.04305032 0.34436181
    ##        pval
    ## 1 0.5939939
    ## 2 0.6248708
    ## 3 0.6707343
    ## 4 0.9119446

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Triglycerides and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tg/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ## 2      MO0HUI     dAvkCn Willer2013tg Deming2017ptau
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger 0.9656317    2 0.6170434
    ## 2 Inverse variance weighted 0.9658806    3 0.8095070

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tg/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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

    ##   id.exposure id.outcome      outcome       exposure egger_intercept
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau   -0.0002465906
    ##           se      pval
    ## 1 0.01563037 0.9888451

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
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 1.670799 0.814

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method nsnp  b se
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tg/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome       exposure   method  Q Q_df
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome       exposure   method
    ## 1      MO0HUI     dAvkCn Willer2013tg Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
