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

### Outcome: HDL cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in HDL
cholesterol

    ##           SNP CHROM       POS  REF  ALT       AF    BETA     SE          Z
    ## 1  rs12630663     3  28007315    T    C 0.374819  0.0022 0.0049  0.4489796
    ## 2  rs34464850    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 3   rs2301718     4 106009763    G    A 0.281329 -0.0062 0.0056 -1.1071400
    ## 4    rs386424     5  81092787    T    G 0.354704  0.0057 0.0052  1.0961538
    ## 5   rs7715167     5 170778824    T    C 0.649726  0.0045 0.0053  0.8490566
    ## 6   rs2802295    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 7  rs11759026    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 8  rs12357321    10  21790476    G    A 0.305707 -0.0069 0.0053 -1.3018900
    ## 9   rs1628768    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 10 rs10876864    12  56401085    G    A 0.610867 -0.0050 0.0048 -1.0416700
    ## 11 rs10878349    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 12 rs79600142    NA        NA <NA> <NA>       NA      NA     NA         NA
    ##         P     N           TRAIT
    ## 1  0.8980 94311 HDL_Cholesterol
    ## 2      NA    NA            <NA>
    ## 3  0.7018 94232 HDL_Cholesterol
    ## 4  0.1587 94311 HDL_Cholesterol
    ## 5  0.2775 94311 HDL_Cholesterol
    ## 6      NA    NA            <NA>
    ## 7      NA    NA            <NA>
    ## 8  0.1700 94311 HDL_Cholesterol
    ## 9      NA    NA            <NA>
    ## 10 0.1267 94311 HDL_Cholesterol
    ## 11     NA    NA            <NA>
    ## 12     NA    NA            <NA>

<br>

**Table 3:** Proxy SNPs for HDL cholesterol

    ##   target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1 rs34464850 rs2271386 1.000000 1.000000 CA/GG  NA     3 141712708
    ## 2  rs2802295 rs2253310 1.000000 1.000000 AC/GG  NA     6 108888593
    ## 3  rs1628768 rs6584545 0.973962 0.994692 CA/TT  NA    10 104999266
    ## 4 rs10878349 rs1038196 0.996002 1.000000 AG/GC  NA    12  66343400
    ## 5 rs79600142  rs436667 1.000000 1.000000 CT/TC  NA    17  43709415
    ## 6 rs11759026      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy       AF    BETA     SE           Z      P        N
    ## 1         G         A 0.151945  0.0072 0.0065  1.10769231 0.2140 94309.00
    ## 2         C         G 0.561499 -0.0134 0.0049 -2.73469000 0.0119 91278.00
    ## 3         A         T 0.790532  0.0022 0.0055  0.40000000 0.7550 92718.94
    ## 4         G         C 0.467912  0.0000 0.0048  0.00000000 0.9341 94311.00
    ## 5         C         T 0.146757  0.0005 0.0060  0.08333333 0.5358 91319.00
    ## 6      <NA>      <NA>       NA      NA     NA          NA     NA       NA
    ##             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 HDL_Cholesterol    C         A    G         G    C    G          TRUE
    ## 2 HDL_Cholesterol    A         C    G         G    G    A          TRUE
    ## 3 HDL_Cholesterol    C         A    T         T    T    C          TRUE
    ## 4 HDL_Cholesterol    A         G    G         C    G    A          TRUE
    ## 5 HDL_Cholesterol    C         T    T         C    C    T          TRUE
    ## 6            <NA> <NA>      <NA> <NA>      <NA> <NA> <NA>            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Cortical Surface Area and HDL cholesterol
datasets

    ##           SNP effect_allele.exposure other_allele.exposure
    ## 1  rs10876864                      A                     G
    ## 2  rs10878349                      G                     A
    ## 3  rs12357321                      A                     G
    ## 4  rs12630663                      C                     T
    ## 5   rs1628768                      C                     T
    ## 6   rs2301718                      A                     G
    ## 7   rs2802295                      G                     A
    ## 8  rs34464850                      C                     G
    ## 9    rs386424                      G                     T
    ## 10  rs7715167                      C                     T
    ## 11 rs79600142                      C                     T
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      A                    G     -628.5901      -0.0050
    ## 2                      G                    A    -1039.9900       0.0000
    ## 3                      A                    G     -698.7452      -0.0069
    ## 4                      C                    T      632.8110       0.0022
    ## 5                      C                    T      972.9780      -0.0022
    ## 6                      A                    G      737.2212      -0.0062
    ## 7                      G                    A      714.5850      -0.0134
    ## 8                      C                    G     1233.1854       0.0072
    ## 9                      G                    T      656.5430       0.0057
    ## 10                     C                    T      662.7540       0.0045
    ## 11                     C                    T    -1696.8300       0.0005
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774    0.610867  FALSE       FALSE     FALSE     tKDVya
    ## 2        0.5100    0.467912  FALSE       FALSE     FALSE     tKDVya
    ## 3        0.3206    0.305707  FALSE       FALSE     FALSE     tKDVya
    ## 4        0.4117    0.374819  FALSE       FALSE     FALSE     tKDVya
    ## 5        0.2386    0.209468  FALSE       FALSE     FALSE     tKDVya
    ## 6        0.2269    0.281329  FALSE       FALSE     FALSE     tKDVya
    ## 7        0.6207    0.561499  FALSE       FALSE     FALSE     tKDVya
    ## 8        0.1534    0.151945  FALSE        TRUE     FALSE     tKDVya
    ## 9        0.3008    0.354704  FALSE       FALSE     FALSE     tKDVya
    ## 10       0.6143    0.649726  FALSE       FALSE     FALSE     tKDVya
    ## 11       0.2198    0.146757  FALSE       FALSE     FALSE     tKDVya
    ##    chr.outcome pos.outcome se.outcome   z.outcome pval.outcome
    ## 1           12    56401085     0.0048 -1.04167000       0.1267
    ## 2           12    66343400     0.0048  0.00000000       0.9341
    ## 3           10    21790476     0.0053 -1.30189000       0.1700
    ## 4            3    28007315     0.0049  0.44897959       0.8980
    ## 5           10   104999266     0.0055  0.40000000       0.7550
    ## 6            4   106009763     0.0056 -1.10714000       0.7018
    ## 7            6   108888593     0.0049 -2.73469000       0.0119
    ## 8            3   141712708     0.0065  1.10769231       0.2140
    ## 9            5    81092787     0.0052  1.09615385       0.1587
    ## 10           5   170778824     0.0053  0.84905660       0.2775
    ## 11          17    43709415     0.0060  0.08333333       0.5358
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1            94311.00 Willer2013hdl            TRUE            reported
    ## 2            94311.00 Willer2013hdl            TRUE            reported
    ## 3            94311.00 Willer2013hdl            TRUE            reported
    ## 4            94311.00 Willer2013hdl            TRUE            reported
    ## 5            92718.94 Willer2013hdl            TRUE            reported
    ## 6            94232.00 Willer2013hdl            TRUE            reported
    ## 7            91278.00 Willer2013hdl            TRUE            reported
    ## 8            94309.00 Willer2013hdl            TRUE            reported
    ## 9            94311.00 Willer2013hdl            TRUE            reported
    ## 10           94311.00 Willer2013hdl            TRUE            reported
    ## 11           91319.00 Willer2013hdl            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>              <NA>
    ## 2           TRUE         rs10878349         rs1038196                 G
    ## 3             NA               <NA>              <NA>              <NA>
    ## 4             NA               <NA>              <NA>              <NA>
    ## 5           TRUE          rs1628768         rs6584545                 T
    ## 6             NA               <NA>              <NA>              <NA>
    ## 7           TRUE          rs2802295         rs2253310                 G
    ## 8           TRUE         rs34464850         rs2271386                 C
    ## 9             NA               <NA>              <NA>              <NA>
    ## 10            NA               <NA>              <NA>              <NA>
    ## 11          TRUE         rs79600142          rs436667                 C
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>             <NA>             <NA>           12
    ## 2                  A                C                G           12
    ## 3               <NA>             <NA>             <NA>           10
    ## 4               <NA>             <NA>             <NA>            3
    ## 5                  C                T                A           10
    ## 6               <NA>             <NA>             <NA>            4
    ## 7                  A                G                C            6
    ## 8                  G                A                G            3
    ## 9               <NA>             <NA>             <NA>            5
    ## 10              <NA>             <NA>             <NA>            5
    ## 11                 T                T                C           17
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      56401085    112.6859  -5.578250     2.430e-08               31319
    ## 2      66327632    110.4866  -9.412850     4.829e-21               32176
    ## 3      21790476    119.6461  -5.840100     5.217e-09               32176
    ## 4      28007315    111.2125   5.690110     1.270e-08               32176
    ## 5     105012994    132.0048   7.370780     1.696e-13               32176
    ## 6     106009763    132.3556   5.570004     2.547e-08               32176
    ## 7     108926496    112.9897   6.324340     2.543e-10               32176
    ## 8     141721762    152.7201   8.074807     6.758e-16               31984
    ## 9      81092787    120.0422   5.469270     4.519e-08               32176
    ## 10    170778824    119.1375   5.562930     2.653e-08               32068
    ## 11     43897722    143.2730 -11.843300     2.331e-32               29435
    ##              exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 2  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 3  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 4  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 5  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 6  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 7  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 8  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 9  Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 10 Grasby2020surfarea             TRUE             reported      AyFFTu
    ## 11 Grasby2020surfarea             TRUE             reported      AyFFTu
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-08              NA            NA
    ## 2       2    TRUE           TRUE 5e-08              NA            NA
    ## 3       2    TRUE           TRUE 5e-08              NA            NA
    ## 4       2    TRUE           TRUE 5e-08              NA            NA
    ## 5       2    TRUE           TRUE 5e-08              NA            NA
    ## 6       2    TRUE           TRUE 5e-08              NA            NA
    ## 7       2    TRUE           TRUE 5e-08              NA            NA
    ## 8       2    TRUE           TRUE 5e-08              NA            NA
    ## 9       2    TRUE           TRUE 5e-08              NA            NA
    ## 10      2    TRUE           TRUE 5e-08              NA            NA
    ## 11      2    TRUE           TRUE 5e-08              NA            NA
    ##    mrpresso_keep
    ## 1           TRUE
    ## 2           TRUE
    ## 3           TRUE
    ## 4           TRUE
    ## 5           TRUE
    ## 6           TRUE
    ## 7           TRUE
    ## 8           TRUE
    ## 9           TRUE
    ## 10          TRUE
    ## 11          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the HDL
cholesterol GWAS

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
    ## 1            FALSE   0.01726749 53.82604  0.05 0.3497698 0.0909348

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
Cortical Surface Area on HDL cholesterol. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on HDL
cholesterol

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ## 2      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ## 3      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ## 4      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   11  5.762648e-07
    ## 2                           Weighted median   11 -6.994483e-08
    ## 3                             Weighted mode   11  4.841459e-07
    ## 4                                  MR Egger   11 -9.370220e-07
    ##             se      pval
    ## 1 1.780054e-06 0.7461391
    ## 2 2.398742e-06 0.9767378
    ## 3 2.822899e-06 0.8672463
    ## 4 6.940732e-06 0.8955803

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in HDL cholesterol and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013hdl/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ## 2      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 14.80973    9 0.09629663
    ## 2 Inverse variance weighted 14.89745   10 0.13584560

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013hdl/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013hdl/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome           exposure egger_intercept
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea     0.001432982
    ##            se      pval
    ## 1 0.006206554 0.8225695

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome           exposure    pt
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers RSSobs  pval
    ## 1            FALSE          0 17.126 0.152

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome           exposure   method nsnp  b
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013hdl/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome           exposure   method  Q Q_df
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome           exposure   method
    ## 1      AyFFTu     tKDVya Willer2013hdl Grasby2020surfarea mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
