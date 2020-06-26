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

### Outcome: Insomnia
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with LOAD avaliable in Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs679515","2":"1","3":"207750568","4":"T","5":"C","6":"0.77687400","7":"3.781550e-04","8":"0.0008673277","9":"0.436","10":"0.6630000","11":"1330019","12":"Insomnia_Symptoms"},{"1":"rs6733839","2":"2","3":"127892810","4":"C","5":"T","6":"0.39480400","7":"-1.319511e-03","8":"0.0010284578","9":"-1.283","10":"0.1997000","11":"944267","12":"Insomnia_Symptoms"},{"1":"rs34665982","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs114812713","2":"6","3":"41034000","4":"G","5":"C","6":"0.01853210","7":"5.232217e-04","8":"0.0008676976","9":"0.603","10":"0.5467000","11":"1328391","12":"Insomnia_Symptoms"},{"1":"rs1385742","2":"6","3":"47595155","4":"A","5":"T","6":"0.65556000","7":"1.543850e-04","8":"0.0008722309","9":"0.177","10":"0.8598000","11":"1316180","12":"Insomnia_Symptoms"},{"1":"rs11767557","2":"7","3":"143109139","4":"T","5":"C","6":"0.20315900","7":"-6.578860e-04","8":"0.0008667801","9":"-0.759","10":"0.4480000","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs73223431","2":"8","3":"27219987","4":"C","5":"T","6":"0.29417100","7":"1.806960e-04","8":"0.0008687308","9":"0.208","10":"0.8354000","11":"1326631","12":"Insomnia_Symptoms"},{"1":"rs867230","2":"8","3":"27468503","4":"C","5":"A","6":"0.60841800","7":"-1.147993e-03","8":"0.0008710113","9":"-1.318","10":"0.1877000","11":"1316674","12":"Insomnia_Symptoms"},{"1":"rs12416487","2":"10","3":"11721057","4":"A","5":"T","6":"0.66439400","7":"-1.989550e-03","8":"0.0008665272","9":"-2.296","10":"0.0217000","11":"1328495","12":"Insomnia_Symptoms"},{"1":"rs3740688","2":"11","3":"47380340","4":"G","5":"T","6":"0.52621000","7":"3.304080e-03","8":"0.0008660760","9":"3.815","10":"0.0001364","11":"1327239","12":"Insomnia_Symptoms"},{"1":"rs1582763","2":"11","3":"60021948","4":"G","5":"A","6":"0.32763000","7":"-1.683250e-04","8":"0.0008676546","9":"-0.194","10":"0.8461000","11":"1329994","12":"Insomnia_Symptoms"},{"1":"rs3851179","2":"11","3":"85868640","4":"T","5":"C","6":"0.66715100","7":"2.475190e-03","8":"0.0008654525","9":"2.860","10":"0.0042340","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs11218343","2":"11","3":"121435587","4":"T","5":"C","6":"0.03449530","7":"5.825820e-04","8":"0.0008669368","9":"0.672","10":"0.5017000","11":"1330539","12":"Insomnia_Symptoms"},{"1":"rs12590654","2":"14","3":"92938855","4":"G","5":"A","6":"0.34703500","7":"-2.968450e-04","8":"0.0008705131","9":"-0.341","10":"0.7329000","11":"1320632","12":"Insomnia_Symptoms"},{"1":"rs12151021","2":"19","3":"1050874","4":"A","5":"G","6":"0.67926600","7":"1.961670e-03","8":"0.0008683792","9":"2.259","10":"0.0239100","11":"1322894","12":"Insomnia_Symptoms"},{"1":"rs111358663","2":"19","3":"45196958","4":"T","5":"A","6":"0.01463510","7":"-6.305794e-04","8":"0.0016127350","9":"-0.391","10":"0.6957000","11":"384930","12":"Insomnia_Symptoms"},{"1":"rs4803765","2":"19","3":"45358448","4":"C","5":"T","6":"0.01856760","7":"1.372925e-03","8":"0.0010284086","9":"1.335","10":"0.1818000","11":"944267","12":"Insomnia_Symptoms"},{"1":"rs12972156","2":"19","3":"45387459","4":"C","5":"G","6":"0.15468800","7":"-3.146010e-03","8":"0.0008666700","9":"-3.630","10":"0.0002830","11":"1325730","12":"Insomnia_Symptoms"},{"1":"rs117310449","2":"19","3":"45393516","4":"C","5":"T","6":"0.01178820","7":"-1.736502e-03","8":"0.0008660856","9":"-2.005","10":"0.0449900","11":"1330381","12":"Insomnia_Symptoms"},{"1":"rs73033507","2":"19","3":"45431403","4":"C","5":"T","6":"0.03120440","7":"-2.143404e-03","8":"0.0008656722","9":"-2.476","10":"0.0132700","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs114533385","2":"19","3":"45436753","4":"C","5":"T","6":"0.00751466","7":"6.165715e-05","8":"0.0008684106","9":"0.071","10":"0.9434000","11":"1328600","12":"Insomnia_Symptoms"},{"1":"rs139995984","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"rs34665982","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"},{"1":"NA","2":"rs139995984","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized LOAD and Insomnia datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[35],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[36],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["chr"],"align":["left"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs111358663","2":"A","3":"T","4":"A","5":"T","6":"-0.5369","7":"-6.305794e-04","8":"0.0111","9":"0.01463510","10":"FALSE","11":"TRUE","12":"FALSE","13":"egFiC2","14":"19","15":"45196958","16":"0.0016127350","17":"-0.391","18":"0.6957000","19":"384930","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45196958","25":"0.0795","26":"-6.753459","27":"1.436e-11","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs11218343","2":"C","3":"T","4":"C","5":"T","6":"-0.2053","7":"5.825820e-04","8":"0.0401","9":"0.03449530","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"11","15":"121435587","16":"0.0008669368","17":"0.672","18":"0.5017000","19":"1330539","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"11","24":"121435587","25":"0.0369","26":"-5.563690","27":"2.633e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"4.867287e-07","38":"1","39":"TRUE"},{"1":"rs114533385","2":"T","3":"C","4":"T","5":"C","6":"0.8281","7":"6.165715e-05","8":"0.0210","9":"0.00751466","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"19","15":"45436753","16":"0.0008684106","17":"0.071","18":"0.9434000","19":"1328600","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45436753","25":"0.0661","26":"12.527988","27":"5.434e-36","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs114812713","2":"C","3":"G","4":"C","5":"G","6":"0.2980","7":"5.232217e-04","8":"0.0301","9":"0.01853210","10":"FALSE","11":"TRUE","12":"FALSE","13":"egFiC2","14":"6","15":"41034000","16":"0.0008676976","17":"0.603","18":"0.5467000","19":"1328391","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"6","24":"41034000","25":"0.0431","26":"6.914153","27":"4.467e-12","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"5.436314e-07","38":"1","39":"TRUE"},{"1":"rs117310449","2":"T","3":"C","4":"T","5":"C","6":"0.9879","7":"-1.736502e-03","8":"0.0130","9":"0.01178820","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"19","15":"45393516","16":"0.0008660856","17":"-2.005","18":"0.0449900","19":"1330381","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45393516","25":"0.0691","26":"14.296671","27":"2.275e-46","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs11767557","2":"C","3":"T","4":"C","5":"T","6":"-0.1028","7":"-6.578860e-04","8":"0.1968","9":"0.20315900","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"7","15":"143109139","16":"0.0008667801","17":"-0.759","18":"0.4480000","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"7","24":"143109139","25":"0.0182","26":"-5.648350","27":"1.561e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"4.589615e-07","38":"1","39":"TRUE"},{"1":"rs12151021","2":"G","3":"A","4":"G","5":"A","6":"-0.1071","7":"1.961670e-03","8":"0.6753","9":"0.67926600","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"19","15":"1050874","16":"0.0008683792","17":"2.259","18":"0.0239100","19":"1322894","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"1050874","25":"0.0169","26":"-6.337280","27":"2.562e-10","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"4.203626e-06","38":"0.238","39":"TRUE"},{"1":"rs12416487","2":"T","3":"A","4":"T","5":"A","6":"0.0850","7":"-1.989550e-03","8":"0.6519","9":"0.66439400","10":"FALSE","11":"TRUE","12":"FALSE","13":"egFiC2","14":"10","15":"11721057","16":"0.0008665272","17":"-2.296","18":"0.0217000","19":"1328495","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"10","24":"11721057","25":"0.0154","26":"5.519480","27":"3.417e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"4.187980e-06","38":"0.266","39":"TRUE"},{"1":"rs12590654","2":"A","3":"G","4":"A","5":"G","6":"-0.0906","7":"-2.968450e-04","8":"0.3353","9":"0.34703500","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"14","15":"92938855","16":"0.0008705131","17":"-0.341","18":"0.7329000","19":"1320632","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"14","24":"92938855","25":"0.0157","26":"-5.770701","27":"8.729e-09","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"9.027924e-08","38":"1","39":"TRUE"},{"1":"rs12972156","2":"G","3":"C","4":"G","5":"C","6":"0.9653","7":"-3.146010e-03","8":"0.2027","9":"0.15468800","10":"FALSE","11":"TRUE","12":"FALSE","13":"egFiC2","14":"19","15":"45387459","16":"0.0008666700","17":"-3.630","18":"0.0002830","19":"1325730","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45387459","25":"0.0189","26":"51.074100","27":"1.000e-200","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs1385742","2":"T","3":"A","4":"T","5":"A","6":"-0.0876","7":"1.543850e-04","8":"0.6344","9":"0.65556000","10":"FALSE","11":"TRUE","12":"FALSE","13":"egFiC2","14":"6","15":"47595155","16":"0.0008722309","17":"0.177","18":"0.8598000","19":"1316180","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"6","24":"47595155","25":"0.0157","26":"-5.579620","27":"2.232e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"2.676591e-08","38":"1","39":"TRUE"},{"1":"rs1582763","2":"A","3":"G","4":"A","5":"G","6":"-0.1232","7":"-1.683250e-04","8":"0.3729","9":"0.32763000","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"11","15":"60021948","16":"0.0008676546","17":"-0.194","18":"0.8461000","19":"1329994","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"11","24":"60021948","25":"0.0149","26":"-8.268456","27":"1.186e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"2.911634e-08","38":"1","39":"TRUE"},{"1":"rs3740688","2":"T","3":"G","4":"T","5":"G","6":"0.0935","7":"3.304080e-03","8":"0.5524","9":"0.52621000","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"11","15":"47380340","16":"0.0008660760","17":"3.815","18":"0.0001364","19":"1327239","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"11","24":"47380340","25":"0.0144","26":"6.493056","27":"9.702e-11","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"1.158788e-05","38":"<0.014","39":"FALSE"},{"1":"rs3851179","2":"C","3":"T","4":"C","5":"T","6":"0.1198","7":"2.475190e-03","8":"0.6410","9":"0.66715100","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"11","15":"85868640","16":"0.0008654525","17":"2.860","18":"0.0042340","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"11","24":"85868640","25":"0.0148","26":"8.094590","27":"5.809e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"6.763565e-06","38":"0.014","39":"FALSE"},{"1":"rs4803765","2":"T","3":"C","4":"T","5":"C","6":"0.7165","7":"1.372925e-03","8":"0.0243","9":"0.01856760","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"19","15":"45358448","16":"0.0010284086","17":"1.335","18":"0.1818000","19":"944267","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45358448","25":"0.0610","26":"11.745902","27":"7.131e-32","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs6733839","2":"T","3":"C","4":"T","5":"C","6":"0.1693","7":"-1.319511e-03","8":"0.4067","9":"0.39480400","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"2","15":"127892810","16":"0.0010284578","17":"-1.283","18":"0.1997000","19":"944267","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"2","24":"127892810","25":"0.0154","26":"10.993506","27":"4.022e-28","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"2.049856e-06","38":"1","39":"TRUE"},{"1":"rs679515","2":"C","3":"T","4":"C","5":"T","6":"-0.1508","7":"3.781550e-04","8":"0.8126","9":"0.77687400","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"1","15":"207750568","16":"0.0008673277","17":"0.436","18":"0.6630000","19":"1330019","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"1","24":"207750568","25":"0.0183","26":"-8.240440","27":"1.555e-16","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"1.765400e-07","38":"1","39":"TRUE"},{"1":"rs73033507","2":"T","3":"C","4":"T","5":"C","6":"-0.3620","7":"-2.143404e-03","8":"0.0239","9":"0.03120440","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"19","15":"45431403","16":"0.0008656722","17":"-2.476","18":"0.0132700","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45431403","25":"0.0657","26":"-5.509893","27":"3.646e-08","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"FALSE","36":"5e-08","37":"NA","38":"NA","39":"NA"},{"1":"rs73223431","2":"T","3":"C","4":"T","5":"C","6":"0.0936","7":"1.806960e-04","8":"0.3669","9":"0.29417100","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"8","15":"27219987","16":"0.0008687308","17":"0.208","18":"0.8354000","19":"1326631","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"8","24":"27219987","25":"0.0153","26":"6.117647","27":"8.342e-10","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"3.279543e-08","38":"1","39":"TRUE"},{"1":"rs867230","2":"A","3":"C","4":"A","5":"C","6":"0.1333","7":"-1.147993e-03","8":"0.6029","9":"0.60841800","10":"FALSE","11":"FALSE","12":"FALSE","13":"egFiC2","14":"8","15":"27468503","16":"0.0008710113","17":"-1.318","18":"0.1877000","19":"1316674","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"8","24":"27468503","25":"0.0158","26":"8.436709","27":"3.492e-17","28":"63926","29":"Kunkle2019load","30":"TRUE","31":"reported","32":"TfpRJk","33":"2","34":"TRUE","35":"TRUE","36":"5e-08","37":"1.517467e-06","38":"1","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs111358663","2":"19","3":"45196958","4":"1.436e-11","5":"0.695700"},{"1":"rs114533385","2":"19","3":"45436753","4":"5.434e-36","5":"0.943400"},{"1":"rs117310449","2":"19","3":"45393516","4":"2.275e-46","5":"0.044990"},{"1":"rs12972156","2":"19","3":"45387459","4":"1.000e-200","5":"0.000283"},{"1":"rs4803765","2":"19","3":"45358448","4":"7.131e-32","5":"0.181800"},{"1":"rs73033507","2":"19","3":"45431403","4":"3.646e-08","5":"0.013270"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.011193468","3":"51.67743","4":"0.05","5":"0.0009295055","6":"0.05010648"},{"1":"TRUE","2":"0.009542489","3":"51.31375","4":"0.05","5":"0.0882688791","6":"0.06017193"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted LOAD on Insomnia.
<br>

**Table 6** MR causaul estimates for LOAD on Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Inverse variance weighted (fixed effects)","6":"14","7":"5.528361e-05","8":"0.001628261","9":"0.9729150"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Weighted median","6":"14","7":"1.400829e-03","8":"0.002291969","9":"0.5410738"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Weighted mode","6":"14","7":"2.322638e-04","8":"0.002293201","9":"0.9208708"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"MR Egger","6":"14","7":"-1.075687e-03","8":"0.007314242","9":"0.8855208"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with LOAD versus the association in Insomnia and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Jansen2018insomnia23andMe/Kunkle2019load_5e-8_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"MR Egger","6":"38.21007","7":"12","8":"0.0001418762"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Inverse variance weighted","6":"38.30046","7":"13","8":"0.0002583610"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Jansen2018insomnia23andMe/Kunkle2019load_5e-8_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Jansen2018insomnia23andMe/Kunkle2019load_5e-8_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"0.0001774307","6":"0.001053064","7":"0.8690043"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["chr"],"align":["left"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"5e-08","6":"FALSE","7":"2","8":"42.02058","9":"<0.001"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Inverse variance weighted (fixed effects)","6":"12","7":"-2.271879e-03","8":"0.001699152","9":"0.1812009"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Weighted median","6":"12","7":"-3.378285e-05","8":"0.002304855","9":"0.9883056"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Weighted mode","6":"12","7":"2.418382e-04","8":"0.002581619","9":"0.9270503"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"MR Egger","6":"12","7":"3.117541e-03","8":"0.004548167","9":"0.5086376"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Kunkle2019load/Jansen2018insomnia23andMe/Kunkle2019load_5e-8_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"MR Egger","6":"11.79709","7":"10","8":"0.2988662"},{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"Inverse variance weighted","6":"13.78007","7":"11","8":"0.2454030"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"TfpRJk","2":"egFiC2","3":"Jansen2018insomnia23andMe","4":"Kunkle2019load","5":"-0.0008806821","6":"0.0006792776","7":"0.2239229"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
