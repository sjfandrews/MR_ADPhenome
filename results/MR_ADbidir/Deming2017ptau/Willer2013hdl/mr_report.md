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

### Outcome: HDL cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in HDL cholesterol

    ##          SNP CHROM      POS  REF  ALT        AF    BETA     SE         Z
    ## 1 rs35055419    NA       NA <NA> <NA>        NA      NA     NA        NA
    ## 2   rs514716     9  3929424    C    T 0.8443070  0.0089 0.0074  1.202703
    ## 3  rs9527039    13 53504675    T    C 0.0810909 -0.0058 0.0091 -0.637363
    ## 4 rs12961169    NA       NA <NA> <NA>        NA      NA     NA        NA
    ## 5   rs769449    19 45410002    G    A 0.0998545 -0.0636 0.0071 -8.957750
    ##           P        N           TRAIT
    ## 1        NA       NA            <NA>
    ## 2 2.717e-01 94311.00 HDL_Cholesterol
    ## 3 4.718e-01 93339.00 HDL_Cholesterol
    ## 4        NA       NA            <NA>
    ## 5 6.791e-17 93367.18 HDL_Cholesterol

<br>

**Table 3:** Proxy SNPs for HDL cholesterol

    ##   target_snp proxy_snp    ld.r2  Dprime PHASE X12 CHROM       POS
    ## 1 rs35055419 rs2088882 1.000000 1.00000 CG/TA  NA     3 190656524
    ## 2 rs12961169 rs7233060 0.938982 0.97905 TA/CG  NA    18  77392379
    ##   REF.proxy ALT.proxy       AF    BETA     SE        Z      P     N
    ## 1         A         G 0.347834 -0.0052 0.0049 -1.06122 0.0845 94311
    ## 2         G         A 0.139594 -0.0104 0.0070 -1.48571 0.4939 92559
    ##             TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 HDL_Cholesterol   C         G   T         A   C   T          TRUE
    ## 2 HDL_Cholesterol   T         A   C         G   T   C          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized CSF Ptau and HDL cholesterol datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs12961169                      T                     C
    ## 2 rs35055419                      C                     T
    ## 3   rs514716                      T                     C
    ## 4   rs769449                      A                     G
    ## 5  rs9527039                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C       0.05004      -0.0104
    ## 2                     C                    T       0.03490      -0.0052
    ## 3                     T                    C       0.04876       0.0089
    ## 4                     A                    G       0.07930      -0.0636
    ## 5                     C                    T      -0.06098      -0.0058
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.1395560   0.1395940  FALSE       FALSE     FALSE     i73wwx
    ## 2    0.3498150   0.3478340  FALSE       FALSE     FALSE     i73wwx
    ## 3    0.8443070   0.8443070  FALSE       FALSE     FALSE     i73wwx
    ## 4    0.0998545   0.0998545  FALSE       FALSE     FALSE     i73wwx
    ## 5    0.0810909   0.0810909  FALSE       FALSE     FALSE     i73wwx
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1          18    77392379     0.0070 -1.485710    4.939e-01
    ## 2           3   190656524     0.0049 -1.061220    8.450e-02
    ## 3           9     3929424     0.0074  1.202703    2.717e-01
    ## 4          19    45410002     0.0071 -8.957750    6.791e-17
    ## 5          13    53504675     0.0091 -0.637363    4.718e-01
    ##   samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1           92559.00 Willer2013hdl            TRUE            reported
    ## 2           94311.00 Willer2013hdl            TRUE            reported
    ## 3           94311.00 Willer2013hdl            TRUE            reported
    ## 4           93367.18 Willer2013hdl            TRUE            reported
    ## 5           93339.00 Willer2013hdl            TRUE            reported
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
    ## 1 Deming2017ptau             TRUE             reported      Cv9EgO      2
    ## 2 Deming2017ptau             TRUE             reported      Cv9EgO      2
    ## 3 Deming2017ptau             TRUE             reported      Cv9EgO      2
    ## 4 Deming2017ptau             TRUE             reported      Cv9EgO      2
    ## 5 Deming2017ptau             TRUE             reported      Cv9EgO      2
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

**Table 5:** SNPs that were genome-wide significant in the HDL
cholesterol GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33    6.791e-17

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

    ##   outliers_removed pve.exposure       F Alpha     NCP     Power
    ## 1            FALSE   0.04366455 35.8531  0.05 0.20071 0.0732931

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
Ptau on HDL cholesterol. <br>

**Table 6** MR causaul estimates for CSF Ptau on HDL cholesterol

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ## 2      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ## 3      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ## 4      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)    4 -0.03146609 0.07251834
    ## 2                           Weighted median    4 -0.05127382 0.08841631
    ## 3                             Weighted mode    4 -0.15457013 0.14919646
    ## 4                                  MR Egger    4  0.33793500 0.48808599
    ##        pval
    ## 1 0.6643573
    ## 2 0.5619729
    ## 3 0.3763757
    ## 4 0.5602905

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in HDL cholesterol and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013hdl/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome       exposure
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ## 2      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau
    ##                      method        Q Q_df   Q_pval
    ## 1                  MR Egger 3.847271    2 0.146075
    ## 2 Inverse variance weighted 4.997996    3 0.171944

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013hdl/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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

    ##   id.exposure id.outcome       outcome       exposure egger_intercept
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau     -0.01712573
    ##          se      pval
    ## 1 0.0221424 0.5201695

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome       exposure    pt
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau 5e-08
    ##   outliers_removed n_outliers   RSSobs pval
    ## 1            FALSE          0 8.847996 0.16

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome       exposure   method nsnp  b se
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau mrpresso   NA NA NA
    ##   pval
    ## 1   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013hdl/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome       exposure   method  Q Q_df
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome       exposure   method
    ## 1      Cv9EgO     i73wwx Willer2013hdl Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
