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

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Sleep Duration

    ##          SNP CHROM       POS REF ALT       AF        BETA         SE
    ## 1 rs35055419     3 190663557   T   C 0.380780  0.00490984 0.00233692
    ## 2   rs514716     9   3929424   C   T 0.877810 -0.00775933 0.00347030
    ## 3  rs9527039    13  53504675   T   C 0.079398 -0.00688298 0.00422706
    ## 4 rs12961169    18  77381649   C   T 0.171011 -0.00424291 0.00302362
    ## 5   rs769449    19  45410002   G   A 0.126176 -0.00686916 0.00340978
    ##          Z     P      N          TRAIT
    ## 1  2.10099 0.037 446118 Sleep_Duration
    ## 2 -2.23592 0.027 446118 Sleep_Duration
    ## 3 -1.62831 0.100 446118 Sleep_Duration
    ## 4 -1.40326 0.160 446118 Sleep_Duration
    ## 5 -2.01455 0.048 446118 Sleep_Duration

<br>

**Table 3:** Proxy SNPs for Sleep Duration

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

**Table 4:** Harmonized CSF Ptau and Sleep Duration datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs12961169                      T                     C
    ## 2 rs35055419                      C                     T
    ## 3   rs514716                      T                     C
    ## 4   rs769449                      A                     G
    ## 5  rs9527039                      C                     T
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C       0.05004  -0.00424291
    ## 2                     C                    T       0.03490   0.00490984
    ## 3                     T                    C       0.04876  -0.00775933
    ## 4                     A                    G       0.07930  -0.00686916
    ## 5                     C                    T      -0.06098  -0.00688298
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.1395560    0.171011  FALSE       FALSE     FALSE     bKFqHR
    ## 2    0.3498150    0.380780  FALSE       FALSE     FALSE     bKFqHR
    ## 3    0.8443070    0.877810  FALSE       FALSE     FALSE     bKFqHR
    ## 4    0.0998545    0.126176  FALSE       FALSE     FALSE     bKFqHR
    ## 5    0.0810909    0.079398  FALSE       FALSE     FALSE     bKFqHR
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1          18    77381649 0.00302362  -1.40326        0.160
    ## 2           3   190663557 0.00233692   2.10099        0.037
    ## 3           9     3929424 0.00347030  -2.23592        0.027
    ## 4          19    45410002 0.00340978  -2.01455        0.048
    ## 5          13    53504675 0.00422706  -1.62831        0.100
    ##   samplesize.outcome           outcome mr_keep.outcome pval_origin.outcome
    ## 1             446118 Dashti2019slepdur            TRUE            reported
    ## 2             446118 Dashti2019slepdur            TRUE            reported
    ## 3             446118 Dashti2019slepdur            TRUE            reported
    ## 4             446118 Dashti2019slepdur            TRUE            reported
    ## 5             446118 Dashti2019slepdur            TRUE            reported
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1           18     77381649    0.008013   6.244852     5.117e-10
    ## 2            3    190663557    0.005653   6.173713     7.624e-10
    ## 3            9      3929424    0.008764   5.563670     2.935e-08
    ## 4           19     45410002    0.006542  12.121675     5.299e-33
    ## 5           13     53504675    0.010450  -5.835407     5.947e-09
    ##   samplesize.exposure       exposure mr_keep.exposure pval_origin.exposure
    ## 1                3146 Deming2017ptau             TRUE             reported
    ## 2                3146 Deming2017ptau             TRUE             reported
    ## 3                3146 Deming2017ptau             TRUE             reported
    ## 4                3146 Deming2017ptau             TRUE             reported
    ## 5                3146 Deming2017ptau             TRUE             reported
    ##   id.exposure action mr_keep pleitropy_keep    pt mrpresso_RSSobs
    ## 1      HWxcuT      2    TRUE           TRUE 5e-08    3.732979e-05
    ## 2      HWxcuT      2    TRUE           TRUE 5e-08    4.237867e-05
    ## 3      HWxcuT      2    TRUE           TRUE 5e-08    9.895817e-05
    ## 4      HWxcuT      2    TRUE          FALSE 5e-08              NA
    ## 5      HWxcuT      2    TRUE           TRUE 5e-08    7.967419e-05
    ##   mrpresso_pval mrpresso_keep
    ## 1         0.324          TRUE
    ## 2         0.060          TRUE
    ## 3         0.060          TRUE
    ## 4            NA            NA
    ## 5         0.216          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33        0.048

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

    ##   outliers_removed pve.exposure       F Alpha        NCP      Power
    ## 1            FALSE   0.04366455 35.8531  0.05 0.02293779 0.05263172

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
Ptau on Sleep Duration. <br>

**Table 6** MR causaul estimates for CSF Ptau on Sleep Duration

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ## 2      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ## 3      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ## 4      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ##                                      method nsnp             b         se
    ## 1 Inverse variance weighted (fixed effects)    4  0.0002516449 0.03328795
    ## 2                           Weighted median    4  0.0123368423 0.04332496
    ## 3                             Weighted mode    4 -0.0878015618 0.10347203
    ## 4                                  MR Egger    4 -0.2072687493 0.40950451
    ##        pval
    ## 1 0.9939683
    ## 2 0.7758346
    ## 3 0.4584712
    ## 4 0.6630325

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Sleep Duration and the corresponding MR estimates.
<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome       exposure
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ## 2      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 12.37699    2 0.002052919
    ## 2 Inverse variance weighted 14.03398    3 0.002859260

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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

    ##   id.exposure id.outcome           outcome       exposure egger_intercept
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau     0.009690648
    ##          se      pval
    ## 1 0.0187277 0.6563864

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome       exposure    pt
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 24.51928 0.002

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome       exposure   method nsnp  b
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome       exposure   method  Q Q_df
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome       exposure   method
    ## 1      HWxcuT     bKFqHR Dashti2019slepdur Deming2017ptau mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
