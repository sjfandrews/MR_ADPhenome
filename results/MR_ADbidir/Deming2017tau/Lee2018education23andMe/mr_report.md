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

### Exposure: CSF Tau

`#r exposure.blurb` <br>

**Table 1:** Independent SNPs associated with CSF Tau

    ##          SNP CHROM       POS REF ALT        AF     BETA       SE         Z
    ## 1 rs10800664     1 199959856   C   T 0.4182820 -0.02591 0.005653 -4.583407
    ## 2  rs4674842     2 224880514   T   G 0.3079300 -0.03081 0.006491 -4.746572
    ## 3 rs35055419     3 190663557   T   C 0.3498150  0.04004 0.006006  6.666667
    ## 4  rs7737716     5 118217474   C   T 0.1334780  0.04066 0.008535  4.763913
    ## 5 rs13255475     8 121468076   T   C 0.6631540  0.02793 0.006049  4.617290
    ## 6   rs624290     9   3928115   C   T 0.8932200  0.04421 0.009094  4.861450
    ## 7   rs769449    19  45410002   G   A 0.0998545  0.07821 0.006911 11.316741
    ## 8  rs1513737    21  24166144   T   C 0.5373410 -0.02597 0.005620 -4.621000
    ##           P    N   TRAIT
    ## 1 4.770e-06 3146 CSF_tau
    ## 2 2.158e-06 3146 CSF_tau
    ## 3 3.071e-11 3146 CSF_tau
    ## 4 1.984e-06 3146 CSF_tau
    ## 5 4.032e-06 3146 CSF_tau
    ## 6 1.223e-06 3146 CSF_tau
    ## 7 4.054e-29 3146 CSF_tau
    ## 8 3.986e-06 3146 CSF_tau

<br>

### Outcome: Education

`#r outcome.blurb` <br>

**Table 2:** SNPs associated with CSF Tau avaliable in Education

    ##          SNP CHROM       POS REF ALT     AF         BETA          SE
    ## 1 rs10800664     1 199959856   C   T 0.4901  0.004149600 0.001410840
    ## 2  rs4674842     2 224880514   T   G 0.2425 -0.001062250 0.001636019
    ## 3 rs35055419     3 190663557   T   C 0.3728 -0.002238540 0.001457809
    ## 4  rs7737716     5 118217474   C   T 0.1273 -0.000351341 0.002106053
    ## 5 rs13255475     8 121468076   T   C 0.6814  0.002317390 0.001505453
    ## 6   rs624290     9   3928115   C   T 0.9034  0.001909940 0.002376154
    ## 7   rs769449    19  45410002   G   A 0.1211  0.003468670 0.002161515
    ## 8  rs1513737    21  24166144   T   C 0.5300  0.003118480 0.001420557
    ##            Z           P       N     TRAIT
    ## 1  2.9412337 0.003269078 1118798 Education
    ## 2 -0.6492890 0.516151324 1131881 Education
    ## 3 -1.5355500 0.124649821 1119924 Education
    ## 4 -0.1668247 0.867507962 1129389 Education
    ## 5  1.5393400 0.123721985 1131084 Education
    ## 6  0.8037919 0.421517189 1129448 Education
    ## 7  1.6047401 0.108551007 1119115 Education
    ## 8  2.1952600 0.028144827 1107099 Education

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

**Table 4:** Harmonized CSF Tau and Education datasets

    ##          SNP effect_allele.exposure other_allele.exposure
    ## 1 rs10800664                      T                     C
    ## 2 rs13255475                      C                     T
    ## 3  rs1513737                      C                     T
    ## 4 rs35055419                      C                     T
    ## 5  rs4674842                      G                     T
    ## 6   rs624290                      T                     C
    ## 7   rs769449                      A                     G
    ## 8  rs7737716                      T                     C
    ##   effect_allele.outcome other_allele.outcome beta.exposure beta.outcome
    ## 1                     T                    C      -0.02591  0.004149600
    ## 2                     C                    T       0.02793  0.002317390
    ## 3                     C                    T      -0.02597  0.003118480
    ## 4                     C                    T       0.04004 -0.002238540
    ## 5                     G                    T      -0.03081 -0.001062250
    ## 6                     T                    C       0.04421  0.001909940
    ## 7                     A                    G       0.07821  0.003468670
    ## 8                     T                    C       0.04066 -0.000351341
    ##   eaf.exposure eaf.outcome remove palindromic ambiguous id.outcome
    ## 1    0.4182820      0.4901  FALSE       FALSE     FALSE     wLjPtg
    ## 2    0.6631540      0.6814  FALSE       FALSE     FALSE     wLjPtg
    ## 3    0.5373410      0.5300  FALSE       FALSE     FALSE     wLjPtg
    ## 4    0.3498150      0.3728  FALSE       FALSE     FALSE     wLjPtg
    ## 5    0.3079300      0.2425  FALSE       FALSE     FALSE     wLjPtg
    ## 6    0.8932200      0.9034  FALSE       FALSE     FALSE     wLjPtg
    ## 7    0.0998545      0.1211  FALSE       FALSE     FALSE     wLjPtg
    ## 8    0.1334780      0.1273  FALSE       FALSE     FALSE     wLjPtg
    ##   chr.outcome pos.outcome  se.outcome  z.outcome pval.outcome
    ## 1           1   199959856 0.001410840  2.9412337  0.003269078
    ## 2           8   121468076 0.001505453  1.5393400  0.123721985
    ## 3          21    24166144 0.001420557  2.1952600  0.028144827
    ## 4           3   190663557 0.001457809 -1.5355500  0.124649821
    ## 5           2   224880514 0.001636019 -0.6492890  0.516151324
    ## 6           9     3928115 0.002376154  0.8037919  0.421517189
    ## 7          19    45410002 0.002161515  1.6047401  0.108551007
    ## 8           5   118217474 0.002106053 -0.1668247  0.867507962
    ##   samplesize.outcome                 outcome mr_keep.outcome
    ## 1            1118798 Lee2018education23andMe            TRUE
    ## 2            1131084 Lee2018education23andMe            TRUE
    ## 3            1107099 Lee2018education23andMe            TRUE
    ## 4            1119924 Lee2018education23andMe            TRUE
    ## 5            1131881 Lee2018education23andMe            TRUE
    ## 6            1129448 Lee2018education23andMe            TRUE
    ## 7            1119115 Lee2018education23andMe            TRUE
    ## 8            1129389 Lee2018education23andMe            TRUE
    ##   pval_origin.outcome chr.exposure pos.exposure se.exposure z.exposure
    ## 1            reported            1    199959856    0.005653  -4.583407
    ## 2            reported            8    121468076    0.006049   4.617290
    ## 3            reported           21     24166144    0.005620  -4.621000
    ## 4            reported            3    190663557    0.006006   6.666667
    ## 5            reported            2    224880514    0.006491  -4.746572
    ## 6            reported            9      3928115    0.009094   4.861450
    ## 7            reported           19     45410002    0.006911  11.316741
    ## 8            reported            5    118217474    0.008535   4.763913
    ##   pval.exposure samplesize.exposure      exposure mr_keep.exposure
    ## 1     4.770e-06                3146 Deming2017tau             TRUE
    ## 2     4.032e-06                3146 Deming2017tau             TRUE
    ## 3     3.986e-06                3146 Deming2017tau             TRUE
    ## 4     3.071e-11                3146 Deming2017tau             TRUE
    ## 5     2.158e-06                3146 Deming2017tau             TRUE
    ## 6     1.223e-06                3146 Deming2017tau             TRUE
    ## 7     4.054e-29                3146 Deming2017tau             TRUE
    ## 8     1.984e-06                3146 Deming2017tau             TRUE
    ##   pval_origin.exposure id.exposure action mr_keep pleitropy_keep    pt
    ## 1             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 2             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 3             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 4             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 5             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 6             reported      clXPXt      2    TRUE           TRUE 5e-06
    ## 7             reported      clXPXt      2    TRUE          FALSE 5e-06
    ## 8             reported      clXPXt      2    TRUE           TRUE 5e-06
    ##   mrpresso_RSSobs mrpresso_pval mrpresso_keep
    ## 1    1.475839e-05         0.049         FALSE
    ## 2    1.276620e-05         0.154          TRUE
    ## 3    7.110404e-06         0.441          TRUE
    ## 4    2.075775e-06         1.000          TRUE
    ## 5    5.066898e-06         1.000          TRUE
    ## 6    1.338215e-05         0.882          TRUE
    ## 7              NA            NA            NA
    ## 8    9.500164e-07         1.000          TRUE

<br>

SNPs that genome-wide significant in the outcome GWAS are likely
pleitorpic and should be removed from analysis. Additionaly remove
variants within the APOE locus by exclude variants 1MB either side of
APOE e4 (rs429358 = 19:45411941, GRCh37.p13) <br>

**Table 5:** SNPs that were genome-wide significant in the Education
GWAS

    ##        SNP chr.outcome pos.outcome pval.exposure pval.outcome
    ## 1 rs769449          19    45410002     4.054e-29     0.108551

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

    ##   outliers_removed pve.exposure        F Alpha      NCP      Power
    ## 1            FALSE   0.05553337 26.35860  0.05 2.710229 0.37703486
    ## 2             TRUE   0.04845071 26.63845  0.05 0.399804 0.09691198

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

Table 6 presents the MR causal estimates of genetically predicted CSF
Tau on Education. <br>

**Table 6** MR causaul estimates for CSF Tau on Education

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 2      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 3      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 4      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    7 -0.029470491 0.01875273
    ## 2                           Weighted median    7 -0.018760445 0.02822176
    ## 3                             Weighted mode    7 -0.001136498 0.04329085
    ## 4                                  MR Egger    7  0.100877545 0.15789005
    ##        pval
    ## 1 0.1160594
    ## 2 0.5062097
    ## 3 0.9799072
    ## 4 0.5509970

<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus
the association in Education and the corresponding MR estimates. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 2      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##                      method        Q Q_df      Q_pval
    ## 1                  MR Egger 14.72849    5 0.011587687
    ## 2 Inverse variance weighted 16.82318    6 0.009955522

<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual
genetic variants against their precession. Aysmmetry in the funnel plot
may arrise due to some genetic variants having unusally strong effects
on the outcome, which is indicative of directional pleiotropy. <br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Lee2018education23andMe/mr_report_files/figure-markdown/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
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
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Lee2018education23andMe/mr_report_files/figure-markdown/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">
Fig. 4: Radial Plot showing influential data points using Radial IVW
</p>
:::

<br>

The intercept of the MR-Regression model captures the average pleitropic
affect across all genetic variants (Table 8). <br>

**Table 8:** MR Egger test for directional pleitropy

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##   egger_intercept          se      pval
    ## 1    -0.004332231 0.005137429 0.4375481

<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy
RESidual Sum and Outlier
[(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows
for the evlation of evaluation of horizontal pleiotropy in a standared
MR model (Table 9). MR-PRESSO performs a global test for detection of
horizontal pleiotropy and correction of pleiotropy via outlier removal
(Table 10). <br>

**Table 9:** MR-PRESSO Global Test for pleitropy

    ##   id.exposure id.outcome                 outcome      exposure    pt
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau 5e-06
    ##   outliers_removed n_outliers   RSSobs  pval
    ## 1            FALSE          1 22.02504 0.018

<br>

**Table 10:** MR Estimates after MR-PRESSO outlier removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 2      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 3      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 4      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##                                      method nsnp            b         se
    ## 1 Inverse variance weighted (fixed effects)    6 -0.011884772 0.01997466
    ## 2                           Weighted median    6 -0.008292400 0.02925756
    ## 3                             Weighted mode    6  0.000714076 0.03982591
    ## 4                                  MR Egger    6  0.008152724 0.16308852
    ##        pval
    ## 1 0.5518486
    ## 2 0.7768491
    ## 3 0.9863882
    ## 4 0.9625273

<br>

::: {.figure style="text-align: center"}
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Lee2018education23andMe/mr_report_files/figure-markdown/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">
Fig. 5: Scatterplot of SNP effects for the association of the Exposure
on the Outcome after outlier removal
</p>
:::

<br>

**Table 11:** Heterogenity Tests after outlier removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ## 2      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##                      method        Q Q_df     Q_pval
    ## 1                  MR Egger 10.24785    4 0.03645341
    ## 2 Inverse variance weighted 10.28807    5 0.06747257

<br>

**Table 12:** MR Egger test for directional pleitropy after outlier
removal

    ##   id.exposure id.outcome                 outcome      exposure
    ## 1      clXPXt     wLjPtg Lee2018education23andMe Deming2017tau
    ##   egger_intercept          se      pval
    ## 1   -0.0006923045 0.005525445 0.9063357

<br>
