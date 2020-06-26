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

### Exposure: CSF Ptau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Ptau

    ##           SNP CHROM       POS REF ALT        AF     BETA       SE
    ## 1   rs4267554     2  46901045   A   G 0.1037360 -0.04197 0.008801
    ## 2  rs35055419     3 190663557   T   C 0.3498150  0.03490 0.005653
    ## 3  rs16897042     5  67107448   T   C 0.0184850  0.07870 0.016050
    ## 4  rs60871478     7    827325   A   G 0.7729760 -0.03472 0.006863
    ## 5   rs7798280     7  15093202   C   A 0.3549910 -0.03378 0.006773
    ## 6   rs2439313     8  32533316   A   G 0.5620010 -0.02653 0.005418
    ## 7    rs514716     9   3929424   C   T 0.8443070  0.04876 0.008764
    ## 8   rs9527039    13  53504675   T   C 0.0810909 -0.06098 0.010450
    ## 9  rs12889974    14  77609298   C   G 0.0913043  0.04955 0.010660
    ## 10 rs12961169    18  77381649   C   T 0.1395560  0.05004 0.008013
    ## 11   rs769449    19  45410002   G   A 0.0998545  0.07930 0.006542
    ## 12 rs34871495    20  55310283   C   T 0.0282916  0.08995 0.016740
    ## 13    rs41157    22  30405151   T   C 0.7146230 -0.02538 0.005504
    ##            Z         P    N    TRAIT
    ## 1  -4.768776 1.976e-06 3146 CSF_ptau
    ## 2   6.173713 7.624e-10 3146 CSF_ptau
    ## 3   4.903427 9.998e-07 3146 CSF_ptau
    ## 4  -5.059010 4.505e-07 3146 CSF_ptau
    ## 5  -4.987450 6.699e-07 3146 CSF_ptau
    ## 6  -4.896640 1.025e-06 3146 CSF_ptau
    ## 7   5.563670 2.935e-08 3146 CSF_ptau
    ## 8  -5.835407 5.947e-09 3146 CSF_ptau
    ## 9   4.648218 3.555e-06 3146 CSF_ptau
    ## 10  6.244852 5.117e-10 3146 CSF_ptau
    ## 11 12.121675 5.299e-33 3146 CSF_ptau
    ## 12  5.373357 8.307e-08 3146 CSF_ptau
    ## 13 -4.611190 4.182e-06 3146 CSF_ptau

<br>

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Education

    ##           SNP CHROM       POS REF ALT     AF         BETA          SE
    ## 1   rs4267554     2  46901045   A   G 0.1340 -0.000562788 0.002061596
    ## 2  rs35055419     3 190663557   T   C 0.3728 -0.002238540 0.001457809
    ## 3  rs16897042     5  67107448   T   C 0.0272 -0.001735540 0.004318387
    ## 4  rs60871478     7    827325   A   G 0.8224 -0.005477060 0.001836712
    ## 5   rs7798280     7  15093202   C   A 0.3395 -0.000393292 0.001481863
    ## 6   rs2439313     8  32533316   A   G 0.6126  0.002299690 0.001439863
    ## 7    rs514716     9   3929424   C   T 0.8735  0.000611828 0.002109408
    ## 8   rs9527039    13  53504675   T   C 0.0796  0.000902349 0.002615323
    ## 9  rs12889974    14  77609298   C   G 0.0924 -0.002130820 0.002427659
    ## 10 rs12961169    18  77381649   C   T 0.1679  0.006279090 0.001907407
    ## 11   rs769449    19  45410002   G   A 0.1211  0.003468670 0.002161515
    ## 12 rs34871495    20  55310283   C   T 0.0257  0.001836000 0.004483748
    ## 13    rs41157    22  30405151   T   C 0.6241  0.010616800 0.001447681
    ##             Z            P       N     TRAIT
    ## 1  -0.2729860 7.848640e-01 1128348 Education
    ## 2  -1.5355500 1.246498e-01 1119924 Education
    ## 3  -0.4018960 6.877606e-01 1127818 Education
    ## 4  -2.9819900 2.863795e-03 1129448 Education
    ## 5  -0.2654030 7.906990e-01 1130168 Education
    ## 6   1.5971600 1.102307e-01 1131084 Education
    ## 7   0.2900475 7.717799e-01 1131881 Education
    ## 8   0.3450240 7.300764e-01 1110539 Education
    ## 9  -0.8777260 3.800927e-01 1125985 Education
    ## 10  3.2919447 9.949716e-04 1094865 Education
    ## 11  1.6047401 1.085510e-01 1119115 Education
    ## 12  0.4094789 6.821883e-01 1105520 Education
    ## 13  7.3336500 2.239627e-13 1131881 Education

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

**Table 4:** Harmonized CSF Ptau and Education datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs12889974                      G                     C
    ## 2  rs12961169                      T                     C
    ## 3  rs16897042                      C                     T
    ## 4   rs2439313                      G                     A
    ## 5  rs34871495                      T                     C
    ## 6  rs35055419                      C                     T
    ## 7     rs41157                      C                     T
    ## 8   rs4267554                      G                     A
    ## 9    rs514716                      T                     C
    ## 10 rs60871478                      G                     A
    ## 11   rs769449                      A                     G
    ## 12  rs7798280                      A                     C
    ## 13  rs9527039                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    C       0.04955 -0.002130820
    ## 2                      T                    C       0.05004  0.006279090
    ## 3                      C                    T       0.07870 -0.001735540
    ## 4                      G                    A      -0.02653  0.002299690
    ## 5                      T                    C       0.08995  0.001836000
    ## 6                      C                    T       0.03490 -0.002238540
    ## 7                      C                    T      -0.02538  0.010616800
    ## 8                      G                    A      -0.04197 -0.000562788
    ## 9                      T                    C       0.04876  0.000611828
    ## 10                     G                    A      -0.03472 -0.005477060
    ## 11                     A                    G       0.07930  0.003468670
    ## 12                     A                    C      -0.03378 -0.000393292
    ## 13                     C                    T      -0.06098  0.000902349
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0913043      0.0924  FALSE        TRUE     FALSE     dBUFnn
    ## 2     0.1395560      0.1679  FALSE       FALSE     FALSE     dBUFnn
    ## 3     0.0184850      0.0272  FALSE       FALSE     FALSE     dBUFnn
    ## 4     0.5620010      0.6126  FALSE       FALSE     FALSE     dBUFnn
    ## 5     0.0282916      0.0257  FALSE       FALSE     FALSE     dBUFnn
    ## 6     0.3498150      0.3728  FALSE       FALSE     FALSE     dBUFnn
    ## 7     0.7146230      0.6241  FALSE       FALSE     FALSE     dBUFnn
    ## 8     0.1037360      0.1340  FALSE       FALSE     FALSE     dBUFnn
    ## 9     0.8443070      0.8735  FALSE       FALSE     FALSE     dBUFnn
    ## 10    0.7729760      0.8224  FALSE       FALSE     FALSE     dBUFnn
    ## 11    0.0998545      0.1211  FALSE       FALSE     FALSE     dBUFnn
    ## 12    0.3549910      0.3395  FALSE       FALSE     FALSE     dBUFnn
    ## 13    0.0810909      0.0796  FALSE       FALSE     FALSE     dBUFnn
    ##    chr.outcome pos.outcome  se.outcome  z.outcome pval.outcome
    ## 1           14    77609298 0.002427659 -0.8777260 3.800927e-01
    ## 2           18    77381649 0.001907407  3.2919447 9.949716e-04
    ## 3            5    67107448 0.004318387 -0.4018960 6.877606e-01
    ## 4            8    32533316 0.001439863  1.5971600 1.102307e-01
    ## 5           20    55310283 0.004483748  0.4094789 6.821883e-01
    ## 6            3   190663557 0.001457809 -1.5355500 1.246498e-01
    ## 7           22    30405151 0.001447681  7.3336500 2.239627e-13
    ## 8            2    46901045 0.002061596 -0.2729860 7.848640e-01
    ## 9            9     3929424 0.002109408  0.2900475 7.717799e-01
    ## 10           7      827325 0.001836712 -2.9819900 2.863795e-03
    ## 11          19    45410002 0.002161515  1.6047401 1.085510e-01
    ## 12           7    15093202 0.001481863 -0.2654030 7.906990e-01
    ## 13          13    53504675 0.002615323  0.3450240 7.300764e-01
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1             1125985 Lee2018education23andMe            TRUE
    ## 2             1094865 Lee2018education23andMe            TRUE
    ## 3             1127818 Lee2018education23andMe            TRUE
    ## 4             1131084 Lee2018education23andMe            TRUE
    ## 5             1105520 Lee2018education23andMe            TRUE
    ## 6             1119924 Lee2018education23andMe            TRUE
    ## 7             1131881 Lee2018education23andMe            TRUE
    ## 8             1128348 Lee2018education23andMe            TRUE
    ## 9             1131881 Lee2018education23andMe            TRUE
    ## 10            1129448 Lee2018education23andMe            TRUE
    ## 11            1119115 Lee2018education23andMe            TRUE
    ## 12            1130168 Lee2018education23andMe            TRUE
    ## 13            1110539 Lee2018education23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           14     77609298    0.010660   4.648218
    ## 2             reported           18     77381649    0.008013   6.244852
    ## 3             reported            5     67107448    0.016050   4.903427
    ## 4             reported            8     32533316    0.005418  -4.896640
    ## 5             reported           20     55310283    0.016740   5.373357
    ## 6             reported            3    190663557    0.005653   6.173713
    ## 7             reported           22     30405151    0.005504  -4.611190
    ## 8             reported            2     46901045    0.008801  -4.768776
    ## 9             reported            9      3929424    0.008764   5.563670
    ## 10            reported            7       827325    0.006863  -5.059010
    ## 11            reported           19     45410002    0.006542  12.121675
    ## 12            reported            7     15093202    0.006773  -4.987450
    ## 13            reported           13     53504675    0.010450  -5.835407
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      3.555e-06                3146 Deming2017ptau             TRUE
    ## 2      5.117e-10                3146 Deming2017ptau             TRUE
    ## 3      9.998e-07                3146 Deming2017ptau             TRUE
    ## 4      1.025e-06                3146 Deming2017ptau             TRUE
    ## 5      8.307e-08                3146 Deming2017ptau             TRUE
    ## 6      7.624e-10                3146 Deming2017ptau             TRUE
    ## 7      4.182e-06                3146 Deming2017ptau             TRUE
    ## 8      1.976e-06                3146 Deming2017ptau             TRUE
    ## 9      2.935e-08                3146 Deming2017ptau             TRUE
    ## 10     4.505e-07                3146 Deming2017ptau             TRUE
    ## 11     5.299e-33                3146 Deming2017ptau             TRUE
    ## 12     6.699e-07                3146 Deming2017ptau             TRUE
    ## 13     5.947e-09                3146 Deming2017ptau             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 2              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 3              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 4              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 5              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 6              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 7              reported      3fIyIx      2    TRUE          FALSE 5e-06
    ## 8              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 9              reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 10             reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 11             reported      3fIyIx      2    TRUE          FALSE 5e-06
    ## 12             reported      3fIyIx      2    TRUE           TRUE 5e-06
    ## 13             reported      3fIyIx      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     9.329695e-06         1.000          TRUE
    ## 2     4.181178e-05         0.033         FALSE
    ## 3     9.015869e-06         1.000          TRUE
    ## 4     8.123202e-06         0.616          TRUE
    ## 5     4.387414e-07         1.000          TRUE
    ## 6     9.339692e-06         0.495          TRUE
    ## 7               NA            NA            NA
    ## 8     9.810160e-11         1.000          TRUE
    ## 9     3.446888e-09         1.000          TRUE
    ## 10    2.893670e-05         0.044         FALSE
    ## 11              NA            NA            NA
    ## 12    5.560146e-09         1.000          TRUE
    ## 13    3.760171e-06         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1  rs41157          22    30405151     4.182e-06 2.239627e-13
    ## 2 rs769449          19    45410002     5.299e-33 1.085510e-01

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

    ##   outliers_removed pve.exposure        F Alpha       NCP     Power
    ## 1            FALSE   0.09943650 31.45849  0.05 0.8159424 0.1474279
    ## 2             TRUE   0.07908902 29.92486  0.05 1.4251069 0.2225889

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
Ptau on Education. <br>

**Table 6** MR causaul estimates for CSF Ptau on Education

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 2      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 3      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 4      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)   11 0.01362619 0.01397343
    ## 2                           Weighted median   11 0.01166805 0.02058041
    ## 3                             Weighted mode   11 0.00211987 0.02967267
    ## 4                                  MR Egger   11 0.05206149 0.07716146
    ##        pval
    ## 1 0.3294861
    ## 2 0.5707486
    ## 3 0.9444548
    ## 4 0.5168165

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Education and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 2      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 24.39664    9 0.003716370
    ## 2 Inverse variance weighted 25.13485   10 0.005095671

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##   egger_intercept        se      pval
    ## 1    -0.001704313 0.0032659 0.6143727

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
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          2 31.02435 0.005

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 2      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 3      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 4      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    9 -0.017897169 0.01566354
    ## 2                           Weighted median    9 -0.007674783 0.02064559
    ## 3                             Weighted mode    9  0.006164141 0.03217384
    ## 4                                  MR Egger    9  0.036582108 0.04880805
    ##        pval
    ## 1 0.2532044
    ## 2 0.7100867
    ## 3 0.8528379
    ## 4 0.4779771

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ## 2      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 3.662085    7 0.8177714
    ## 2 Inverse variance weighted 5.051022    8 0.7521092

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      3fIyIx     dBUFnn Lee2018education23andMe Deming2017ptau
    ##   egger_intercept          se      pval
    ## 1    -0.002428053 0.002060235 0.2770895

<br>
