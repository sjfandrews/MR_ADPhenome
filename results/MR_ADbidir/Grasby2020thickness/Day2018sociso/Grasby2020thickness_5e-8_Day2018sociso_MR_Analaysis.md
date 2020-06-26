---
title: "Mendelian Randomization Analysis"
author: "Dr. Shea Andrews"
date: "2020-06-24"
output:
  html_document:
    df_print: paged
    keep_md: true
    toc: true
    number_sections: false
    toc_depth: 4
    toc_float:
      collapsed: false
      smooth_scroll: false
params:
  rwd: NA
  exposure.code: NA
  Exposure: NA
  exposure.snps: NA
  outcome.code: NA
  Outcome: NA
  outcome.snps: NA
  proxy.snps: NA
  harmonized.dat: NA
  p.threshold: NA
  r2.threshold: NA
  kb.threshold: NA
  mrpresso_global: NA
  mrpresso_global_wo_outliers: NA
  power: NA
  out: NA
editor_options:
  chunk_output_type: console
---






## Instrumental Variables
**SNP Inclusion:** SNPS associated with at a p-value threshold of p < 5e-8 were included in this analysis.
<br>

**LD Clumping:** For standard two sample MR it is important to ensure that the instruments for the exposure are independent. LD clumping was performed in PLINK using the EUR samples from the 1000 Genomes Project to estimate LD between SNPs, and, amongst SNPs that have an LD above a given threshold, retain only the SNP with the lowest p-value. A clumping window of 10^{4}, r2 of 0.001 and significance level of 1 was used for the index and secondary SNPs.
<br>

**Proxy SNPs:** Where SNPs were not available in the outcome GWAS, the EUR thousand genomes was queried to identify potential proxy SNPs that are in linkage disequilibrium (r2 > 0.8) of the missing SNP.
<br>

### Exposure: Cortical Thickness
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Cortical Thickness
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs6738528","2":"2","3":"27149258","4":"T","5":"A","6":"0.3984","7":"0.0045","8":"0.0008","9":"5.625000","10":"7.324e-09","11":"32872","12":"Cortical_Thickness"},{"1":"rs11692435","2":"2","3":"98275354","4":"G","5":"A","6":"0.0910","7":"-0.0091","8":"0.0015","9":"-6.066667","10":"3.179e-10","11":"29128","12":"Cortical_Thickness"},{"1":"rs533577","2":"3","3":"39489651","4":"C","5":"T","6":"0.4935","7":"-0.0050","8":"0.0008","9":"-6.250000","10":"8.426e-11","11":"32872","12":"Cortical_Thickness"},{"1":"rs35021943","2":"4","3":"121643239","4":"A","5":"C","6":"0.2422","7":"0.0051","8":"0.0009","9":"5.666670","10":"2.979e-09","11":"32872","12":"Cortical_Thickness"},{"1":"rs7824177","2":"8","3":"110585288","4":"A","5":"G","6":"0.1616","7":"-0.0059","8":"0.0010","9":"-5.900000","10":"8.922e-09","11":"32872","12":"Cortical_Thickness"},{"1":"rs2316766","2":"17","3":"43919068","4":"G","5":"T","6":"0.2098","7":"0.0069","8":"0.0011","9":"6.272727","10":"2.903e-10","11":"26063","12":"Cortical_Thickness"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Social Isolation
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Cortical Thickness avaliable in Social Isolation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs6738528","2":"2","3":"27149258","4":"T","5":"A","6":"0.388370","7":"-0.00088449","8":"0.00210152","9":"-0.420881","10":"0.67384176","11":"452302","12":"Social_Isolation"},{"1":"rs11692435","2":"2","3":"98275354","4":"G","5":"A","6":"0.083717","7":"0.00136172","8":"0.00369810","9":"0.368222","10":"0.71270799","11":"452302","12":"Social_Isolation"},{"1":"rs533577","2":"3","3":"39489651","4":"C","5":"T","6":"0.494260","7":"-0.00539806","8":"0.00204861","9":"-2.634990","10":"0.00841401","11":"452302","12":"Social_Isolation"},{"1":"rs35021943","2":"4","3":"121643239","4":"A","5":"C","6":"0.248628","7":"-0.00436570","8":"0.00236972","9":"-1.842280","10":"0.06543409","11":"452302","12":"Social_Isolation"},{"1":"rs7824177","2":"8","3":"110585288","4":"A","5":"G","6":"0.160511","7":"-0.00768218","8":"0.00279023","9":"-2.753240","10":"0.00590084","11":"452302","12":"Social_Isolation"},{"1":"rs2316766","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Social Isolation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs2316766","2":"rs2106785","3":"0.994535","4":"1","5":"TT/GC","6":"NA","7":"17","8":"43919105","9":"C","10":"TRUE","11":"0.221676","12":"0.0105137","13":"0.00246582","14":"4.26377","15":"2.01e-05","16":"452302","17":"Social_Isolation","18":"TRUE","19":"TRUE","20":"G","21":"C","22":"TRUE","23":"G","24":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Cortical Thickness and Social Isolation datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["target_snp.outcome"],"name":[24],"type":["chr"],"align":["left"]},{"label":["proxy_snp.outcome"],"name":[25],"type":["chr"],"align":["left"]},{"label":["target_a1.outcome"],"name":[26],"type":["lgl"],"align":["right"]},{"label":["target_a2.outcome"],"name":[27],"type":["chr"],"align":["left"]},{"label":["proxy_a1.outcome"],"name":[28],"type":["lgl"],"align":["right"]},{"label":["proxy_a2.outcome"],"name":[29],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[31],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[32],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[34],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[36],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[38],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[39],"type":["chr"],"align":["left"]},{"label":["action"],"name":[40],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[41],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[42],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[43],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[44],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[45],"type":["dbl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[46],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs11692435","2":"A","3":"G","4":"A","5":"G","6":"-0.0091","7":"0.00136172","8":"0.0910","9":"0.083717","10":"FALSE","11":"FALSE","12":"FALSE","13":"nV3pgs","14":"2","15":"98275354","16":"0.00369810","17":"0.368222","18":"0.71270799","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"2","31":"98275354","32":"0.0015","33":"-6.066667","34":"3.179e-10","35":"29128","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"6.021689e-05","45":"0.372","46":"TRUE"},{"1":"rs2316766","2":"T","3":"G","4":"T","5":"G","6":"0.0069","7":"0.01051370","8":"0.2098","9":"0.221676","10":"FALSE","11":"FALSE","12":"FALSE","13":"nV3pgs","14":"17","15":"43919105","16":"0.00246582","17":"4.263770","18":"0.00002010","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"TRUE","24":"rs2316766","25":"rs2106785","26":"TRUE","27":"G","28":"TRUE","29":"C","30":"17","31":"43919068","32":"0.0011","33":"6.272727","34":"2.903e-10","35":"26063","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"7.697870e-05","45":"0.006","46":"FALSE"},{"1":"rs35021943","2":"C","3":"A","4":"C","5":"A","6":"0.0051","7":"-0.00436570","8":"0.2422","9":"0.248628","10":"FALSE","11":"FALSE","12":"FALSE","13":"nV3pgs","14":"4","15":"121643239","16":"0.00236972","17":"-1.842280","18":"0.06543409","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"4","31":"121643239","32":"0.0009","33":"5.666670","34":"2.979e-09","35":"32872","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"6.913449e-05","45":"0.012","46":"FALSE"},{"1":"rs533577","2":"T","3":"C","4":"T","5":"C","6":"-0.0050","7":"-0.00539806","8":"0.4935","9":"0.494260","10":"FALSE","11":"FALSE","12":"FALSE","13":"nV3pgs","14":"3","15":"39489651","16":"0.00204861","17":"-2.634990","18":"0.00841401","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"3","31":"39489651","32":"0.0008","33":"-6.250000","34":"8.426e-11","35":"32872","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"1.040423e-05","45":"0.690","46":"TRUE"},{"1":"rs6738528","2":"A","3":"T","4":"A","5":"T","6":"0.0045","7":"-0.00088449","8":"0.3984","9":"0.388370","10":"FALSE","11":"TRUE","12":"FALSE","13":"nV3pgs","14":"2","15":"27149258","16":"0.00210152","17":"-0.420881","18":"0.67384176","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"2","31":"27149258","32":"0.0008","33":"5.625000","34":"7.324e-09","35":"32872","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"1.510891e-05","45":"0.414","46":"TRUE"},{"1":"rs7824177","2":"G","3":"A","4":"G","5":"A","6":"-0.0059","7":"-0.00768218","8":"0.1616","9":"0.160511","10":"FALSE","11":"FALSE","12":"FALSE","13":"nV3pgs","14":"8","15":"110585288","16":"0.00279023","17":"-2.753240","18":"0.00590084","19":"452302","20":"Day2018sociso","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"8","31":"110585288","32":"0.0010","33":"-5.900000","34":"8.922e-09","35":"32872","36":"Grasby2020thickness","37":"TRUE","38":"reported","39":"2DgZIC","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"2.627560e-05","45":"0.552","46":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Social Isolation GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


## Instrument Strength
To ensure that the first assumption of MR is not violated (Non-zero effect assumption), the genetic variants selected should be robustly associated with the exposure. Weak instruments, where the variance in the exposure explained by the the instruments is a small portion of the total variance, may result in poor precission and accuracy of the causal effect estiamte. The strength of an instrument can be evaluated using the F statistic, if F is less than 10, this is an indication of weak instrument.


```
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
```

```
## See spec(...) for full column specifications.
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.006343325","3":"35.85791","4":"0.05","5":"9.533767","6":"0.8702803"},{"1":"TRUE","2":"0.004263496","3":"36.07803","4":"0.05","5":"5.890299","6":"0.6797665"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Cortical Thickness on Social Isolation.
<br>

**Table 6** MR causaul estimates for Cortical Thickness on Social Isolation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Inverse variance weighted (fixed effects)","6":"6","7":"0.5491088","8":"0.1726951","9":"0.00147457"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Weighted median","6":"6","7":"0.4418412","8":"0.2605531","9":"0.08992717"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Weighted mode","6":"6","7":"1.2056668","8":"0.8321070","9":"0.20703118"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"MR Egger","6":"6","7":"1.2297900","8":"2.0041870","9":"0.57265044"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Cortical Thickness versus the association in Social Isolation and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/Grasby2020thickness_5e-8_Day2018sociso_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
<p class="caption">Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome</p>
</div>
<br>


## Pleiotropy
A Cochrans Q heterogeneity test can be used to formaly assesse for the presence of heterogenity (Table 7), with excessive heterogeneity indicating that there is a meaningful violation of at least one of the MR assumptions.
these assumptions..
<br>

**Table 7:** Heterogenity Tests
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"MR Egger","6":"25.52715","7":"4","8":"3.940778e-05"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Inverse variance weighted","6":"26.29989","7":"5","8":"7.804465e-05"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/Grasby2020thickness_5e-8_Day2018sociso_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/Grasby2020thickness_5e-8_Day2018sociso_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"-0.004020672","6":"0.01155453","7":"0.7454006"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["chr"],"align":["left"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"5e-08","6":"FALSE","7":"2","8":"38.64992","9":"<0.001"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Inverse variance weighted (fixed effects)","6":"4","7":"0.4957940","8":"0.2178630","9":"0.02286312"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Weighted median","6":"4","7":"0.3125287","8":"0.2667302","9":"0.24131622"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Weighted mode","6":"4","7":"-0.1016923","8":"0.4389819","9":"0.83170797"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"MR Egger","6":"4","7":"-0.2513888","8":"1.8861701","9":"0.90617255"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020thickness/Day2018sociso/Grasby2020thickness_5e-8_Day2018sociso_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"MR Egger","6":"8.913742","7":"2","8":"0.01159860"},{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"Inverse variance weighted","6":"9.657352","7":"3","8":"0.02171499"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"2DgZIC","2":"nV3pgs","3":"Day2018sociso","4":"Grasby2020thickness","5":"0.004332404","6":"0.01060648","7":"0.7225123"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
