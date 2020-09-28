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

### Outcome: Somking Initiation
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Brain Infarcts avaliable in Somking Initiation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs115769137","2":"2","3":"44154688","4":"C","5":"A","6":"0.0301052","7":"-0.0002613862","8":"0.0009013319","9":"-0.290","10":"0.7717000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs7652621","2":"3","3":"25626444","4":"T","5":"C","6":"0.0863283","7":"-0.0034936800","8":"0.0009203592","9":"-3.796","10":"0.0001469","11":"1174994","12":"Smoking_Initiation"},{"1":"rs6810023","2":"3","3":"107551521","4":"G","5":"A","6":"0.1482960","7":"-0.0006468215","8":"0.0009008656","9":"-0.718","10":"0.4730000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs75460203","2":"4","3":"32477947","4":"C","5":"T","6":"0.0428415","7":"-0.0005811012","8":"0.0009009321","9":"-0.645","10":"0.5192000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs39938","2":"5","3":"127663579","4":"T","5":"C","6":"0.8495400","7":"0.0004361290","8":"0.0009010920","9":"0.484","10":"0.6281000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs352757","2":"8","3":"15598037","4":"G","5":"A","6":"0.9058000","7":"0.0007818401","8":"0.0009007374","9":"0.868","10":"0.3855000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs7979834","2":"12","3":"71738608","4":"G","5":"A","6":"0.3599030","7":"-0.0017655980","8":"0.0012906418","9":"-1.368","10":"0.1713000","11":"599289","12":"Smoking_Initiation"},{"1":"rs12583648","2":"13","3":"21900055","4":"G","5":"C","6":"0.3536450","7":"-0.0011363503","8":"0.0009004360","9":"-1.262","10":"0.2071000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs74587705","2":"15","3":"91764992","4":"C","5":"T","6":"0.0156250","7":"0.0003199415","8":"0.0009012437","9":"0.355","10":"0.7227000","11":"1232091","12":"Smoking_Initiation"},{"1":"rs12373108","2":"16","3":"71432507","4":"C","5":"T","6":"0.1818020","7":"0.0026449774","8":"0.0008993463","9":"2.941","10":"0.0032750","11":"1232091","12":"Smoking_Initiation"},{"1":"rs150111968","2":"17","3":"2164327","4":"G","5":"A","6":"0.0197271","7":"-0.0024609556","8":"0.0008994721","9":"-2.736","10":"0.0062250","11":"1232091","12":"Smoking_Initiation"},{"1":"rs2427238","2":"20","3":"60480767","4":"G","5":"T","6":"0.9683410","7":"0.0009490765","8":"0.0009021640","9":"1.052","10":"0.2927000","11":"1227798","12":"Smoking_Initiation"},{"1":"rs75685347","2":"21","3":"27206913","4":"C","5":"T","6":"0.0155910","7":"0.0008279640","8":"0.0009261342","9":"0.894","10":"0.3714000","11":"1165375","12":"Smoking_Initiation"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Somking Initiation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Brain Infarcts and Somking Initiation datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["dbl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs115769137","2":"A","3":"C","4":"A","5":"C","6":"0.4470","7":"-0.0002613862","8":"0.0373","9":"0.0301052","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"2","15":"44154688","16":"0.0009013319","17":"-0.290","18":"0.7717000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"2","24":"44154688","25":"0.0976","26":"4.579918","27":"4.609e-06","28":"10524","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.930029e-07","38":"1.0000","39":"TRUE"},{"1":"rs12373108","2":"T","3":"C","4":"T","5":"C","6":"0.1916","7":"0.0026449774","8":"0.1700","9":"0.1818020","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"16","15":"71432507","16":"0.0008993463","17":"2.941","18":"0.0032750","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"16","24":"71432507","25":"0.0381","26":"5.028871","27":"5.018e-07","28":"19025","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"6.618525e-06","38":"0.0416","39":"FALSE"},{"1":"rs12583648","2":"C","3":"G","4":"C","5":"G","6":"0.1895","7":"-0.0011363503","8":"0.3310","9":"0.3536450","10":"FALSE","11":"TRUE","12":"FALSE","13":"Cq8hTh","14":"13","15":"21900055","16":"0.0009004360","17":"-1.262","18":"0.2071000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"13","24":"21900055","25":"0.0325","26":"5.830769","27":"5.815e-09","28":"20770","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.574468e-06","38":"1.0000","39":"TRUE"},{"1":"rs150111968","2":"A","3":"G","4":"A","5":"G","6":"-0.7063","7":"-0.0024609556","8":"0.0753","9":"0.0197271","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"17","15":"2164327","16":"0.0008994721","17":"-2.736","18":"0.0062250","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"17","24":"2164327","25":"0.1508","26":"-4.683687","27":"2.813e-06","28":"7588","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"6.243400e-06","38":"0.1313","39":"TRUE"},{"1":"rs2427238","2":"T","3":"G","4":"T","5":"G","6":"-0.4244","7":"0.0009490765","8":"0.9040","9":"0.9683410","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"20","15":"60480767","16":"0.0009021640","17":"1.052","18":"0.2927000","19":"1227798","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"20","24":"60480767","25":"0.0923","26":"-4.598050","27":"4.213e-06","28":"10769","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.578552e-06","38":"1.0000","39":"TRUE"},{"1":"rs352757","2":"A","3":"G","4":"A","5":"G","6":"0.1955","7":"0.0007818401","8":"0.8456","9":"0.9058000","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"8","15":"15598037","16":"0.0009007374","17":"0.868","18":"0.3855000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"8","24":"15598037","25":"0.0424","26":"4.610849","27":"4.088e-06","28":"19571","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"4.681505e-07","38":"1.0000","39":"TRUE"},{"1":"rs39938","2":"C","3":"T","4":"C","5":"T","6":"-0.1925","7":"0.0004361290","8":"0.7856","9":"0.8495400","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"5","15":"127663579","16":"0.0009010920","17":"0.484","18":"0.6281000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"5","24":"127663579","25":"0.0342","26":"-5.628650","27":"1.765e-08","28":"20067","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.000950e-07","38":"1.0000","39":"TRUE"},{"1":"rs6810023","2":"A","3":"G","4":"A","5":"G","6":"-0.1994","7":"-0.0006468215","8":"0.1510","9":"0.1482960","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"3","15":"107551521","16":"0.0009008656","17":"-0.718","18":"0.4730000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"3","24":"107551521","25":"0.0436","26":"-4.573394","27":"4.717e-06","28":"17843","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.976403e-07","38":"1.0000","39":"TRUE"},{"1":"rs74587705","2":"T","3":"C","4":"T","5":"C","6":"0.6153","7":"0.0003199415","8":"0.0252","9":"0.0156250","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"15","15":"91764992","16":"0.0009012437","17":"0.355","18":"0.7227000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"15","24":"91764992","25":"0.1206","26":"5.101990","27":"3.357e-07","28":"8363","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.006325e-10","38":"1.0000","39":"TRUE"},{"1":"rs75460203","2":"T","3":"C","4":"T","5":"C","6":"0.2568","7":"-0.0005811012","8":"0.1577","9":"0.0428415","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"4","15":"32477947","16":"0.0009009321","17":"-0.645","18":"0.5192000","19":"1232091","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"4","24":"32477947","25":"0.0560","26":"4.585714","27":"4.518e-06","28":"16652","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"5.437079e-07","38":"1.0000","39":"TRUE"},{"1":"rs75685347","2":"T","3":"C","4":"T","5":"C","6":"1.1947","7":"0.0008279640","8":"0.2092","9":"0.0155910","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"21","15":"27206913","16":"0.0009261342","17":"0.894","18":"0.3714000","19":"1165375","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"21","24":"27206913","25":"0.2496","26":"4.786458","27":"1.705e-06","28":"422","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.063884e-07","38":"1.0000","39":"TRUE"},{"1":"rs7652621","2":"C","3":"T","4":"C","5":"T","6":"0.2548","7":"-0.0034936800","8":"0.2001","9":"0.0863283","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"3","15":"25626444","16":"0.0009203592","17":"-3.796","18":"0.0001469","19":"1174994","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"3","24":"25626444","25":"0.0552","26":"4.615940","27":"3.908e-06","28":"16230","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.376699e-05","38":"0.0013","39":"FALSE"},{"1":"rs7979834","2":"A","3":"G","4":"A","5":"G","6":"0.2726","7":"-0.0017655980","8":"0.2310","9":"0.3599030","10":"FALSE","11":"FALSE","12":"FALSE","13":"Cq8hTh","14":"12","15":"71738608","16":"0.0012906418","17":"-1.368","18":"0.1713000","19":"599289","20":"Liu2019smkint23andMe","21":"TRUE","22":"reported","23":"12","24":"71738608","25":"0.0571","26":"4.774081","27":"1.816e-06","28":"19435","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GQZGkc","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.754838e-06","38":"1.0000","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Somking Initiation GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.01426416","3":"24.11910","4":"0.05","5":"0.006311873","6":"0.05072335"},{"1":"TRUE","2":"0.01215300","3":"24.23595","4":"0.05","5":"0.008559950","6":"0.05098113"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Brain Infarcts on Somking Initiation.
<br>

**Table 6** MR causaul estimates for Brain Infarcts on Somking Initiation
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted (fixed effects)","6":"13","7":"0.0005445552","8":"0.0005235716","9":"0.2983037"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Weighted median","6":"13","7":"0.0006440422","8":"0.0007220932","9":"0.3724411"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Weighted mode","6":"13","7":"0.0007198143","8":"0.0006540659","9":"0.2926911"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"13","7":"0.0015746023","8":"0.0016046146","9":"0.3475370"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Brain Infarcts versus the association in Somking Initiation and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Liu2019smkint23andMe/Chauhan2019bi_5e-6_Liu2019smkint23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"34.98115","7":"11","8":"0.0002495816"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted","6":"36.96237","7":"12","8":"0.0002265669"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Liu2019smkint23andMe/Chauhan2019bi_5e-6_Liu2019smkint23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Liu2019smkint23andMe/Chauhan2019bi_5e-6_Liu2019smkint23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"-0.0006190105","6":"0.0007842466","7":"0.446613"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"5e-06","6":"FALSE","7":"2","8":"40.75633","9":"0.0028"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted (fixed effects)","6":"11","7":"0.0006837556","8":"0.0005325550","9":"0.1991715"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Weighted median","6":"11","7":"0.0006450364","8":"0.0007330460","9":"0.3788919"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Weighted mode","6":"11","7":"0.0005829149","8":"0.0007077209","9":"0.4293438"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"11","7":"0.0017453794","8":"0.0010531217","9":"0.1318295"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/Liu2019smkint23andMe/Chauhan2019bi_5e-6_Liu2019smkint23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"11.42622","7":"9","8":"0.2476205"},{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted","6":"13.33662","7":"10","8":"0.2054552"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"GQZGkc","2":"Cq8hTh","3":"Liu2019smkint23andMe","4":"Chauhan2019bi","5":"-0.000676574","6":"0.0005515485","7":"0.2510651"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
