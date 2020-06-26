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

### Outcome: Moderate-Vigours Physical Activity

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Moderate-Vigours Physical Activity

    ##          SNP CHROM       POS  REF  ALT       AF         BETA         SE
    ## 1  rs6738528     2  27149258    T    A 0.388959  0.000618855 0.00226085
    ## 2 rs11692435     2  98275354    G    A 0.082768  0.003277100 0.00417273
    ## 3   rs533577     3  39489651    C    T 0.494746  0.000187109 0.00220808
    ## 4 rs35021943     4 121643239    A    C 0.248718 -0.002781640 0.00256295
    ## 5  rs7824177     8 110585288    A    G 0.161021  0.000481764 0.00300457
    ## 6  rs2316766    NA        NA <NA> <NA>       NA           NA         NA
    ##            Z    P      N TRAIT
    ## 1  0.2737270 0.78 377234  MVPA
    ## 2  0.7853610 0.43 377234  MVPA
    ## 3  0.0847383 0.93 377234  MVPA
    ## 4 -1.0853300 0.28 377234  MVPA
    ## 5  0.1603440 0.87 377234  MVPA
    ## 6         NA   NA     NA  <NA>

<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity

    ##   target_snp proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS REF.proxy
    ## 1  rs2316766 rs2106785 0.994535      1 TT/GC  NA    17 43919105         C
    ##   ALT.proxy       AF      BETA         SE       Z       P      N TRAIT
    ## 1      TRUE 0.221713 0.0112972 0.00266351 4.24147 2.2e-05 377234  MVPA
    ##    ref ref.proxy alt alt.proxy  ALT REF proxy.outcome
    ## 1 TRUE      TRUE   G         C TRUE   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Moderate-Vigours Physical
Activity datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091  0.003277100
    ## 2                     T                    G        0.0069  0.011297200
    ## 3                     C                    A        0.0051 -0.002781640
    ## 4                     T                    C       -0.0050  0.000187109
    ## 5                     A                    T        0.0045  0.000618855
    ## 6                     G                    A       -0.0059  0.000481764
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910    0.082768  FALSE       FALSE     FALSE     sURxJm
    ## 2       0.2098    0.221713  FALSE       FALSE     FALSE     sURxJm
    ## 3       0.2422    0.248718  FALSE       FALSE     FALSE     sURxJm
    ## 4       0.4935    0.494746  FALSE       FALSE     FALSE     sURxJm
    ## 5       0.3984    0.388959  FALSE        TRUE     FALSE     sURxJm
    ## 6       0.1616    0.161021  FALSE       FALSE     FALSE     sURxJm
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2    98275354 0.00417273  0.7853610      4.3e-01
    ## 2          17    43919105 0.00266351  4.2414700      2.2e-05
    ## 3           4   121643239 0.00256295 -1.0853300      2.8e-01
    ## 4           3    39489651 0.00220808  0.0847383      9.3e-01
    ## 5           2    27149258 0.00226085  0.2737270      7.8e-01
    ## 6           8   110585288 0.00300457  0.1603440      8.7e-01
    ##   samplesize.outcome             outcome mr_keep.outcome
    ## 1             377234 Klimentidis2018mvpa            TRUE
    ## 2             377234 Klimentidis2018mvpa            TRUE
    ## 3             377234 Klimentidis2018mvpa            TRUE
    ## 4             377234 Klimentidis2018mvpa            TRUE
    ## 5             377234 Klimentidis2018mvpa            TRUE
    ## 6             377234 Klimentidis2018mvpa            TRUE
    ##   pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1            reported            NA               <NA>              <NA>
    ## 2            reported          TRUE          rs2316766         rs2106785
    ## 3            reported            NA               <NA>              <NA>
    ## 4            reported            NA               <NA>              <NA>
    ## 5            reported            NA               <NA>              <NA>
    ## 6            reported            NA               <NA>              <NA>
    ##   target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1                NA              <NA>               NA             <NA>
    ## 2              TRUE                 G             TRUE                C
    ## 3                NA              <NA>               NA             <NA>
    ## 4                NA              <NA>               NA             <NA>
    ## 5                NA              <NA>               NA             <NA>
    ## 6                NA              <NA>               NA             <NA>
    ##   chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1            2     98275354      0.0015  -6.066667     3.179e-10
    ## 2           17     43919068      0.0011   6.272727     2.903e-10
    ## 3            4    121643239      0.0009   5.666670     2.979e-09
    ## 4            3     39489651      0.0008  -6.250000     8.426e-11
    ## 5            2     27149258      0.0008   5.625000     7.324e-09
    ## 6            8    110585288      0.0010  -5.900000     8.922e-09
    ##   samplesize.exposure            exposure mr_keep.exposure
    ## 1               29128 Grasby2020thickness             TRUE
    ## 2               26063 Grasby2020thickness             TRUE
    ## 3               32872 Grasby2020thickness             TRUE
    ## 4               32872 Grasby2020thickness             TRUE
    ## 5               32872 Grasby2020thickness             TRUE
    ## 6               32872 Grasby2020thickness             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      bksCrN      2    TRUE           TRUE 5e-08
    ## 2             reported      bksCrN      2    TRUE           TRUE 5e-08
    ## 3             reported      bksCrN      2    TRUE           TRUE 5e-08
    ## 4             reported      bksCrN      2    TRUE           TRUE 5e-08
    ## 5             reported      bksCrN      2    TRUE           TRUE 5e-08
    ## 6             reported      bksCrN      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    4.480340e-05         0.792          TRUE
    ## 2    1.567157e-04        <0.006         FALSE
    ## 3    2.234699e-05         0.438          TRUE
    ## 4    3.122757e-06             1          TRUE
    ## 5    3.593261e-07             1          TRUE
    ## 6    5.194245e-06             1          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the
Moderate-Vigours Physical Activity GWAS

    ## [1] SNP           chr.outcome   pos.outcome   pval.exposure pval.outcome 
    ## <0 rows> (or 0-length row.names)

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
    ## 1            FALSE  0.006343325 35.85791  0.05 1.2789626 0.2045354
    ## 2             TRUE  0.005198600 35.22480  0.05 0.6833107 0.1311995

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
Cortical Thickness on Moderate-Vigours Physical Activity. <br>

**Table 6** MR causaul estimates for Cortical Thickness on
Moderate-Vigours Physical Activity

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 2      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 3      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 4      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    6  0.25213136 0.1877392
    ## 2                           Weighted median    6 -0.05610373 0.2599820
    ## 3                             Weighted mode    6 -0.09418075 0.3104654
    ## 4                                  MR Egger    6  1.14842251 1.8075509
    ##        pval
    ## 1 0.1792762
    ## 2 0.8291448
    ## 3 0.7738372
    ## 4 0.5597308

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Moderate-Vigours Physical Activity
and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 2      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 16.99421    4 0.001937963
    ## 2 Inverse variance weighted 18.08901    5 0.002836900

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Klimentidis2018mvpa/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Klimentidis2018mvpa/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1     -0.00526371 0.01036921 0.6384241

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome             outcome            exposure    pt
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 29.35179 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 2      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 3      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 4      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.17701629 0.2148628
    ## 2                           Weighted median    5 -0.07878918 0.2623519
    ## 3                             Weighted mode    5 -0.04821652 0.3536383
    ## 4                                  MR Egger    5 -0.70651963 0.9915357
    ##        pval
    ## 1 0.4100206
    ## 2 0.7639340
    ## 3 0.8981360
    ## 4 0.5275440

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Klimentidis2018mvpa/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ## 2      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger 0.9245714    3 0.8194945
    ## 2 Inverse variance weighted 1.2238037    4 0.8741642

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome             outcome            exposure
    ## 1      bksCrN     sURxJm Klimentidis2018mvpa Grasby2020thickness
    ##   egger_intercept          se      pval
    ## 1     0.002972543 0.005434054 0.6224286

<br>
