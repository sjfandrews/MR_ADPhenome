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

### Outcome: Fish and plant related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Any Neuritic Plaques avaliable in Fish
and plant related diet

    ##            SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1   rs34487851     2 106642554   A   G 0.278296  0.000550056 0.00275297
    ## 2  rs112833681     3  72020152   T   G 0.023618 -0.011871600 0.00797197
    ## 3   rs73214476     4  65287903   T   C 0.014797  0.001239520 0.01001050
    ## 4   rs62341097     4 174094940   G   A 0.051456  0.001303220 0.00547487
    ## 5   rs80125278     6  14334854   T   C 0.011921  0.024369400 0.01114180
    ## 6  rs144621483     9 129356304   G   T 0.022795 -0.005928140 0.00812452
    ## 7    rs9578438    13  22729205   C   T 0.032383 -0.004323880 0.00682936
    ## 8   rs28479400    15  99995884   A   G 0.044611  0.009503000 0.00592716
    ## 9   rs61041336    16  58733162   A   G 0.146544  0.008519000 0.00342798
    ## 10   rs4803748    19  45247048   C   T 0.380281 -0.005931380 0.00251993
    ## 11      rs6857    19  45392254   C   T 0.171238  0.020313600 0.00321643
    ## 12 rs142544282    21  43678066   C   T 0.009785 -0.020322400 0.01229940
    ##            Z       P      N           TRAIT
    ## 1   0.199805 8.4e-01 335576 fish_plant_diet
    ## 2  -1.489170 1.4e-01 335576 fish_plant_diet
    ## 3   0.123822 9.0e-01 335576 fish_plant_diet
    ## 4   0.238037 8.1e-01 335576 fish_plant_diet
    ## 5   2.187200 2.9e-02 335576 fish_plant_diet
    ## 6  -0.729660 4.7e-01 335576 fish_plant_diet
    ## 7  -0.633131 5.3e-01 335576 fish_plant_diet
    ## 8   1.603300 1.1e-01 335576 fish_plant_diet
    ## 9   2.485140 1.3e-02 335576 fish_plant_diet
    ## 10 -2.353790 1.9e-02 335576 fish_plant_diet
    ## 11  6.315570 2.7e-10 335576 fish_plant_diet
    ## 12 -1.652310 9.8e-02 335576 fish_plant_diet

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

**Table 4:** Harmonized Any Neuritic Plaques and Fish and plant related
diet datasets

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
    ## 1                      G                    T       -0.9748 -0.011871600
    ## 2                      T                    C       -2.1080 -0.020322400
    ## 3                      T                    G       -1.7657 -0.005928140
    ## 4                      G                    A       -0.7864  0.009503000
    ## 5                      G                    A       -0.4143  0.000550056
    ## 6                      T                    C       -0.4005 -0.005931380
    ## 7                      G                    A       -0.4512  0.008519000
    ## 8                      A                    G       -1.1474  0.001303220
    ## 9                      T                    C        1.2932  0.020313600
    ## 10                     C                    T       -1.6678  0.001239520
    ## 11                     C                    T       -1.5167  0.024369400
    ## 12                     T                    C       -1.2374 -0.004323880
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0257    0.023618  FALSE       FALSE     FALSE     k9Bf1S
    ## 2        0.0108    0.009785  FALSE       FALSE     FALSE     k9Bf1S
    ## 3        0.0172    0.022795  FALSE       FALSE     FALSE     k9Bf1S
    ## 4        0.0506    0.044611  FALSE       FALSE     FALSE     k9Bf1S
    ## 5        0.2647    0.278296  FALSE       FALSE     FALSE     k9Bf1S
    ## 6        0.3589    0.380281  FALSE       FALSE     FALSE     k9Bf1S
    ## 7        0.1531    0.146544  FALSE       FALSE     FALSE     k9Bf1S
    ## 8        0.0458    0.051456  FALSE       FALSE     FALSE     k9Bf1S
    ## 9        0.2661    0.171238  FALSE       FALSE     FALSE     k9Bf1S
    ## 10       0.0118    0.014797  FALSE       FALSE     FALSE     k9Bf1S
    ## 11       0.0146    0.011921  FALSE       FALSE     FALSE     k9Bf1S
    ## 12       0.0393    0.032383  FALSE       FALSE     FALSE     k9Bf1S
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1            3    72020152 0.00797197 -1.489170      1.4e-01
    ## 2           21    43678066 0.01229940 -1.652310      9.8e-02
    ## 3            9   129356304 0.00812452 -0.729660      4.7e-01
    ## 4           15    99995884 0.00592716  1.603300      1.1e-01
    ## 5            2   106642554 0.00275297  0.199805      8.4e-01
    ## 6           19    45247048 0.00251993 -2.353790      1.9e-02
    ## 7           16    58733162 0.00342798  2.485140      1.3e-02
    ## 8            4   174094940 0.00547487  0.238037      8.1e-01
    ## 9           19    45392254 0.00321643  6.315570      2.7e-10
    ## 10           4    65287903 0.01001050  0.123822      9.0e-01
    ## 11           6    14334854 0.01114180  2.187200      2.9e-02
    ## 12          13    22729205 0.00682936 -0.633131      5.3e-01
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020fish            TRUE            reported
    ## 2              335576 Niarchou2020fish            TRUE            reported
    ## 3              335576 Niarchou2020fish            TRUE            reported
    ## 4              335576 Niarchou2020fish            TRUE            reported
    ## 5              335576 Niarchou2020fish            TRUE            reported
    ## 6              335576 Niarchou2020fish            TRUE            reported
    ## 7              335576 Niarchou2020fish            TRUE            reported
    ## 8              335576 Niarchou2020fish            TRUE            reported
    ## 9              335576 Niarchou2020fish            TRUE            reported
    ## 10             335576 Niarchou2020fish            TRUE            reported
    ## 11             335576 Niarchou2020fish            TRUE            reported
    ## 12             335576 Niarchou2020fish            TRUE            reported
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
    ## 1              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 2              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 3              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 4              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 5              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 6              reported      EkMuwa      2    TRUE          FALSE 5e-06
    ## 7              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 8              reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 9              reported      EkMuwa      2    TRUE          FALSE 5e-06
    ## 10             reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 11             reported      EkMuwa      2    TRUE           TRUE 5e-06
    ## 12             reported      EkMuwa      2    TRUE           TRUE 5e-06
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.773690e-04          1.00          TRUE
    ## 2     6.009239e-04          0.52          TRUE
    ## 3     7.637781e-05          1.00          TRUE
    ## 4     9.108087e-05          1.00          TRUE
    ## 5     7.216060e-08          1.00          TRUE
    ## 6               NA            NA            NA
    ## 7     7.647135e-05          0.15          TRUE
    ## 8     3.033613e-07          1.00          TRUE
    ## 9               NA            NA            NA
    ## 10    3.425946e-10          1.00          TRUE
    ## 11    6.228228e-04          0.27          TRUE
    ## 12    3.538724e-05          1.00          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Fish and
plant related diet GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs4803748          19    45247048     1.345e-06      1.9e-02
    ## 2    rs6857          19    45392254     1.780e-27      2.7e-10

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.06448464 27.81307  0.05 0.2289258 0.07661211

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
Neuritic Plaques on Fish and plant related diet. <br>

**Table 6** MR causaul estimates for Any Neuritic Plaques on Fish and
plant related diet

    ##   id.exposure id.outcome          outcome         exposure
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ## 2      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ## 3      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ## 4      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   10 -0.0007332404 0.001916801
    ## 2                           Weighted median   10 -0.0002736145 0.002662907
    ## 3                             Weighted mode   10  0.0016710681 0.003206573
    ## 4                                  MR Egger   10  0.0054792543 0.005080848
    ##        pval
    ## 1 0.7020657
    ## 2 0.9181611
    ## 3 0.6148492
    ## 4 0.3122886

<br>

Figure 1 illustrates the SNP-specific associations with Any Neuritic
Plaques versus the association in Fish and plant related diet and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ## 2      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 15.40950    8 0.05165534
    ## 2 Inverse variance weighted 19.37692    9 0.02217209

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Niarchou2020fish/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Niarchou2020fish/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome         exposure egger_intercept
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany    -0.006377277
    ##            se      pval
    ## 1 0.004443554 0.1891551

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
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany 5e-06
    ##   outliers_removed n_outliers  RSSobs  pval
    ## 1            FALSE          0 22.8161 0.035

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome         exposure   method nsnp
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany mrpresso   NA
    ##    b se pval
    ## 1 NA NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome         exposure   method  Q
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany mrpresso NA
    ##   Q_df Q_pval
    ## 1   NA     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome         exposure   method
    ## 1      EkMuwa     k9Bf1S Niarchou2020fish Beecham2014npany mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
