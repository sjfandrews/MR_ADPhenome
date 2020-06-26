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

### Exposure: Hippocampal Volume

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Hippocampal Volume

    ##            SNP CHROM       POS REF ALT         AF     BETA      SE
    ## 1  rs116621170     2  55490139   A   G 0.00925926  95.4350 20.5586
    ## 2    rs2268894     2 162856148   C   T 0.55968800 -23.7430  4.6293
    ## 3    rs2289881     5  66084260   G   T 0.36506200 -23.1830  4.7982
    ## 4   rs78587286     6  14266689   C   T 0.11467400  36.8599  7.8758
    ## 5   rs74597467     8 124108618   C   T 0.05642240  60.7326 12.5281
    ## 6   rs12784431    10 135037575   G   A 0.41287700 -24.9666  5.3102
    ## 7    rs7396827    11  28577867   T   C 0.53755400  23.0675  4.6564
    ## 8     rs453084    11  79594256   G   A 0.60522500 -23.1122  5.0186
    ## 9   rs61921502    12  65832468   T   G 0.14724000 -43.4029  6.8860
    ## 10  rs77956314    12 117323367   T   C 0.07391780  54.2058  8.3684
    ## 11   rs6060507    20  34198334   A   G 0.15883200  28.5005  6.2191
    ##            Z         P     N              TRAIT
    ## 1   4.642096 3.449e-06 11373 Hippocampal_Volume
    ## 2  -5.128850 2.915e-07 13163 Hippocampal_Volume
    ## 3  -4.831604 1.355e-06 13163 Hippocampal_Volume
    ## 4   4.680147 2.867e-06 12964 Hippocampal_Volume
    ## 5   4.847710 1.249e-06 12536 Hippocampal_Volume
    ## 6  -4.701631 2.581e-06 10406 Hippocampal_Volume
    ## 7   4.953930 7.275e-07 13163 Hippocampal_Volume
    ## 8  -4.605310 4.119e-06 13163 Hippocampal_Volume
    ## 9  -6.303064 2.918e-10 13163 Hippocampal_Volume
    ## 10  6.477439 9.331e-11 13163 Hippocampal_Volume
    ## 11  4.582737 4.590e-06 13163 Hippocampal_Volume

<br>

### Outcome: AUDIT Total

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in AUDIT
Total

    ##            SNP CHROM       POS REF ALT         AF          BETA
    ## 1  rs116621170     2  55490139   A   G 0.00925926 -0.0000854983
    ## 2    rs2268894     2 162856148   C   T 0.55968800 -0.0033961264
    ## 3    rs2289881     5  66084260   G   T 0.36506200 -0.0075931259
    ## 4   rs78587286     6  14266689   C   T 0.11467400 -0.0012428613
    ## 5   rs74597467     8 124108618   C   T 0.05642240 -0.0006248236
    ## 6   rs12784431    10 135037575   G   A 0.41287700 -0.0013652757
    ## 7    rs7396827    11  28577867   T   C 0.53755400 -0.0036513700
    ## 8     rs453084    11  79594256   G   A 0.60522500 -0.0005989148
    ## 9   rs61921502    12  65832468   T   G 0.14724000 -0.0063275200
    ## 10  rs77956314    12 117323367   T   C 0.07391780  0.0014794500
    ## 11   rs6060507    20  34198334   A   G 0.15883200  0.0051672700
    ##             SE      Z        P      N       TRAIT
    ## 1  0.002671821 -0.032 0.974300 141116 AUDIT_Total
    ## 2  0.002663629 -1.275 0.202100 140504 AUDIT_Total
    ## 3  0.002664255 -2.850 0.004373 139491 AUDIT_Total
    ## 4  0.002661373 -0.467 0.640600 141377 AUDIT_Total
    ## 5  0.002658824 -0.235 0.814200 141932 AUDIT_Total
    ## 6  0.002656178 -0.514 0.607000 141883 AUDIT_Total
    ## 7  0.002680887 -1.362 0.173000 138641 AUDIT_Total
    ## 8  0.002661844 -0.225 0.822300 141627 AUDIT_Total
    ## 9  0.002659738 -2.379 0.017360 140238 AUDIT_Total
    ## 10 0.002656108  0.557 0.577500 141850 AUDIT_Total
    ## 11 0.002648522  1.951 0.051040 141687 AUDIT_Total

<br>

**Table 3:** Proxy SNPs for AUDIT Total

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

**Table 4:** Harmonized Hippocampal Volume and AUDIT Total datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1  rs116621170                      G                     A
    ## 2   rs12784431                      A                     G
    ## 3    rs2268894                      T                     C
    ## 4    rs2289881                      T                     G
    ## 5     rs453084                      A                     G
    ## 6    rs6060507                      G                     A
    ## 7   rs61921502                      G                     T
    ## 8    rs7396827                      C                     T
    ## 9   rs74597467                      T                     C
    ## 10  rs77956314                      C                     T
    ## 11  rs78587286                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure  beta.outcome
    ## 1                      G                    A       95.4350 -0.0000854983
    ## 2                      A                    G      -24.9666 -0.0013652757
    ## 3                      T                    C      -23.7430 -0.0033961264
    ## 4                      T                    G      -23.1830 -0.0075931259
    ## 5                      A                    G      -23.1122 -0.0005989148
    ## 6                      G                    A       28.5005  0.0051672700
    ## 7                      G                    T      -43.4029 -0.0063275200
    ## 8                      C                    T       23.0675 -0.0036513700
    ## 9                      T                    C       60.7326 -0.0006248236
    ## 10                     C                    T       54.2058  0.0014794500
    ## 11                     T                    C       36.8599 -0.0012428613
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.00925926  0.00925926  FALSE       FALSE     FALSE     VNm4xm
    ## 2    0.41287700  0.41287700  FALSE       FALSE     FALSE     VNm4xm
    ## 3    0.55968800  0.55968800  FALSE       FALSE     FALSE     VNm4xm
    ## 4    0.36506200  0.36506200  FALSE       FALSE     FALSE     VNm4xm
    ## 5    0.60522500  0.60522500  FALSE       FALSE     FALSE     VNm4xm
    ## 6    0.15883200  0.15883200  FALSE       FALSE     FALSE     VNm4xm
    ## 7    0.14724000  0.14724000  FALSE       FALSE     FALSE     VNm4xm
    ## 8    0.53755400  0.53755400  FALSE       FALSE     FALSE     VNm4xm
    ## 9    0.05642240  0.05642240  FALSE       FALSE     FALSE     VNm4xm
    ## 10   0.07391780  0.07391780  FALSE       FALSE     FALSE     VNm4xm
    ## 11   0.11467400  0.11467400  FALSE       FALSE     FALSE     VNm4xm
    ##    chr.outcome pos.outcome  se.outcome z.outcome pval.outcome
    ## 1            2    55490139 0.002671821    -0.032     0.974300
    ## 2           10   135037575 0.002656178    -0.514     0.607000
    ## 3            2   162856148 0.002663629    -1.275     0.202100
    ## 4            5    66084260 0.002664255    -2.850     0.004373
    ## 5           11    79594256 0.002661844    -0.225     0.822300
    ## 6           20    34198334 0.002648522     1.951     0.051040
    ## 7           12    65832468 0.002659738    -2.379     0.017360
    ## 8           11    28577867 0.002680887    -1.362     0.173000
    ## 9            8   124108618 0.002658824    -0.235     0.814200
    ## 10          12   117323367 0.002656108     0.557     0.577500
    ## 11           6    14266689 0.002661373    -0.467     0.640600
    ##    samplesize.outcome                       outcome mr_keep.outcome
    ## 1              141116 SanchezRoige2019auditt23andMe            TRUE
    ## 2              141883 SanchezRoige2019auditt23andMe            TRUE
    ## 3              140504 SanchezRoige2019auditt23andMe            TRUE
    ## 4              139491 SanchezRoige2019auditt23andMe            TRUE
    ## 5              141627 SanchezRoige2019auditt23andMe            TRUE
    ## 6              141687 SanchezRoige2019auditt23andMe            TRUE
    ## 7              140238 SanchezRoige2019auditt23andMe            TRUE
    ## 8              138641 SanchezRoige2019auditt23andMe            TRUE
    ## 9              141932 SanchezRoige2019auditt23andMe            TRUE
    ## 10             141850 SanchezRoige2019auditt23andMe            TRUE
    ## 11             141377 SanchezRoige2019auditt23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported            2     55490139     20.5586   4.642096
    ## 2             reported           10    135037575      5.3102  -4.701631
    ## 3             reported            2    162856148      4.6293  -5.128850
    ## 4             reported            5     66084260      4.7982  -4.831604
    ## 5             reported           11     79594256      5.0186  -4.605310
    ## 6             reported           20     34198334      6.2191   4.582737
    ## 7             reported           12     65832468      6.8860  -6.303064
    ## 8             reported           11     28577867      4.6564   4.953930
    ## 9             reported            8    124108618     12.5281   4.847710
    ## 10            reported           12    117323367      8.3684   6.477439
    ## 11            reported            6     14266689      7.8758   4.680147
    ##    pval.exposure samplesize.exposure       exposure mr_keep.exposure
    ## 1      3.449e-06               11373 Hilbar2015hipv             TRUE
    ## 2      2.581e-06               10406 Hilbar2015hipv             TRUE
    ## 3      2.915e-07               13163 Hilbar2015hipv             TRUE
    ## 4      1.355e-06               13163 Hilbar2015hipv             TRUE
    ## 5      4.119e-06               13163 Hilbar2015hipv             TRUE
    ## 6      4.590e-06               13163 Hilbar2015hipv             TRUE
    ## 7      2.918e-10               13163 Hilbar2015hipv             TRUE
    ## 8      7.275e-07               13163 Hilbar2015hipv             TRUE
    ## 9      1.249e-06               12536 Hilbar2015hipv             TRUE
    ## 10     9.331e-11               13163 Hilbar2015hipv             TRUE
    ## 11     2.867e-06               12964 Hilbar2015hipv             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 2              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 3              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 4              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 5              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 6              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 7              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 8              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 9              reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 10             reported      WpuGGl      2    TRUE           TRUE 5e-06
    ## 11             reported      WpuGGl      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1               NA            NA          TRUE
    ## 2               NA            NA          TRUE
    ## 3               NA            NA          TRUE
    ## 4               NA            NA          TRUE
    ## 5               NA            NA          TRUE
    ## 6               NA            NA          TRUE
    ## 7               NA            NA          TRUE
    ## 8               NA            NA          TRUE
    ## 9               NA            NA          TRUE
    ## 10              NA            NA          TRUE
    ## 11              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the AUDIT Total
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

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.02105511 26.74026  0.05 5.911476 0.6813241

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
Hippocampal Volume on AUDIT Total. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on AUDIT Total

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ## 2      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ## 3      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ## 4      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   11  2.811572e-05
    ## 2                           Weighted median   11  4.239203e-06
    ## 3                             Weighted mode   11  2.097682e-06
    ## 4                                  MR Egger   11 -3.436442e-05
    ##             se      pval
    ## 1 1.773052e-05 0.1128019
    ## 2 2.354057e-05 0.8570892
    ## 3 2.386395e-05 0.9316902
    ## 4 4.893005e-05 0.5002406

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in AUDIT Total and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ## 2      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 15.74949    9 0.07230070
    ## 2 Inverse variance weighted 19.45411   10 0.03485979

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##   egger_intercept          se      pval
    ## 1     0.003222825 0.002215018 0.1796455

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##      pt outliers_removed n_outliers   RSSobs  pval
    ## 1 5e-06            FALSE          0 23.23382 0.062

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##     method nsnp  b se pval
    ## 1 mrpresso   NA NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/SanchezRoige2019auditt23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##     method  Q Q_df Q_pval
    ## 1 mrpresso NA   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                       outcome       exposure
    ## 1      WpuGGl     VNm4xm SanchezRoige2019auditt23andMe Hilbar2015hipv
    ##     method egger_intercept se pval
    ## 1 mrpresso              NA NA   NA

<br>
