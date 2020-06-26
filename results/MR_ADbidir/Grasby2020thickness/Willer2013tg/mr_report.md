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

### Outcome: Triglycerides

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Triglycerides

    ##          SNP CHROM       POS  REF  ALT       AF    BETA     SE          Z
    ## 1  rs6738528     2  27149258    T    A 0.421779  0.0045 0.0049  0.9183673
    ## 2 rs11692435     2  98275354    G    A 0.140881  0.0012 0.0081  0.1481481
    ## 3   rs533577     3  39489651    C    T 0.449239 -0.0066 0.0047 -1.4042600
    ## 4 rs35021943    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 5  rs7824177     8 110585288    A    G 0.113266  0.0008 0.0063  0.1269841
    ## 6  rs2316766    NA        NA <NA> <NA>       NA      NA     NA         NA
    ##        P     N         TRAIT
    ## 1 0.4292 91013 Triglycerides
    ## 2 0.8570 91013 Triglycerides
    ## 3 0.2023 91013 Triglycerides
    ## 4     NA    NA          <NA>
    ## 5 0.7449 90754 Triglycerides
    ## 6     NA    NA          <NA>

<br>

**Table 3:** Proxy SNPs for Triglycerides

    ##   target_snp  proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1 rs35021943 rs11721741 0.926024 0.970667 CG/AA  NA     4 121629986
    ## 2  rs2316766 rs17687534 0.989115 1.000000 TC/GT  NA    17  43749579
    ##   REF.proxy ALT.proxy       AF    BETA     SE         Z       P     N
    ## 1         A         G 0.224764 -0.0150 0.0054 -2.777780 0.01803 91013
    ## 2         T         C 0.147123 -0.0031 0.0059 -0.525424 0.26480 87977
    ##           TRAIT ref ref.proxy alt alt.proxy ALT REF proxy.outcome
    ## 1 Triglycerides   C         G   A         A   C   A          TRUE
    ## 2 Triglycerides   T         C   G         T   T   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Triglycerides datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091       0.0012
    ## 2                     T                    G        0.0069      -0.0031
    ## 3                     C                    A        0.0051      -0.0150
    ## 4                     T                    C       -0.0050      -0.0066
    ## 5                     A                    T        0.0045       0.0045
    ## 6                     G                    A       -0.0059       0.0008
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910    0.140881  FALSE       FALSE     FALSE     SRYNxk
    ## 2       0.2098    0.147123  FALSE       FALSE     FALSE     SRYNxk
    ## 3       0.2422    0.224764  FALSE       FALSE     FALSE     SRYNxk
    ## 4       0.4935    0.449239  FALSE       FALSE     FALSE     SRYNxk
    ## 5       0.3984    0.421779  FALSE        TRUE      TRUE     SRYNxk
    ## 6       0.1616    0.113266  FALSE       FALSE     FALSE     SRYNxk
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2    98275354     0.0081  0.1481481      0.85700
    ## 2          17    43749579     0.0059 -0.5254240      0.26480
    ## 3           4   121629986     0.0054 -2.7777800      0.01803
    ## 4           3    39489651     0.0047 -1.4042600      0.20230
    ## 5           2    27149258     0.0049  0.9183673      0.42920
    ## 6           8   110585288     0.0063  0.1269841      0.74490
    ##   samplesize.outcome      outcome mr_keep.outcome pval_origin.outcome
    ## 1              91013 Willer2013tg            TRUE            reported
    ## 2              87977 Willer2013tg            TRUE            reported
    ## 3              91013 Willer2013tg            TRUE            reported
    ## 4              91013 Willer2013tg            TRUE            reported
    ## 5              91013 Willer2013tg            TRUE            reported
    ## 6              90754 Willer2013tg            TRUE            reported
    ##   proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1            NA               <NA>              <NA>              <NA>
    ## 2          TRUE          rs2316766        rs17687534                 T
    ## 3          TRUE         rs35021943        rs11721741                 C
    ## 4            NA               <NA>              <NA>              <NA>
    ## 5            NA               <NA>              <NA>              <NA>
    ## 6            NA               <NA>              <NA>              <NA>
    ##   target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1              <NA>             <NA>             <NA>            2
    ## 2                 G                C                T           17
    ## 3                 A                G                A            4
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
    ## 1 Grasby2020thickness             TRUE             reported      1CeZGW
    ## 2 Grasby2020thickness             TRUE             reported      1CeZGW
    ## 3 Grasby2020thickness             TRUE             reported      1CeZGW
    ## 4 Grasby2020thickness             TRUE             reported      1CeZGW
    ## 5 Grasby2020thickness             TRUE             reported      1CeZGW
    ## 6 Grasby2020thickness             TRUE             reported      1CeZGW
    ##   action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1      2    TRUE           TRUE 5e-08              NA            NA
    ## 2      2    TRUE           TRUE 5e-08              NA            NA
    ## 3      2    TRUE           TRUE 5e-08              NA            NA
    ## 4      2    TRUE           TRUE 5e-08              NA            NA
    ## 5      2   FALSE           TRUE 5e-08              NA            NA
    ## 6      2    TRUE           TRUE 5e-08              NA            NA
    ##   mrpresso_keep
    ## 1          TRUE
    ## 2          TRUE
    ## 3          TRUE
    ## 4          TRUE
    ## 5            NA
    ## 6          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Triglycerides
GWAS

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

    ##   outliers_removed pve.exposure       F Alpha       NCP     Power
    ## 1            FALSE   0.00542419 36.7617  0.05 0.7206833 0.1357626

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
Cortical Thickness on Triglycerides. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Triglycerides

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 2      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 3      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 4      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.36694001 0.4252193
    ## 2                           Weighted median    5 -0.13513778 0.5711198
    ## 3                             Weighted mode    5 -0.24529611 0.7089962
    ## 4                                  MR Egger    5  0.06815192 3.5555009
    ##        pval
    ## 1 0.3881689
    ## 2 0.8129524
    ## 3 0.7467914
    ## 4 0.9859106

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Triglycerides and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tg/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 2      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 9.209374    3 0.02663285
    ## 2 Inverse variance weighted 9.257455    4 0.05497680

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tg/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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

    ##   id.exposure id.outcome      outcome            exposure egger_intercept
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness    -0.002713456
    ##           se      pval
    ## 1 0.02168167 0.9083204

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome      outcome            exposure    pt
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 13.69341 0.072

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 2      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 3      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 4      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.36694001 0.4252193
    ## 2                           Weighted median    5 -0.13513778 0.5769650
    ## 3                             Weighted mode    5 -0.24529611 0.6864003
    ## 4                                  MR Egger    5  0.06815192 3.5555009
    ##        pval
    ## 1 0.3881689
    ## 2 0.8148128
    ## 3 0.7388755
    ## 4 0.9859106

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Willer2013tg/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome      outcome            exposure
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ## 2      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 9.209374    3 0.02663285
    ## 2 Inverse variance weighted 9.257455    4 0.05497680

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome      outcome            exposure egger_intercept
    ## 1      1CeZGW     SRYNxk Willer2013tg Grasby2020thickness    -0.002713456
    ##           se      pval
    ## 1 0.02168167 0.9083204

<br>
