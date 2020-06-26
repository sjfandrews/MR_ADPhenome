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

### Outcome: LDL cholesterol

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in LDL
cholesterol

    ##           SNP CHROM       POS  REF  ALT       AF    BETA     SE          Z
    ## 1  rs12630663     3  28007315    T    C 0.374819 -0.0042 0.0054 -0.7777780
    ## 2  rs34464850    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 3   rs2301718     4 106009763    G    A 0.281329  0.0069 0.0061  1.1311475
    ## 4    rs386424     5  81092787    T    G 0.354704 -0.0147 0.0057 -2.5789500
    ## 5   rs7715167     5 170778824    T    C 0.649726 -0.0126 0.0057 -2.2105300
    ## 6   rs2802295    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 7  rs11759026    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 8  rs12357321    10  21790476    G    A 0.305707 -0.0056 0.0058 -0.9655170
    ## 9   rs1628768    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 10 rs10876864    12  56401085    G    A 0.610867  0.0010 0.0052  0.1923077
    ## 11 rs10878349    NA        NA <NA> <NA>       NA      NA     NA         NA
    ## 12 rs79600142    NA        NA <NA> <NA>       NA      NA     NA         NA
    ##          P     N           TRAIT
    ## 1  0.42890 89888 LDL_Cholesterol
    ## 2       NA    NA            <NA>
    ## 3  0.36260 89813 LDL_Cholesterol
    ## 4  0.03071 89888 LDL_Cholesterol
    ## 5  0.05659 89888 LDL_Cholesterol
    ## 6       NA    NA            <NA>
    ## 7       NA    NA            <NA>
    ## 8  0.49410 89888 LDL_Cholesterol
    ## 9       NA    NA            <NA>
    ## 10 0.71260 89888 LDL_Cholesterol
    ## 11      NA    NA            <NA>
    ## 12      NA    NA            <NA>

<br>

**Table 3:** Proxy SNPs for LDL cholesterol

    ##   target_snp proxy_snp    ld.r2   Dprime PHASE X12 CHROM       POS
    ## 1 rs34464850 rs2271386 1.000000 1.000000 CA/GG  NA     3 141712708
    ## 2  rs2802295 rs2253310 1.000000 1.000000 AC/GG  NA     6 108888593
    ## 3  rs1628768 rs6584545 0.973962 0.994692 CA/TT  NA    10 104999266
    ## 4 rs10878349 rs1038196 0.996002 1.000000 AG/GC  NA    12  66343400
    ## 5 rs79600142  rs436667 1.000000 1.000000 CT/TC  NA    17  43709415
    ## 6 rs11759026      <NA>       NA       NA  <NA>  NA    NA        NA
    ##   REF.proxy ALT.proxy       AF    BETA     SE         Z       P        N
    ## 1         G         A 0.151945 -0.0078 0.0070 -1.114290 0.36980 89886.00
    ## 2         C         G 0.561499 -0.0023 0.0053 -0.433962 0.72420 86897.00
    ## 3         A         T 0.790532 -0.0042 0.0059 -0.711864 0.51290 83069.99
    ## 4         G         C 0.467912  0.0068 0.0052  1.307692 0.29520 89888.00
    ## 5         C         T 0.146757  0.0117 0.0066  1.772727 0.02757 86937.00
    ## 6      <NA>      <NA>       NA      NA     NA        NA      NA       NA
    ##             TRAIT  ref ref.proxy  alt alt.proxy  ALT  REF proxy.outcome
    ## 1 LDL_Cholesterol    C         A    G         G    C    G          TRUE
    ## 2 LDL_Cholesterol    A         C    G         G    G    A          TRUE
    ## 3 LDL_Cholesterol    C         A    T         T    T    C          TRUE
    ## 4 LDL_Cholesterol    A         G    G         C    G    A          TRUE
    ## 5 LDL_Cholesterol    C         T    T         C    C    T          TRUE
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

**Table 4:** Harmonized Cortical Surface Area and LDL cholesterol
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
    ## 1                      A                    G     -628.5901       0.0010
    ## 2                      G                    A    -1039.9900       0.0068
    ## 3                      A                    G     -698.7452      -0.0056
    ## 4                      C                    T      632.8110      -0.0042
    ## 5                      C                    T      972.9780       0.0042
    ## 6                      A                    G      737.2212       0.0069
    ## 7                      G                    A      714.5850      -0.0023
    ## 8                      C                    G     1233.1854      -0.0078
    ## 9                      G                    T      656.5430      -0.0147
    ## 10                     C                    T      662.7540      -0.0126
    ## 11                     C                    T    -1696.8300       0.0117
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.5774    0.610867  FALSE       FALSE     FALSE     J26NDC
    ## 2        0.5100    0.467912  FALSE       FALSE     FALSE     J26NDC
    ## 3        0.3206    0.305707  FALSE       FALSE     FALSE     J26NDC
    ## 4        0.4117    0.374819  FALSE       FALSE     FALSE     J26NDC
    ## 5        0.2386    0.209468  FALSE       FALSE     FALSE     J26NDC
    ## 6        0.2269    0.281329  FALSE       FALSE     FALSE     J26NDC
    ## 7        0.6207    0.561499  FALSE       FALSE     FALSE     J26NDC
    ## 8        0.1534    0.151945  FALSE        TRUE     FALSE     J26NDC
    ## 9        0.3008    0.354704  FALSE       FALSE     FALSE     J26NDC
    ## 10       0.6143    0.649726  FALSE       FALSE     FALSE     J26NDC
    ## 11       0.2198    0.146757  FALSE       FALSE     FALSE     J26NDC
    ##    chr.outcome pos.outcome se.outcome  z.outcome pval.outcome
    ## 1           12    56401085     0.0052  0.1923077      0.71260
    ## 2           12    66343400     0.0052  1.3076923      0.29520
    ## 3           10    21790476     0.0058 -0.9655170      0.49410
    ## 4            3    28007315     0.0054 -0.7777780      0.42890
    ## 5           10   104999266     0.0059 -0.7118640      0.51290
    ## 6            4   106009763     0.0061  1.1311475      0.36260
    ## 7            6   108888593     0.0053 -0.4339620      0.72420
    ## 8            3   141712708     0.0070 -1.1142900      0.36980
    ## 9            5    81092787     0.0057 -2.5789500      0.03071
    ## 10           5   170778824     0.0057 -2.2105300      0.05659
    ## 11          17    43709415     0.0066  1.7727273      0.02757
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1            89888.00 Willer2013ldl            TRUE            reported
    ## 2            89888.00 Willer2013ldl            TRUE            reported
    ## 3            89888.00 Willer2013ldl            TRUE            reported
    ## 4            89888.00 Willer2013ldl            TRUE            reported
    ## 5            83069.99 Willer2013ldl            TRUE            reported
    ## 6            89813.00 Willer2013ldl            TRUE            reported
    ## 7            86897.00 Willer2013ldl            TRUE            reported
    ## 8            89886.00 Willer2013ldl            TRUE            reported
    ## 9            89888.00 Willer2013ldl            TRUE            reported
    ## 10           89888.00 Willer2013ldl            TRUE            reported
    ## 11           86937.00 Willer2013ldl            TRUE            reported
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
    ## 1  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 2  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 3  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 4  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 5  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 6  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 7  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 8  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 9  Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 10 Grasby2020surfarea             TRUE             reported      qGP2AF
    ## 11 Grasby2020surfarea             TRUE             reported      qGP2AF
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

**Table 5:** SNPs that were genome-wide significant in the LDL
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

    ##   outliers_removed pve.exposure        F Alpha      NCP     Power
    ## 1            FALSE   0.01726749 53.82604  0.05 8.949192 0.8488603

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
Cortical Surface Area on LDL cholesterol. <br>

**Table 6** MR causaul estimates for Cortical Surface Area on LDL
cholesterol

    ##   id.exposure id.outcome       outcome           exposure
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ## 2      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ## 3      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ## 4      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ##                                      method nsnp             b
    ## 1 Inverse variance weighted (fixed effects)   11 -4.761436e-06
    ## 2                           Weighted median   11 -6.484676e-06
    ## 3                             Weighted mode   11 -6.137097e-06
    ## 4                                  MR Egger   11 -5.748973e-06
    ##             se       pval
    ## 1 1.936156e-06 0.01392388
    ## 2 2.634387e-06 0.01383380
    ## 3 3.113947e-06 0.07703660
    ## 4 7.665667e-06 0.47242516

<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface
Area versus the association in LDL cholesterol and the corresponding MR
estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ## 2      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 15.10141    9 0.08818784
    ## 2 Inverse variance weighted 15.13259   10 0.12730196

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013ldl/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013ldl/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome           exposure egger_intercept
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea    0.0009337994
    ##            se     pval
    ## 1 0.006849607 0.894562

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
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea 5e-08
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 17.37197 0.169

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome           exposure   method nsnp  b
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Willer2013ldl/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome           exposure   method  Q Q_df
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome           exposure   method
    ## 1      qGP2AF     J26NDC Willer2013ldl Grasby2020surfarea mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
