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

### Outcome: Meat related diet

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in
Meat related diet

    ##           SNP CHROM       POS REF ALT       AF         BETA         SE
    ## 1  rs12630663     3  28007315   T   C 0.412671 -0.002729030 0.00247806
    ## 2  rs34464850     3 141721762   G   C 0.149975 -0.001105040 0.00340403
    ## 3   rs2301718     4 106009763   G   A 0.205540 -0.001792010 0.00303872
    ## 4    rs386424     5  81092787   T   G 0.286770 -0.007103210 0.00269281
    ## 5   rs7715167     5 170778824   T   C 0.609458 -0.000290727 0.00248855
    ## 6   rs2802295     6 108926496   A   G 0.628110  0.004565070 0.00251913
    ## 7  rs11759026     6 126792095   A   G 0.226202 -0.001433550 0.00291684
    ## 8  rs12357321    10  21790476   G   A 0.309362  0.001885290 0.00266939
    ## 9   rs1628768    10 105012994   T   C 0.234445 -0.006437830 0.00287482
    ## 10 rs10876864    12  56401085   G   A 0.573374  0.006891750 0.00245253
    ## 11 rs10878349    12  66327632   A   G 0.511359 -0.000900842 0.00243694
    ## 12 rs79600142    17  43897722   T   C 0.225207 -0.010900800 0.00290540
    ##            Z       P      N           TRAIT
    ## 1  -1.101280 0.27000 335576 fish_plant_diet
    ## 2  -0.324627 0.75000 335576 fish_plant_diet
    ## 3  -0.589725 0.56000 335576 fish_plant_diet
    ## 4  -2.637840 0.00830 335576 fish_plant_diet
    ## 5  -0.116826 0.91000 335576 fish_plant_diet
    ## 6   1.812160 0.07000 335576 fish_plant_diet
    ## 7  -0.491474 0.62000 335576 fish_plant_diet
    ## 8   0.706262 0.48000 335576 fish_plant_diet
    ## 9  -2.239390 0.02500 335576 fish_plant_diet
    ## 10  2.810060 0.00500 335576 fish_plant_diet
    ## 11 -0.369661 0.71000 335576 fish_plant_diet
    ## 12 -3.751910 0.00018 335576 fish_plant_diet

<br>

**Table 3:** Proxy SNPs for Meat related diet

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

**Table 4:** Harmonized Cortical Surface Area and Meat related diet
datasets

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
    ## 1                      A                    G     -628.5901  0.006891750
    ## 2                      G                    A    -1039.9900 -0.000900842
    ## 3                      G                    A     1301.5200 -0.001433550
    ## 4                      A                    G     -698.7452  0.001885290
    ## 5                      C                    T      632.8110 -0.002729030
    ## 6                      C                    T      972.9780 -0.006437830
    ## 7                      A                    G      737.2212 -0.001792010
    ## 8                      G                    A      714.5850  0.004565070
    ## 9                      C                    G     1233.1854 -0.001105040
    ## 10                     G                    T      656.5430 -0.007103210
    ## 11                     C                    T      662.7540 -0.000290727
    ## 12                     C                    T    -1696.8300 -0.010900800
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774    0.573374  FALSE       FALSE     FALSE     CM4PRt
    ## 2        0.5100    0.511359  FALSE       FALSE     FALSE     CM4PRt
    ## 3        0.2376    0.226202  FALSE       FALSE     FALSE     CM4PRt
    ## 4        0.3206    0.309362  FALSE       FALSE     FALSE     CM4PRt
    ## 5        0.4117    0.412671  FALSE       FALSE     FALSE     CM4PRt
    ## 6        0.2386    0.234445  FALSE       FALSE     FALSE     CM4PRt
    ## 7        0.2269    0.205540  FALSE       FALSE     FALSE     CM4PRt
    ## 8        0.6207    0.628110  FALSE       FALSE     FALSE     CM4PRt
    ## 9        0.1534    0.149975  FALSE        TRUE     FALSE     CM4PRt
    ## 10       0.3008    0.286770  FALSE       FALSE     FALSE     CM4PRt
    ## 11       0.6143    0.609458  FALSE       FALSE     FALSE     CM4PRt
    ## 12       0.2198    0.225207  FALSE       FALSE     FALSE     CM4PRt
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1           12    56401085 0.00245253  2.810060      0.00500
    ## 2           12    66327632 0.00243694 -0.369661      0.71000
    ## 3            6   126792095 0.00291684 -0.491474      0.62000
    ## 4           10    21790476 0.00266939  0.706262      0.48000
    ## 5            3    28007315 0.00247806 -1.101280      0.27000
    ## 6           10   105012994 0.00287482 -2.239390      0.02500
    ## 7            4   106009763 0.00303872 -0.589725      0.56000
    ## 8            6   108926496 0.00251913  1.812160      0.07000
    ## 9            3   141721762 0.00340403 -0.324627      0.75000
    ## 10           5    81092787 0.00269281 -2.637840      0.00830
    ## 11           5   170778824 0.00248855 -0.116826      0.91000
    ## 12          17    43897722 0.00290540 -3.751910      0.00018
    ##    samplesize.outcome          outcome mr_keep.outcome pval_origin.outcome
    ## 1              335576 Niarchou2020meat            TRUE            reported
    ## 2              335576 Niarchou2020meat            TRUE            reported
    ## 3              335576 Niarchou2020meat            TRUE            reported
    ## 4              335576 Niarchou2020meat            TRUE            reported
    ## 5              335576 Niarchou2020meat            TRUE            reported
    ## 6              335576 Niarchou2020meat            TRUE            reported
    ## 7              335576 Niarchou2020meat            TRUE            reported
    ## 8              335576 Niarchou2020meat            TRUE            reported
    ## 9              335576 Niarchou2020meat            TRUE            reported
    ## 10             335576 Niarchou2020meat            TRUE            reported
    ## 11             335576 Niarchou2020meat            TRUE            reported
    ## 12             335576 Niarchou2020meat            TRUE            reported
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
    ## 1              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 2              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 3              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 4              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 5              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 6              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 7              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 8              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 9              reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 10             reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 11             reported      vcCxdO      2    TRUE           TRUE 5e-08
    ## 12             reported      vcCxdO      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     5.060793e-05         0.036         FALSE
    ## 2     1.504708e-06             1          TRUE
    ## 3     2.006655e-06             1          TRUE
    ## 4     3.457611e-06             1          TRUE
    ## 5     7.563273e-06             1          TRUE
    ## 6     4.654184e-05         0.156          TRUE
    ## 7     3.036646e-06             1          TRUE
    ## 8     2.459984e-05         0.576          TRUE
    ## 9     9.875478e-07             1          TRUE
    ## 10    5.325323e-05         0.072          TRUE
    ## 11    3.671230e-08             1          TRUE
    ## 12    2.148371e-04        <0.012         FALSE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Meat related
diet GWAS

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

    ##   outliers_removed pve.exposure        F Alpha       NCP      Power
    ## 1            FALSE   0.01995528 57.17537  0.05 0.1005793 0.06159986
    ## 2             TRUE   0.01468741 50.23141  0.05 2.8433754 0.39227804

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
Cortical Surface Area on Meat related diet. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on Meat
related diet

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 2      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 3      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 4      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   12 -1.638288e-07
    ## 2                           Weighted median   12 -7.954985e-07
    ## 3                             Weighted mode   12 -8.901639e-07
    ## 4                                  MR Egger   12  9.163063e-06
    ##             se       pval
    ## 1 8.341388e-07 0.84429343
    ## 2 1.410104e-06 0.57265780
    ## 3 2.614436e-06 0.73990847
    ## 4 3.835262e-06 0.03801296

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in Meat related diet and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 2      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 23.84982   10 8.009150e-03
    ## 2 Inverse variance weighted 39.74829   11 3.949989e-05

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020meat/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020meat/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##   egger_intercept          se       pval
    ## 1    -0.009251796 0.003583364 0.02732829

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
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          2 53.34238 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 2      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 3      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 4      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   10 -1.656033e-06
    ## 2                           Weighted median   10 -1.028899e-06
    ## 3                             Weighted mode   10 -8.155660e-07
    ## 4                                  MR Egger   10  8.245637e-07
    ##             se       pval
    ## 1 9.851177e-07 0.09275299
    ## 2 1.350217e-06 0.44604501
    ## 3 1.700629e-06 0.64297414
    ## 4 5.078780e-06 0.87505244

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Niarchou2020meat/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ## 2      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 14.52286    8 0.06911461
    ## 2 Inverse variance weighted 14.98768    9 0.09127498

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome          outcome           exposure
    ## 1      vcCxdO     CM4PRt Niarchou2020meat Grasby2020surfarea
    ##   egger_intercept          se     pval
    ## 1    -0.002235602 0.004418102 0.626496

<br>
