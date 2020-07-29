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
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs679515","2":"1","3":"207750568","4":"T","5":"C","6":"0.8126","7":"-0.1508","8":"0.0183","9":"-8.240440","10":"1.555000e-16","11":"63926","12":"LOAD"},{"1":"rs6733839","2":"2","3":"127892810","4":"C","5":"T","6":"0.4067","7":"0.1693","8":"0.0154","9":"10.993506","10":"4.022000e-28","11":"63926","12":"LOAD"},{"1":"rs34665982","2":"6","3":"32560306","4":"T","5":"C","6":"0.5213","7":"-0.0967","8":"0.0166","9":"-5.825300","10":"5.798000e-09","11":"63926","12":"LOAD"},{"1":"rs114812713","2":"6","3":"41034000","4":"G","5":"C","6":"0.0301","7":"0.2980","8":"0.0431","9":"6.914153","10":"4.467000e-12","11":"63926","12":"LOAD"},{"1":"rs1385742","2":"6","3":"47595155","4":"A","5":"T","6":"0.6344","7":"-0.0876","8":"0.0157","9":"-5.579620","10":"2.232000e-08","11":"63926","12":"LOAD"},{"1":"rs11767557","2":"7","3":"143109139","4":"T","5":"C","6":"0.1968","7":"-0.1028","8":"0.0182","9":"-5.648350","10":"1.561000e-08","11":"63926","12":"LOAD"},{"1":"rs73223431","2":"8","3":"27219987","4":"C","5":"T","6":"0.3669","7":"0.0936","8":"0.0153","9":"6.117647","10":"8.342000e-10","11":"63926","12":"LOAD"},{"1":"rs867230","2":"8","3":"27468503","4":"C","5":"A","6":"0.6029","7":"0.1333","8":"0.0158","9":"8.436709","10":"3.492000e-17","11":"63926","12":"LOAD"},{"1":"rs12416487","2":"10","3":"11721057","4":"A","5":"T","6":"0.6519","7":"0.0850","8":"0.0154","9":"5.519480","10":"3.417000e-08","11":"63926","12":"LOAD"},{"1":"rs3740688","2":"11","3":"47380340","4":"G","5":"T","6":"0.5524","7":"0.0935","8":"0.0144","9":"6.493056","10":"9.702000e-11","11":"63926","12":"LOAD"},{"1":"rs1582763","2":"11","3":"60021948","4":"G","5":"A","6":"0.3729","7":"-0.1232","8":"0.0149","9":"-8.268456","10":"1.186000e-16","11":"63926","12":"LOAD"},{"1":"rs3851179","2":"11","3":"85868640","4":"T","5":"C","6":"0.6410","7":"0.1198","8":"0.0148","9":"8.094590","10":"5.809000e-16","11":"63926","12":"LOAD"},{"1":"rs11218343","2":"11","3":"121435587","4":"T","5":"C","6":"0.0401","7":"-0.2053","8":"0.0369","9":"-5.563690","10":"2.633000e-08","11":"63926","12":"LOAD"},{"1":"rs12590654","2":"14","3":"92938855","4":"G","5":"A","6":"0.3353","7":"-0.0906","8":"0.0157","9":"-5.770701","10":"8.729000e-09","11":"63926","12":"LOAD"},{"1":"rs12151021","2":"19","3":"1050874","4":"A","5":"G","6":"0.6753","7":"-0.1071","8":"0.0169","9":"-6.337280","10":"2.562000e-10","11":"63926","12":"LOAD"},{"1":"rs111358663","2":"19","3":"45196958","4":"T","5":"A","6":"0.0111","7":"-0.5369","8":"0.0795","9":"-6.753459","10":"1.436000e-11","11":"63926","12":"LOAD"},{"1":"rs4803765","2":"19","3":"45358448","4":"C","5":"T","6":"0.0243","7":"0.7165","8":"0.0610","9":"11.745902","10":"7.131000e-32","11":"63926","12":"LOAD"},{"1":"rs12972156","2":"19","3":"45387459","4":"C","5":"G","6":"0.2027","7":"0.9653","8":"0.0189","9":"51.074100","10":"2.225074e-308","11":"63926","12":"LOAD"},{"1":"rs117310449","2":"19","3":"45393516","4":"C","5":"T","6":"0.0130","7":"0.9879","8":"0.0691","9":"14.296671","10":"2.275000e-46","11":"63926","12":"LOAD"},{"1":"rs73033507","2":"19","3":"45431403","4":"C","5":"T","6":"0.0239","7":"-0.3620","8":"0.0657","9":"-5.509893","10":"3.646000e-08","11":"63926","12":"LOAD"},{"1":"rs114533385","2":"19","3":"45436753","4":"C","5":"T","6":"0.0210","7":"0.8281","8":"0.0661","9":"12.527988","10":"5.434000e-36","11":"63926","12":"LOAD"},{"1":"rs139995984","2":"19","3":"45574482","4":"G","5":"C","6":"0.0155","7":"-0.5343","8":"0.0879","9":"-6.078498","10":"1.192000e-09","11":"63926","12":"LOAD"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Fish and plant related diet
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with LOAD avaliable in Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs679515","2":"1","3":"207750568","4":"T","5":"C","6":"0.823599","7":"1.84264e-04","8":"0.00317318","9":"0.0580692","10":"9.5e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs34665982","2":"6","3":"32560306","4":"T","5":"C","6":"0.561715","7":"-1.22309e-02","8":"0.00244366","9":"-5.0051600","10":"5.6e-07","11":"335576","12":"fish_plant_diet"},{"1":"rs114812713","2":"6","3":"41034000","4":"G","5":"C","6":"0.024785","7":"5.95960e-03","8":"0.00780925","9":"0.7631460","10":"4.5e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs1385742","2":"6","3":"47595155","4":"A","5":"T","6":"0.650201","7":"9.67418e-04","8":"0.00258514","9":"0.3742230","10":"7.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs11767557","2":"7","3":"143109139","4":"T","5":"C","6":"0.213996","7":"1.68703e-04","8":"0.00294651","9":"0.0572552","10":"9.5e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs73223431","2":"8","3":"27219987","4":"C","5":"T","6":"0.365841","7":"-1.86034e-04","8":"0.00252181","9":"-0.0737700","10":"9.4e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs867230","2":"8","3":"27468503","4":"C","5":"A","6":"0.588267","7":"-2.15158e-03","8":"0.00250497","9":"-0.8589240","10":"3.9e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs12416487","2":"10","3":"11721057","4":"A","5":"T","6":"0.656930","7":"9.56527e-04","8":"0.00255336","9":"0.3746150","10":"7.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs3740688","2":"11","3":"47380340","4":"G","5":"T","6":"0.545598","7":"-2.89867e-03","8":"0.00243480","9":"-1.1905200","10":"2.3e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs1582763","2":"11","3":"60021948","4":"G","5":"A","6":"0.379894","7":"-9.12034e-05","8":"0.00249754","9":"-0.0365173","10":"9.7e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs3851179","2":"11","3":"85868640","4":"T","5":"C","6":"0.627981","7":"-5.42947e-03","8":"0.00249884","9":"-2.1728000","10":"3.0e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs11218343","2":"11","3":"121435587","4":"T","5":"C","6":"0.037072","7":"7.13061e-04","8":"0.00640304","9":"0.1113630","10":"9.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs12590654","2":"14","3":"92938855","4":"G","5":"A","6":"0.338439","7":"3.07243e-04","8":"0.00258950","9":"0.1186500","10":"9.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs12151021","2":"19","3":"1050874","4":"A","5":"G","6":"0.676046","7":"6.14786e-03","8":"0.00260795","9":"2.3573500","10":"1.8e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs111358663","2":"19","3":"45196958","4":"T","5":"A","6":"0.014778","7":"-2.45078e-02","8":"0.01003960","9":"-2.4411100","10":"1.5e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs4803765","2":"19","3":"45358448","4":"C","5":"T","6":"0.006627","7":"1.34498e-02","8":"0.01500360","9":"0.8964380","10":"3.7e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs12972156","2":"19","3":"45387459","4":"C","5":"G","6":"0.146627","7":"1.70936e-02","8":"0.00344528","9":"4.9614500","10":"7.0e-07","11":"335576","12":"fish_plant_diet"},{"1":"rs117310449","2":"19","3":"45393516","4":"C","5":"T","6":"0.011691","7":"3.51838e-02","8":"0.01125790","9":"3.1252500","10":"1.8e-03","11":"335576","12":"fish_plant_diet"},{"1":"rs114533385","2":"19","3":"45436753","4":"C","5":"T","6":"0.009880","7":"2.08955e-02","8":"0.01225330","9":"1.7053000","10":"8.8e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs139995984","2":"19","3":"45574482","4":"G","5":"C","6":"0.007776","7":"5.71083e-03","8":"0.01394190","9":"0.4096160","10":"6.8e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs6733839","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs73033507","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs6733839","2":"rs4663105","3":"0.896576","4":"0.995501","5":"TC/CA","6":"NA","7":"2","8":"127891427","9":"A","10":"C","11":"0.415808","12":"0.00307129","13":"0.00249093","14":"1.23299","15":"0.22","16":"335576","17":"fish_plant_diet","18":"TRUE","19":"C","20":"C","21":"A","22":"TRUE","23":"C","24":"TRUE"},{"1":"rs73033507","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized LOAD and Fish and plant related diet datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["chr"],"align":["left"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs111358663","2":"A","3":"T","4":"A","5":"T","6":"-0.5369","7":"-2.45078e-02","8":"0.0111","9":"0.014778","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"19","15":"45196958","16":"0.01003960","17":"-2.4411100","18":"1.5e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45196958","25":"0.0795","26":"-6.753459","27":"1.436e-11","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs11218343","2":"C","3":"T","4":"C","5":"T","6":"-0.2053","7":"7.13061e-04","8":"0.0401","9":"0.037072","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"11","15":"121435587","16":"0.00640304","17":"0.1113630","18":"9.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"11","24":"121435587","25":"0.0369","26":"-5.563690","27":"2.633e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"6.062839e-07","38":"1","39":"TRUE"},{"1":"rs114533385","2":"T","3":"C","4":"T","5":"C","6":"0.8281","7":"2.08955e-02","8":"0.0210","9":"0.009880","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"19","15":"45436753","16":"0.01225330","17":"1.7053000","18":"8.8e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45436753","25":"0.0661","26":"12.527988","27":"5.434e-36","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs114812713","2":"C","3":"G","4":"C","5":"G","6":"0.2980","7":"5.95960e-03","8":"0.0301","9":"0.024785","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"6","15":"41034000","16":"0.00780925","17":"0.7631460","18":"4.5e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"6","24":"41034000","25":"0.0431","26":"6.914153","27":"4.467e-12","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"3.885875e-05","38":"1","39":"TRUE"},{"1":"rs117310449","2":"T","3":"C","4":"T","5":"C","6":"0.9879","7":"3.51838e-02","8":"0.0130","9":"0.011691","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"19","15":"45393516","16":"0.01125790","17":"3.1252500","18":"1.8e-03","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45393516","25":"0.0691","26":"14.296671","27":"2.275e-46","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs11767557","2":"C","3":"T","4":"C","5":"T","6":"-0.1028","7":"1.68703e-04","8":"0.1968","9":"0.213996","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"7","15":"143109139","16":"0.00294651","17":"0.0572552","18":"9.5e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"7","24":"143109139","25":"0.0182","26":"-5.648350","27":"1.561e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"3.828917e-08","38":"1","39":"TRUE"},{"1":"rs12151021","2":"G","3":"A","4":"G","5":"A","6":"-0.1071","7":"6.14786e-03","8":"0.6753","9":"0.676046","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"19","15":"1050874","16":"0.00260795","17":"2.3573500","18":"1.8e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"1050874","25":"0.0169","26":"-6.337280","27":"2.562e-10","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"4.311751e-05","38":"0.1995","39":"TRUE"},{"1":"rs12416487","2":"T","3":"A","4":"T","5":"A","6":"0.0850","7":"9.56527e-04","8":"0.6519","9":"0.656930","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"10","15":"11721057","16":"0.00255336","17":"0.3746150","18":"7.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"10","24":"11721057","25":"0.0154","26":"5.519480","27":"3.417e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"9.614082e-07","38":"1","39":"TRUE"},{"1":"rs12590654","2":"A","3":"G","4":"A","5":"G","6":"-0.0906","7":"3.07243e-04","8":"0.3353","9":"0.338439","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"14","15":"92938855","16":"0.00258950","17":"0.1186500","18":"9.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"14","24":"92938855","25":"0.0157","26":"-5.770701","27":"8.729e-09","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"1.145033e-07","38":"1","39":"TRUE"},{"1":"rs12972156","2":"G","3":"C","4":"G","5":"C","6":"0.9653","7":"1.70936e-02","8":"0.2027","9":"0.146627","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"19","15":"45387459","16":"0.00344528","17":"4.9614500","18":"7.0e-07","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45387459","25":"0.0189","26":"51.074100","27":"1.000e-200","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs1385742","2":"T","3":"A","4":"T","5":"A","6":"-0.0876","7":"9.67418e-04","8":"0.6344","9":"0.650201","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"6","15":"47595155","16":"0.00258514","17":"0.3742230","18":"7.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"6","24":"47595155","25":"0.0157","26":"-5.579620","27":"2.232e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"1.051758e-06","38":"1","39":"TRUE"},{"1":"rs139995984","2":"C","3":"G","4":"C","5":"G","6":"-0.5343","7":"5.71083e-03","8":"0.0155","9":"0.007776","10":"FALSE","11":"TRUE","12":"FALSE","13":"p108sD","14":"19","15":"45574482","16":"0.01394190","17":"0.4096160","18":"6.8e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45574482","25":"0.0879","26":"-6.078498","27":"1.192e-09","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs1582763","2":"A","3":"G","4":"A","5":"G","6":"-0.1232","7":"-9.12034e-05","8":"0.3729","9":"0.379894","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"11","15":"60021948","16":"0.00249754","17":"-0.0365173","18":"9.7e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"11","24":"60021948","25":"0.0149","26":"-8.268456","27":"1.186e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"5.749621e-09","38":"1","39":"TRUE"},{"1":"rs34665982","2":"C","3":"T","4":"C","5":"T","6":"-0.0967","7":"-1.22309e-02","8":"0.5213","9":"0.561715","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"6","15":"32560306","16":"0.00244366","17":"-5.0051600","18":"5.6e-07","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"6","24":"32560306","25":"0.0166","26":"-5.825300","27":"5.798e-09","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"1.675639e-04","38":"<0.0015","39":"FALSE"},{"1":"rs3740688","2":"T","3":"G","4":"T","5":"G","6":"0.0935","7":"-2.89867e-03","8":"0.5524","9":"0.545598","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"11","15":"47380340","16":"0.00243480","17":"-1.1905200","18":"2.3e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"11","24":"47380340","25":"0.0144","26":"6.493056","27":"9.702e-11","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"9.481164e-06","38":"1","39":"TRUE"},{"1":"rs3851179","2":"C","3":"T","4":"C","5":"T","6":"0.1198","7":"-5.42947e-03","8":"0.6410","9":"0.627981","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"11","15":"85868640","16":"0.00249884","17":"-2.1728000","18":"3.0e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"11","24":"85868640","25":"0.0148","26":"8.094590","27":"5.809e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"3.532605e-05","38":"0.285","39":"TRUE"},{"1":"rs4803765","2":"T","3":"C","4":"T","5":"C","6":"0.7165","7":"1.34498e-02","8":"0.0243","9":"0.006627","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"19","15":"45358448","16":"0.01500360","17":"0.8964380","18":"3.7e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45358448","25":"0.0610","26":"11.745902","27":"7.131e-32","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs6733839","2":"T","3":"C","4":"T","5":"C","6":"0.1693","7":"3.07129e-03","8":"0.4067","9":"0.415808","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"2","15":"127891427","16":"0.00249093","17":"1.2329900","18":"2.2e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"2","24":"127892810","25":"0.0154","26":"10.993506","27":"4.022e-28","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"1.331460e-05","38":"1","39":"TRUE"},{"1":"rs679515","2":"C","3":"T","4":"C","5":"T","6":"-0.1508","7":"1.84264e-04","8":"0.8126","9":"0.823599","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"1","15":"207750568","16":"0.00317318","17":"0.0580692","18":"9.5e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"1","24":"207750568","25":"0.0183","26":"-8.240440","27":"1.555e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"5.288222e-08","38":"1","39":"TRUE"},{"1":"rs73223431","2":"T","3":"C","4":"T","5":"C","6":"0.0936","7":"-1.86034e-04","8":"0.3669","9":"0.365841","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"8","15":"27219987","16":"0.00252181","17":"-0.0737700","18":"9.4e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"8","24":"27219987","25":"0.0153","26":"6.117647","27":"8.342e-10","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"4.552807e-08","38":"1","39":"TRUE"},{"1":"rs867230","2":"A","3":"C","4":"A","5":"C","6":"0.1333","7":"-2.15158e-03","8":"0.6029","9":"0.588267","10":"FALSE","11":"FALSE","12":"FALSE","13":"p108sD","14":"8","15":"27468503","16":"0.00250497","17":"-0.8589240","18":"3.9e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"8","24":"27468503","25":"0.0158","26":"8.436709","27":"3.492e-17","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"k2ts8O","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"5.870216e-06","38":"1","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Fish and plant related diet GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs111358663","2":"19","3":"45196958","4":"1.436e-11","5":"1.5e-02"},{"1":"rs114533385","2":"19","3":"45436753","4":"5.434e-36","5":"8.8e-02"},{"1":"rs117310449","2":"19","3":"45393516","4":"2.275e-46","5":"1.8e-03"},{"1":"rs12972156","2":"19","3":"45387459","4":"1.000e-200","5":"7.0e-07"},{"1":"rs139995984","2":"19","3":"45574482","4":"1.192e-09","5":"6.8e-01"},{"1":"rs4803765","2":"19","3":"45358448","4":"7.131e-32","5":"3.7e-01"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.01384395","3":"50.67450","4":"0.05","5":"0.008902108","6":"0.05102037"},{"1":"TRUE","2":"0.01320614","3":"51.76017","4":"0.05","5":"1.411812469","6":"0.22094777"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted LOAD on Fish and plant related diet.
<br>

**Table 6** MR causaul estimates for LOAD on Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Inverse variance weighted (fixed effects)","6":"15","7":"0.0001788258","8":"0.006005369","9":"0.9762444"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Weighted median","6":"15","7":"-0.0016326764","8":"0.008612407","9":"0.8496441"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Weighted mode","6":"15","7":"-0.0007805269","8":"0.013590962","9":"0.9550144"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"MR Egger","6":"15","7":"0.0069596583","8":"0.039258175","9":"0.8620214"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the association in Fish and plant related diet and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/Kunkle2019load_5e-8_Niarchou2020fish_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"MR Egger","6":"39.80847","7":"13","8":"0.0001483959"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Inverse variance weighted","6":"39.90688","7":"14","8":"0.0002637933"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/Kunkle2019load_5e-8_Niarchou2020fish_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/Kunkle2019load_5e-8_Niarchou2020fish_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"-0.0008309748","6":"0.004635424","7":"0.8604926"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"5e-08","6":"FALSE","7":"1","8":"45.72999","9":"3e-04"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Inverse variance weighted (fixed effects)","6":"14","7":"-0.007381049","8":"0.006182482","9":"0.2325308"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Weighted median","6":"14","7":"-0.001752075","8":"0.008932733","9":"0.8444998"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Weighted mode","6":"14","7":"-0.001928444","8":"0.014200477","9":"0.8940587"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"MR Egger","6":"14","7":"0.026954572","8":"0.022741246","9":"0.2588515"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Niarchou2020fish/Kunkle2019load_5e-8_Niarchou2020fish_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"MR Egger","6":"10.96932","7":"12","8":"0.5315497"},{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"Inverse variance weighted","6":"13.43087","7":"13","8":"0.4151079"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"k2ts8O","2":"p108sD","3":"Niarchou2020fish","4":"Kunkle2019load","5":"-0.004276162","6":"0.002725526","7":"0.1426436"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
