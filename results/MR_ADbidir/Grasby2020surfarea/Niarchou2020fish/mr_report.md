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

### Exposure: Cortical Surface Area

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with Cortical Surface Area

    ##           SNP CHROM       POS REF ALT     AF       BETA       SE
    ## 1  rs12630663     3  28007315   T   C 0.4117   632.8110 111.2125
    ## 2  rs34464850     3 141721762   G   C 0.1534  1233.1854 152.7201
    ## 3   rs2301718     4 106009763   G   A 0.2269   737.2212 132.3556
    ## 4    rs386424     5  81092787   T   G 0.3008   656.5430 120.0422
    ## 5   rs7715167     5 170778824   T   C 0.6143   662.7540 119.1375
    ## 6   rs2802295     6 108926496   A   G 0.6207   714.5850 112.9897
    ## 7  rs11759026     6 126792095   A   G 0.2376  1301.5200 134.6156
    ## 8  rs12357321    10  21790476   G   A 0.3206  -698.7452 119.6461
    ## 9   rs1628768    10 105012994   T   C 0.2386   972.9780 132.0048
    ## 10 rs10876864    12  56401085   G   A 0.5774  -628.5901 112.6859
    ## 11 rs10878349    12  66327632   A   G 0.5100 -1039.9900 110.4866
    ## 12 rs79600142    17  43897722   T   C 0.2198 -1696.8300 143.2730
    ##             Z         P     N                 TRAIT
    ## 1    5.690110 1.270e-08 32176 Cortical_Surface_Area
    ## 2    8.074807 6.758e-16 31984 Cortical_Surface_Area
    ## 3    5.570004 2.547e-08 32176 Cortical_Surface_Area
    ## 4    5.469270 4.519e-08 32176 Cortical_Surface_Area
    ## 5    5.562930 2.653e-08 32068 Cortical_Surface_Area
    ## 6    6.324340 2.543e-10 32176 Cortical_Surface_Area
    ## 7    9.668420 4.106e-22 31907 Cortical_Surface_Area
    ## 8   -5.840100 5.217e-09 32176 Cortical_Surface_Area
    ## 9    7.370780 1.696e-13 32176 Cortical_Surface_Area
    ## 10  -5.578250 2.430e-08 31319 Cortical_Surface_Area
    ## 11  -9.412850 4.829e-21 32176 Cortical_Surface_Area
    ## 12 -11.843300 2.331e-32 29435 Cortical_Surface_Area

<br>

### Outcome: Fish and plant related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Fish and plant related diet

    ##           SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1  rs12630663     3  28007315   T   C 0.412671 -8.88751e-04 0.00246678
    ## 2  rs34464850     3 141721762   G   C 0.149975  3.16069e-03 0.00338852
    ## 3   rs2301718     4 106009763   G   A 0.205540  5.79721e-03 0.00302555
    ## 4    rs386424     5  81092787   T   G 0.286770  4.18190e-03 0.00268160
    ## 5   rs7715167     5 170778824   T   C 0.609458 -3.64310e-03 0.00247818
    ## 6   rs2802295     6 108926496   A   G 0.628110 -9.98409e-04 0.00250784
    ## 7  rs11759026     6 126792095   A   G 0.226202 -6.07294e-03 0.00290377
    ## 8  rs12357321    10  21790476   G   A 0.309362 -2.57959e-02 0.00265864
    ## 9   rs1628768    10 105012994   T   C 0.234445  2.93939e-03 0.00286324
    ## 10 rs10876864    12  56401085   G   A 0.573374  8.46242e-05 0.00244257
    ## 11 rs10878349    12  66327632   A   G 0.511359 -3.38912e-03 0.00242705
    ## 12 rs79600142    17  43897722   T   C 0.225207 -9.64357e-03 0.00289405
    ##             Z       P      N           TRAIT
    ## 1  -0.3602880 7.2e-01 335576 fish_plant_diet
    ## 2   0.9327640 3.5e-01 335576 fish_plant_diet
    ## 3   1.9160800 5.5e-02 335576 fish_plant_diet
    ## 4   1.5594800 1.2e-01 335576 fish_plant_diet
    ## 5  -1.4700700 1.4e-01 335576 fish_plant_diet
    ## 6  -0.3981150 6.9e-01 335576 fish_plant_diet
    ## 7  -2.0914000 3.6e-02 335576 fish_plant_diet
    ## 8  -9.7026700 2.9e-22 335576 fish_plant_diet
    ## 9   1.0266000 3.0e-01 335576 fish_plant_diet
    ## 10  0.0346456 9.7e-01 335576 fish_plant_diet
    ## 11 -1.3963900 1.6e-01 335576 fish_plant_diet
    ## 12 -3.3322100 8.6e-04 335576 fish_plant_diet

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

**Table 4:** Harmonized Cortical Surface Area and Fish and plant related
diet datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10876864                      A                     G
    ## 2  rs10878349                      G                     A
    ## 3  rs11759026                      G                     A
    ## 4  rs12357321                      A                     G
    ## 5  rs12630663                      C                     T
    ## 6   rs1628768                      C                     T
    ## 7   rs2301718                      A                     G
    ## 8   rs2802295                      G                     A
    ## 9  rs34464850                      C                     G
    ## 10   rs386424                      G                     T
    ## 11  rs7715167                      C                     T
    ## 12 rs79600142                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    G     -628.5901  8.46242e-05
    ## 2                      G                    A    -1039.9900 -3.38912e-03
    ## 3                      G                    A     1301.5200 -6.07294e-03
    ## 4                      A                    G     -698.7452 -2.57959e-02
    ## 5                      C                    T      632.8110 -8.88751e-04
    ## 6                      C                    T      972.9780  2.93939e-03
    ## 7                      A                    G      737.2212  5.79721e-03
    ## 8                      G                    A      714.5850 -9.98409e-04
    ## 9                      C                    G     1233.1854  3.16069e-03
    ## 10                     G                    T      656.5430  4.18190e-03
    ## 11                     C                    T      662.7540 -3.64310e-03
    ## 12                     C                    T    -1696.8300 -9.64357e-03
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774    0.573374  FALSE       FALSE     FALSE     mQ46rw
    ## 2        0.5100    0.511359  FALSE       FALSE     FALSE     mQ46rw
    ## 3        0.2376    0.226202  FALSE       FALSE     FALSE     mQ46rw
    ## 4        0.3206    0.309362  FALSE       FALSE     FALSE     mQ46rw
    ## 5        0.4117    0.412671  FALSE       FALSE     FALSE     mQ46rw
    ## 6        0.2386    0.234445  FALSE       FALSE     FALSE     mQ46rw
    ## 7        0.2269    0.205540  FALSE       FALSE     FALSE     mQ46rw
    ## 8        0.6207    0.628110  FALSE       FALSE     FALSE     mQ46rw
    ## 9        0.1534    0.149975  FALSE        TRUE     FALSE     mQ46rw
    ## 10       0.3008    0.286770  FALSE       FALSE     FALSE     mQ46rw
    ## 11       0.6143    0.609458  FALSE       FALSE     FALSE     mQ46rw
    ## 12       0.2198    0.225207  FALSE       FALSE     FALSE     mQ46rw
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           12    56401085 0.00244257  0.0346456      9.7e-01
    ## 2           12    66327632 0.00242705 -1.3963900      1.6e-01
    ## 3            6   126792095 0.00290377 -2.0914000      3.6e-02
    ## 4           10    21790476 0.00265864 -9.7026700      2.9e-22
    ## 5            3    28007315 0.00246678 -0.3602880      7.2e-01
    ## 6           10   105012994 0.00286324  1.0266000      3.0e-01
    ## 7            4   106009763 0.00302555  1.9160800      5.5e-02
    ## 8            6   108926496 0.00250784 -0.3981150      6.9e-01
    ## 9            3   141721762 0.00338852  0.9327640      3.5e-01
    ## 10           5    81092787 0.00268160  1.5594800      1.2e-01
    ## 11           5   170778824 0.00247818 -1.4700700      1.4e-01
    ## 12          17    43897722 0.00289405 -3.3322100      8.6e-04
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
    ## 1            12     56401085    112.6859  -5.578250     2.430e-08
    ## 2            12     66327632    110.4866  -9.412850     4.829e-21
    ## 3             6    126792095    134.6156   9.668420     4.106e-22
    ## 4            10     21790476    119.6461  -5.840100     5.217e-09
    ## 5             3     28007315    111.2125   5.690110     1.270e-08
    ## 6            10    105012994    132.0048   7.370780     1.696e-13
    ## 7             4    106009763    132.3556   5.570004     2.547e-08
    ## 8             6    108926496    112.9897   6.324340     2.543e-10
    ## 9             3    141721762    152.7201   8.074807     6.758e-16
    ## 10            5     81092787    120.0422   5.469270     4.519e-08
    ## 11            5    170778824    119.1375   5.562930     2.653e-08
    ## 12           17     43897722    143.2730 -11.843300     2.331e-32
    ##    samplesize.exposure           exposure mr_keep.exposure
    ## 1                31319 Grasby2020surfarea             TRUE
    ## 2                32176 Grasby2020surfarea             TRUE
    ## 3                31907 Grasby2020surfarea             TRUE
    ## 4                32176 Grasby2020surfarea             TRUE
    ## 5                32176 Grasby2020surfarea             TRUE
    ## 6                32176 Grasby2020surfarea             TRUE
    ## 7                32176 Grasby2020surfarea             TRUE
    ## 8                32176 Grasby2020surfarea             TRUE
    ## 9                31984 Grasby2020surfarea             TRUE
    ## 10               32176 Grasby2020surfarea             TRUE
    ## 11               32068 Grasby2020surfarea             TRUE
    ## 12               29435 Grasby2020surfarea             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 2              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 3              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 4              reported      TSuBBM      2    TRUE          FALSE 5e-08
    ## 5              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 6              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 7              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 8              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 9              reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 10             reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 11             reported      TSuBBM      2    TRUE           TRUE 5e-08
    ## 12             reported      TSuBBM      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     1.704950e-06         1.000          TRUE
    ## 2     2.884566e-06         1.000          TRUE
    ## 3     9.830063e-05         0.044         FALSE
    ## 4               NA            NA            NA
    ## 5     4.656429e-06         1.000          TRUE
    ## 6     1.564726e-06         1.000          TRUE
    ## 7     2.151155e-05         1.000          TRUE
    ## 8     6.051908e-06         1.000          TRUE
    ## 9     9.647973e-07         1.000          TRUE
    ## 10    9.652510e-06         1.000          TRUE
    ## 11    2.632066e-05         0.484          TRUE
    ## 12    7.530139e-05         0.110          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Fish and
plant related diet GWAS

    ##          SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs12357321          10    21790476     5.217e-09      2.9e-22

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
    ## 1            FALSE   0.01892177 59.08219  0.05  4.636844 0.5766846
    ## 2             TRUE   0.01623398 55.60801  0.05 10.156363 0.8900777

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
Cortical Surface Area on Fish and plant related diet. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Fish and
plant related diet

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 2      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 3      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 4      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   11 1.842952e-06 8.511748e-07
    ## 2                           Weighted median   11 3.024773e-06 1.282333e-06
    ## 3                             Weighted mode   11 4.126279e-06 1.797062e-06
    ## 4                                  MR Egger   11 5.057269e-06 3.871505e-06
    ##         pval
    ## 1 0.03037344
    ## 2 0.01833394
    ## 3 0.04454706
    ## 4 0.22385279

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Fish and plant related diet and the
corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 2      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 21.36854    9 0.011110843
    ## 2 Inverse variance weighted 23.21735   10 0.009972133

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020fish/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020fish/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##   egger_intercept          se      pval
    ## 1    -0.003256672 0.003690578 0.4004996

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome          outcome           exposure    pt
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 31.40477 0.011

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 2      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 3      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 4      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##                                      method nsnp            b           se
    ## 1 Inverse variance weighted (fixed effects)   10 2.951724e-06 9.208220e-07
    ## 2                           Weighted median   10 3.180554e-06 1.333502e-06
    ## 3                             Weighted mode   10 4.110808e-06 1.630736e-06
    ## 4                                  MR Egger   10 8.619076e-06 2.742340e-06
    ##          pval
    ## 1 0.001348134
    ## 2 0.017073879
    ## 3 0.032724030
    ## 4 0.013743596

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020fish/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ## 2      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##                      method         Q Q_df    Q_pval
    ## 1                  MR Egger  8.263168    8 0.4081946
    ## 2 Inverse variance weighted 13.255999    9 0.1513606

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      TSuBBM     mQ46rw Niarchou2020fish Grasby2020surfarea
    ##   egger_intercept          se       pval
    ## 1    -0.005533215 0.002516705 0.05912335

<br>
