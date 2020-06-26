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

### Outcome: Diabetes

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Diabetes

    ##          SNP CHROM       POS  REF  ALT       AF    BETA     SE         Z
    ## 1  rs6738528     2  27149258    T    A 0.390617 -0.0150 0.0080 -1.875000
    ## 2 rs11692435    NA        NA <NA> <NA>       NA      NA     NA        NA
    ## 3   rs533577     3  39489651    C    T 0.494902 -0.0195 0.0077 -2.532468
    ## 4 rs35021943     4 121643239    A    C 0.247346 -0.0116 0.0091 -1.274725
    ## 5  rs7824177     8 110585288    A    G 0.159054  0.0132 0.0106  1.245283
    ## 6  rs2316766    NA        NA <NA> <NA>       NA      NA     NA        NA
    ##         P      N           TRAIT
    ## 1 0.06243 571535 Type_2_Diabetes
    ## 2      NA     NA            <NA>
    ## 3 0.01192 577345 Type_2_Diabetes
    ## 4 0.20380 568040 Type_2_Diabetes
    ## 5 0.21270 576435 Type_2_Diabetes
    ## 6      NA     NA            <NA>

<br>

**Table 3:** Proxy SNPs for Diabetes

    ##   target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1 rs11692435 rs74855351 0.823753 0.919606 AC/GT  NA     2 98380681
    ## 2  rs2316766 rs17426174 0.989115 1.000000 TC/GG  NA    17 43830938
    ##   REF.proxy ALT.proxy        AF   BETA     SE         Z      P      N
    ## 1         T         C 0.0775941 0.0064 0.0147 0.4353741 0.6654 573704
    ## 2         G         C 0.2234350 0.0103 0.0094 1.0957447 0.2716 573561
    ##             TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 Type_2_Diabetes   A         C   G         T   A   G          TRUE
    ## 2 Type_2_Diabetes   T         C   G         G   T   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Diabetes datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091       0.0064
    ## 2                     T                    G        0.0069       0.0103
    ## 3                     C                    A        0.0051      -0.0116
    ## 4                     T                    C       -0.0050      -0.0195
    ## 5                     A                    T        0.0045      -0.0150
    ## 6                     G                    A       -0.0059       0.0132
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910   0.0775941  FALSE       FALSE     FALSE     siFZSE
    ## 2       0.2098   0.2234350  FALSE       FALSE     FALSE     siFZSE
    ## 3       0.2422   0.2473460  FALSE       FALSE     FALSE     siFZSE
    ## 4       0.4935   0.4949020  FALSE       FALSE     FALSE     siFZSE
    ## 5       0.3984   0.3906170  FALSE        TRUE     FALSE     siFZSE
    ## 6       0.1616   0.1590540  FALSE       FALSE     FALSE     siFZSE
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2    98380681     0.0147  0.4353741      0.66540
    ## 2          17    43830938     0.0094  1.0957447      0.27160
    ## 3           4   121643239     0.0091 -1.2747253      0.20380
    ## 4           3    39489651     0.0077 -2.5324675      0.01192
    ## 5           2    27149258     0.0080 -1.8750000      0.06243
    ## 6           8   110585288     0.0106  1.2452830      0.21270
    ##   samplesize.outcome     outcome mr_keep.outcome pval_origin.outcome
    ## 1             573704 Xue2018diab            TRUE            reported
    ## 2             573561 Xue2018diab            TRUE            reported
    ## 3             568040 Xue2018diab            TRUE            reported
    ## 4             577345 Xue2018diab            TRUE            reported
    ## 5             571535 Xue2018diab            TRUE            reported
    ## 6             576435 Xue2018diab            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1          TRUE         rs11692435        rs74855351                 A
    ## 2          TRUE          rs2316766        rs17426174                 T
    ## 3            NA               <NA>              <NA>              <NA>
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6            NA               <NA>              <NA>              <NA>
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1                 G                C                T            2
    ## 2                 G                C                G           17
    ## 3              <NA>             <NA>             <NA>            4
    ## 4              <NA>             <NA>             <NA>            3
    ## 5              <NA>             <NA>             <NA>            2
    ## 6              <NA>             <NA>             <NA>            8
    ##   pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1     98275354      0.0015  -6.066667     3.179e-10               29128
    ## 2     43919068      0.0011   6.272727     2.903e-10               26063
    ## 3    121643239      0.0009   5.666670     2.979e-09               32872
    ## 4     39489651      0.0008  -6.250000     8.426e-11               32872
    ## 5     27149258      0.0008   5.625000     7.324e-09               32872
    ## 6    110585288      0.0010  -5.900000     8.922e-09               32872
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1 Grasby2020thickness             TRUE             reported      uUgpgu
    ## 2 Grasby2020thickness             TRUE             reported      uUgpgu
    ## 3 Grasby2020thickness             TRUE             reported      uUgpgu
    ## 4 Grasby2020thickness             TRUE             reported      uUgpgu
    ## 5 Grasby2020thickness             TRUE             reported      uUgpgu
    ## 6 Grasby2020thickness             TRUE             reported      uUgpgu
    ##   action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1      2    TRUE           TRUE 5e-08    0.0000401405         1.000
    ## 2      2    TRUE           TRUE 5e-08    0.0002131258         0.960
    ## 3      2    TRUE           TRUE 5e-08    0.0001617221         1.000
    ## 4      2    TRUE           TRUE 5e-08    0.0006088411         0.030
    ## 5      2    TRUE           TRUE 5e-08    0.0002810649         0.336
    ## 6      2    TRUE           TRUE 5e-08    0.0002081044         0.996
    ##   mrpresso_keep
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE
    ## 4         FALSE
    ## 5          TRUE
    ## 6          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS

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
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE  0.006343325 35.85791  0.05 0.1642789 0.06902294
    ## 2             TRUE  0.005155914 34.93407  0.05 3.9529166 0.51130015

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
Cortical Thickness on Diabetes. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Diabetes

    ##   id.exposure id.outcome     outcome            exposure
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 2      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 3      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 4      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    6 -0.1238869 0.6616858
    ## 2                           Weighted median    6 -0.6918083 1.0677398
    ## 3                             Weighted mode    6 -2.0891103 1.9028850
    ## 4                                  MR Egger    6  1.3708525 5.8283934
    ##        pval
    ## 1 0.8514809
    ## 2 0.5170377
    ## 3 0.3222979
    ## 4 0.8256021

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Diabetes and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Xue2018diab/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome     outcome            exposure
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 2      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 14.21487    4 0.006639924
    ## 2 Inverse variance weighted 14.45982    5 0.012937860

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Xue2018diab/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Xue2018diab/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome     outcome            exposure egger_intercept
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness    -0.008777623
    ##           se      pval
    ## 1 0.03343332 0.8058714

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome     outcome            exposure    pt
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 21.06333 0.016

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome     outcome            exposure
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 2      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 3      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 4      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ##                                      method nsnp         b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -1.034941 0.7327738
    ## 2                           Weighted median    5 -1.512238 0.9882388
    ## 3                             Weighted mode    5 -2.200881 1.7706652
    ## 4                                  MR Egger    5  4.355247 3.2879525
    ##        pval
    ## 1 0.1578437
    ## 2 0.1259584
    ## 3 0.2817614
    ## 4 0.2771663

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Xue2018diab/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome     outcome            exposure
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ## 2      uUgpgu     siFZSE Xue2018diab Grasby2020thickness
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 3.129730    3 0.3720527
    ## 2 Inverse variance weighted 6.086723    4 0.1927647

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome     outcome            exposure egger_intercept
    ## 1      uUgpgu     siFZSE Xue2018diab Grasby2020thickness     -0.03295481
    ##           se      pval
    ## 1 0.01957431 0.1908529

<br>
