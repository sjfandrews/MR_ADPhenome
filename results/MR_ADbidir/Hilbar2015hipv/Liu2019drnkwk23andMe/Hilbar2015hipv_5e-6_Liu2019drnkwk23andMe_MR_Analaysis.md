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

### Exposure: Hippocampal Volume
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Hippocampal Volume
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs116621170","2":"2","3":"55490139","4":"A","5":"G","6":"0.00925926","7":"95.4350","8":"20.5586","9":"4.642096","10":"3.449e-06","11":"11373","12":"Hippocampal_Volume"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.55968800","7":"-23.7430","8":"4.6293","9":"-5.128850","10":"2.915e-07","11":"13163","12":"Hippocampal_Volume"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.36506200","7":"-23.1830","8":"4.7982","9":"-4.831604","10":"1.355e-06","11":"13163","12":"Hippocampal_Volume"},{"1":"rs78587286","2":"6","3":"14266689","4":"C","5":"T","6":"0.11467400","7":"36.8599","8":"7.8758","9":"4.680147","10":"2.867e-06","11":"12964","12":"Hippocampal_Volume"},{"1":"rs74597467","2":"8","3":"124108618","4":"C","5":"T","6":"0.05642240","7":"60.7326","8":"12.5281","9":"4.847710","10":"1.249e-06","11":"12536","12":"Hippocampal_Volume"},{"1":"rs12784431","2":"10","3":"135037575","4":"G","5":"A","6":"0.41287700","7":"-24.9666","8":"5.3102","9":"-4.701631","10":"2.581e-06","11":"10406","12":"Hippocampal_Volume"},{"1":"rs7396827","2":"11","3":"28577867","4":"T","5":"C","6":"0.53755400","7":"23.0675","8":"4.6564","9":"4.953930","10":"7.275e-07","11":"13163","12":"Hippocampal_Volume"},{"1":"rs453084","2":"11","3":"79594256","4":"G","5":"A","6":"0.60522500","7":"-23.1122","8":"5.0186","9":"-4.605310","10":"4.119e-06","11":"13163","12":"Hippocampal_Volume"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.14724000","7":"-43.4029","8":"6.8860","9":"-6.303064","10":"2.918e-10","11":"13163","12":"Hippocampal_Volume"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.07391780","7":"54.2058","8":"8.3684","9":"6.477439","10":"9.331e-11","11":"13163","12":"Hippocampal_Volume"},{"1":"rs6060507","2":"20","3":"34198334","4":"A","5":"G","6":"0.15883200","7":"28.5005","8":"6.2191","9":"4.582737","10":"4.590e-06","11":"13163","12":"Hippocampal_Volume"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Alcohol Consumption
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs116621170","2":"2","3":"55490139","4":"A","5":"G","6":"0.00925926","7":"-6.040660e-04","8":"0.001030830","9":"-0.586","10":"0.5579000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.55968800","7":"-4.455617e-03","8":"0.001027587","9":"-4.336","10":"0.0000145","11":"941280","12":"Drinks_Per_Week"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.36506200","7":"-1.920142e-03","8":"0.001029567","9":"-1.865","10":"0.0622100","11":"941280","12":"Drinks_Per_Week"},{"1":"rs78587286","2":"6","3":"14266689","4":"C","5":"T","6":"0.11467400","7":"1.303081e-03","8":"0.001030103","9":"1.265","10":"0.2057000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs74597467","2":"8","3":"124108618","4":"C","5":"T","6":"0.05642240","7":"1.445402e-05","8":"0.001032430","9":"0.014","10":"0.9885000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs12784431","2":"10","3":"135037575","4":"G","5":"A","6":"0.41287700","7":"-5.453482e-04","8":"0.001030904","9":"-0.529","10":"0.5967000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs7396827","2":"11","3":"28577867","4":"T","5":"C","6":"0.53755400","7":"-2.863170e-03","8":"0.001028807","9":"-2.783","10":"0.0053780","11":"941280","12":"Drinks_Per_Week"},{"1":"rs453084","2":"11","3":"79594256","4":"G","5":"A","6":"0.60522500","7":"1.290734e-03","8":"0.001030115","9":"1.253","10":"0.2102000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.14724000","7":"-1.502660e-03","8":"0.001029924","9":"-1.459","10":"0.1446000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.07391780","7":"2.753640e-04","8":"0.001031325","9":"0.267","10":"0.7896000","11":"941280","12":"Drinks_Per_Week"},{"1":"rs6060507","2":"20","3":"34198334","4":"A","5":"G","6":"0.15883200","7":"-1.512950e-03","8":"0.001029915","9":"-1.469","10":"0.1419000","11":"941280","12":"Drinks_Per_Week"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Hippocampal Volume and Alcohol Consumption datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[35],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[36],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["chr"],"align":["left"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs116621170","2":"G","3":"A","4":"G","5":"A","6":"95.4350","7":"-6.040660e-04","8":"0.00925926","9":"0.00925926","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"2","15":"55490139","16":"0.001030830","17":"-0.586","18":"0.5579000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"2","24":"55490139","25":"20.5586","26":"4.642096","27":"3.449e-06","28":"11373","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.885929e-06","38":"1","39":"TRUE"},{"1":"rs12784431","2":"A","3":"G","4":"A","5":"G","6":"-24.9666","7":"-5.453482e-04","8":"0.41287700","9":"0.41287700","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"10","15":"135037575","16":"0.001030904","17":"-0.529","18":"0.5967000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"10","24":"135037575","25":"5.3102","26":"-4.701631","27":"2.581e-06","28":"10406","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.030896e-07","38":"1","39":"TRUE"},{"1":"rs2268894","2":"T","3":"C","4":"T","5":"C","6":"-23.7430","7":"-4.455617e-03","8":"0.55968800","9":"0.55968800","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"2","15":"162856148","16":"0.001027587","17":"-4.336","18":"0.0000145","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"2","24":"162856148","25":"4.6293","26":"-5.128850","27":"2.915e-07","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.994458e-05","38":"<0.011","39":"FALSE"},{"1":"rs2289881","2":"T","3":"G","4":"T","5":"G","6":"-23.1830","7":"-1.920142e-03","8":"0.36506200","9":"0.36506200","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"5","15":"66084260","16":"0.001029567","17":"-1.865","18":"0.0622100","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"5","24":"66084260","25":"4.7982","26":"-4.831604","27":"1.355e-06","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"3.478848e-06","38":"0.77","39":"TRUE"},{"1":"rs453084","2":"A","3":"G","4":"A","5":"G","6":"-23.1122","7":"1.290734e-03","8":"0.60522500","9":"0.60522500","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"11","15":"79594256","16":"0.001030115","17":"1.253","18":"0.2102000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"11","24":"79594256","25":"5.0186","26":"-4.605310","27":"4.119e-06","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.026735e-06","38":"1","39":"TRUE"},{"1":"rs6060507","2":"G","3":"A","4":"G","5":"A","6":"28.5005","7":"-1.512950e-03","8":"0.15883200","9":"0.15883200","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"20","15":"34198334","16":"0.001029915","17":"-1.469","18":"0.1419000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"20","24":"34198334","25":"6.2191","26":"4.582737","27":"4.590e-06","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.877701e-06","38":"1","39":"TRUE"},{"1":"rs61921502","2":"G","3":"T","4":"G","5":"T","6":"-43.4029","7":"-1.502660e-03","8":"0.14724000","9":"0.14724000","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"12","15":"65832468","16":"0.001029924","17":"-1.459","18":"0.1446000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"12","24":"65832468","25":"6.8860","26":"-6.303064","27":"2.918e-10","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.063444e-06","38":"1","39":"TRUE"},{"1":"rs7396827","2":"C","3":"T","4":"C","5":"T","6":"23.0675","7":"-2.863170e-03","8":"0.53755400","9":"0.53755400","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"11","15":"28577867","16":"0.001028807","17":"-2.783","18":"0.0053780","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"11","24":"28577867","25":"4.6564","26":"4.953930","27":"7.275e-07","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"9.204733e-06","38":"0.033","39":"FALSE"},{"1":"rs74597467","2":"T","3":"C","4":"T","5":"C","6":"60.7326","7":"1.445402e-05","8":"0.05642240","9":"0.05642240","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"8","15":"124108618","16":"0.001032430","17":"0.014","18":"0.9885000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"8","24":"124108618","25":"12.5281","26":"4.847710","27":"1.249e-06","28":"12536","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"8.645488e-08","38":"1","39":"TRUE"},{"1":"rs77956314","2":"C","3":"T","4":"C","5":"T","6":"54.2058","7":"2.753640e-04","8":"0.07391780","9":"0.07391780","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"12","15":"117323367","16":"0.001031325","17":"0.267","18":"0.7896000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"12","24":"117323367","25":"8.3684","26":"6.477439","27":"9.331e-11","28":"13163","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.416307e-09","38":"1","39":"TRUE"},{"1":"rs78587286","2":"T","3":"C","4":"T","5":"C","6":"36.8599","7":"1.303081e-03","8":"0.11467400","9":"0.11467400","10":"FALSE","11":"FALSE","12":"FALSE","13":"7qtJvR","14":"6","15":"14266689","16":"0.001030103","17":"1.265","18":"0.2057000","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"6","24":"14266689","25":"7.8758","26":"4.680147","27":"2.867e-06","28":"12964","29":"Hilbar2015hipv","30":"TRUE","31":"reported","32":"bIP5oS","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.484314e-06","38":"1","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Alcohol Consumption GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.02105511","3":"26.74026","4":"0.05","5":"1.6395532","6":"0.2490030"},{"1":"TRUE","2":"0.01733137","3":"26.80438","4":"0.05","5":"0.7400681","6":"0.1381326"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Hippocampal Volume on Alcohol Consumption.
<br>

**Table 6** MR causaul estimates for Hippocampal Volume on Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Inverse variance weighted (fixed effects)","6":"11","7":"4.291024e-06","8":"6.859990e-06","9":"0.5316334"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Weighted median","6":"11","7":"-1.425590e-06","8":"9.081137e-06","9":"0.8752578"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Weighted mode","6":"11","7":"5.902263e-07","8":"8.197766e-06","9":"0.9440228"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"MR Egger","6":"11","7":"-1.012852e-05","8":"2.875845e-05","9":"0.7327998"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal Volume versus the association in Alcohol Consumption and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Liu2019drnkwk23andMe/Hilbar2015hipv_5e-6_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"MR Egger","6":"36.46095","7":"9","8":"3.283264e-05"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Inverse variance weighted","6":"37.78455","7":"10","8":"4.137236e-05"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Liu2019drnkwk23andMe/Hilbar2015hipv_5e-6_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Liu2019drnkwk23andMe/Hilbar2015hipv_5e-6_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"0.0007442626","6":"0.001302086","7":"0.58159"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"5e-06","6":"FALSE","7":"2","8":"41.82385","9":"0.001"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Inverse variance weighted (fixed effects)","6":"9","7":"2.641677e-06","8":"7.033693e-06","9":"0.7072332"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Weighted median","6":"9","7":"-1.386513e-06","8":"9.314500e-06","9":"0.8816678"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Weighted mode","6":"9","7":"1.085992e-07","8":"8.649001e-06","9":"0.9902893"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"MR Egger","6":"9","7":"-8.089246e-06","8":"1.903612e-05","9":"0.6836361"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2015hipv/Liu2019drnkwk23andMe/Hilbar2015hipv_5e-6_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"MR Egger","6":"10.86307","7":"7","8":"0.1447043"},{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"Inverse variance weighted","6":"11.48878","7":"8","8":"0.1755117"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"bIP5oS","2":"7qtJvR","3":"Liu2019drnkwk23andMe","4":"Hilbar2015hipv","5":"0.0005903494","6":"0.0009297157","7":"0.5456298"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
