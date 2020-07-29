---
title: "Mendelian Randomization Analysis"
author: "Dr. Shea Andrews"
date: "2020-07-25"
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
**SNP Inclusion:** SNPS associated with at a p-value threshold of p < 5e-6 were included in this analysis.
<br>

**LD Clumping:** For standard two sample MR it is important to ensure that the instruments for the exposure are independent. LD clumping was performed in PLINK using the EUR samples from the 1000 Genomes Project to estimate LD between SNPs, and, amongst SNPs that have an LD above a given threshold, retain only the SNP with the lowest p-value. A clumping window of 10^{4}, r2 of 0.001 and significance level of 1 was used for the index and secondary SNPs.
<br>

**Proxy SNPs:** Where SNPs were not available in the outcome GWAS, the EUR thousand genomes was queried to identify potential proxy SNPs that are in linkage disequilibrium (r2 > 0.8) of the missing SNP.
<br>

### Exposure: CSF Tau
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with CSF Tau
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10800664","2":"1","3":"199959856","4":"C","5":"T","6":"0.4182820","7":"-0.02591","8":"0.005653","9":"-4.583407","10":"4.770e-06","11":"3146","12":"CSF_tau"},{"1":"rs4674842","2":"2","3":"224880514","4":"T","5":"G","6":"0.3079300","7":"-0.03081","8":"0.006491","9":"-4.746572","10":"2.158e-06","11":"3146","12":"CSF_tau"},{"1":"rs35055419","2":"3","3":"190663557","4":"T","5":"C","6":"0.3498150","7":"0.04004","8":"0.006006","9":"6.666667","10":"3.071e-11","11":"3146","12":"CSF_tau"},{"1":"rs7737716","2":"5","3":"118217474","4":"C","5":"T","6":"0.1334780","7":"0.04066","8":"0.008535","9":"4.763913","10":"1.984e-06","11":"3146","12":"CSF_tau"},{"1":"rs13255475","2":"8","3":"121468076","4":"T","5":"C","6":"0.6631540","7":"0.02793","8":"0.006049","9":"4.617290","10":"4.032e-06","11":"3146","12":"CSF_tau"},{"1":"rs624290","2":"9","3":"3928115","4":"C","5":"T","6":"0.8932200","7":"0.04421","8":"0.009094","9":"4.861450","10":"1.223e-06","11":"3146","12":"CSF_tau"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"0.07821","8":"0.006911","9":"11.316741","10":"4.054e-29","11":"3146","12":"CSF_tau"},{"1":"rs1513737","2":"21","3":"24166144","4":"T","5":"C","6":"0.5373410","7":"-0.02597","8":"0.005620","9":"-4.621000","10":"3.986e-06","11":"3146","12":"CSF_tau"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Total cholesterol
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with CSF Tau avaliable in Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs4674842","2":"2","3":"224880514","4":"T","5":"G","6":"0.3079300","7":"0.0027","8":"0.0059","9":"0.4576271","10":"8.563e-01","11":"94595.00","12":"Total_Cholesterol"},{"1":"rs7737716","2":"5","3":"118217474","4":"C","5":"T","6":"0.1334780","7":"-0.0116","8":"0.0077","9":"-1.5064900","10":"7.939e-02","11":"94595.00","12":"Total_Cholesterol"},{"1":"rs624290","2":"9","3":"3928115","4":"C","5":"T","6":"0.8932200","7":"-0.0049","8":"0.0088","9":"-0.5568180","10":"6.739e-01","11":"93845.00","12":"Total_Cholesterol"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"0.1589","8":"0.0072","9":"22.0694444","10":"6.770e-103","11":"93260.18","12":"Total_Cholesterol"},{"1":"rs1513737","2":"21","3":"24166144","4":"T","5":"C","6":"0.5373410","7":"-0.0041","8":"0.0058","9":"-0.7068970","10":"5.808e-01","11":"93067.00","12":"Total_Cholesterol"},{"1":"rs10800664","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs35055419","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs13255475","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10800664","2":"rs4915403","3":"0.988119","4":"1","5":"TA/CG","6":"NA","7":"1","8":"199966562","9":"G","10":"A","11":"0.422045","12":"0.0031","13":"0.0051","14":"0.6078431","15":"0.7280","16":"94564","17":"Total_Cholesterol","18":"T","19":"A","20":"C","21":"G","22":"T","23":"C","24":"TRUE"},{"1":"rs35055419","2":"rs2088882","3":"1.000000","4":"1","5":"CG/TA","6":"NA","7":"3","8":"190656524","9":"A","10":"G","11":"0.347834","12":"0.0023","13":"0.0052","14":"0.4423077","15":"0.8069","16":"94595","17":"Total_Cholesterol","18":"C","19":"G","20":"T","21":"A","22":"C","23":"T","24":"TRUE"},{"1":"rs13255475","2":"rs4870731","3":"1.000000","4":"1","5":"TA/CT","6":"NA","7":"8","8":"121475490","9":"A","10":"T","11":"0.663395","12":"0.0097","13":"0.0055","14":"1.7636364","15":"0.1429","16":"94595","17":"Total_Cholesterol","18":"T","19":"A","20":"C","21":"T","22":"C","23":"T","24":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized CSF Tau and Total cholesterol datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10800664","2":"T","3":"C","4":"T","5":"C","6":"-0.02591","7":"0.0031","8":"0.4182820","9":"0.4220450","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"1","15":"199966562","16":"0.0051","17":"0.6078431","18":"7.280e-01","19":"94564.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"1","24":"199959856","25":"0.005653","26":"-4.583407","27":"4.770e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs13255475","2":"C","3":"T","4":"C","5":"T","6":"0.02793","7":"0.0097","8":"0.6631540","9":"0.6633950","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"8","15":"121475490","16":"0.0055","17":"1.7636364","18":"1.429e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"8","24":"121468076","25":"0.006049","26":"4.617290","27":"4.032e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs1513737","2":"C","3":"T","4":"C","5":"T","6":"-0.02597","7":"-0.0041","8":"0.5373410","9":"0.5373410","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"21","15":"24166144","16":"0.0058","17":"-0.7068970","18":"5.808e-01","19":"93067.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"21","24":"24166144","25":"0.005620","26":"-4.621000","27":"3.986e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs35055419","2":"C","3":"T","4":"C","5":"T","6":"0.04004","7":"0.0023","8":"0.3498150","9":"0.3478340","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"3","15":"190656524","16":"0.0052","17":"0.4423077","18":"8.069e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"3","24":"190663557","25":"0.006006","26":"6.666667","27":"3.071e-11","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4674842","2":"G","3":"T","4":"G","5":"T","6":"-0.03081","7":"0.0027","8":"0.3079300","9":"0.3079300","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"2","15":"224880514","16":"0.0059","17":"0.4576271","18":"8.563e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"2","24":"224880514","25":"0.006491","26":"-4.746572","27":"2.158e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs624290","2":"T","3":"C","4":"T","5":"C","6":"0.04421","7":"-0.0049","8":"0.8932200","9":"0.8932200","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"9","15":"3928115","16":"0.0088","17":"-0.5568180","18":"6.739e-01","19":"93845.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"9","24":"3928115","25":"0.009094","26":"4.861450","27":"1.223e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs769449","2":"A","3":"G","4":"A","5":"G","6":"0.07821","7":"0.1589","8":"0.0998545","9":"0.0998545","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"19","15":"45410002","16":"0.0072","17":"22.0694444","18":"6.770e-103","19":"93260.18","20":"Willer2013tc","21":"TRUE","22":"reported","23":"19","24":"45410002","25":"0.006911","26":"11.316741","27":"4.054e-29","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7737716","2":"T","3":"C","4":"T","5":"C","6":"0.04066","7":"-0.0116","8":"0.1334780","9":"0.1334780","10":"FALSE","11":"FALSE","12":"FALSE","13":"2cjg0h","14":"5","15":"118217474","16":"0.0077","17":"-1.5064900","18":"7.939e-02","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"5","24":"118217474","25":"0.008535","26":"4.763913","27":"1.984e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"zsq1sD","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Total cholesterol GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs769449","2":"19","3":"45410002","4":"4.054e-29","5":"6.77e-103"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.05553337","3":"26.3586","4":"0.05","5":"0.001410607","6":"0.0501616"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted CSF Tau on Total cholesterol.
<br>

**Table 6** MR causaul estimates for CSF Tau on Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"Inverse variance weighted (fixed effects)","6":"7","7":"-0.003327723","8":"0.06878910","9":"0.9614168"},{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"Weighted median","6":"7","7":"-0.044642240","8":"0.09039185","9":"0.6213947"},{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"Weighted mode","6":"7","7":"-0.036146346","8":"0.13068338","9":"0.7913725"},{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"MR Egger","6":"7","7":"-0.347229728","8":"0.36859005","9":"0.3894211"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus the association in Total cholesterol and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tc/Deming2017tau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"MR Egger","6":"5.892120","7":"5","8":"0.3168581"},{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"Inverse variance weighted","6":"6.961877","7":"6","8":"0.3243872"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tc/Deming2017tau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tc/Deming2017tau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"0.01151042","6":"0.01208091","7":"0.3844571"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"5e-06","6":"FALSE","7":"0","8":"9.19865","9":"0.339"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Willer2013tc/Deming2017tau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"zsq1sD","2":"2cjg0h","3":"Willer2013tc","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
