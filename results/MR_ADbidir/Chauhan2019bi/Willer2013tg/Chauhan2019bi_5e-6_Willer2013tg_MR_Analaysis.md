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

### Exposure: Brain Infarcts
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Brain Infarcts
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs115769137","2":"2","3":"44154688","4":"C","5":"A","6":"0.0373","7":"0.4470","8":"0.0976","9":"4.579918","10":"4.609e-06","11":"10524","12":"brain_infarcts"},{"1":"rs7652621","2":"3","3":"25626444","4":"T","5":"C","6":"0.2001","7":"0.2548","8":"0.0552","9":"4.615940","10":"3.908e-06","11":"16230","12":"brain_infarcts"},{"1":"rs6810023","2":"3","3":"107551521","4":"G","5":"A","6":"0.1510","7":"-0.1994","8":"0.0436","9":"-4.573394","10":"4.717e-06","11":"17843","12":"brain_infarcts"},{"1":"rs75460203","2":"4","3":"32477947","4":"C","5":"T","6":"0.1577","7":"0.2568","8":"0.0560","9":"4.585714","10":"4.518e-06","11":"16652","12":"brain_infarcts"},{"1":"rs39938","2":"5","3":"127663579","4":"T","5":"C","6":"0.7856","7":"-0.1925","8":"0.0342","9":"-5.628650","10":"1.765e-08","11":"20067","12":"brain_infarcts"},{"1":"rs352757","2":"8","3":"15598037","4":"G","5":"A","6":"0.8456","7":"0.1955","8":"0.0424","9":"4.610849","10":"4.088e-06","11":"19571","12":"brain_infarcts"},{"1":"rs7979834","2":"12","3":"71738608","4":"G","5":"A","6":"0.2310","7":"0.2726","8":"0.0571","9":"4.774081","10":"1.816e-06","11":"19435","12":"brain_infarcts"},{"1":"rs12583648","2":"13","3":"21900055","4":"G","5":"C","6":"0.3310","7":"0.1895","8":"0.0325","9":"5.830769","10":"5.815e-09","11":"20770","12":"brain_infarcts"},{"1":"rs74587705","2":"15","3":"91764992","4":"C","5":"T","6":"0.0252","7":"0.6153","8":"0.1206","9":"5.101990","10":"3.357e-07","11":"8363","12":"brain_infarcts"},{"1":"rs12373108","2":"16","3":"71432507","4":"C","5":"T","6":"0.1700","7":"0.1916","8":"0.0381","9":"5.028871","10":"5.018e-07","11":"19025","12":"brain_infarcts"},{"1":"rs150111968","2":"17","3":"2164327","4":"G","5":"A","6":"0.0753","7":"-0.7063","8":"0.1508","9":"-4.683687","10":"2.813e-06","11":"7588","12":"brain_infarcts"},{"1":"rs2427238","2":"20","3":"60480767","4":"G","5":"T","6":"0.9040","7":"-0.4244","8":"0.0923","9":"-4.598050","10":"4.213e-06","11":"10769","12":"brain_infarcts"},{"1":"rs75685347","2":"21","3":"27206913","4":"C","5":"T","6":"0.2092","7":"1.1947","8":"0.2496","9":"4.786458","10":"1.705e-06","11":"422","12":"brain_infarcts"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Triglycerides
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Brain Infarcts avaliable in Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs6810023","2":"3","3":"107551521","4":"G","5":"A","6":"0.148296","7":"-0.0079","8":"0.0066","9":"-1.1969700","10":"0.3149","11":"91013","12":"Triglycerides"},{"1":"rs352757","2":"8","3":"15598037","4":"G","5":"A","6":"0.905800","7":"-0.0001","8":"0.0071","9":"-0.0140845","10":"0.9281","11":"91013","12":"Triglycerides"},{"1":"rs2427238","2":"20","3":"60480767","4":"G","5":"T","6":"0.968341","7":"-0.0016","8":"0.0142","9":"-0.1126760","10":"0.9670","11":"60679","12":"Triglycerides"},{"1":"rs115769137","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs7652621","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs75460203","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs39938","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs7979834","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs12583648","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs74587705","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs12373108","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs150111968","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs75685347","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs75460203","2":"rs12504092","3":"1.000000","4":"1.000000","5":"TT/CA","6":"NA","7":"4","8":"32483161","9":"A","10":"T","11":"0.0429348","12":"0.0310","13":"0.0141","14":"2.1985816","15":"0.0870","16":"82035","17":"Triglycerides","18":"T","19":"T","20":"C","21":"A","22":"T","23":"C","24":"TRUE"},{"1":"rs39938","2":"rs255725","3":"1.000000","4":"1.000000","5":"TC/CT","6":"NA","7":"5","8":"127652242","9":"C","10":"T","11":"0.8485670","12":"0.0076","13":"0.0060","14":"1.2666667","15":"0.3008","16":"90840","17":"Triglycerides","18":"T","19":"C","20":"C","21":"T","22":"C","23":"T","24":"TRUE"},{"1":"rs12583648","2":"rs9788333","3":"0.938999","4":"0.973292","5":"CG/GC","6":"NA","7":"13","8":"21876096","9":"C","10":"G","11":"0.3573550","12":"0.0027","13":"0.0049","14":"0.5510204","15":"0.9610","16":"90042","17":"Triglycerides","18":"C","19":"G","20":"G","21":"C","22":"C","23":"G","24":"TRUE"},{"1":"rs12373108","2":"rs11075886","3":"0.954270","4":"0.993213","5":"TT/CG","6":"NA","7":"16","8":"71430323","9":"G","10":"T","11":"0.1809090","12":"0.0092","13":"0.0065","14":"1.4153846","15":"0.4113","16":"89485","17":"Triglycerides","18":"T","19":"T","20":"C","21":"G","22":"T","23":"C","24":"TRUE"},{"1":"rs150111968","2":"rs7503849","3":"0.955550","4":"1.000000","5":"AT/GC","6":"NA","7":"17","8":"2114627","9":"C","10":"T","11":"0.0191327","12":"0.0054","13":"0.0163","14":"0.3312883","15":"0.6240","16":"89485","17":"Triglycerides","18":"A","19":"T","20":"G","21":"C","22":"A","23":"G","24":"TRUE"},{"1":"rs115769137","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs7652621","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs7979834","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs74587705","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs75685347","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Brain Infarcts and Triglycerides datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs12373108","2":"T","3":"C","4":"T","5":"C","6":"0.1916","7":"0.0092","8":"0.1700","9":"0.1809090","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"16","15":"71430323","16":"0.0065","17":"1.4153846","18":"0.4113","19":"89485","20":"Willer2013tg","21":"TRUE","22":"reported","23":"16","24":"71432507","25":"0.0381","26":"5.028871","27":"5.018e-07","28":"19025","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12583648","2":"C","3":"G","4":"C","5":"G","6":"0.1895","7":"0.0027","8":"0.3310","9":"0.3573550","10":"FALSE","11":"TRUE","12":"FALSE","13":"CXrIHl","14":"13","15":"21876096","16":"0.0049","17":"0.5510204","18":"0.9610","19":"90042","20":"Willer2013tg","21":"TRUE","22":"reported","23":"13","24":"21900055","25":"0.0325","26":"5.830769","27":"5.815e-09","28":"20770","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs150111968","2":"A","3":"G","4":"A","5":"G","6":"-0.7063","7":"0.0054","8":"0.0753","9":"0.0191327","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"17","15":"2114627","16":"0.0163","17":"0.3312883","18":"0.6240","19":"89485","20":"Willer2013tg","21":"TRUE","22":"reported","23":"17","24":"2164327","25":"0.1508","26":"-4.683687","27":"2.813e-06","28":"7588","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2427238","2":"T","3":"G","4":"T","5":"G","6":"-0.4244","7":"-0.0016","8":"0.9040","9":"0.9683410","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"20","15":"60480767","16":"0.0142","17":"-0.1126760","18":"0.9670","19":"60679","20":"Willer2013tg","21":"TRUE","22":"reported","23":"20","24":"60480767","25":"0.0923","26":"-4.598050","27":"4.213e-06","28":"10769","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs352757","2":"A","3":"G","4":"A","5":"G","6":"0.1955","7":"-0.0001","8":"0.8456","9":"0.9058000","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"8","15":"15598037","16":"0.0071","17":"-0.0140845","18":"0.9281","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"8","24":"15598037","25":"0.0424","26":"4.610849","27":"4.088e-06","28":"19571","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs39938","2":"C","3":"T","4":"C","5":"T","6":"-0.1925","7":"0.0076","8":"0.7856","9":"0.8485670","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"5","15":"127652242","16":"0.0060","17":"1.2666667","18":"0.3008","19":"90840","20":"Willer2013tg","21":"TRUE","22":"reported","23":"5","24":"127663579","25":"0.0342","26":"-5.628650","27":"1.765e-08","28":"20067","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6810023","2":"A","3":"G","4":"A","5":"G","6":"-0.1994","7":"-0.0079","8":"0.1510","9":"0.1482960","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"3","15":"107551521","16":"0.0066","17":"-1.1969700","18":"0.3149","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"3","24":"107551521","25":"0.0436","26":"-4.573394","27":"4.717e-06","28":"17843","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs75460203","2":"T","3":"C","4":"T","5":"C","6":"0.2568","7":"0.0310","8":"0.1577","9":"0.0429348","10":"FALSE","11":"FALSE","12":"FALSE","13":"CXrIHl","14":"4","15":"32483161","16":"0.0141","17":"2.1985816","18":"0.0870","19":"82035","20":"Willer2013tg","21":"TRUE","22":"reported","23":"4","24":"32477947","25":"0.0560","26":"4.585714","27":"4.518e-06","28":"16652","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"5AGFjx","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Triglycerides GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.009079287","3":"24.82229","4":"0.05","5":"2.200372","6":"0.3171112"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Brain Infarcts on Triglycerides.
<br>

**Table 6** MR causaul estimates for Brain Infarcts on Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"Inverse variance weighted (fixed effects)","6":"8","7":"0.010679310","8":"0.01106518","9":"0.3344810"},{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"Weighted median","6":"8","7":"0.003265123","8":"0.01463897","9":"0.8235019"},{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"Weighted mode","6":"8","7":"0.002968249","8":"0.01908987","9":"0.8808253"},{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"MR Egger","6":"8","7":"-0.006773023","8":"0.03520929","9":"0.8538022"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Brain Infarcts versus the association in Triglycerides and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Willer2013tg/Chauhan2019bi_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"MR Egger","6":"8.939814","7":"6","8":"0.1769913"},{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"Inverse variance weighted","6":"9.369054","7":"7","8":"0.2272340"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Willer2013tg/Chauhan2019bi_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Willer2013tg/Chauhan2019bi_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"0.004415015","6":"0.008225658","7":"0.6107576"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"5e-06","6":"FALSE","7":"0","8":"11.50078","9":"0.2749"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Willer2013tg/Chauhan2019bi_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"5AGFjx","2":"CXrIHl","3":"Willer2013tg","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
