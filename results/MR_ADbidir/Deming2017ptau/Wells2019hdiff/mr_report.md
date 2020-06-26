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

### Outcome: Hearing Difficulty

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Hearing
Difficulty

    ##           SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1   rs4267554     2  46901045   A   G 0.133878 -0.001322580 0.00195904
    ## 2  rs35055419     3 190663557   T   C 0.381936  0.005770650 0.00136315
    ## 3  rs16897042     5  67107448   T   C 0.026141  0.003340460 0.00413824
    ## 4  rs60871478     7    827325   A   G 0.830480  0.001925480 0.00175933
    ## 5   rs7798280     7  15093202   C   A 0.332069  0.000469300 0.00140736
    ## 6   rs2439313     8  32533316   A   G 0.620708 -0.000879378 0.00136636
    ## 7    rs514716     9   3929424   C   T 0.878600  0.001286670 0.00203044
    ## 8   rs9527039    13  53504675   T   C 0.079177 -0.002717890 0.00246527
    ## 9  rs12889974    14  77609298   C   G 0.093580  0.000738659 0.00227915
    ## 10 rs12961169    18  77381649   C   T 0.171251 -0.000389010 0.00176119
    ## 11   rs769449    19  45410002   G   A 0.126696  0.003379480 0.00198591
    ## 12 rs34871495    20  55310283   C   T 0.021433 -0.001757820 0.00459076
    ## 13    rs41157    22  30405151   T   C 0.609757  0.002498700 0.00135341
    ##            Z       P      N              TRAIT
    ## 1  -0.675116 5.0e-01 250389 Hearing_Difficulty
    ## 2   4.233320 2.3e-05 250389 Hearing_Difficulty
    ## 3   0.807218 4.2e-01 250389 Hearing_Difficulty
    ## 4   1.094440 2.7e-01 250389 Hearing_Difficulty
    ## 5   0.333461 7.4e-01 250389 Hearing_Difficulty
    ## 6  -0.643592 5.2e-01 250389 Hearing_Difficulty
    ## 7   0.633690 5.3e-01 250389 Hearing_Difficulty
    ## 8  -1.102470 2.7e-01 250389 Hearing_Difficulty
    ## 9   0.324094 7.5e-01 250389 Hearing_Difficulty
    ## 10 -0.220879 8.3e-01 250389 Hearing_Difficulty
    ## 11  1.701730 8.9e-02 250389 Hearing_Difficulty
    ## 12 -0.382904 7.0e-01 250389 Hearing_Difficulty
    ## 13  1.846230 6.5e-02 250389 Hearing_Difficulty

<br>

**Table 3:** Proxy SNPs for Hearing Difficulty

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

**Table 4:** Harmonized CSF Ptau and Hearing Difficulty datasets

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
    ## 1                      G                    C       0.04955  0.000738659
    ## 2                      T                    C       0.05004 -0.000389010
    ## 3                      C                    T       0.07870  0.003340460
    ## 4                      G                    A      -0.02653 -0.000879378
    ## 5                      T                    C       0.08995 -0.001757820
    ## 6                      C                    T       0.03490  0.005770650
    ## 7                      C                    T      -0.02538  0.002498700
    ## 8                      G                    A      -0.04197 -0.001322580
    ## 9                      T                    C       0.04876  0.001286670
    ## 10                     G                    A      -0.03472  0.001925480
    ## 11                     A                    G       0.07930  0.003379480
    ## 12                     A                    C      -0.03378  0.000469300
    ## 13                     C                    T      -0.06098 -0.002717890
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1     0.0913043    0.093580  FALSE        TRUE     FALSE     jcCwPG
    ## 2     0.1395560    0.171251  FALSE       FALSE     FALSE     jcCwPG
    ## 3     0.0184850    0.026141  FALSE       FALSE     FALSE     jcCwPG
    ## 4     0.5620010    0.620708  FALSE       FALSE     FALSE     jcCwPG
    ## 5     0.0282916    0.021433  FALSE       FALSE     FALSE     jcCwPG
    ## 6     0.3498150    0.381936  FALSE       FALSE     FALSE     jcCwPG
    ## 7     0.7146230    0.609757  FALSE       FALSE     FALSE     jcCwPG
    ## 8     0.1037360    0.133878  FALSE       FALSE     FALSE     jcCwPG
    ## 9     0.8443070    0.878600  FALSE       FALSE     FALSE     jcCwPG
    ## 10    0.7729760    0.830480  FALSE       FALSE     FALSE     jcCwPG
    ## 11    0.0998545    0.126696  FALSE       FALSE     FALSE     jcCwPG
    ## 12    0.3549910    0.332069  FALSE       FALSE     FALSE     jcCwPG
    ## 13    0.0810909    0.079177  FALSE       FALSE     FALSE     jcCwPG
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           14    77609298 0.00227915  0.324094      7.5e-01
    ## 2           18    77381649 0.00176119 -0.220879      8.3e-01
    ## 3            5    67107448 0.00413824  0.807218      4.2e-01
    ## 4            8    32533316 0.00136636 -0.643592      5.2e-01
    ## 5           20    55310283 0.00459076 -0.382904      7.0e-01
    ## 6            3   190663557 0.00136315  4.233320      2.3e-05
    ## 7           22    30405151 0.00135341  1.846230      6.5e-02
    ## 8            2    46901045 0.00195904 -0.675116      5.0e-01
    ## 9            9     3929424 0.00203044  0.633690      5.3e-01
    ## 10           7      827325 0.00175933  1.094440      2.7e-01
    ## 11          19    45410002 0.00198591  1.701730      8.9e-02
    ## 12           7    15093202 0.00140736  0.333461      7.4e-01
    ## 13          13    53504675 0.00246527 -1.102470      2.7e-01
    ##    samplesize.outcome        outcome mr_keep.outcome pval_origin.outcome
    ## 1              250389 Wells2019hdiff            TRUE            reported
    ## 2              250389 Wells2019hdiff            TRUE            reported
    ## 3              250389 Wells2019hdiff            TRUE            reported
    ## 4              250389 Wells2019hdiff            TRUE            reported
    ## 5              250389 Wells2019hdiff            TRUE            reported
    ## 6              250389 Wells2019hdiff            TRUE            reported
    ## 7              250389 Wells2019hdiff            TRUE            reported
    ## 8              250389 Wells2019hdiff            TRUE            reported
    ## 9              250389 Wells2019hdiff            TRUE            reported
    ## 10             250389 Wells2019hdiff            TRUE            reported
    ## 11             250389 Wells2019hdiff            TRUE            reported
    ## 12             250389 Wells2019hdiff            TRUE            reported
    ## 13             250389 Wells2019hdiff            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            14     77609298    0.010660   4.648218     3.555e-06
    ## 2            18     77381649    0.008013   6.244852     5.117e-10
    ## 3             5     67107448    0.016050   4.903427     9.998e-07
    ## 4             8     32533316    0.005418  -4.896640     1.025e-06
    ## 5            20     55310283    0.016740   5.373357     8.307e-08
    ## 6             3    190663557    0.005653   6.173713     7.624e-10
    ## 7            22     30405151    0.005504  -4.611190     4.182e-06
    ## 8             2     46901045    0.008801  -4.768776     1.976e-06
    ## 9             9      3929424    0.008764   5.563670     2.935e-08
    ## 10            7       827325    0.006863  -5.059010     4.505e-07
    ## 11           19     45410002    0.006542  12.121675     5.299e-33
    ## 12            7     15093202    0.006773  -4.987450     6.699e-07
    ## 13           13     53504675    0.010450  -5.835407     5.947e-09
    ##    samplesize.exposure       exposure mr_keep.exposure
    ## 1                 3146 Deming2017ptau             TRUE
    ## 2                 3146 Deming2017ptau             TRUE
    ## 3                 3146 Deming2017ptau             TRUE
    ## 4                 3146 Deming2017ptau             TRUE
    ## 5                 3146 Deming2017ptau             TRUE
    ## 6                 3146 Deming2017ptau             TRUE
    ## 7                 3146 Deming2017ptau             TRUE
    ## 8                 3146 Deming2017ptau             TRUE
    ## 9                 3146 Deming2017ptau             TRUE
    ## 10                3146 Deming2017ptau             TRUE
    ## 11                3146 Deming2017ptau             TRUE
    ## 12                3146 Deming2017ptau             TRUE
    ## 13                3146 Deming2017ptau             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 2              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 3              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 4              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 5              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 6              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 7              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 8              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 9              reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 10             reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 11             reported      HlzoW3      2    TRUE          FALSE 5e-06
    ## 12             reported      HlzoW3      2    TRUE           TRUE 5e-06
    ## 13             reported      HlzoW3      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     8.389342e-08             1          TRUE
    ## 2     2.630640e-06             1          TRUE
    ## 3     3.439882e-06             1          TRUE
    ## 4     1.323103e-07             1          TRUE
    ## 5     1.464773e-05             1          TRUE
    ## 6     3.226963e-05        <0.012         FALSE
    ## 7     1.024413e-05          0.18          TRUE
    ## 8     2.597718e-07             1          TRUE
    ## 9     1.079740e-07             1          TRUE
    ## 10    7.906914e-06             1          TRUE
    ## 11              NA          <NA>            NA
    ## 12    1.630693e-06             1          TRUE
    ## 13    2.715083e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Hearing
Difficulty GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     5.299e-33        0.089

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
    ##   or = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP      Power
    ## 1            FALSE   0.10657113 31.14288  0.05 2.58000043 0.36195321
    ## 2             TRUE   0.09529778 30.01121  0.05 0.03655181 0.05419762

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
Ptau on Hearing Difficulty. <br>

**Table 6** MR causaul estimates for CSF Ptau on Hearing Difficulty

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 2      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 3      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 4      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ##                                      method nsnp          b         se
    ## 1 Inverse variance weighted (fixed effects)   12 0.02029409 0.01288552
    ## 2                           Weighted median   12 0.01868053 0.01786911
    ## 3                             Weighted mode   12 0.02464274 0.02599405
    ## 4                                  MR Egger   12 0.03997254 0.06283263
    ##        pval
    ## 1 0.1152673
    ## 2 0.2958339
    ## 3 0.3634841
    ## 4 0.5389496

<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus
the association in Hearing Difficulty and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 2      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 23.34321   10 0.009548223
    ## 2 Inverse variance weighted 23.59710   11 0.014542966

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome        outcome       exposure egger_intercept
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau   -0.0008319899
    ##            se      pval
    ## 1 0.002522748 0.7483592

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome        outcome       exposure    pt
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 28.70839 0.013

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 2      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 3      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 4      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   11 0.002579174 0.01364969
    ## 2                           Weighted median   11 0.013056929 0.01843208
    ## 3                             Weighted mode   11 0.022560390 0.02478502
    ## 4                                  MR Egger   11 0.058050721 0.04135473
    ##        pval
    ## 1 0.8501283
    ## 2 0.4787090
    ## 3 0.3841098
    ## 4 0.1939514

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome        outcome       exposure
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ## 2      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 6.101655    9 0.7297026
    ## 2 Inverse variance weighted 8.120878   10 0.6170310

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome        outcome       exposure egger_intercept
    ## 1      HlzoW3     jcCwPG Wells2019hdiff Deming2017ptau    -0.002407461
    ##           se      pval
    ## 1 0.00169421 0.1890263

<br>
