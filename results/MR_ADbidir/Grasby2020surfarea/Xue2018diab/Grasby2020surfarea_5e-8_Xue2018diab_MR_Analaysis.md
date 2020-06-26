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

### Exposure: Cortical Surface Area
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Cortical Surface Area
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs12630663","2":"3","3":"28007315","4":"T","5":"C","6":"0.4117","7":"632.8110","8":"111.2125","9":"5.690110","10":"1.270e-08","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs34464850","2":"3","3":"141721762","4":"G","5":"C","6":"0.1534","7":"1233.1854","8":"152.7201","9":"8.074807","10":"6.758e-16","11":"31984","12":"Cortical_Surface_Area"},{"1":"rs2301718","2":"4","3":"106009763","4":"G","5":"A","6":"0.2269","7":"737.2212","8":"132.3556","9":"5.570004","10":"2.547e-08","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs386424","2":"5","3":"81092787","4":"T","5":"G","6":"0.3008","7":"656.5430","8":"120.0422","9":"5.469270","10":"4.519e-08","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs7715167","2":"5","3":"170778824","4":"T","5":"C","6":"0.6143","7":"662.7540","8":"119.1375","9":"5.562930","10":"2.653e-08","11":"32068","12":"Cortical_Surface_Area"},{"1":"rs2802295","2":"6","3":"108926496","4":"A","5":"G","6":"0.6207","7":"714.5850","8":"112.9897","9":"6.324340","10":"2.543e-10","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs11759026","2":"6","3":"126792095","4":"A","5":"G","6":"0.2376","7":"1301.5200","8":"134.6156","9":"9.668420","10":"4.106e-22","11":"31907","12":"Cortical_Surface_Area"},{"1":"rs12357321","2":"10","3":"21790476","4":"G","5":"A","6":"0.3206","7":"-698.7452","8":"119.6461","9":"-5.840100","10":"5.217e-09","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs1628768","2":"10","3":"105012994","4":"T","5":"C","6":"0.2386","7":"972.9780","8":"132.0048","9":"7.370780","10":"1.696e-13","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs10876864","2":"12","3":"56401085","4":"G","5":"A","6":"0.5774","7":"-628.5901","8":"112.6859","9":"-5.578250","10":"2.430e-08","11":"31319","12":"Cortical_Surface_Area"},{"1":"rs10878349","2":"12","3":"66327632","4":"A","5":"G","6":"0.5100","7":"-1039.9900","8":"110.4866","9":"-9.412850","10":"4.829e-21","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs79600142","2":"17","3":"43897722","4":"T","5":"C","6":"0.2198","7":"-1696.8300","8":"143.2730","9":"-11.843300","10":"2.331e-32","11":"29435","12":"Cortical_Surface_Area"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Diabetes
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Cortical Surface Area avaliable in Diabetes
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs12630663","2":"3","3":"28007315","4":"T","5":"C","6":"0.411742","7":"0.0005","8":"0.0080","9":"0.06250000","10":"9.530e-01","11":"568996","12":"Type_2_Diabetes"},{"1":"rs34464850","2":"3","3":"141721762","4":"G","5":"C","6":"0.150502","7":"-0.0051","8":"0.0109","9":"-0.46788991","10":"6.386e-01","11":"572247","12":"Type_2_Diabetes"},{"1":"rs2301718","2":"4","3":"106009763","4":"G","5":"A","6":"0.210983","7":"-0.0007","8":"0.0095","9":"-0.07368421","10":"9.401e-01","11":"567532","12":"Type_2_Diabetes"},{"1":"rs386424","2":"5","3":"81092787","4":"T","5":"G","6":"0.288453","7":"0.0083","8":"0.0086","9":"0.96511628","10":"3.366e-01","11":"570457","12":"Type_2_Diabetes"},{"1":"rs7715167","2":"5","3":"170778824","4":"T","5":"C","6":"0.608496","7":"-0.0059","8":"0.0080","9":"-0.73750000","10":"4.623e-01","11":"573704","12":"Type_2_Diabetes"},{"1":"rs2802295","2":"6","3":"108926496","4":"A","5":"G","6":"0.626928","7":"0.0114","8":"0.0081","9":"1.40741000","10":"1.605e-01","11":"570529","12":"Type_2_Diabetes"},{"1":"rs11759026","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs12357321","2":"10","3":"21790476","4":"G","5":"A","6":"0.313329","7":"0.0043","8":"0.0081","9":"0.53086420","10":"5.950e-01","11":"559082","12":"Type_2_Diabetes"},{"1":"rs1628768","2":"10","3":"105012994","4":"T","5":"C","6":"0.234395","7":"-0.0171","8":"0.0093","9":"-1.83870968","10":"6.486e-02","11":"570299","12":"Type_2_Diabetes"},{"1":"rs10876864","2":"12","3":"56401085","4":"G","5":"A","6":"0.577159","7":"0.0041","8":"0.0080","9":"0.51250000","10":"6.033e-01","11":"573704","12":"Type_2_Diabetes"},{"1":"rs10878349","2":"12","3":"66327632","4":"A","5":"G","6":"0.512046","7":"0.0484","8":"0.0079","9":"6.12658000","10":"7.235e-10","11":"570758","12":"Type_2_Diabetes"},{"1":"rs79600142","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Diabetes
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs79600142","2":"rs17426174","3":"1","4":"1","5":"CC/TG","6":"NA","7":"17","8":"43830938","9":"G","10":"C","11":"0.223435","12":"0.0103","13":"0.0094","14":"1.095745","15":"0.2716","16":"573561","17":"Type_2_Diabetes","18":"C","19":"C","20":"TRUE","21":"G","22":"C","23":"TRUE","24":"TRUE"},{"1":"rs11759026","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Cortical Surface Area and Diabetes datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["target_snp.outcome"],"name":[24],"type":["chr"],"align":["left"]},{"label":["proxy_snp.outcome"],"name":[25],"type":["chr"],"align":["left"]},{"label":["target_a1.outcome"],"name":[26],"type":["chr"],"align":["left"]},{"label":["target_a2.outcome"],"name":[27],"type":["lgl"],"align":["right"]},{"label":["proxy_a1.outcome"],"name":[28],"type":["chr"],"align":["left"]},{"label":["proxy_a2.outcome"],"name":[29],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[31],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[32],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[34],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[36],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[38],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[39],"type":["chr"],"align":["left"]},{"label":["action"],"name":[40],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[41],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[42],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[43],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[44],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[45],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[46],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10876864","2":"A","3":"G","4":"A","5":"G","6":"-628.5901","7":"0.0041","8":"0.5774","9":"0.577159","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"12","15":"56401085","16":"0.0080","17":"0.51250000","18":"6.033e-01","19":"573704","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"12","31":"56401085","32":"112.6859","33":"-5.578250","34":"2.430e-08","35":"31319","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs10878349","2":"G","3":"A","4":"G","5":"A","6":"-1039.9900","7":"0.0484","8":"0.5100","9":"0.512046","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"12","15":"66327632","16":"0.0079","17":"6.12658000","18":"7.235e-10","19":"570758","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"12","31":"66327632","32":"110.4866","33":"-9.412850","34":"4.829e-21","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"FALSE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs12357321","2":"A","3":"G","4":"A","5":"G","6":"-698.7452","7":"0.0043","8":"0.3206","9":"0.313329","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"10","15":"21790476","16":"0.0081","17":"0.53086420","18":"5.950e-01","19":"559082","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"10","31":"21790476","32":"119.6461","33":"-5.840100","34":"5.217e-09","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs12630663","2":"C","3":"T","4":"C","5":"T","6":"632.8110","7":"0.0005","8":"0.4117","9":"0.411742","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"3","15":"28007315","16":"0.0080","17":"0.06250000","18":"9.530e-01","19":"568996","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"3","31":"28007315","32":"111.2125","33":"5.690110","34":"1.270e-08","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs1628768","2":"C","3":"T","4":"C","5":"T","6":"972.9780","7":"-0.0171","8":"0.2386","9":"0.234395","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"10","15":"105012994","16":"0.0093","17":"-1.83870968","18":"6.486e-02","19":"570299","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"10","31":"105012994","32":"132.0048","33":"7.370780","34":"1.696e-13","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2301718","2":"A","3":"G","4":"A","5":"G","6":"737.2212","7":"-0.0007","8":"0.2269","9":"0.210983","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"4","15":"106009763","16":"0.0095","17":"-0.07368421","18":"9.401e-01","19":"567532","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"4","31":"106009763","32":"132.3556","33":"5.570004","34":"2.547e-08","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2802295","2":"G","3":"A","4":"G","5":"A","6":"714.5850","7":"0.0114","8":"0.6207","9":"0.626928","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"6","15":"108926496","16":"0.0081","17":"1.40741000","18":"1.605e-01","19":"570529","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"6","31":"108926496","32":"112.9897","33":"6.324340","34":"2.543e-10","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs34464850","2":"C","3":"G","4":"C","5":"G","6":"1233.1854","7":"-0.0051","8":"0.1534","9":"0.150502","10":"FALSE","11":"TRUE","12":"FALSE","13":"XATNfU","14":"3","15":"141721762","16":"0.0109","17":"-0.46788991","18":"6.386e-01","19":"572247","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"3","31":"141721762","32":"152.7201","33":"8.074807","34":"6.758e-16","35":"31984","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs386424","2":"G","3":"T","4":"G","5":"T","6":"656.5430","7":"0.0083","8":"0.3008","9":"0.288453","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"5","15":"81092787","16":"0.0086","17":"0.96511628","18":"3.366e-01","19":"570457","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"5","31":"81092787","32":"120.0422","33":"5.469270","34":"4.519e-08","35":"32176","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs7715167","2":"C","3":"T","4":"C","5":"T","6":"662.7540","7":"-0.0059","8":"0.6143","9":"0.608496","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"5","15":"170778824","16":"0.0080","17":"-0.73750000","18":"4.623e-01","19":"573704","20":"Xue2018diab","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"5","31":"170778824","32":"119.1375","33":"5.562930","34":"2.653e-08","35":"32068","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"},{"1":"rs79600142","2":"C","3":"T","4":"C","5":"T","6":"-1696.8300","7":"0.0103","8":"0.2198","9":"0.223435","10":"FALSE","11":"FALSE","12":"FALSE","13":"XATNfU","14":"17","15":"43830938","16":"0.0094","17":"1.09574468","18":"2.716e-01","19":"573561","20":"Xue2018diab","21":"TRUE","22":"reported","23":"TRUE","24":"rs79600142","25":"rs17426174","26":"C","27":"TRUE","28":"C","29":"G","30":"17","31":"43897722","32":"143.2730","33":"-11.843300","34":"2.331e-32","35":"29435","36":"Grasby2020surfarea","37":"TRUE","38":"reported","39":"HKx6Jo","40":"2","41":"TRUE","42":"TRUE","43":"5e-08","44":"NA","45":"NA","46":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Diabetes GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs10878349","2":"12","3":"66327632","4":"4.829e-21","5":"7.235e-10"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.01454008","3":"49.72008","4":"0.05","5":"2.369174","6":"0.3372015"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Cortical Surface Area on Diabetes.
<br>

**Table 6** MR causaul estimates for Cortical Surface Area on Diabetes
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"Inverse variance weighted (fixed effects)","6":"10","7":"-3.828603e-06","8":"3.120441e-06","9":"0.2198441"},{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"Weighted median","6":"10","7":"-5.746037e-06","8":"4.259946e-06","9":"0.1773844"},{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"Weighted mode","6":"10","7":"-5.689632e-06","8":"4.774655e-06","9":"0.2638800"},{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"MR Egger","6":"10","7":"-1.196483e-05","8":"8.857805e-06","9":"0.2137313"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Cortical Surface Area versus the association in Diabetes and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Xue2018diab/Grasby2020surfarea_5e-8_Xue2018diab_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"MR Egger","6":"6.341749","7":"8","8":"0.6090092"},{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"Inverse variance weighted","6":"7.305002","7":"9","8":"0.6053971"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Xue2018diab/Grasby2020surfarea_5e-8_Xue2018diab_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Xue2018diab/Grasby2020surfarea_5e-8_Xue2018diab_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"0.007631989","6":"0.007776202","7":"0.3551141"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"5e-08","6":"FALSE","7":"0","8":"8.794669","9":"0.623"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Grasby2020surfarea/Xue2018diab/Grasby2020surfarea_5e-8_Xue2018diab_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"HKx6Jo","2":"XATNfU","3":"Xue2018diab","4":"Grasby2020surfarea","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
