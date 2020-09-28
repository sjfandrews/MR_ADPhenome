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

### Outcome: AUDIT Total
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Brain Infarcts avaliable in AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs115769137","2":"2","3":"44154688","4":"C","5":"A","6":"0.0301052","7":"-0.0016102910","8":"0.002661638","9":"-0.605","10":"0.54530","11":"141218","12":"AUDIT_Total"},{"1":"rs7652621","2":"3","3":"25626444","4":"T","5":"C","6":"0.0863283","7":"-0.0005879160","8":"0.002734495","9":"-0.215","10":"0.82970","11":"134229","12":"AUDIT_Total"},{"1":"rs6810023","2":"3","3":"107551521","4":"G","5":"A","6":"0.1482960","7":"-0.0004687527","8":"0.002678587","9":"-0.175","10":"0.86100","11":"139950","12":"AUDIT_Total"},{"1":"rs75460203","2":"4","3":"32477947","4":"C","5":"T","6":"0.0428415","7":"-0.0002610656","8":"0.002663934","9":"-0.098","10":"0.92170","11":"141667","12":"AUDIT_Total"},{"1":"rs39938","2":"5","3":"127663579","4":"T","5":"C","6":"0.8495400","7":"-0.0002370110","8":"0.002663050","9":"-0.089","10":"0.92890","11":"141788","12":"AUDIT_Total"},{"1":"rs352757","2":"8","3":"15598037","4":"G","5":"A","6":"0.9058000","7":"-0.0010205342","8":"0.002664580","9":"-0.383","10":"0.70170","11":"141127","12":"AUDIT_Total"},{"1":"rs12583648","2":"13","3":"21900055","4":"G","5":"C","6":"0.3536450","7":"-0.0005533610","8":"0.002673241","9":"-0.207","10":"0.83620","11":"140453","12":"AUDIT_Total"},{"1":"rs74587705","2":"15","3":"91764992","4":"C","5":"T","6":"0.0156250","7":"0.0009998253","8":"0.002659110","9":"0.376","10":"0.70710","11":"141716","12":"AUDIT_Total"},{"1":"rs12373108","2":"16","3":"71432507","4":"C","5":"T","6":"0.1818020","7":"-0.0047321242","8":"0.002654024","9":"-1.783","10":"0.07466","11":"141201","12":"AUDIT_Total"},{"1":"rs150111968","2":"17","3":"2164327","4":"G","5":"A","6":"0.0197271","7":"-0.0015960741","8":"0.002655697","9":"-0.601","10":"0.54800","11":"141854","12":"AUDIT_Total"},{"1":"rs75685347","2":"21","3":"27206913","4":"C","5":"T","6":"0.0155910","7":"0.0042637928","8":"0.002649964","9":"1.609","10":"0.10760","11":"141743","12":"AUDIT_Total"},{"1":"rs7979834","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs2427238","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"rs7979834","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"},{"1":"NA","2":"rs2427238","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Brain Infarcts and AUDIT Total datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs115769137","2":"A","3":"C","4":"A","5":"C","6":"0.4470","7":"-0.0016102910","8":"0.0373","9":"0.0301052","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"2","15":"44154688","16":"0.002661638","17":"-0.605","18":"0.54530","19":"141218","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"2","24":"44154688","25":"0.0976","26":"4.579918","27":"4.609e-06","28":"10524","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12373108","2":"T","3":"C","4":"T","5":"C","6":"0.1916","7":"-0.0047321242","8":"0.1700","9":"0.1818020","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"16","15":"71432507","16":"0.002654024","17":"-1.783","18":"0.07466","19":"141201","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"16","24":"71432507","25":"0.0381","26":"5.028871","27":"5.018e-07","28":"19025","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12583648","2":"C","3":"G","4":"C","5":"G","6":"0.1895","7":"-0.0005533610","8":"0.3310","9":"0.3536450","10":"FALSE","11":"TRUE","12":"FALSE","13":"aG5hSl","14":"13","15":"21900055","16":"0.002673241","17":"-0.207","18":"0.83620","19":"140453","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"13","24":"21900055","25":"0.0325","26":"5.830769","27":"5.815e-09","28":"20770","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs150111968","2":"A","3":"G","4":"A","5":"G","6":"-0.7063","7":"-0.0015960741","8":"0.0753","9":"0.0197271","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"17","15":"2164327","16":"0.002655697","17":"-0.601","18":"0.54800","19":"141854","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"17","24":"2164327","25":"0.1508","26":"-4.683687","27":"2.813e-06","28":"7588","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs352757","2":"A","3":"G","4":"A","5":"G","6":"0.1955","7":"-0.0010205342","8":"0.8456","9":"0.9058000","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"8","15":"15598037","16":"0.002664580","17":"-0.383","18":"0.70170","19":"141127","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"8","24":"15598037","25":"0.0424","26":"4.610849","27":"4.088e-06","28":"19571","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs39938","2":"C","3":"T","4":"C","5":"T","6":"-0.1925","7":"-0.0002370110","8":"0.7856","9":"0.8495400","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"5","15":"127663579","16":"0.002663050","17":"-0.089","18":"0.92890","19":"141788","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"5","24":"127663579","25":"0.0342","26":"-5.628650","27":"1.765e-08","28":"20067","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6810023","2":"A","3":"G","4":"A","5":"G","6":"-0.1994","7":"-0.0004687527","8":"0.1510","9":"0.1482960","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"3","15":"107551521","16":"0.002678587","17":"-0.175","18":"0.86100","19":"139950","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"3","24":"107551521","25":"0.0436","26":"-4.573394","27":"4.717e-06","28":"17843","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs74587705","2":"T","3":"C","4":"T","5":"C","6":"0.6153","7":"0.0009998253","8":"0.0252","9":"0.0156250","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"15","15":"91764992","16":"0.002659110","17":"0.376","18":"0.70710","19":"141716","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"15","24":"91764992","25":"0.1206","26":"5.101990","27":"3.357e-07","28":"8363","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs75460203","2":"T","3":"C","4":"T","5":"C","6":"0.2568","7":"-0.0002610656","8":"0.1577","9":"0.0428415","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"4","15":"32477947","16":"0.002663934","17":"-0.098","18":"0.92170","19":"141667","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"4","24":"32477947","25":"0.0560","26":"4.585714","27":"4.518e-06","28":"16652","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs75685347","2":"T","3":"C","4":"T","5":"C","6":"1.1947","7":"0.0042637928","8":"0.2092","9":"0.0155910","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"21","15":"27206913","16":"0.002649964","17":"1.609","18":"0.10760","19":"141743","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"21","24":"27206913","25":"0.2496","26":"4.786458","27":"1.705e-06","28":"422","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7652621","2":"C","3":"T","4":"C","5":"T","6":"0.2548","7":"-0.0005879160","8":"0.2001","9":"0.0863283","10":"FALSE","11":"FALSE","12":"FALSE","13":"aG5hSl","14":"3","15":"25626444","16":"0.002734495","17":"-0.215","18":"0.82970","19":"134229","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"3","24":"25626444","25":"0.0552","26":"4.615940","27":"3.908e-06","28":"16230","29":"Chauhan2019bi","30":"TRUE","31":"reported","32":"GK6DI9","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the AUDIT Total GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.01224495","3":"24.4216","4":"0.05","5":"0.6328762","6":"0.1250553"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Brain Infarcts on AUDIT Total.
<br>

**Table 6** MR causaul estimates for Brain Infarcts on AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted (fixed effects)","6":"11","7":"0.001722392","8":"0.001580950","9":"0.27594822"},{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"Weighted median","6":"11","7":"0.002343404","8":"0.002116276","9":"0.26815365"},{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"Weighted mode","6":"11","7":"0.002830507","8":"0.001915152","9":"0.17021056"},{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"11","7":"0.005181235","8":"0.002619837","9":"0.07935364"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Brain Infarcts versus the association in AUDIT Total and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/SanchezRoige2019auditt23andMe/Chauhan2019bi_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"MR Egger","6":"2.992208","7":"9","8":"0.9646031"},{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"Inverse variance weighted","6":"5.733548","7":"10","8":"0.8371305"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/SanchezRoige2019auditt23andMe/Chauhan2019bi_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/SanchezRoige2019auditt23andMe/Chauhan2019bi_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"-0.002207679","6":"0.001333382","7":"0.1321659"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"5e-06","6":"FALSE","7":"0","8":"8.155775","9":"0.7636"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Chauhan2019bi/SanchezRoige2019auditt23andMe/Chauhan2019bi_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"GK6DI9","2":"aG5hSl","3":"SanchezRoige2019auditt23andMe","4":"Chauhan2019bi","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
