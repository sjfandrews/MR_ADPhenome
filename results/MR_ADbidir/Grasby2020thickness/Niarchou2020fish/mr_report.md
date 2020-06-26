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

### Outcome: Fish and plant related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in Fish
and plant related diet

    ##          SNP CHROM       POS REF ALT       AF        BETA         SE
    ## 1  rs6738528     2  27149258   T   A 0.387040 -0.00683973 0.00248320
    ## 2 rs11692435     2  98275354   G   A 0.073957 -0.01127170 0.00471473
    ## 3   rs533577     3  39489651   C   T 0.493743  0.00345526 0.00242500
    ## 4 rs35021943     4 121643239   A   C 0.247090 -0.00173919 0.00282340
    ## 5  rs7824177     8 110585288   A   G 0.159264 -0.00254857 0.00331136
    ## 6  rs2316766    17  43919068   G   T 0.215442 -0.01028810 0.00297783
    ##           Z       P      N           TRAIT
    ## 1 -2.754400 0.00590 335576 fish_plant_diet
    ## 2 -2.390740 0.01700 335576 fish_plant_diet
    ## 3  1.424850 0.15000 335576 fish_plant_diet
    ## 4 -0.615991 0.54000 335576 fish_plant_diet
    ## 5 -0.769644 0.44000 335576 fish_plant_diet
    ## 6 -3.454900 0.00055 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Fish and plant related diet

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

**Table 4:** Harmonized Cortical Thickness and Fish and plant related
diet datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs11692435                      A                     G
    ## 2  rs2316766                      T                     G
    ## 3 rs35021943                      C                     A
    ## 4   rs533577                      T                     C
    ## 5  rs6738528                      A                     T
    ## 6  rs7824177                      G                     A
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     A                    G       -0.0091  -0.01127170
    ## 2                     T                    G        0.0069  -0.01028810
    ## 3                     C                    A        0.0051  -0.00173919
    ## 4                     T                    C       -0.0050   0.00345526
    ## 5                     A                    T        0.0045  -0.00683973
    ## 6                     G                    A       -0.0059  -0.00254857
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1       0.0910    0.073957  FALSE       FALSE     FALSE     srO6MS
    ## 2       0.2098    0.215442  FALSE       FALSE     FALSE     srO6MS
    ## 3       0.2422    0.247090  FALSE       FALSE     FALSE     srO6MS
    ## 4       0.4935    0.493743  FALSE       FALSE     FALSE     srO6MS
    ## 5       0.3984    0.387040  FALSE        TRUE     FALSE     srO6MS
    ## 6       0.1616    0.159264  FALSE       FALSE     FALSE     srO6MS
    ##   chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           2    98275354 0.00471473 -2.390740      0.01700
    ## 2          17    43919068 0.00297783 -3.454900      0.00055
    ## 3           4   121643239 0.00282340 -0.615991      0.54000
    ## 4           3    39489651 0.00242500  1.424850      0.15000
    ## 5           2    27149258 0.00248320 -2.754400      0.00590
    ## 6           8   110585288 0.00331136 -0.769644      0.44000
    ##   samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1             335576 Niarchou2020fish            TRUE            reported
    ## 2             335576 Niarchou2020fish            TRUE            reported
    ## 3             335576 Niarchou2020fish            TRUE            reported
    ## 4             335576 Niarchou2020fish            TRUE            reported
    ## 5             335576 Niarchou2020fish            TRUE            reported
    ## 6             335576 Niarchou2020fish            TRUE            reported
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
    ## 1             reported      D0blRX      2    TRUE           TRUE 5e-08
    ## 2             reported      D0blRX      2    TRUE           TRUE 5e-08
    ## 3             reported      D0blRX      2    TRUE           TRUE 5e-08
    ## 4             reported      D0blRX      2    TRUE           TRUE 5e-08
    ## 5             reported      D0blRX      2    TRUE           TRUE 5e-08
    ## 6             reported      D0blRX      2    TRUE           TRUE 5e-08
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    3.477131e-04         0.006         FALSE
    ## 2    8.274719e-05         0.084          TRUE
    ## 3    6.771245e-07         1.000          TRUE
    ## 4    1.680874e-06         1.000          TRUE
    ## 5    2.980024e-05         0.270          TRUE
    ## 6    3.888922e-05         0.444          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Fish and
plant related diet GWAS

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
    ## 1            FALSE  0.006343325 35.85791  0.05  5.071862 0.6149135
    ## 2             TRUE  0.005236614 35.48374  0.05 11.466670 0.9231067

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
Cortical Thickness on Fish and plant related diet. <br>

**Table 6** MR causaul estimates for Cortical Thickness on Fish and
plant related diet

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 2      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 3      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 4      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    6 -0.4795432 0.2082108
    ## 2                           Weighted median    6 -0.5560391 0.3282264
    ## 3                             Weighted mode    6 -0.8992841 0.5298966
    ## 4                                  MR Egger    6  1.9058756 2.0079502
    ##         pval
    ## 1 0.02126975
    ## 2 0.09025166
    ## 3 0.15043946
    ## 4 0.39628410

<br>

Figure 1 illustrates the SNP-specific associations with Cortical
Thickness versus the association in Fish and plant related diet and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 2      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 16.74829    4 0.0021631541
    ## 2 Inverse variance weighted 22.93614    5 0.0003471887

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Niarchou2020fish/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Niarchou2020fish/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1     -0.01394665 0.01147242 0.2909507

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome            exposure    pt
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 33.72427 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 2      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 3      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 4      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##                                      method nsnp          b        se
    ## 1 Inverse variance weighted (fixed effects)    5 -0.8104798 0.2273799
    ## 2                           Weighted median    5 -0.7324224 0.3600456
    ## 3                             Weighted mode    5 -1.0044123 0.5402190
    ## 4                                  MR Egger    5 -1.0884886 2.7092908
    ##           pval
    ## 1 0.0003646473
    ## 2 0.0419264938
    ## 3 0.1365159506
    ## 4 0.7147686157

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ## 2      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 9.784731    3 0.02048748
    ## 2 Inverse variance weighted 9.819881    4 0.04357355

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome            exposure
    ## 1      D0blRX     srO6MS Niarchou2020fish Grasby2020thickness
    ##   egger_intercept         se      pval
    ## 1     0.001520698 0.01464851 0.9238691

<br>
