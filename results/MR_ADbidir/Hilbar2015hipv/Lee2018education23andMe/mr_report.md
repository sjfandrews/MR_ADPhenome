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

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in
Education

    ##            SNP CHROM       POS REF ALT     AF         BETA          SE
    ## 1  rs116621170     2  55490139   A   G 0.0170  4.78178e-03 0.005513406
    ## 2    rs2268894     2 162856148   C   T 0.5358  1.27845e-02 0.001405987
    ## 3    rs2289881     5  66084260   G   T 0.3532 -1.43804e-03 0.001468665
    ## 4   rs78587286     6  14266689   C   T 0.0954 -2.94191e-05 0.002387474
    ## 5   rs74597467     8 124108618   C   T 0.0591  3.51108e-03 0.003058781
    ## 6   rs12784431    10 135037575   G   A 0.4235 -3.38136e-04 0.001438439
    ## 7    rs7396827    11  28577867   T   C 0.5379  4.44636e-03 0.001414628
    ## 8     rs453084    11  79594256   G   A 0.6544  4.46990e-03 0.001487613
    ## 9   rs61921502    12  65832468   T   G 0.1581  3.39011e-03 0.001936420
    ## 10  rs77956314    12 117323367   T   C 0.0819  6.01588e-03 0.002557108
    ## 11   rs6060507    20  34198334   A   G 0.1505  4.33102e-03 0.001961044
    ##              Z            P       N     TRAIT
    ## 1   0.86729900 3.857782e-01 1095548 Education
    ## 2   9.09289547 9.643595e-20 1131881 Education
    ## 3  -0.97914740 3.275072e-01 1129371 Education
    ## 4  -0.01232228 9.901685e-01 1131337 Education
    ## 5   1.14786786 2.510231e-01 1069663 Education
    ## 6  -0.23507121 8.141535e-01 1101635 Education
    ## 7   3.14313000 1.671519e-03 1118798 Education
    ## 8   3.00474081 2.658072e-03 1111927 Education
    ## 9   1.75071000 7.999557e-02 1115020 Education
    ## 10  2.35261000 1.864229e-02 1131881 Education
    ## 11  2.20853000 2.720722e-02 1131881 Education

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

**Table 4:** Harmonized Hippocampal Volume and Education datasets

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
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    A       95.4350  4.78178e-03
    ## 2                      A                    G      -24.9666 -3.38136e-04
    ## 3                      T                    C      -23.7430  1.27845e-02
    ## 4                      T                    G      -23.1830 -1.43804e-03
    ## 5                      A                    G      -23.1122  4.46990e-03
    ## 6                      G                    A       28.5005  4.33102e-03
    ## 7                      G                    T      -43.4029  3.39011e-03
    ## 8                      C                    T       23.0675  4.44636e-03
    ## 9                      T                    C       60.7326  3.51108e-03
    ## 10                     C                    T       54.2058  6.01588e-03
    ## 11                     T                    C       36.8599 -2.94191e-05
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.00925926      0.0170  FALSE       FALSE     FALSE     2bH62n
    ## 2    0.41287700      0.4235  FALSE       FALSE     FALSE     2bH62n
    ## 3    0.55968800      0.5358  FALSE       FALSE     FALSE     2bH62n
    ## 4    0.36506200      0.3532  FALSE       FALSE     FALSE     2bH62n
    ## 5    0.60522500      0.6544  FALSE       FALSE     FALSE     2bH62n
    ## 6    0.15883200      0.1505  FALSE       FALSE     FALSE     2bH62n
    ## 7    0.14724000      0.1581  FALSE       FALSE     FALSE     2bH62n
    ## 8    0.53755400      0.5379  FALSE       FALSE     FALSE     2bH62n
    ## 9    0.05642240      0.0591  FALSE       FALSE     FALSE     2bH62n
    ## 10   0.07391780      0.0819  FALSE       FALSE     FALSE     2bH62n
    ## 11   0.11467400      0.0954  FALSE       FALSE     FALSE     2bH62n
    ##    chr.outcome pos.outcome  se.outcome   z.outcome pval.outcome
    ## 1            2    55490139 0.005513406  0.86729900 3.857782e-01
    ## 2           10   135037575 0.001438439 -0.23507121 8.141535e-01
    ## 3            2   162856148 0.001405987  9.09289547 9.643595e-20
    ## 4            5    66084260 0.001468665 -0.97914740 3.275072e-01
    ## 5           11    79594256 0.001487613  3.00474081 2.658072e-03
    ## 6           20    34198334 0.001961044  2.20853000 2.720722e-02
    ## 7           12    65832468 0.001936420  1.75071000 7.999557e-02
    ## 8           11    28577867 0.001414628  3.14313000 1.671519e-03
    ## 9            8   124108618 0.003058781  1.14786786 2.510231e-01
    ## 10          12   117323367 0.002557108  2.35261000 1.864229e-02
    ## 11           6    14266689 0.002387474 -0.01232228 9.901685e-01
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1             1095548 Lee2018education23andMe            TRUE
    ## 2             1101635 Lee2018education23andMe            TRUE
    ## 3             1131881 Lee2018education23andMe            TRUE
    ## 4             1129371 Lee2018education23andMe            TRUE
    ## 5             1111927 Lee2018education23andMe            TRUE
    ## 6             1131881 Lee2018education23andMe            TRUE
    ## 7             1115020 Lee2018education23andMe            TRUE
    ## 8             1118798 Lee2018education23andMe            TRUE
    ## 9             1069663 Lee2018education23andMe            TRUE
    ## 10            1131881 Lee2018education23andMe            TRUE
    ## 11            1131337 Lee2018education23andMe            TRUE
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
    ## 1              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 2              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 3              reported      mGgAQ7      2    TRUE          FALSE 5e-06
    ## 4              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 5              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 6              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 7              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 8              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 9              reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 10             reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ## 11             reported      mGgAQ7      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     3.205489e-06          1.00          TRUE
    ## 2     2.922512e-07          1.00          TRUE
    ## 3               NA            NA            NA
    ## 4     5.293127e-07          1.00          TRUE
    ## 5     3.214450e-05          0.01         FALSE
    ## 6     1.317727e-05          0.66          TRUE
    ## 7     3.298271e-05          0.12          TRUE
    ## 8     1.617108e-05          0.09          TRUE
    ## 9     2.935708e-06          1.00          TRUE
    ## 10    2.422230e-05          0.66          TRUE
    ## 11    1.829987e-06          1.00          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs2268894           2   162856148     2.915e-07 9.643595e-20

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
    ## 1            FALSE   0.01907226 26.59231  0.05 3.726832 0.4882975
    ## 2             TRUE   0.01747943 27.03745  0.05 7.789679 0.7970243

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
Hippocampal Volume on Education. <br>

**Table 6** MR causaul estimates for Hippocampal Volume on Education

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 2      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 3      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 4      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   10 3.312763e-05 1.780928e-05
    ## 2                           Weighted median   10 5.238463e-05 2.730900e-05
    ## 3                             Weighted mode   10 5.265858e-05 4.403126e-05
    ## 4                                  MR Egger   10 4.740911e-05 9.242336e-05
    ##         pval
    ## 1 0.06286673
    ## 2 0.05508332
    ## 3 0.26227827
    ## 4 0.62184271

<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal
Volume versus the association in Education and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 2      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 31.89725    8 9.717176e-05
    ## 2 Inverse variance weighted 32.00900    9 1.984165e-04

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##   egger_intercept          se      pval
    ## 1     -0.00051076 0.003050941 0.8712014

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
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv 5e-06
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          1 39.66002 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 2      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 3      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 4      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)    9 5.190816e-05 1.853283e-05
    ## 2                           Weighted median    9 5.435329e-05 2.782465e-05
    ## 3                             Weighted mode    9 5.252229e-05 5.005945e-05
    ## 4                                  MR Egger    9 1.918767e-06 7.515303e-05
    ##          pval
    ## 1 0.005096418
    ## 2 0.050769565
    ## 3 0.324746361
    ## 4 0.980343645

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ## 2      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 17.30809    7 0.01551403
    ## 2 Inverse variance weighted 18.59568    8 0.01717806

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome       exposure
    ## 1      mGgAQ7     2bH62n Lee2018education23andMe Hilbar2015hipv
    ##   egger_intercept         se      pval
    ## 1     0.001872803 0.00259524 0.4939147

<br>
