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

### Outcome: Social Isolation

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with Any Neuritic Plaques avaliable in
Social Isolation

    ##            SNP CHROM       POS  REF  ALT       AF        BETA         SE
    ## 1   rs34487851     2 106642554    A    G 0.281903 -0.00305237 0.00227645
    ## 2  rs112833681     3  72020152    T    G 0.024527 -0.00588098 0.00662172
    ## 3   rs73214476     4  65287903    T    C 0.015225 -0.01104560 0.00836475
    ## 4   rs62341097     4 174094940    G    A 0.051440  0.00207617 0.00463679
    ## 5   rs80125278     6  14334854    T    C 0.011854 -0.00517679 0.00946362
    ## 6  rs144621483     9 129356304    G    T 0.023914 -0.01154750 0.00670394
    ## 7    rs9578438    13  22729205    C    T 0.032303 -0.00195412 0.00579308
    ## 8   rs28479400    15  99995884    A    G 0.048870 -0.00313774 0.00475072
    ## 9   rs61041336    16  58733162    A    G 0.147619 -0.00085168 0.00288744
    ## 10   rs4803748    19  45247048    C    T 0.381001  0.00672065 0.00210908
    ## 11      rs6857    19  45392254    C    T 0.171211  0.00172330 0.00271902
    ## 12 rs142544282    NA        NA <NA> <NA>       NA          NA         NA
    ##            Z          P      N            TRAIT
    ## 1  -1.340840 0.17997143 452302 Social_Isolation
    ## 2  -0.888135 0.37446825 452302 Social_Isolation
    ## 3  -1.320490 0.18667011 452302 Social_Isolation
    ## 4   0.447760 0.65432673 452302 Social_Isolation
    ## 5  -0.547020 0.58436518 452302 Social_Isolation
    ## 6  -1.722500 0.08497973 452302 Social_Isolation
    ## 7  -0.337320 0.73587545 452302 Social_Isolation
    ## 8  -0.660477 0.50894802 452302 Social_Isolation
    ## 9  -0.294960 0.76802472 452302 Social_Isolation
    ## 10  3.186540 0.00143988 452302 Social_Isolation
    ## 11  0.633795 0.52621460 452302 Social_Isolation
    ## 12        NA         NA     NA             <NA>

<br>

**Table 3:** Proxy SNPs for Social Isolation

    ##    target_snp   proxy_snp    ld.r2   Dprime PHASE X12 CHROM      POS
    ## 1 rs142544282 rs182277132 0.824452 0.907993 TT/CA  NA    21 43688712
    ##   REF.proxy ALT.proxy       AF      BETA         SE       Z          P
    ## 1         A      TRUE 0.010324 0.0252742 0.01013281 2.49429 0.01262087
    ##        N            TRAIT  ref ref.proxy alt alt.proxy  ALT REF
    ## 1 452302 Social_Isolation TRUE      TRUE   C         A TRUE   C
    ##   proxy.outcome
    ## 1          TRUE

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized Any Neuritic Plaques and Social Isolation
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
    ## 1                      G                    T       -0.9748  -0.00588098
    ## 2                      T                    C       -2.1080   0.02527420
    ## 3                      T                    G       -1.7657  -0.01154750
    ## 4                      G                    A       -0.7864  -0.00313774
    ## 5                      G                    A       -0.4143  -0.00305237
    ## 6                      T                    C       -0.4005   0.00672065
    ## 7                      G                    A       -0.4512  -0.00085168
    ## 8                      A                    G       -1.1474   0.00207617
    ## 9                      T                    C        1.2932   0.00172330
    ## 10                     C                    T       -1.6678  -0.01104560
    ## 11                     C                    T       -1.5167  -0.00517679
    ## 12                     T                    C       -1.2374  -0.00195412
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1        0.0257    0.024527  FALSE       FALSE     FALSE     o2URY8
    ## 2        0.0108    0.010324  FALSE       FALSE     FALSE     o2URY8
    ## 3        0.0172    0.023914  FALSE       FALSE     FALSE     o2URY8
    ## 4        0.0506    0.048870  FALSE       FALSE     FALSE     o2URY8
    ## 5        0.2647    0.281903  FALSE       FALSE     FALSE     o2URY8
    ## 6        0.3589    0.381001  FALSE       FALSE     FALSE     o2URY8
    ## 7        0.1531    0.147619  FALSE       FALSE     FALSE     o2URY8
    ## 8        0.0458    0.051440  FALSE       FALSE     FALSE     o2URY8
    ## 9        0.2661    0.171211  FALSE       FALSE     FALSE     o2URY8
    ## 10       0.0118    0.015225  FALSE       FALSE     FALSE     o2URY8
    ## 11       0.0146    0.011854  FALSE       FALSE     FALSE     o2URY8
    ## 12       0.0393    0.032303  FALSE       FALSE     FALSE     o2URY8
    ##    chr.outcome pos.outcome se.outcome z.outcome pval.outcome
    ## 1            3    72020152 0.00662172 -0.888135   0.37446825
    ## 2           21    43688712 0.01013281  2.494290   0.01262087
    ## 3            9   129356304 0.00670394 -1.722500   0.08497973
    ## 4           15    99995884 0.00475072 -0.660477   0.50894802
    ## 5            2   106642554 0.00227645 -1.340840   0.17997143
    ## 6           19    45247048 0.00210908  3.186540   0.00143988
    ## 7           16    58733162 0.00288744 -0.294960   0.76802472
    ## 8            4   174094940 0.00463679  0.447760   0.65432673
    ## 9           19    45392254 0.00271902  0.633795   0.52621460
    ## 10           4    65287903 0.00836475 -1.320490   0.18667011
    ## 11           6    14334854 0.00946362 -0.547020   0.58436518
    ## 12          13    22729205 0.00579308 -0.337320   0.73587545
    ##    samplesize.outcome       outcome mr_keep.outcome pval_origin.outcome
    ## 1              452302 Day2018sociso            TRUE            reported
    ## 2              452302 Day2018sociso            TRUE            reported
    ## 3              452302 Day2018sociso            TRUE            reported
    ## 4              452302 Day2018sociso            TRUE            reported
    ## 5              452302 Day2018sociso            TRUE            reported
    ## 6              452302 Day2018sociso            TRUE            reported
    ## 7              452302 Day2018sociso            TRUE            reported
    ## 8              452302 Day2018sociso            TRUE            reported
    ## 9              452302 Day2018sociso            TRUE            reported
    ## 10             452302 Day2018sociso            TRUE            reported
    ## 11             452302 Day2018sociso            TRUE            reported
    ## 12             452302 Day2018sociso            TRUE            reported
    ##    proxy.outcome target_snp.outcome proxy_snp.outcome target_a1.outcome
    ## 1             NA               <NA>              <NA>                NA
    ## 2           TRUE        rs142544282       rs182277132              TRUE
    ## 3             NA               <NA>              <NA>                NA
    ## 4             NA               <NA>              <NA>                NA
    ## 5             NA               <NA>              <NA>                NA
    ## 6             NA               <NA>              <NA>                NA
    ## 7             NA               <NA>              <NA>                NA
    ## 8             NA               <NA>              <NA>                NA
    ## 9             NA               <NA>              <NA>                NA
    ## 10            NA               <NA>              <NA>                NA
    ## 11            NA               <NA>              <NA>                NA
    ## 12            NA               <NA>              <NA>                NA
    ##    target_a2.outcome proxy_a1.outcome proxy_a2.outcome chr.exposure
    ## 1               <NA>               NA             <NA>            3
    ## 2                  C             TRUE                A           21
    ## 3               <NA>               NA             <NA>            9
    ## 4               <NA>               NA             <NA>           15
    ## 5               <NA>               NA             <NA>            2
    ## 6               <NA>               NA             <NA>           19
    ## 7               <NA>               NA             <NA>           16
    ## 8               <NA>               NA             <NA>            4
    ## 9               <NA>               NA             <NA>           19
    ## 10              <NA>               NA             <NA>            4
    ## 11              <NA>               NA             <NA>            6
    ## 12              <NA>               NA             <NA>           13
    ##    pos.exposure se.exposure z.exposure pval.exposure samplesize.exposure
    ## 1      72020152      0.2039  -4.780770     1.747e-06                4046
    ## 2      43678066      0.3658  -5.762712     8.299e-09                4046
    ## 3     129356304      0.3224  -5.476737     4.332e-08                4046
    ## 4      99995884      0.1647  -4.774740     1.788e-06                4046
    ## 5     106642554      0.0903  -4.588040     4.474e-06                4046
    ## 6      45247048      0.0829  -4.831122     1.345e-06                4046
    ## 7      58733162      0.0966  -4.670810     3.036e-06                4046
    ## 8     174094940      0.1975  -5.809620     6.273e-09                4046
    ## 9      45392254      0.1191  10.858102     1.780e-27                4046
    ## 10     65287903      0.3399  -4.906740     9.279e-07                4046
    ## 11     14334854      0.3246  -4.672520     2.976e-06                4046
    ## 12     22729205      0.2537  -4.877414     1.080e-06                4046
    ##            exposure mr_keep.exposure pval_origin.exposure id.exposure
    ## 1  Beecham2014npany             TRUE             reported      pNjvMV
    ## 2  Beecham2014npany             TRUE             reported      pNjvMV
    ## 3  Beecham2014npany             TRUE             reported      pNjvMV
    ## 4  Beecham2014npany             TRUE             reported      pNjvMV
    ## 5  Beecham2014npany             TRUE             reported      pNjvMV
    ## 6  Beecham2014npany             TRUE             reported      pNjvMV
    ## 7  Beecham2014npany             TRUE             reported      pNjvMV
    ## 8  Beecham2014npany             TRUE             reported      pNjvMV
    ## 9  Beecham2014npany             TRUE             reported      pNjvMV
    ## 10 Beecham2014npany             TRUE             reported      pNjvMV
    ## 11 Beecham2014npany             TRUE             reported      pNjvMV
    ## 12 Beecham2014npany             TRUE             reported      pNjvMV
    ##    action mr_keep pleitropy_keep    pt mrpresso_RSSobs mrpresso_pval
    ## 1       2    TRUE           TRUE 5e-06              NA            NA
    ## 2       2    TRUE           TRUE 5e-06              NA            NA
    ## 3       2    TRUE           TRUE 5e-06              NA            NA
    ## 4       2    TRUE           TRUE 5e-06              NA            NA
    ## 5       2    TRUE           TRUE 5e-06              NA            NA
    ## 6       2    TRUE          FALSE 5e-06              NA            NA
    ## 7       2    TRUE           TRUE 5e-06              NA            NA
    ## 8       2    TRUE           TRUE 5e-06              NA            NA
    ## 9       2    TRUE          FALSE 5e-06              NA            NA
    ## 10      2    TRUE           TRUE 5e-06              NA            NA
    ## 11      2    TRUE           TRUE 5e-06              NA            NA
    ## 12      2    TRUE           TRUE 5e-06              NA            NA
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
    ## 12          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Social
Isolation GWAS

    ##         SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs4803748          19    45247048     1.345e-06   0.00143988
    ## 2    rs6857          19    45392254     1.780e-27   0.52621460

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
    ## 1            FALSE   0.06448464 27.81307  0.05 1.531987 0.2357694

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
Neuritic Plaques on Social Isolation. <br>

**Table 6** MR causaul estimates for Any Neuritic Plaques on Social
Isolation

    ##   id.exposure id.outcome       outcome         exposure
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ## 2      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ## 3      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ## 4      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)   10  0.0019847925 0.001598087
    ## 2                           Weighted median   10  0.0035401425 0.002195728
    ## 3                             Weighted mode   10  0.0057767097 0.003609614
    ## 4                                  MR Egger   10 -0.0007398077 0.003735766
    ##        pval
    ## 1 0.2142438
    ## 2 0.1068996
    ## 3 0.1439812
    ## 4 0.8479583

<br>

Figure 1 illustrates the SNP-specific associations with Any Neuritic
Plaques versus the association in Social Isolation and the corresponding
MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Day2018sociso/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome       outcome         exposure
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ## 2      pNjvMV     o2URY8 Day2018sociso Beecham2014npany
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 12.01181    8 0.1506775
    ## 2 Inverse variance weighted 13.11306    9 0.1575566

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Day2018sociso/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Day2018sociso/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome       outcome         exposure egger_intercept
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany     0.002793016
    ##            se      pval
    ## 1 0.003261293 0.4166825

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome       outcome         exposure    pt
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          0 16.84733 0.151

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome       outcome         exposure   method nsnp  b
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany mrpresso   NA NA
    ##   se pval
    ## 1 NA   NA

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Day2018sociso/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome       outcome         exposure   method  Q Q_df
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany mrpresso NA   NA
    ##   Q_pval
    ## 1     NA

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome       outcome         exposure   method
    ## 1      pNjvMV     o2URY8 Day2018sociso Beecham2014npany mrpresso
    ##   egger_intercept se pval
    ## 1              NA NA   NA

<br>
