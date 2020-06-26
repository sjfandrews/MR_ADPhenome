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

### Outcome: Systolic Blood Pressure
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with CSF Tau avaliable in Systolic Blood Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10800664","2":"1","3":"199959856","4":"C","5":"T","6":"0.4905","7":"0.0016","8":"0.0302","9":"0.05298013","10":"0.95860","11":"738169","12":"Systolic_Blood_Pressure"},{"1":"rs4674842","2":"2","3":"224880514","4":"T","5":"G","6":"0.2395","7":"-0.0474","8":"0.0352","9":"-1.34659000","10":"0.17850","11":"738168","12":"Systolic_Blood_Pressure"},{"1":"rs35055419","2":"3","3":"190663557","4":"T","5":"C","6":"0.3768","7":"0.0494","8":"0.0314","9":"1.57325000","10":"0.11590","11":"738170","12":"Systolic_Blood_Pressure"},{"1":"rs7737716","2":"5","3":"118217474","4":"C","5":"T","6":"0.1276","7":"-0.0186","8":"0.0456","9":"-0.40789474","10":"0.68270","11":"738168","12":"Systolic_Blood_Pressure"},{"1":"rs13255475","2":"8","3":"121468076","4":"T","5":"C","6":"0.6826","7":"-0.0186","8":"0.0325","9":"-0.57230800","10":"0.56690","11":"729449","12":"Systolic_Blood_Pressure"},{"1":"rs624290","2":"9","3":"3928115","4":"C","5":"T","6":"0.9038","7":"0.0686","8":"0.0510","9":"1.34509804","10":"0.17900","11":"745820","12":"Systolic_Blood_Pressure"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.1260","7":"0.1018","8":"0.0465","9":"2.18924731","10":"0.02839","11":"740415","12":"Systolic_Blood_Pressure"},{"1":"rs1513737","2":"21","3":"24166144","4":"T","5":"C","6":"0.5307","7":"-0.0354","8":"0.0308","9":"-1.14935000","10":"0.25020","11":"744813","12":"Systolic_Blood_Pressure"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Systolic Blood Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized CSF Tau and Systolic Blood Pressure datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[35],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[36],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10800664","2":"T","3":"C","4":"T","5":"C","6":"-0.02591","7":"0.0016","8":"0.4182820","9":"0.4905","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"1","15":"199959856","16":"0.0302","17":"0.05298013","18":"0.95860","19":"738169","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"1","24":"199959856","25":"0.005653","26":"-4.583407","27":"4.770e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs13255475","2":"C","3":"T","4":"C","5":"T","6":"0.02793","7":"-0.0186","8":"0.6631540","9":"0.6826","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"8","15":"121468076","16":"0.0325","17":"-0.57230800","18":"0.56690","19":"729449","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"8","24":"121468076","25":"0.006049","26":"4.617290","27":"4.032e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs1513737","2":"C","3":"T","4":"C","5":"T","6":"-0.02597","7":"-0.0354","8":"0.5373410","9":"0.5307","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"21","15":"24166144","16":"0.0308","17":"-1.14935000","18":"0.25020","19":"744813","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"21","24":"24166144","25":"0.005620","26":"-4.621000","27":"3.986e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs35055419","2":"C","3":"T","4":"C","5":"T","6":"0.04004","7":"0.0494","8":"0.3498150","9":"0.3768","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"3","15":"190663557","16":"0.0314","17":"1.57325000","18":"0.11590","19":"738170","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"3","24":"190663557","25":"0.006006","26":"6.666667","27":"3.071e-11","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4674842","2":"G","3":"T","4":"G","5":"T","6":"-0.03081","7":"-0.0474","8":"0.3079300","9":"0.2395","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"2","15":"224880514","16":"0.0352","17":"-1.34659000","18":"0.17850","19":"738168","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"2","24":"224880514","25":"0.006491","26":"-4.746572","27":"2.158e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs624290","2":"T","3":"C","4":"T","5":"C","6":"0.04421","7":"0.0686","8":"0.8932200","9":"0.9038","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"9","15":"3928115","16":"0.0510","17":"1.34509804","18":"0.17900","19":"745820","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"9","24":"3928115","25":"0.009094","26":"4.861450","27":"1.223e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs769449","2":"A","3":"G","4":"A","5":"G","6":"0.07821","7":"0.1018","8":"0.0998545","9":"0.1260","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"19","15":"45410002","16":"0.0465","17":"2.18924731","18":"0.02839","19":"740415","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"19","24":"45410002","25":"0.006911","26":"11.316741","27":"4.054e-29","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"FALSE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7737716","2":"T","3":"C","4":"T","5":"C","6":"0.04066","7":"-0.0186","8":"0.1334780","9":"0.1276","10":"FALSE","11":"FALSE","12":"FALSE","13":"Q3lkfo","14":"5","15":"118217474","16":"0.0456","17":"-0.40789474","18":"0.68270","19":"738168","20":"Evangelou2018sbp","21":"TRUE","22":"reported","23":"5","24":"118217474","25":"0.008535","26":"4.763913","27":"1.984e-06","28":"3146","29":"Deming2017tau","30":"TRUE","31":"reported","32":"wWgl4L","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Systolic Blood Pressure GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs769449","2":"19","3":"45410002","4":"4.054e-29","5":"0.02839"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.05553337","3":"26.3586","4":"0.05","5":"3.242855","6":"0.4368518"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted CSF Tau on Systolic Blood Pressure.
<br>

**Table 6** MR causaul estimates for CSF Tau on Systolic Blood Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"Inverse variance weighted (fixed effects)","6":"7","7":"0.7215463","8":"0.4040859","9":"0.07415985"},{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"Weighted median","6":"7","7":"1.1335839","8":"0.5389785","9":"0.03544758"},{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"Weighted mode","6":"7","7":"1.3725188","8":"0.7842291","9":"0.13066345"},{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"MR Egger","6":"7","7":"1.8733852","8":"1.9816684","9":"0.38788475"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with CSF Tau versus the association in Systolic Blood Pressure and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/Deming2017tau_5e-6_Evangelou2018sbp_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"MR Egger","6":"4.374469","7":"5","8":"0.4968526"},{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"Inverse variance weighted","6":"4.726974","7":"6","8":"0.5792767"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/Deming2017tau_5e-6_Evangelou2018sbp_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/Deming2017tau_5e-6_Evangelou2018sbp_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"-0.03828466","6":"0.06448251","7":"0.5785377"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"5e-06","6":"FALSE","7":"0","8":"6.387577","9":"0.577"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017tau/Evangelou2018sbp/Deming2017tau_5e-6_Evangelou2018sbp_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"wWgl4L","2":"Q3lkfo","3":"Evangelou2018sbp","4":"Deming2017tau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
