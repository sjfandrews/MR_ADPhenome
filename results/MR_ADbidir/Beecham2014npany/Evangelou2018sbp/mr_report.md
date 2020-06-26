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

### Exposure: Any Neuritic Plaques

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Any Neuritic Plaques

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE         Z
    ## 1   rs34487851     2 106642554   A   G 0.2647 -0.4143 0.0903 -4.588040
    ## 2  rs112833681     3  72020152   T   G 0.0257 -0.9748 0.2039 -4.780770
    ## 3   rs73214476     4  65287903   T   C 0.0118 -1.6678 0.3399 -4.906740
    ## 4   rs62341097     4 174094940   G   A 0.0458 -1.1474 0.1975 -5.809620
    ## 5   rs80125278     6  14334854   T   C 0.0146 -1.5167 0.3246 -4.672520
    ## 6  rs144621483     9 129356304   G   T 0.0172 -1.7657 0.3224 -5.476737
    ## 7    rs9578438    13  22729205   C   T 0.0393 -1.2374 0.2537 -4.877414
    ## 8   rs28479400    15  99995884   A   G 0.0506 -0.7864 0.1647 -4.774740
    ## 9   rs61041336    16  58733162   A   G 0.1531 -0.4512 0.0966 -4.670810
    ## 10   rs4803748    19  45247048   C   T 0.3589 -0.4005 0.0829 -4.831122
    ## 11      rs6857    19  45392254   C   T 0.2661  1.2932 0.1191 10.858102
    ## 12 rs142544282    21  43678066   C   T 0.0108 -2.1080 0.3658 -5.762712
    ##            P    N            TRAIT
    ## 1  4.474e-06 4046 Neuritic_Plaques
    ## 2  1.747e-06 4046 Neuritic_Plaques
    ## 3  9.279e-07 4046 Neuritic_Plaques
    ## 4  6.273e-09 4046 Neuritic_Plaques
    ## 5  2.976e-06 4046 Neuritic_Plaques
    ## 6  4.332e-08 4046 Neuritic_Plaques
    ## 7  1.080e-06 4046 Neuritic_Plaques
    ## 8  1.788e-06 4046 Neuritic_Plaques
    ## 9  3.036e-06 4046 Neuritic_Plaques
    ## 10 1.345e-06 4046 Neuritic_Plaques
    ## 11 1.780e-27 4046 Neuritic_Plaques
    ## 12 8.299e-09 4046 Neuritic_Plaques

<br>

### Outcome: Systolic Blood Pressure

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Any Neuritic Plaques avaliable in
Systolic Blood Pressure

    ##            SNP CHROM       POS REF ALT     AF    BETA     SE          Z
    ## 1   rs34487851     2 106642554   A   G 0.2839  0.0451 0.0345  1.3072500
    ## 2  rs112833681     3  72020152   T   G 0.0256  0.1074 0.1001  1.0729300
    ## 3   rs73214476     4  65287903   T   C 0.0286  0.2452 0.1262  1.9429500
    ## 4   rs62341097     4 174094940   G   A 0.0482 -0.1104 0.0750 -1.4720000
    ## 5   rs80125278     6  14334854   T   C 0.0126 -0.0919 0.1417 -0.6485530
    ## 6  rs144621483     9 129356304   G   T 0.0234  0.1479 0.1066  1.3874296
    ## 7    rs9578438    13  22729205   C   T 0.0350 -0.0179 0.0895 -0.2000000
    ## 8   rs28479400    15  99995884   A   G 0.0520 -0.0131 0.0715 -0.1832170
    ## 9   rs61041336    16  58733162   A   G 0.1481 -0.0263 0.0424 -0.6202830
    ## 10   rs4803748    19  45247048   C   T 0.3895 -0.1282 0.0318 -4.0314465
    ## 11      rs6857    19  45392254   C   T 0.1681  0.1564 0.0412  3.7961165
    ## 12 rs142544282    21  43678066   C   T 0.0101 -0.0841 0.1619 -0.5194565
    ##            P      N                   TRAIT
    ## 1  1.906e-01 736049 Systolic_Blood_Pressure
    ## 2  2.833e-01 735551 Systolic_Blood_Pressure
    ## 3  5.196e-02 718397 Systolic_Blood_Pressure
    ## 4  1.409e-01 730036 Systolic_Blood_Pressure
    ## 5  5.168e-01 729912 Systolic_Blood_Pressure
    ## 6  1.651e-01 733191 Systolic_Blood_Pressure
    ## 7  8.411e-01 721652 Systolic_Blood_Pressure
    ## 8  8.546e-01 743705 Systolic_Blood_Pressure
    ## 9  5.353e-01 745818 Systolic_Blood_Pressure
    ## 10 5.654e-05 741195 Systolic_Blood_Pressure
    ## 11 1.471e-04 740416 Systolic_Blood_Pressure
    ## 12 6.036e-01 708456 Systolic_Blood_Pressure

<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure

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

**Table 4:** Harmonized Any Neuritic Plaques and Systolic Blood Pressure
datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1  rs112833681                      G                     T
    ## 2  rs142544282                      T                     C
    ## 3  rs144621483                      T                     G
    ## 4   rs28479400                      G                     A
    ## 5   rs34487851                      G                     A
    ## 6    rs4803748                      T                     C
    ## 7   rs61041336                      G                     A
    ## 8   rs62341097                      A                     G
    ## 9       rs6857                      T                     C
    ## 10  rs73214476                      C                     T
    ## 11  rs80125278                      C                     T
    ## 12   rs9578438                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    T       -0.9748       0.1074
    ## 2                      T                    C       -2.1080      -0.0841
    ## 3                      T                    G       -1.7657       0.1479
    ## 4                      G                    A       -0.7864      -0.0131
    ## 5                      G                    A       -0.4143       0.0451
    ## 6                      T                    C       -0.4005      -0.1282
    ## 7                      G                    A       -0.4512      -0.0263
    ## 8                      A                    G       -1.1474      -0.1104
    ## 9                      T                    C        1.2932       0.1564
    ## 10                     C                    T       -1.6678       0.2452
    ## 11                     C                    T       -1.5167      -0.0919
    ## 12                     T                    C       -1.2374      -0.0179
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0257      0.0256  FALSE       FALSE     FALSE     xQatId
    ## 2        0.0108      0.0101  FALSE       FALSE     FALSE     xQatId
    ## 3        0.0172      0.0234  FALSE       FALSE     FALSE     xQatId
    ## 4        0.0506      0.0520  FALSE       FALSE     FALSE     xQatId
    ## 5        0.2647      0.2839  FALSE       FALSE     FALSE     xQatId
    ## 6        0.3589      0.3895  FALSE       FALSE     FALSE     xQatId
    ## 7        0.1531      0.1481  FALSE       FALSE     FALSE     xQatId
    ## 8        0.0458      0.0482  FALSE       FALSE     FALSE     xQatId
    ## 9        0.2661      0.1681  FALSE       FALSE     FALSE     xQatId
    ## 10       0.0118      0.0286  FALSE       FALSE     FALSE     xQatId
    ## 11       0.0146      0.0126  FALSE       FALSE     FALSE     xQatId
    ## 12       0.0393      0.0350  FALSE       FALSE     FALSE     xQatId
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1            3    72020152     0.1001  1.0729300    2.833e-01
    ## 2           21    43678066     0.1619 -0.5194565    6.036e-01
    ## 3            9   129356304     0.1066  1.3874296    1.651e-01
    ## 4           15    99995884     0.0715 -0.1832170    8.546e-01
    ## 5            2   106642554     0.0345  1.3072500    1.906e-01
    ## 6           19    45247048     0.0318 -4.0314465    5.654e-05
    ## 7           16    58733162     0.0424 -0.6202830    5.353e-01
    ## 8            4   174094940     0.0750 -1.4720000    1.409e-01
    ## 9           19    45392254     0.0412  3.7961165    1.471e-04
    ## 10           4    65287903     0.1262  1.9429500    5.196e-02
    ## 11           6    14334854     0.1417 -0.6485530    5.168e-01
    ## 12          13    22729205     0.0895 -0.2000000    8.411e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              735551 Evangelou2018sbp            TRUE            reported
    ## 2              708456 Evangelou2018sbp            TRUE            reported
    ## 3              733191 Evangelou2018sbp            TRUE            reported
    ## 4              743705 Evangelou2018sbp            TRUE            reported
    ## 5              736049 Evangelou2018sbp            TRUE            reported
    ## 6              741195 Evangelou2018sbp            TRUE            reported
    ## 7              745818 Evangelou2018sbp            TRUE            reported
    ## 8              730036 Evangelou2018sbp            TRUE            reported
    ## 9              740416 Evangelou2018sbp            TRUE            reported
    ## 10             718397 Evangelou2018sbp            TRUE            reported
    ## 11             729912 Evangelou2018sbp            TRUE            reported
    ## 12             721652 Evangelou2018sbp            TRUE            reported
    ##    chr.exposure pos.exposure se.exposure z.exposure pval.exposure
    ## 1             3     72020152      0.2039  -4.780770     1.747e-06
    ## 2            21     43678066      0.3658  -5.762712     8.299e-09
    ## 3             9    129356304      0.3224  -5.476737     4.332e-08
    ## 4            15     99995884      0.1647  -4.774740     1.788e-06
    ## 5             2    106642554      0.0903  -4.588040     4.474e-06
    ## 6            19     45247048      0.0829  -4.831122     1.345e-06
    ## 7            16     58733162      0.0966  -4.670810     3.036e-06
    ## 8             4    174094940      0.1975  -5.809620     6.273e-09
    ## 9            19     45392254      0.1191  10.858102     1.780e-27
    ## 10            4     65287903      0.3399  -4.906740     9.279e-07
    ## 11            6     14334854      0.3246  -4.672520     2.976e-06
    ## 12           13     22729205      0.2537  -4.877414     1.080e-06
    ##    samplesize.exposure         exposure mr_keep.exposure
    ## 1                 4046 Beecham2014npany             TRUE
    ## 2                 4046 Beecham2014npany             TRUE
    ## 3                 4046 Beecham2014npany             TRUE
    ## 4                 4046 Beecham2014npany             TRUE
    ## 5                 4046 Beecham2014npany             TRUE
    ## 6                 4046 Beecham2014npany             TRUE
    ## 7                 4046 Beecham2014npany             TRUE
    ## 8                 4046 Beecham2014npany             TRUE
    ## 9                 4046 Beecham2014npany             TRUE
    ## 10                4046 Beecham2014npany             TRUE
    ## 11                4046 Beecham2014npany             TRUE
    ## 12                4046 Beecham2014npany             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 2              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 3              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 4              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 5              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 6              reported      kZpR3K      2    TRUE          FALSE 5e-06
    ## 7              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 8              reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 9              reported      kZpR3K      2    TRUE          FALSE 5e-06
    ## 10             reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 11             reported      kZpR3K      2    TRUE           TRUE 5e-06
    ## 12             reported      kZpR3K      2    TRUE           TRUE 5e-06
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
    ## 12              NA            NA          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Systolic
Blood Pressure GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs4803748          19    45247048     1.345e-06    5.654e-05
    ## 2    rs6857          19    45392254     1.780e-27    1.471e-04

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
    ## 1            FALSE   0.06448464 27.81307  0.05 0.7461995 0.1388827

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

Table 6 presents the MR causal estimates of genetically predicted Any
Neuritic Plaques on Systolic Blood Pressure. <br>

**Table 6** MR causaul estimates for Any Neuritic Plaques on Systolic
Blood Pressure

    ##   id.exposure id.outcome          outcome         exposure
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ## 2      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ## 3      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ## 4      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ##                                      method nsnp           b         se
    ## 1 Inverse variance weighted (fixed effects)   10 -0.01667050 0.02475703
    ## 2                           Weighted median   10  0.01517012 0.03495662
    ## 3                             Weighted mode   10  0.04489219 0.06508759
    ## 4                                  MR Egger   10 -0.01165718 0.05631702
    ##        pval
    ## 1 0.5007155
    ## 2 0.6643104
    ## 3 0.5077628
    ## 4 0.8411875

<br>

Figure 1 illustrates the SNP-specific associations with Any Neuritic
Plaques versus the association in Systolic Blood Pressure and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome         exposure
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ## 2      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 11.40662    8 0.1797067
    ## 2 Inverse variance weighted 11.42221    9 0.2478744

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Evangelou2018sbp/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Evangelou2018sbp/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome         exposure egger_intercept
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany     -0.00503452
    ##           se     pval
    ## 1 0.04813705 0.919278

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome         exposure    pt
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 14.57706 0.218

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome         exposure   method nsnp
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Evangelou2018sbp/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome         exposure   method  Q
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome         exposure   method
    ## 1      kZpR3K     xQatId Evangelou2018sbp Beecham2014npany mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
