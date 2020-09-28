---
title: "Mendelian Randomization Analysis"
author: "Dr. Shea Andrews"
date: "2020-09-27"
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

### Exposure: Neurofibrillary Tangles
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Neurofibrillary Tangles
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs11675119","2":"2","3":"3476422","4":"C","5":"A","6":"0.2699","7":"-0.2541","8":"0.0488","9":"-5.206967","10":"1.931e-07","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs34487851","2":"2","3":"106642554","4":"A","5":"G","6":"0.2686","7":"-0.2523","8":"0.0550","9":"-4.587270","10":"4.459e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs10166461","2":"2","3":"127859413","4":"G","5":"A","6":"0.1733","7":"-0.2636","8":"0.0570","9":"-4.624561","10":"3.816e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs116351076","2":"3","3":"118356759","4":"C","5":"T","6":"0.0358","7":"-0.6753","8":"0.1461","9":"-4.622177","10":"3.826e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs114498064","2":"5","3":"161442770","4":"C","5":"T","6":"0.0131","7":"-1.5100","8":"0.3137","9":"-4.813516","10":"1.480e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs117530689","2":"7","3":"102030935","4":"C","5":"A","6":"0.0178","7":"-4.0337","8":"0.8423","9":"-4.788911","10":"1.678e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs12595161","2":"15","3":"52922890","4":"G","5":"A","6":"0.0511","7":"-0.4178","8":"0.0914","9":"-4.571116","10":"4.883e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs75680843","2":"17","3":"26640212","4":"C","5":"T","6":"0.0721","7":"-0.3709","8":"0.0809","9":"-4.584672","10":"4.590e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs11654699","2":"17","3":"30903310","4":"C","5":"T","6":"0.5243","7":"0.2055","8":"0.0449","9":"4.576837","10":"4.628e-06","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs6857","2":"19","3":"45392254","4":"C","5":"T","6":"0.3219","7":"0.7871","8":"0.0565","9":"13.930973","10":"4.830e-44","11":"4735","12":"Neurofibrillary_Tangles"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Depression
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Neurofibrillary Tangles avaliable in Depression
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs11675119","2":"2","3":"3476422","4":"C","5":"A","6":"0.2551","7":"0.0038","8":"0.0041","9":"0.92682927","10":"0.35770","11":"807553","12":"Depression"},{"1":"rs34487851","2":"2","3":"106642554","4":"A","5":"G","6":"0.2796","7":"-0.0005","8":"0.0040","9":"-0.12500000","10":"0.90130","11":"807553","12":"Depression"},{"1":"rs10166461","2":"2","3":"127859413","4":"G","5":"A","6":"0.1904","7":"0.0041","8":"0.0045","9":"0.91111111","10":"0.36590","11":"807553","12":"Depression"},{"1":"rs116351076","2":"3","3":"118356759","4":"C","5":"T","6":"0.0316","7":"-0.0094","8":"0.0106","9":"-0.88679245","10":"0.37430","11":"807553","12":"Depression"},{"1":"rs114498064","2":"5","3":"161442770","4":"C","5":"T","6":"0.0126","7":"-0.0209","8":"0.0169","9":"-1.23668639","10":"0.21700","11":"807553","12":"Depression"},{"1":"rs12595161","2":"15","3":"52922890","4":"G","5":"A","6":"0.0392","7":"-0.0008","8":"0.0091","9":"-0.08791209","10":"0.92970","11":"807553","12":"Depression"},{"1":"rs75680843","2":"17","3":"26640212","4":"C","5":"T","6":"0.0657","7":"0.0180","8":"0.0072","9":"2.50000000","10":"0.01187","11":"807553","12":"Depression"},{"1":"rs6857","2":"19","3":"45392254","4":"C","5":"T","6":"0.1684","7":"0.0023","8":"0.0047","9":"0.48936170","10":"0.62720","11":"807553","12":"Depression"},{"1":"rs117530689","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs11654699","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Depression
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs11654699","2":"rs7224405","3":"1","4":"1","5":"TA/CC","6":"NA","7":"17","8":"30904731","9":"C","10":"A","11":"0.5101","12":"0.0012","13":"0.0036","14":"0.3333333","15":"0.7408","16":"807553","17":"Depression","18":"TRUE","19":"A","20":"C","21":"C","22":"TRUE","23":"C","24":"TRUE"},{"1":"rs117530689","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Neurofibrillary Tangles and Depression datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10166461","2":"A","3":"G","4":"A","5":"G","6":"-0.2636","7":"0.0041","8":"0.1733","9":"0.1904","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"2","15":"127859413","16":"0.0045","17":"0.91111111","18":"0.36590","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"2","24":"127859413","25":"0.0570","26":"-4.624561","27":"3.816e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs114498064","2":"T","3":"C","4":"T","5":"C","6":"-1.5100","7":"-0.0209","8":"0.0131","9":"0.0126","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"5","15":"161442770","16":"0.0169","17":"-1.23668639","18":"0.21700","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"5","24":"161442770","25":"0.3137","26":"-4.813516","27":"1.480e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs116351076","2":"T","3":"C","4":"T","5":"C","6":"-0.6753","7":"-0.0094","8":"0.0358","9":"0.0316","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"3","15":"118356759","16":"0.0106","17":"-0.88679245","18":"0.37430","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"3","24":"118356759","25":"0.1461","26":"-4.622177","27":"3.826e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11654699","2":"T","3":"C","4":"T","5":"C","6":"0.2055","7":"0.0012","8":"0.5243","9":"0.5101","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"17","15":"30904731","16":"0.0036","17":"0.33333333","18":"0.74080","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"17","24":"30903310","25":"0.0449","26":"4.576837","27":"4.628e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11675119","2":"A","3":"C","4":"A","5":"C","6":"-0.2541","7":"0.0038","8":"0.2699","9":"0.2551","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"2","15":"3476422","16":"0.0041","17":"0.92682927","18":"0.35770","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"2","24":"3476422","25":"0.0488","26":"-5.206967","27":"1.931e-07","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12595161","2":"A","3":"G","4":"A","5":"G","6":"-0.4178","7":"-0.0008","8":"0.0511","9":"0.0392","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"15","15":"52922890","16":"0.0091","17":"-0.08791209","18":"0.92970","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"15","24":"52922890","25":"0.0914","26":"-4.571116","27":"4.883e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs34487851","2":"G","3":"A","4":"G","5":"A","6":"-0.2523","7":"-0.0005","8":"0.2686","9":"0.2796","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"2","15":"106642554","16":"0.0040","17":"-0.12500000","18":"0.90130","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"2","24":"106642554","25":"0.0550","26":"-4.587270","27":"4.459e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6857","2":"T","3":"C","4":"T","5":"C","6":"0.7871","7":"0.0023","8":"0.3219","9":"0.1684","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"19","15":"45392254","16":"0.0047","17":"0.48936170","18":"0.62720","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"19","24":"45392254","25":"0.0565","26":"13.930973","27":"4.830e-44","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs75680843","2":"T","3":"C","4":"T","5":"C","6":"-0.3709","7":"0.0180","8":"0.0721","9":"0.0657","10":"FALSE","11":"FALSE","12":"FALSE","13":"SQRDDQ","14":"17","15":"26640212","16":"0.0072","17":"2.50000000","18":"0.01187","19":"807553","20":"Howard2019dep23andMe","21":"TRUE","22":"reported","23":"17","24":"26640212","25":"0.0809","26":"-4.584672","27":"4.590e-06","28":"4735","29":"Beecham2014braak4","30":"TRUE","31":"reported","32":"R60UhX","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Depression GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs6857","2":"19","3":"45392254","4":"4.83e-44","5":"0.6272"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
##   method = col_character(),
##   outliers_removed = col_logical(),
##   logistic = col_logical(),
##   beta = col_logical()
## )
```

```
## See spec(...) for full column specifications.
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.03816053","3":"23.43773","4":"0.05","5":"0.5164388","6":"0.110939"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Neurofibrillary Tangles on Depression.
<br>

**Table 6** MR causaul estimates for Neurofibrillary Tangles on Depression
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"Inverse variance weighted (fixed effects)","6":"8","7":"-0.001330312","8":"0.005651178","9":"0.8138949"},{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"Weighted median","6":"8","7":"0.003834492","8":"0.007661016","9":"0.6167090"},{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"Weighted mode","6":"8","7":"0.008354533","8":"0.010924131","9":"0.4693964"},{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"MR Egger","6":"8","7":"0.012712448","8":"0.013537018","9":"0.3839341"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Neurofibrillary Tangles versus the association in Depression and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Howard2019dep23andMe/Beecham2014braak4_5e-6_Howard2019dep23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"MR Egger","6":"8.355239","7":"6","8":"0.2132155"},{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"Inverse variance weighted","6":"10.333979","7":"7","8":"0.1704239"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Howard2019dep23andMe/Beecham2014braak4_5e-6_Howard2019dep23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Howard2019dep23andMe/Beecham2014braak4_5e-6_Howard2019dep23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"-0.005281547","6":"0.004430681","7":"0.2782501"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"5e-06","6":"FALSE","7":"0","8":"13.70713","9":"0.1634"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014braak4/Howard2019dep23andMe/Beecham2014braak4_5e-6_Howard2019dep23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"R60UhX","2":"SQRDDQ","3":"Howard2019dep23andMe","4":"Beecham2014braak4","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
