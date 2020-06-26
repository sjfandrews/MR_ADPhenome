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

### Outcome: Depression

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in
Depression

    ##          SNP CHROM       POS  REF  ALT     AF    BETA     SE          Z
    ## 1  rs6738528     2  27149258    T    A 0.3944 -0.0033 0.0036 -0.9166667
    ## 2 rs11692435     2  98275354    G    A 0.0817  0.0117 0.0065  1.8000000
    ## 3   rs533577     3  39489651    C    T 0.4937 -0.0037 0.0035 -1.0571429
    ## 4 rs35021943     4 121643239    A    C 0.2476 -0.0139 0.0041 -3.3902400
    ## 5  rs7824177     8 110585288    A    G 0.1602  0.0006 0.0048  0.1250000
    ## 6  rs2316766    NA        NA <NA> <NA>     NA      NA     NA         NA
    ##          P      N      TRAIT
    ## 1 0.363000 807553 Depression
    ## 2 0.074050 807553 Depression
    ## 3 0.294100 807553 Depression
    ## 4 0.000767 807553 Depression
    ## 5 0.901300 807553 Depression
    ## 6       NA     NA       <NA>

<br>

**Table 3:** Proxy SNPs for Depression

    ##   target_snp   proxy_snp    ld.r2 Dprime PHASE X12 CHROM      POS
    ## 1  rs2316766 rs112155389 0.989115      1 TA/GG  NA    17 43758078
    ##   REF.proxy ALT.proxy     AF   BETA     SE        Z     P      N
    ## 1         G         A 0.2212 0.0049 0.0042 1.166667 0.247 807553
    ##        TRAIT  ref ref.proxy alt alt.proxy  ALT REF proxy.outcome
    ## 1 Depression TRUE         A   G         G TRUE   G          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Thickness and Depression datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091       0.0117
    ## 2                     T                    G        0.0069       0.0049
    ## 3                     C                    A        0.0051      -0.0139
    ## 4                     T                    C       -0.0050      -0.0037
    ## 5                     A                    T        0.0045      -0.0033
    ## 6                     G                    A       -0.0059       0.0006
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910      0.0817  FALSE       FALSE     FALSE     jlTDED
    ## 2       0.2098      0.2212  FALSE       FALSE     FALSE     jlTDED
    ## 3       0.2422      0.2476  FALSE       FALSE     FALSE     jlTDED
    ## 4       0.4935      0.4937  FALSE       FALSE     FALSE     jlTDED
    ## 5       0.3984      0.3944  FALSE        TRUE     FALSE     jlTDED
    ## 6       0.1616      0.1602  FALSE       FALSE     FALSE     jlTDED
    ##   chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           2    98275354     0.0065  1.8000000     0.074050
    ## 2          17    43758078     0.0042  1.1666667     0.247000
    ## 3           4   121643239     0.0041 -3.3902400     0.000767
    ## 4           3    39489651     0.0035 -1.0571429     0.294100
    ## 5           2    27149258     0.0036 -0.9166667     0.363000
    ## 6           8   110585288     0.0048  0.1250000     0.901300
    ##   samplesize.outcome              outcome mr_keep.outcome
    ## 1             807553 Howard2019dep23andMe            TRUE
    ## 2             807553 Howard2019dep23andMe            TRUE
    ## 3             807553 Howard2019dep23andMe            TRUE
    ## 4             807553 Howard2019dep23andMe            TRUE
    ## 5             807553 Howard2019dep23andMe            TRUE
    ## 6             807553 Howard2019dep23andMe            TRUE
    ##   pval_origin.outcome proxy.outcome target_snp.outcome proxy_snp.outcome
    ## 1            reported            NA               <NA>              <NA>
    ## 2            reported          TRUE          rs2316766       rs112155389
    ## 3            reported            NA               <NA>              <NA>
    ## 4            reported            NA               <NA>              <NA>
    ## 5            reported            NA               <NA>              <NA>
    ## 6            reported            NA               <NA>              <NA>
    ##   target_a1.outcome target_a2.outcome proxy_a1.outcome proxy_a2.outcome
    ## 1                NA              <NA>             <NA>             <NA>
    ## 2              TRUE                 G                A                G
    ## 3                NA              <NA>             <NA>             <NA>
    ## 4                NA              <NA>             <NA>             <NA>
    ## 5                NA              <NA>             <NA>             <NA>
    ## 6                NA              <NA>             <NA>             <NA>
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
    ## 1             reported      znhNiD      2    TRUE           TRUE 5e-08
    ## 2             reported      znhNiD      2    TRUE           TRUE 5e-08
    ## 3             reported      znhNiD      2    TRUE           TRUE 5e-08
    ## 4             reported      znhNiD      2    TRUE           TRUE 5e-08
    ## 5             reported      znhNiD      2    TRUE           TRUE 5e-08
    ## 6             reported      znhNiD      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    9.347801e-05         0.804          TRUE
    ## 2    1.024806e-04         0.240          TRUE
    ## 3    1.875564e-04         0.018         FALSE
    ## 4    4.896526e-05         0.414          TRUE
    ## 5    2.898759e-06         1.000          TRUE
    ## 6    4.326936e-06         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Depression
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
    ##   method = col_character(),
    ##   outliers_removed = col_logical(),
    ##   logistic = col_logical(),
    ##   beta = col_logical()
    ## )

    ## See spec(...) for full column specifications.

    ##   outliers_removed pve.exposure        F Alpha        NCP     Power
    ## 1            FALSE  0.006343325 35.85791  0.05 2.23561210 0.3213239
    ## 2             TRUE  0.005408221 36.65288  0.05 0.02359106 0.0527068

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
Cortical Thickness on Depression. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Depression

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 2      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 3      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 4      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    6 -0.40720512 0.2972134
    ## 2                           Weighted median    6 -0.07610092 0.4609824
    ## 3                             Weighted mode    6  0.29035621 0.5726005
    ## 4                                  MR Egger    6 -0.16997465 2.7683155
    ##        pval
    ## 1 0.1706630
    ## 2 0.8688777
    ## 3 0.6336627
    ## 4 0.9539861

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Depression and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 2      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 16.16009    4 0.002811699
    ## 2 Inverse variance weighted 16.19121    5 0.006318848

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Howard2019dep23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Howard2019dep23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1    -0.001397711 0.01592602 0.9342834

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome              outcome            exposure    pt
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 23.58812 0.007

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 2      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 3      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 4      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##                                      method nsnp           b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.04017216 0.3198768
    ## 2                           Weighted median    5  0.14848426 0.4455100
    ## 3                             Weighted mode    5  0.56221921 0.5929271
    ## 4                                  MR Egger    5 -1.02358563 1.9911145
    ##        pval
    ## 1 0.9000594
    ## 2 0.7389150
    ## 3 0.3967154
    ## 4 0.6426692

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Howard2019dep23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ## 2      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 6.040683    3 0.1096476
    ## 2 Inverse variance weighted 6.558793    4 0.1611234

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome              outcome            exposure
    ## 1      znhNiD     jlTDED Howard2019dep23andMe Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1     0.005940066 0.01171016 0.6469123

<br>
