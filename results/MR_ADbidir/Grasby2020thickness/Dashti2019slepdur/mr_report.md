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

### Exposure: Cortical Thickness

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Thickness

    ##          SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1  rs6738528     2  27149258   T   A 0.3984  0.0045 0.0008  5.625000
    ## 2 rs11692435     2  98275354   G   A 0.0910 -0.0091 0.0015 -6.066667
    ## 3   rs533577     3  39489651   C   T 0.4935 -0.0050 0.0008 -6.250000
    ## 4 rs35021943     4 121643239   A   C 0.2422  0.0051 0.0009  5.666670
    ## 5  rs7824177     8 110585288   A   G 0.1616 -0.0059 0.0010 -5.900000
    ## 6  rs2316766    17  43919068   G   T 0.2098  0.0069 0.0011  6.272727
    ##           P     N              TRAIT
    ## 1 7.324e-09 32872 Cortical_Thickness
    ## 2 3.179e-10 29128 Cortical_Thickness
    ## 3 8.426e-11 32872 Cortical_Thickness
    ## 4 2.979e-09 32872 Cortical_Thickness
    ## 5 8.922e-09 32872 Cortical_Thickness
    ## 6 2.903e-10 26063 Cortical_Thickness

<br>

### Outcome: Sleep Duration

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in Sleep
Duration

    ##          SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1  rs6738528     2  27149258    T    A 0.388436 -0.005504500 0.00231868
    ## 2 rs11692435     2  98275354    G    A 0.083673  0.006672320 0.00425666
    ## 3   rs533577     3  39489651    C    T 0.494251 -0.003926270 0.00226583
    ## 4 rs35021943     4 121643239    A    C 0.248565 -0.000419391 0.00263233
    ## 5  rs7824177     8 110585288    A    G 0.160527  0.000576088 0.00308864
    ## 6  rs2316766    NA        NA <NA> <NA>       NA           NA         NA
    ##           Z     P      N          TRAIT
    ## 1 -2.373980 0.016 446118 Sleep_Duration
    ## 2  1.567500 0.130 446118 Sleep_Duration
    ## 3 -1.732820 0.082 446118 Sleep_Duration
    ## 4 -0.159323 0.860 446118 Sleep_Duration
    ## 5  0.186518 0.800 446118 Sleep_Duration
    ## 6        NA    NA     NA           <NA>

<br>

**Table 3:** Proxy SNPs for Sleep Duration

    ##   target_snp proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs2316766 rs2106785 0.994535      1 TT/GC  NA    17 43919105         C
    ##   ALT.proxy       AF     BETA        SE        Z       P      N
    ## 1      TRUE 0.221768 -0.01633 0.0027353 -5.97009 2.1e-09 446118
    ##            TRAIT  ref ref.proxy alt alt.proxy  ALT REF proxy.outcome
    ## 1 Sleep_Duration TRUE      TRUE   G         C TRUE   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Sleep Duration datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091  0.006672320
    ## 2                     T                    G        0.0069 -0.016330000
    ## 3                     C                    A        0.0051 -0.000419391
    ## 4                     T                    C       -0.0050 -0.003926270
    ## 5                     A                    T        0.0045 -0.005504500
    ## 6                     G                    A       -0.0059  0.000576088
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910    0.083673  FALSE       FALSE     FALSE     8S01YZ
    ## 2       0.2098    0.221768  FALSE       FALSE     FALSE     8S01YZ
    ## 3       0.2422    0.248565  FALSE       FALSE     FALSE     8S01YZ
    ## 4       0.4935    0.494251  FALSE       FALSE     FALSE     8S01YZ
    ## 5       0.3984    0.388436  FALSE        TRUE     FALSE     8S01YZ
    ## 6       0.1616    0.160527  FALSE       FALSE     FALSE     8S01YZ
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           2    98275354 0.00425666  1.567500      1.3e-01
    ## 2          17    43919105 0.00273530 -5.970090      2.1e-09
    ## 3           4   121643239 0.00263233 -0.159323      8.6e-01
    ## 4           3    39489651 0.00226583 -1.732820      8.2e-02
    ## 5           2    27149258 0.00231868 -2.373980      1.6e-02
    ## 6           8   110585288 0.00308864  0.186518      8.0e-01
    ##   samplesize.outcome           outcome mr_keep.outcome pval_origin.outcome
    ## 1             446118 Dashti2019slepdur            TRUE            reported
    ## 2             446118 Dashti2019slepdur            TRUE            reported
    ## 3             446118 Dashti2019slepdur            TRUE            reported
    ## 4             446118 Dashti2019slepdur            TRUE            reported
    ## 5             446118 Dashti2019slepdur            TRUE            reported
    ## 6             446118 Dashti2019slepdur            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1            NA               <NA>              <NA>                NA
    ## 2          TRUE          rs2316766         rs2106785              TRUE
    ## 3            NA               <NA>              <NA>                NA
    ## 4            NA               <NA>              <NA>                NA
    ## 5            NA               <NA>              <NA>                NA
    ## 6            NA               <NA>              <NA>                NA
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1              <NA>               NA             <NA>            2
    ## 2                 G             TRUE                C           17
    ## 3              <NA>               NA             <NA>            4
    ## 4              <NA>               NA             <NA>            3
    ## 5              <NA>               NA             <NA>            2
    ## 6              <NA>               NA             <NA>            8
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     98275354      0.0015  -6.066667     3.179e-10               29128
    ## 2     43919068      0.0011   6.272727     2.903e-10               26063
    ## 3    121643239      0.0009   5.666670     2.979e-09               32872
    ## 4     39489651      0.0008  -6.250000     8.426e-11               32872
    ## 5     27149258      0.0008   5.625000     7.324e-09               32872
    ## 6    110585288      0.0010  -5.900000     8.922e-09               32872
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1 Grasby2020thickness             TRUE             reported      9hd39a
    ## 2 Grasby2020thickness             TRUE             reported      9hd39a
    ## 3 Grasby2020thickness             TRUE             reported      9hd39a
    ## 4 Grasby2020thickness             TRUE             reported      9hd39a
    ## 5 Grasby2020thickness             TRUE             reported      9hd39a
    ## 6 Grasby2020thickness             TRUE             reported      9hd39a
    ##   action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1      2    TRUE           TRUE 5e-08    3.422810e-05         1.000
    ## 2      2    TRUE          FALSE 5e-08              NA            NA
    ## 3      2    TRUE           TRUE 5e-08    8.825302e-07         1.000
    ## 4      2    TRUE           TRUE 5e-08    4.443106e-05         0.085
    ## 5      2    TRUE           TRUE 5e-08    2.973678e-05         0.165
    ## 6      2    TRUE           TRUE 5e-08    9.401462e-07         1.000
    ##   mrpresso_keep
    ## 1          TRUE
    ## 2            NA
    ## 3          TRUE
    ## 4          TRUE
    ## 5          TRUE
    ## 6          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Sleep
Duration GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs2316766          17    43919105     2.903e-10      2.1e-09

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

    ##   outliers_removed pve.exposure       F Alpha      NCP     Power
    ## 1            FALSE    0.0051986 35.2248  0.05 1.103443 0.1828436

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
Cortical Thickness on Sleep Duration. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Sleep
Duration

    ##   id.exposure id.outcome           outcome            exposure
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ## 2      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ## 3      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ## 4      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.23288530 0.2202781
    ## 2                           Weighted median    5 -0.09599352 0.3369440
    ## 3                             Weighted mode    5 -0.28229725 0.5089500
    ## 4                                  MR Egger    5 -0.81421949 1.8202305
    ##        pval
    ## 1 0.2904052
    ## 2 0.7757249
    ## 3 0.6086745
    ## 4 0.6849710

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Sleep Duration and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome           outcome            exposure
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ## 2      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ##                      method         Q Q_df     Q_pval
    ## 1                  MR Egger  9.692035    3 0.02137379
    ## 2 Inverse variance weighted 10.037929    4 0.03979360

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Dashti2019slepdur/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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

    ##   id.exposure id.outcome           outcome            exposure
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1     0.003266612 0.009983277 0.7650125

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome           outcome            exposure    pt
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 16.30038 0.035

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome           outcome            exposure   method
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness mrpresso
    ##   nsnp  b se pval
    ## 1   NA NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Dashti2019slepdur/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome           outcome            exposure   method  Q
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome           outcome            exposure   method
    ## 1      9hd39a     8S01YZ Dashti2019slepdur Grasby2020thickness mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
