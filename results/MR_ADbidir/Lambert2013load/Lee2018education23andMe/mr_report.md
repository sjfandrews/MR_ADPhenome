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

### Exposure: LOAD

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with LOAD

    ##            SNP CHROM       POS REF ALT         AF    BETA     SE         Z
    ## 1    rs1752684     1 207747296   A   G 0.77110600 -0.1541 0.0196 -7.862240
    ## 2    rs4663105     2 127891427   A   C 0.41197700  0.1837 0.0172 10.680233
    ## 3    rs9272561     6  32607141   G   A 0.64853000 -0.1360 0.0230 -5.913043
    ## 4    rs9381563     6  47432637   C   T 0.65647400 -0.0968 0.0166 -5.831330
    ## 5   rs10808026     7 143099133   C   A 0.20418100 -0.1393 0.0206 -6.762136
    ## 6       rs7982     8  27462481   A   G 0.61556700  0.1400 0.0165  8.484850
    ## 7   rs72924659    11  60103385   C   T 0.25353600 -0.1413 0.0196 -7.209184
    ## 8   rs10792832    11  85867875   A   G 0.66727500  0.1297 0.0161  8.055900
    ## 9   rs11218343    11 121435587   T   C 0.03449530 -0.2697 0.0410 -6.578049
    ## 10  rs12590654    14  92938855   G   A 0.34703500 -0.0965 0.0176 -5.482955
    ## 11   rs8093731    18  29088958   C   T 0.00761697 -0.6136 0.1123 -5.463936
    ## 12   rs4147929    19   1063443   A   G 0.83992600 -0.1348 0.0224 -6.017860
    ## 13  rs12972156    19  45387459   C   G 0.15468800  1.1399 0.0256 44.527344
    ## 14 rs117310449    19  45393516   C   T 0.01178820  1.2135 0.0966 12.562112
    ## 15  rs12977604    19  45442528   C   G 0.52832700  0.1507 0.0184  8.190217
    ##                P     N TRAIT
    ## 1   3.653000e-15 54162  LOAD
    ## 2   1.001000e-26 54162  LOAD
    ## 3   3.376000e-09 54162  LOAD
    ## 4   5.300000e-09 54162  LOAD
    ## 5   1.417000e-11 54162  LOAD
    ## 6   2.477000e-17 54162  LOAD
    ## 7   5.354000e-13 54162  LOAD
    ## 8   6.534000e-16 54162  LOAD
    ## 9   4.976000e-11 54162  LOAD
    ## 10  4.097000e-08 54162  LOAD
    ## 11  4.630000e-08 54162  LOAD
    ## 12  1.701000e-09 54162  LOAD
    ## 13 2.225074e-308 54162  LOAD
    ## 14  3.695000e-36 54162  LOAD
    ## 15  2.920000e-16 54162  LOAD

<br>

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with LOAD avaliable in Education

    ##            SNP CHROM       POS  REF  ALT     AF         BETA          SE
    ## 1    rs1752684     1 207747296    A    G 0.8102  0.000901679 0.001788108
    ## 2    rs4663105     2 127891427    A    C 0.4155 -0.001134160 0.001432985
    ## 3    rs9272561    NA        NA <NA> <NA>     NA           NA          NA
    ## 4    rs9381563     6  47432637    C    T 0.6434 -0.004050300 0.001463886
    ## 5   rs10808026     7 143099133    C    A 0.2066 -0.001040580 0.001748102
    ## 6       rs7982     8  27462481    A    G 0.6025  0.000698712 0.001445370
    ## 7   rs72924659    11  60103385    C    T 0.3039 -0.001215080 0.001537060
    ## 8   rs10792832    11  85867875    A    G 0.6323 -0.006962310 0.001454211
    ## 9   rs11218343    11 121435587    T    C 0.0379  0.007477560 0.003679490
    ## 10  rs12590654    14  92938855    G    A 0.3391  0.006014820 0.001509430
    ## 11   rs8093731    18  29088958    C    T 0.0113 -0.007514190 0.006775618
    ## 12   rs4147929    19   1063443    A    G 0.8246 -0.001197860 0.001853001
    ## 13  rs12972156    19  45387459    C    G 0.1471  0.002323520 0.001992936
    ## 14 rs117310449    19  45393516    C    T 0.0102  0.012516700 0.007211976
    ## 15  rs12977604    19  45442528    C    G 0.4994  0.000519270 0.001915489
    ##             Z            P       N     TRAIT
    ## 1   0.5042660 6.140747e-01 1131881 Education
    ## 2  -0.7914700 4.286700e-01 1115934 Education
    ## 3          NA           NA      NA      <NA>
    ## 4  -2.7668260 5.660496e-03 1131881 Education
    ## 5  -0.5952610 5.516691e-01 1111013 Education
    ## 6   0.4834130 6.288028e-01 1112293 Education
    ## 7  -0.7905217 4.292231e-01 1113501 Education
    ## 8  -4.7876800 1.687203e-06 1131881 Education
    ## 9   2.0322300 4.213053e-02 1127302 Education
    ## 10  3.9848361 6.752672e-05 1089901 Education
    ## 11 -1.1090053 2.674279e-01 1085011 Education
    ## 12 -0.6464460 5.179907e-01 1120604 Education
    ## 13  1.1658800 2.436640e-01 1116802 Education
    ## 14  1.7355459 8.264416e-02 1059786 Education
    ## 15  0.2710900 7.863217e-01  606703 Education

<br>

**Table 3:** Proxy SNPs for Education

    ##   target_snp proxy_snp ld.r2 Dprime PHASE X12 CHROM POS REF.proxy
    ## 1  rs9272561        NA    NA     NA    NA  NA    NA  NA        NA
    ##   ALT.proxy AF BETA SE  Z  P  N TRAIT ref ref.proxy alt alt.proxy ALT REF
    ## 1        NA NA   NA NA NA NA NA    NA  NA        NA  NA        NA  NA  NA
    ##   proxy.outcome
    ## 1            NA

<br>

Data harmonization
------------------

Harmonize the exposure and outcome datasets so that the effect of a SNP
on the exposure and the effect of that SNP on the outcome correspond to
the same allele. The harmonise\_data function from the TwoSampleMR
package can be used to perform the harmonization step, by default it
try's to infer the forward strand alleles using allele frequency
information. <br>

**Table 4:** Harmonized LOAD and Education datasets

    ##            SNP effect_allele.exposure other_allele.exposure
    ## 1   rs10792832                      G                     A
    ## 2   rs10808026                      A                     C
    ## 3   rs11218343                      C                     T
    ## 4  rs117310449                      T                     C
    ## 5   rs12590654                      A                     G
    ## 6   rs12972156                      G                     C
    ## 7   rs12977604                      G                     C
    ## 8    rs1752684                      G                     A
    ## 9    rs4147929                      G                     A
    ## 10   rs4663105                      C                     A
    ## 11  rs72924659                      T                     C
    ## 12      rs7982                      G                     A
    ## 13   rs8093731                      T                     C
    ## 14   rs9381563                      T                     C
    ##    effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                      G                    A        0.1297 -0.006962310
    ## 2                      A                    C       -0.1393 -0.001040580
    ## 3                      C                    T       -0.2697  0.007477560
    ## 4                      T                    C        1.2135  0.012516700
    ## 5                      A                    G       -0.0965  0.006014820
    ## 6                      G                    C        1.1399  0.002323520
    ## 7                      G                    C        0.1507 -0.000519270
    ## 8                      G                    A       -0.1541  0.000901679
    ## 9                      G                    A       -0.1348 -0.001197860
    ## 10                     C                    A        0.1837 -0.001134160
    ## 11                     T                    C       -0.1413 -0.001215080
    ## 12                     G                    A        0.1400  0.000698712
    ## 13                     T                    C       -0.6136 -0.007514190
    ## 14                     T                    C       -0.0968 -0.004050300
    ##    eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.66727500      0.6323  FALSE       FALSE     FALSE     fwU7tk
    ## 2    0.20418100      0.2066  FALSE       FALSE     FALSE     fwU7tk
    ## 3    0.03449530      0.0379  FALSE       FALSE     FALSE     fwU7tk
    ## 4    0.01178820      0.0102  FALSE       FALSE     FALSE     fwU7tk
    ## 5    0.34703500      0.3391  FALSE       FALSE     FALSE     fwU7tk
    ## 6    0.15468800      0.1471  FALSE        TRUE     FALSE     fwU7tk
    ## 7    0.52832700      0.5006  FALSE        TRUE      TRUE     fwU7tk
    ## 8    0.77110600      0.8102  FALSE       FALSE     FALSE     fwU7tk
    ## 9    0.83992600      0.8246  FALSE       FALSE     FALSE     fwU7tk
    ## 10   0.41197700      0.4155  FALSE       FALSE     FALSE     fwU7tk
    ## 11   0.25353600      0.3039  FALSE       FALSE     FALSE     fwU7tk
    ## 12   0.61556700      0.6025  FALSE       FALSE     FALSE     fwU7tk
    ## 13   0.00761697      0.0113  FALSE       FALSE     FALSE     fwU7tk
    ## 14   0.65647400      0.6434  FALSE       FALSE     FALSE     fwU7tk
    ##    chr.outcome pos.outcome  se.outcome  z.outcome pval.outcome
    ## 1           11    85867875 0.001454211 -4.7876800 1.687203e-06
    ## 2            7   143099133 0.001748102 -0.5952610 5.516691e-01
    ## 3           11   121435587 0.003679490  2.0322300 4.213053e-02
    ## 4           19    45393516 0.007211976  1.7355459 8.264416e-02
    ## 5           14    92938855 0.001509430  3.9848361 6.752672e-05
    ## 6           19    45387459 0.001992936  1.1658800 2.436640e-01
    ## 7           19    45442528 0.001915489  0.2710900 7.863217e-01
    ## 8            1   207747296 0.001788108  0.5042660 6.140747e-01
    ## 9           19     1063443 0.001853001 -0.6464460 5.179907e-01
    ## 10           2   127891427 0.001432985 -0.7914700 4.286700e-01
    ## 11          11    60103385 0.001537060 -0.7905217 4.292231e-01
    ## 12           8    27462481 0.001445370  0.4834130 6.288028e-01
    ## 13          18    29088958 0.006775618 -1.1090053 2.674279e-01
    ## 14           6    47432637 0.001463886 -2.7668260 5.660496e-03
    ##    samplesize.outcome                 outcome mr_keep.outcome
    ## 1             1131881 Lee2018education23andMe            TRUE
    ## 2             1111013 Lee2018education23andMe            TRUE
    ## 3             1127302 Lee2018education23andMe            TRUE
    ## 4             1059786 Lee2018education23andMe            TRUE
    ## 5             1089901 Lee2018education23andMe            TRUE
    ## 6             1116802 Lee2018education23andMe            TRUE
    ## 7              606703 Lee2018education23andMe            TRUE
    ## 8             1131881 Lee2018education23andMe            TRUE
    ## 9             1120604 Lee2018education23andMe            TRUE
    ## 10            1115934 Lee2018education23andMe            TRUE
    ## 11            1113501 Lee2018education23andMe            TRUE
    ## 12            1112293 Lee2018education23andMe            TRUE
    ## 13            1085011 Lee2018education23andMe            TRUE
    ## 14            1131881 Lee2018education23andMe            TRUE
    ##    pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1             reported           11     85867875      0.0161   8.055900
    ## 2             reported            7    143099133      0.0206  -6.762136
    ## 3             reported           11    121435587      0.0410  -6.578049
    ## 4             reported           19     45393516      0.0966  12.562112
    ## 5             reported           14     92938855      0.0176  -5.482955
    ## 6             reported           19     45387459      0.0256  44.527344
    ## 7             reported           19     45442528      0.0184   8.190217
    ## 8             reported            1    207747296      0.0196  -7.862240
    ## 9             reported           19      1063443      0.0224  -6.017860
    ## 10            reported            2    127891427      0.0172  10.680233
    ## 11            reported           11     60103385      0.0196  -7.209184
    ## 12            reported            8     27462481      0.0165   8.484850
    ## 13            reported           18     29088958      0.1123  -5.463936
    ## 14            reported            6     47432637      0.0166  -5.831330
    ##    pval.exposure samplesize.exposure        exposure mr_keep.exposure
    ## 1      6.534e-16               54162 Lambert2013load             TRUE
    ## 2      1.417e-11               54162 Lambert2013load             TRUE
    ## 3      4.976e-11               54162 Lambert2013load             TRUE
    ## 4      3.695e-36               54162 Lambert2013load             TRUE
    ## 5      4.097e-08               54162 Lambert2013load             TRUE
    ## 6     1.000e-200               54162 Lambert2013load             TRUE
    ## 7      2.920e-16               54162 Lambert2013load             TRUE
    ## 8      3.653e-15               54162 Lambert2013load             TRUE
    ## 9      1.701e-09               54162 Lambert2013load             TRUE
    ## 10     1.001e-26               54162 Lambert2013load             TRUE
    ## 11     5.354e-13               54162 Lambert2013load             TRUE
    ## 12     2.477e-17               54162 Lambert2013load             TRUE
    ## 13     4.630e-08               54162 Lambert2013load             TRUE
    ## 14     5.300e-09               54162 Lambert2013load             TRUE
    ##    pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 2              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 3              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 4              reported      F5hDqt      2    TRUE          FALSE 5e-08
    ## 5              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 6              reported      F5hDqt      2    TRUE          FALSE 5e-08
    ## 7              reported      F5hDqt      2   FALSE          FALSE 5e-08
    ## 8              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 9              reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 10             reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 11             reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 12             reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 13             reported      F5hDqt      2    TRUE           TRUE 5e-08
    ## 14             reported      F5hDqt      2    TRUE           TRUE 5e-08
    ##    mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1     4.725256e-05        <0.011         FALSE
    ## 2     3.968062e-06             1          TRUE
    ## 3     4.017141e-05             1          TRUE
    ## 4               NA          <NA>            NA
    ## 5     3.297715e-05        <0.011         FALSE
    ## 6               NA          <NA>            NA
    ## 7               NA          <NA>            NA
    ## 8     3.528324e-10             1          TRUE
    ## 9     4.432538e-06             1          TRUE
    ## 10    9.851663e-09             1          TRUE
    ## 11    5.084429e-06             1          TRUE
    ## 12    2.866140e-06             1          TRUE
    ## 13    1.498477e-04         0.891          TRUE
    ## 14    2.362977e-05         0.022         FALSE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##           SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs117310449          19    45393516     3.695e-36   0.08264416
    ## 2  rs12972156          19    45387459    1.000e-200   0.24366404
    ## 3  rs12977604          19    45442528     2.920e-16   0.78632167

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

    ##   outliers_removed pve.exposure        F Alpha          NCP      Power
    ## 1            FALSE  0.010747914 53.48389  0.05 3.2599188085 0.43871473
    ## 2             TRUE  0.008374155 57.16441  0.05 0.0006074685 0.05006959

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

Table 6 presents the MR causal estimates of genetically predicted LOAD
on Education. <br>

**Table 6** MR causaul estimates for LOAD on Education

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 2      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 3      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 4      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##                                      method nsnp            b          se
    ## 1 Inverse variance weighted (fixed effects)   11 -0.005740230 0.003464296
    ## 2                           Weighted median   11  0.001191442 0.005310351
    ## 3                             Weighted mode   11  0.004125229 0.005472106
    ## 4                                  MR Egger   11  0.004926541 0.025124090
    ##         pval
    ## 1 0.09752578
    ## 2 0.82247551
    ## 3 0.46830932
    ## 4 0.84889705

<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the
association in Education and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 2      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##                      method        Q Q_df       Q_pval
    ## 1                  MR Egger 50.45093    9 8.860680e-08
    ## 2 Inverse variance weighted 51.58192   10 1.363556e-07

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##   egger_intercept          se      pval
    ## 1    -0.001672352 0.003723169 0.6639271

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome        exposure    pt
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load 5e-08
    ##   outliers_removed n_outliers   RSSobs   pval
    ## 1            FALSE          3 60.19469 <0.001

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 2      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 3      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 4      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##                                      method nsnp             b          se
    ## 1 Inverse variance weighted (fixed effects)    8  0.0003065406 0.003865950
    ## 2                           Weighted median    8  0.0044177887 0.005211288
    ## 3                             Weighted mode    8  0.0080707812 0.007422304
    ## 4                                  MR Egger    8 -0.0046578459 0.014251190
    ##        pval
    ## 1 0.9368000
    ## 2 0.3965858
    ## 3 0.3128909
    ## 4 0.7548905

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ## 2      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##                      method        Q Q_df    Q_pval
    ## 1                  MR Egger 7.693290    6 0.2614457
    ## 2 Inverse variance weighted 7.865094    7 0.3446401

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome        exposure
    ## 1      F5hDqt     fwU7tk Lee2018education23andMe Lambert2013load
    ##   egger_intercept          se      pval
    ## 1    0.0008681578 0.002371717 0.7268906

<br>
