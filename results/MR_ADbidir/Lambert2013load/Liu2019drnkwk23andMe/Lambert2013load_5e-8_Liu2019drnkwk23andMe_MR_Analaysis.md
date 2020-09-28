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
**SNP Inclusion:** SNPS associated with at a p-value threshold of p < 5e-8 were included in this analysis.
<br>

**LD Clumping:** For standard two sample MR it is important to ensure that the instruments for the exposure are independent. LD clumping was performed in PLINK using the EUR samples from the 1000 Genomes Project to estimate LD between SNPs, and, amongst SNPs that have an LD above a given threshold, retain only the SNP with the lowest p-value. A clumping window of 10^{4}, r2 of 0.001 and significance level of 1 was used for the index and secondary SNPs.
<br>

**Proxy SNPs:** Where SNPs were not available in the outcome GWAS, the EUR thousand genomes was queried to identify potential proxy SNPs that are in linkage disequilibrium (r2 > 0.8) of the missing SNP.
<br>

### Exposure: LOAD
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with LOAD
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs1752684","2":"1","3":"207747296","4":"A","5":"G","6":"0.77110600","7":"-0.1541","8":"0.0196","9":"-7.862240","10":"3.653000e-15","11":"54162","12":"LOAD"},{"1":"rs4663105","2":"2","3":"127891427","4":"A","5":"C","6":"0.41197700","7":"0.1837","8":"0.0172","9":"10.680233","10":"1.001000e-26","11":"54162","12":"LOAD"},{"1":"rs9272561","2":"6","3":"32607141","4":"G","5":"A","6":"0.64853000","7":"-0.1360","8":"0.0230","9":"-5.913043","10":"3.376000e-09","11":"54162","12":"LOAD"},{"1":"rs9381563","2":"6","3":"47432637","4":"C","5":"T","6":"0.65647400","7":"-0.0968","8":"0.0166","9":"-5.831330","10":"5.300000e-09","11":"54162","12":"LOAD"},{"1":"rs10808026","2":"7","3":"143099133","4":"C","5":"A","6":"0.20418100","7":"-0.1393","8":"0.0206","9":"-6.762136","10":"1.417000e-11","11":"54162","12":"LOAD"},{"1":"rs7982","2":"8","3":"27462481","4":"A","5":"G","6":"0.61556700","7":"0.1400","8":"0.0165","9":"8.484850","10":"2.477000e-17","11":"54162","12":"LOAD"},{"1":"rs72924659","2":"11","3":"60103385","4":"C","5":"T","6":"0.25353600","7":"-0.1413","8":"0.0196","9":"-7.209184","10":"5.354000e-13","11":"54162","12":"LOAD"},{"1":"rs10792832","2":"11","3":"85867875","4":"A","5":"G","6":"0.66727500","7":"0.1297","8":"0.0161","9":"8.055900","10":"6.534000e-16","11":"54162","12":"LOAD"},{"1":"rs11218343","2":"11","3":"121435587","4":"T","5":"C","6":"0.03449530","7":"-0.2697","8":"0.0410","9":"-6.578049","10":"4.976000e-11","11":"54162","12":"LOAD"},{"1":"rs12590654","2":"14","3":"92938855","4":"G","5":"A","6":"0.34703500","7":"-0.0965","8":"0.0176","9":"-5.482955","10":"4.097000e-08","11":"54162","12":"LOAD"},{"1":"rs8093731","2":"18","3":"29088958","4":"C","5":"T","6":"0.00761697","7":"-0.6136","8":"0.1123","9":"-5.463936","10":"4.630000e-08","11":"54162","12":"LOAD"},{"1":"rs4147929","2":"19","3":"1063443","4":"A","5":"G","6":"0.83992600","7":"-0.1348","8":"0.0224","9":"-6.017860","10":"1.701000e-09","11":"54162","12":"LOAD"},{"1":"rs12972156","2":"19","3":"45387459","4":"C","5":"G","6":"0.15468800","7":"1.1399","8":"0.0256","9":"44.527344","10":"2.225074e-308","11":"54162","12":"LOAD"},{"1":"rs117310449","2":"19","3":"45393516","4":"C","5":"T","6":"0.01178820","7":"1.2135","8":"0.0966","9":"12.562112","10":"3.695000e-36","11":"54162","12":"LOAD"},{"1":"rs12977604","2":"19","3":"45442528","4":"C","5":"G","6":"0.52832700","7":"0.1507","8":"0.0184","9":"8.190217","10":"2.920000e-16","11":"54162","12":"LOAD"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Alcohol Consumption
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with LOAD avaliable in Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs1752684","2":"1","3":"207747296","4":"A","5":"G","6":"0.77110600","7":"-0.0011900800","8":"0.001031264","9":"-1.154","10":"0.24860","11":"939356","12":"Drinks_Per_Week"},{"1":"rs4663105","2":"2","3":"127891427","4":"A","5":"C","6":"0.41197700","7":"-0.0019921000","8":"0.001029507","9":"-1.935","10":"0.05301","11":"941280","12":"Drinks_Per_Week"},{"1":"rs9381563","2":"6","3":"47432637","4":"C","5":"T","6":"0.65647400","7":"0.0007585567","8":"0.001030648","9":"0.736","10":"0.46160","11":"941280","12":"Drinks_Per_Week"},{"1":"rs10808026","2":"7","3":"143099133","4":"C","5":"A","6":"0.20418100","7":"0.0016939515","8":"0.001029758","9":"1.645","10":"0.09991","11":"941280","12":"Drinks_Per_Week"},{"1":"rs7982","2":"8","3":"27462481","4":"A","5":"G","6":"0.61556700","7":"0.0010962400","8":"0.001030299","9":"1.064","10":"0.28730","11":"941280","12":"Drinks_Per_Week"},{"1":"rs72924659","2":"11","3":"60103385","4":"C","5":"T","6":"0.25353600","7":"0.0000691394","8":"0.001031931","9":"0.067","10":"0.94640","11":"941280","12":"Drinks_Per_Week"},{"1":"rs10792832","2":"11","3":"85867875","4":"A","5":"G","6":"0.66727500","7":"-0.0017587300","8":"0.001029702","9":"-1.708","10":"0.08758","11":"941280","12":"Drinks_Per_Week"},{"1":"rs11218343","2":"11","3":"121435587","4":"T","5":"C","6":"0.03449530","7":"0.0005092910","8":"0.001030953","9":"0.494","10":"0.62160","11":"941280","12":"Drinks_Per_Week"},{"1":"rs12590654","2":"14","3":"92938855","4":"G","5":"A","6":"0.34703500","7":"0.0002062943","8":"0.001031471","9":"0.200","10":"0.84120","11":"941280","12":"Drinks_Per_Week"},{"1":"rs8093731","2":"18","3":"29088958","4":"C","5":"T","6":"0.00761697","7":"-0.0009157277","8":"0.001057422","9":"-0.866","10":"0.38630","11":"893955","12":"Drinks_Per_Week"},{"1":"rs4147929","2":"19","3":"1063443","4":"A","5":"G","6":"0.83992600","7":"0.0008326980","8":"0.001030567","9":"0.808","10":"0.41900","11":"941280","12":"Drinks_Per_Week"},{"1":"rs12972156","2":"19","3":"45387459","4":"C","5":"G","6":"0.15468800","7":"-0.0014481400","8":"0.001029973","9":"-1.406","10":"0.15970","11":"941280","12":"Drinks_Per_Week"},{"1":"rs117310449","2":"19","3":"45393516","4":"C","5":"T","6":"0.01178820","7":"-0.0002289753","8":"0.001031420","9":"-0.222","10":"0.82420","11":"941280","12":"Drinks_Per_Week"},{"1":"rs12977604","2":"19","3":"45442528","4":"C","5":"G","6":"0.52832700","7":"-0.0007570990","8":"0.001574011","9":"-0.481","10":"0.63040","11":"403931","12":"Drinks_Per_Week"},{"1":"rs9272561","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"rs9272561","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized LOAD and Alcohol Consumption datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10792832","2":"G","3":"A","4":"G","5":"A","6":"0.1297","7":"-0.0017587300","8":"0.66727500","9":"0.66727500","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"11","15":"85867875","16":"0.001029702","17":"-1.708","18":"0.08758","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"11","24":"85867875","25":"0.0161","26":"8.055900","27":"6.534e-16","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs10808026","2":"A","3":"C","4":"A","5":"C","6":"-0.1393","7":"0.0016939515","8":"0.20418100","9":"0.20418100","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"7","15":"143099133","16":"0.001029758","17":"1.645","18":"0.09991","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"7","24":"143099133","25":"0.0206","26":"-6.762136","27":"1.417e-11","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11218343","2":"C","3":"T","4":"C","5":"T","6":"-0.2697","7":"0.0005092910","8":"0.03449530","9":"0.03449530","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"11","15":"121435587","16":"0.001030953","17":"0.494","18":"0.62160","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"11","24":"121435587","25":"0.0410","26":"-6.578049","27":"4.976e-11","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs117310449","2":"T","3":"C","4":"T","5":"C","6":"1.2135","7":"-0.0002289753","8":"0.01178820","9":"0.01178820","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"19","15":"45393516","16":"0.001031420","17":"-0.222","18":"0.82420","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"19","24":"45393516","25":"0.0966","26":"12.562112","27":"3.695e-36","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12590654","2":"A","3":"G","4":"A","5":"G","6":"-0.0965","7":"0.0002062943","8":"0.34703500","9":"0.34703500","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"14","15":"92938855","16":"0.001031471","17":"0.200","18":"0.84120","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"14","24":"92938855","25":"0.0176","26":"-5.482955","27":"4.097e-08","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12972156","2":"G","3":"C","4":"G","5":"C","6":"1.1399","7":"-0.0014481400","8":"0.15468800","9":"0.15468800","10":"FALSE","11":"TRUE","12":"FALSE","13":"HtbTUk","14":"19","15":"45387459","16":"0.001029973","17":"-1.406","18":"0.15970","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"19","24":"45387459","25":"0.0256","26":"44.527344","27":"1.000e-200","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12977604","2":"G","3":"C","4":"G","5":"C","6":"0.1507","7":"-0.0007570990","8":"0.52832700","9":"0.52832700","10":"FALSE","11":"TRUE","12":"TRUE","13":"HtbTUk","14":"19","15":"45442528","16":"0.001574011","17":"-0.481","18":"0.63040","19":"403931","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"19","24":"45442528","25":"0.0184","26":"8.190217","27":"2.920e-16","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"FALSE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs1752684","2":"G","3":"A","4":"G","5":"A","6":"-0.1541","7":"-0.0011900800","8":"0.77110600","9":"0.77110600","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"1","15":"207747296","16":"0.001031264","17":"-1.154","18":"0.24860","19":"939356","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"1","24":"207747296","25":"0.0196","26":"-7.862240","27":"3.653e-15","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4147929","2":"G","3":"A","4":"G","5":"A","6":"-0.1348","7":"0.0008326980","8":"0.83992600","9":"0.83992600","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"19","15":"1063443","16":"0.001030567","17":"0.808","18":"0.41900","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"19","24":"1063443","25":"0.0224","26":"-6.017860","27":"1.701e-09","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4663105","2":"C","3":"A","4":"C","5":"A","6":"0.1837","7":"-0.0019921000","8":"0.41197700","9":"0.41197700","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"2","15":"127891427","16":"0.001029507","17":"-1.935","18":"0.05301","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"2","24":"127891427","25":"0.0172","26":"10.680233","27":"1.001e-26","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs72924659","2":"T","3":"C","4":"T","5":"C","6":"-0.1413","7":"0.0000691394","8":"0.25353600","9":"0.25353600","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"11","15":"60103385","16":"0.001031931","17":"0.067","18":"0.94640","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"11","24":"60103385","25":"0.0196","26":"-7.209184","27":"5.354e-13","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7982","2":"G","3":"A","4":"G","5":"A","6":"0.1400","7":"0.0010962400","8":"0.61556700","9":"0.61556700","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"8","15":"27462481","16":"0.001030299","17":"1.064","18":"0.28730","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"8","24":"27462481","25":"0.0165","26":"8.484850","27":"2.477e-17","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs8093731","2":"T","3":"C","4":"T","5":"C","6":"-0.6136","7":"-0.0009157277","8":"0.00761697","9":"0.00761697","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"18","15":"29088958","16":"0.001057422","17":"-0.866","18":"0.38630","19":"893955","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"18","24":"29088958","25":"0.1123","26":"-5.463936","27":"4.630e-08","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs9381563","2":"T","3":"C","4":"T","5":"C","6":"-0.0968","7":"0.0007585567","8":"0.65647400","9":"0.65647400","10":"FALSE","11":"FALSE","12":"FALSE","13":"HtbTUk","14":"6","15":"47432637","16":"0.001030648","17":"0.736","18":"0.46160","19":"941280","20":"Liu2019drnkwk23andMe","21":"TRUE","22":"reported","23":"6","24":"47432637","25":"0.0166","26":"-5.831330","27":"5.300e-09","28":"54162","29":"Lambert2013load","30":"TRUE","31":"reported","32":"QB8ghW","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Alcohol Consumption GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs117310449","2":"19","3":"45393516","4":"3.695e-36","5":"0.8242"},{"1":"rs12972156","2":"19","3":"45387459","4":"1.000e-200","5":"0.1597"},{"1":"rs12977604","2":"19","3":"45442528","4":"2.920e-16","5":"0.6304"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.00910816","3":"53.40817","4":"0.05","5":"2.302101","6":"0.329246"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted LOAD on Alcohol Consumption.
<br>

**Table 6** MR causaul estimates for LOAD on Alcohol Consumption
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"Inverse variance weighted (fixed effects)","6":"11","7":"-0.0005223409","8":"0.001329923","9":"0.6944965"},{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"Weighted median","6":"11","7":"0.0006689301","8":"0.001661417","9":"0.6872231"},{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"Weighted mode","6":"11","7":"0.0009739440","8":"0.001680192","9":"0.5749683"},{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"MR Egger","6":"11","7":"0.0027164824","8":"0.002457490","9":"0.2976633"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the association in Alcohol Consumption and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/Lambert2013load_5e-8_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"MR Egger","6":"10.72884","7":"9","8":"0.2947548"},{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"Inverse variance weighted","6":"13.91012","7":"10","8":"0.1771308"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/Lambert2013load_5e-8_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/Lambert2013load_5e-8_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"-0.0009401562","6":"0.0005755109","7":"0.136775"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"5e-08","6":"FALSE","7":"0","8":"21.94677","9":"0.085"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Lambert2013load/Liu2019drnkwk23andMe/Lambert2013load_5e-8_Liu2019drnkwk23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"QB8ghW","2":"HtbTUk","3":"Liu2019drnkwk23andMe","4":"Lambert2013load","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
