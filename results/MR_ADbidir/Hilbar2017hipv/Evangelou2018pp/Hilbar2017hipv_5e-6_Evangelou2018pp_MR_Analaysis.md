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
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10908512","2":"1","3":"153856498","4":"C","5":"T","6":"0.5624","7":"0.04051169","8":"0.008700965","9":"4.656","10":"3.217e-06","11":"26814","12":"Hippocampal_Volume"},{"1":"rs7588305","2":"2","3":"8780959","4":"G","5":"C","6":"0.5308","7":"-0.04002256","8":"0.008681684","9":"-4.610","10":"4.023e-06","11":"26615","12":"Hippocampal_Volume"},{"1":"rs59966106","2":"2","3":"96999086","4":"A","5":"G","6":"0.3114","7":"0.04276760","8":"0.009321611","9":"4.588","10":"4.470e-06","11":"26814","12":"Hippocampal_Volume"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.5412","7":"-0.05668170","8":"0.008658983","9":"-6.546","10":"5.894e-11","11":"26814","12":"Hippocampal_Volume"},{"1":"rs138012093","2":"4","3":"134506440","4":"G","5":"A","6":"0.0173","7":"-0.16180284","8":"0.033576021","9":"-4.819","10":"1.445e-06","11":"26065","12":"Hippocampal_Volume"},{"1":"rs144578582","2":"4","3":"155539564","4":"G","5":"A","6":"0.0068","7":"-0.36225028","8":"0.074659992","9":"-4.852","10":"1.221e-06","11":"13258","12":"Hippocampal_Volume"},{"1":"rs6552737","2":"4","3":"184955461","4":"T","5":"A","6":"0.4152","7":"-0.04324518","8":"0.008759404","9":"-4.937","10":"7.922e-07","11":"26814","12":"Hippocampal_Volume"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.3544","7":"-0.05014690","8":"0.009022472","9":"-5.558","10":"2.728e-08","11":"26814","12":"Hippocampal_Volume"},{"1":"rs148054686","2":"5","3":"94459128","4":"G","5":"A","6":"0.0124","7":"-0.21659175","8":"0.047064699","9":"-4.602","10":"4.184e-06","11":"18411","12":"Hippocampal_Volume"},{"1":"rs10041542","2":"5","3":"167832067","4":"T","5":"C","6":"0.2452","7":"-0.04686000","8":"0.010070917","9":"-4.653","10":"3.273e-06","11":"26615","12":"Hippocampal_Volume"},{"1":"rs17172044","2":"7","3":"42397586","4":"A","5":"C","6":"0.0775","7":"-0.07408290","8":"0.016143574","9":"-4.589","10":"4.464e-06","11":"26814","12":"Hippocampal_Volume"},{"1":"rs2346440","2":"7","3":"133685512","4":"G","5":"C","6":"0.4591","7":"0.04059843","8":"0.008661921","9":"4.687","10":"2.767e-06","11":"26814","12":"Hippocampal_Volume"},{"1":"rs11979341","2":"7","3":"155797978","4":"C","5":"G","6":"0.3163","7":"0.06558170","8":"0.009708611","9":"6.755","10":"1.424e-11","11":"24484","12":"Hippocampal_Volume"},{"1":"rs11993215","2":"8","3":"28055926","4":"A","5":"T","6":"0.9102","7":"0.06998320","8":"0.015193929","9":"4.606","10":"4.108e-06","11":"26477","12":"Hippocampal_Volume"},{"1":"rs113835443","2":"8","3":"144717251","4":"C","5":"T","6":"0.0904","7":"0.07553081","8":"0.016197900","9":"4.663","10":"3.118e-06","11":"23154","12":"Hippocampal_Volume"},{"1":"rs62583528","2":"9","3":"106929593","4":"G","5":"A","6":"0.1951","7":"0.05622208","8":"0.010891531","9":"5.162","10":"2.447e-07","11":"26814","12":"Hippocampal_Volume"},{"1":"rs7020341","2":"9","3":"119247974","4":"G","5":"C","6":"0.3590","7":"0.05989482","8":"0.009013518","9":"6.645","10":"3.035e-11","11":"26700","12":"Hippocampal_Volume"},{"1":"rs11245365","2":"10","3":"126482389","4":"G","5":"A","6":"0.5648","7":"-0.04474128","8":"0.008786582","9":"-5.092","10":"3.547e-07","11":"26322","12":"Hippocampal_Volume"},{"1":"rs12802656","2":"11","3":"16534415","4":"A","5":"C","6":"0.4696","7":"-0.03979580","8":"0.008681459","9":"-4.584","10":"4.560e-06","11":"26614","12":"Hippocampal_Volume"},{"1":"rs659065","2":"12","3":"4008887","4":"C","5":"G","6":"0.1413","7":"-0.06743310","8":"0.012611389","9":"-5.347","10":"8.931e-08","11":"25881","12":"Hippocampal_Volume"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.1534","7":"-0.10788400","8":"0.011964511","9":"-9.017","10":"1.941e-19","11":"26814","12":"Hippocampal_Volume"},{"1":"rs79522035","2":"12","3":"72956782","4":"C","5":"T","6":"0.0419","7":"0.09939183","8":"0.021592837","9":"4.603","10":"4.164e-06","11":"26692","12":"Hippocampal_Volume"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.0840","7":"0.16185400","8":"0.015536016","9":"10.418","10":"2.055e-25","11":"26814","12":"Hippocampal_Volume"},{"1":"rs143933797","2":"17","3":"78252238","4":"G","5":"A","6":"0.0166","7":"0.22638451","8":"0.047143797","9":"4.802","10":"1.571e-06","11":"13758","12":"Hippocampal_Volume"},{"1":"rs79727675","2":"18","3":"11653053","4":"C","5":"A","6":"0.0472","7":"-0.13610794","8":"0.027913852","9":"-4.876","10":"1.082e-06","11":"14245","12":"Hippocampal_Volume"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.1537","7":"-0.06342470","8":"0.012519680","9":"-5.066","10":"4.067e-07","11":"24498","12":"Hippocampal_Volume"},{"1":"rs6060504","2":"20","3":"34197619","4":"T","5":"C","6":"0.1624","7":"0.06315530","8":"0.011701919","9":"5.397","10":"6.762e-08","11":"26814","12":"Hippocampal_Volume"},{"1":"rs5753220","2":"22","3":"30986350","4":"T","5":"C","6":"0.2497","7":"-0.04931970","8":"0.010038609","9":"-4.913","10":"8.988e-07","11":"26459","12":"Hippocampal_Volume"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Pulse Pressure
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Pulse Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10908512","2":"1","3":"153856498","4":"C","5":"T","6":"0.5594","7":"-0.0132","8":"0.0206","9":"-0.6407767","10":"5.207e-01","11":"737055","12":"Pulse_Pressure"},{"1":"rs7588305","2":"2","3":"8780959","4":"G","5":"C","6":"0.5418","7":"0.0176","8":"0.0213","9":"0.8262911","10":"4.089e-01","11":"735053","12":"Pulse_Pressure"},{"1":"rs59966106","2":"2","3":"96999086","4":"A","5":"G","6":"0.3190","7":"0.0045","8":"0.0219","9":"0.2054790","10":"8.386e-01","11":"738169","12":"Pulse_Pressure"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.5301","7":"-0.0258","8":"0.0205","9":"-1.2585366","10":"2.071e-01","11":"738170","12":"Pulse_Pressure"},{"1":"rs138012093","2":"4","3":"134506440","4":"G","5":"A","6":"0.0177","7":"0.0402","8":"0.0859","9":"0.4679860","10":"6.395e-01","11":"734693","12":"Pulse_Pressure"},{"1":"rs144578582","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs6552737","2":"4","3":"184955461","4":"T","5":"A","6":"0.4306","7":"-0.0216","8":"0.0211","9":"-1.0236967","10":"3.050e-01","11":"734147","12":"Pulse_Pressure"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.3568","7":"-0.0530","8":"0.0214","9":"-2.4766355","10":"1.339e-02","11":"738169","12":"Pulse_Pressure"},{"1":"rs148054686","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs10041542","2":"5","3":"167832067","4":"T","5":"C","6":"0.2498","7":"0.0229","8":"0.0239","9":"0.9581590","10":"3.376e-01","11":"735149","12":"Pulse_Pressure"},{"1":"rs17172044","2":"7","3":"42397586","4":"A","5":"C","6":"0.0728","7":"0.0341","8":"0.0397","9":"0.8589420","10":"3.907e-01","11":"738167","12":"Pulse_Pressure"},{"1":"rs2346440","2":"7","3":"133685512","4":"G","5":"C","6":"0.4580","7":"0.0249","8":"0.0205","9":"1.2146341","10":"2.238e-01","11":"738170","12":"Pulse_Pressure"},{"1":"rs11979341","2":"7","3":"155797978","4":"C","5":"G","6":"0.3062","7":"0.0145","8":"0.0238","9":"0.6092440","10":"5.420e-01","11":"720283","12":"Pulse_Pressure"},{"1":"rs11993215","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs113835443","2":"8","3":"144717251","4":"C","5":"T","6":"0.1009","7":"-0.0135","8":"0.0359","9":"-0.3760446","10":"7.064e-01","11":"724654","12":"Pulse_Pressure"},{"1":"rs62583528","2":"9","3":"106929593","4":"G","5":"A","6":"0.2104","7":"0.0435","8":"0.0254","9":"1.7125984","10":"8.648e-02","11":"745818","12":"Pulse_Pressure"},{"1":"rs7020341","2":"9","3":"119247974","4":"G","5":"C","6":"0.3600","7":"-0.0044","8":"0.0213","9":"-0.2065728","10":"8.364e-01","11":"741944","12":"Pulse_Pressure"},{"1":"rs11245365","2":"10","3":"126482389","4":"G","5":"A","6":"0.5712","7":"0.0371","8":"0.0207","9":"1.7922705","10":"7.288e-02","11":"738170","12":"Pulse_Pressure"},{"1":"rs12802656","2":"11","3":"16534415","4":"A","5":"C","6":"0.4788","7":"-0.0909","8":"0.0206","9":"-4.4126200","10":"9.968e-06","11":"729908","12":"Pulse_Pressure"},{"1":"rs659065","2":"12","3":"4008887","4":"C","5":"G","6":"0.1450","7":"0.0012","8":"0.0291","9":"0.0412371","10":"9.671e-01","11":"742025","12":"Pulse_Pressure"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.1650","7":"-0.0452","8":"0.0285","9":"-1.5859600","10":"1.136e-01","11":"744813","12":"Pulse_Pressure"},{"1":"rs79522035","2":"12","3":"72956782","4":"C","5":"T","6":"0.0399","7":"-0.0107","8":"0.0546","9":"-0.1959707","10":"8.448e-01","11":"744703","12":"Pulse_Pressure"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.0833","7":"0.0418","8":"0.0374","9":"1.1176500","10":"2.634e-01","11":"745817","12":"Pulse_Pressure"},{"1":"rs143933797","2":"17","3":"78252238","4":"G","5":"A","6":"0.0287","7":"-0.0272","8":"0.0677","9":"-0.4017725","10":"6.883e-01","11":"709941","12":"Pulse_Pressure"},{"1":"rs79727675","2":"18","3":"11653053","4":"C","5":"A","6":"0.0522","7":"-0.0064","8":"0.0501","9":"-0.1277445","10":"8.985e-01","11":"689699","12":"Pulse_Pressure"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.1531","7":"0.1879","8":"0.0292","9":"6.4349300","10":"1.279e-10","11":"739409","12":"Pulse_Pressure"},{"1":"rs6060504","2":"20","3":"34197619","4":"T","5":"C","6":"0.1498","7":"0.0674","8":"0.0288","9":"2.3402800","10":"1.931e-02","11":"745818","12":"Pulse_Pressure"},{"1":"rs5753220","2":"22","3":"30986350","4":"T","5":"C","6":"0.2607","7":"0.0088","8":"0.0234","9":"0.3760680","10":"7.079e-01","11":"737558","12":"Pulse_Pressure"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Pulse Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[22],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs144578582","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs148054686","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs11993215","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Hippocampal Volume and Pulse Pressure datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[35],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[36],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["chr"],"align":["left"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10041542","2":"C","3":"T","4":"C","5":"T","6":"-0.04686000","7":"0.0229","8":"0.2452","9":"0.2498","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"5","15":"167832067","16":"0.0239","17":"0.9581590","18":"3.376e-01","19":"735149","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"5","24":"167832067","25":"0.010070917","26":"-4.653","27":"3.273e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.095242e-03","38":"1","39":"TRUE"},{"1":"rs10908512","2":"T","3":"C","4":"T","5":"C","6":"0.04051169","7":"-0.0132","8":"0.5624","9":"0.5594","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"1","15":"153856498","16":"0.0206","17":"-0.6407767","18":"5.207e-01","19":"737055","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"1","24":"153856498","25":"0.008700965","26":"4.656","27":"3.217e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"4.762471e-04","38":"1","39":"TRUE"},{"1":"rs11245365","2":"A","3":"G","4":"A","5":"G","6":"-0.04474128","7":"0.0371","8":"0.5648","9":"0.5712","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"10","15":"126482389","16":"0.0207","17":"1.7922705","18":"7.288e-02","19":"738170","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"10","24":"126482389","25":"0.008786582","26":"-5.092","27":"3.547e-07","28":"26322","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.264167e-03","38":"0.315","39":"TRUE"},{"1":"rs113835443","2":"T","3":"C","4":"T","5":"C","6":"0.07553081","7":"-0.0135","8":"0.0904","9":"0.1009","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"8","15":"144717251","16":"0.0359","17":"-0.3760446","18":"7.064e-01","19":"724654","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"8","24":"144717251","25":"0.016197900","26":"4.663","27":"3.118e-06","28":"23154","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"8.628195e-04","38":"1","39":"TRUE"},{"1":"rs11979341","2":"G","3":"C","4":"G","5":"C","6":"0.06558170","7":"0.0145","8":"0.3163","9":"0.3062","10":"FALSE","11":"TRUE","12":"FALSE","13":"OlZghu","14":"7","15":"155797978","16":"0.0238","17":"0.6092440","18":"5.420e-01","19":"720283","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"7","24":"155797978","25":"0.009708611","26":"6.755","27":"1.424e-11","28":"24484","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.721914e-06","38":"1","39":"TRUE"},{"1":"rs12802656","2":"C","3":"A","4":"C","5":"A","6":"-0.03979580","7":"-0.0909","8":"0.4696","9":"0.4788","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"11","15":"16534415","16":"0.0206","17":"-4.4126200","18":"9.968e-06","19":"729908","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"11","24":"16534415","25":"0.008681459","26":"-4.584","27":"4.560e-06","28":"26614","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"7.295943e-03","38":"<0.021","39":"FALSE"},{"1":"rs138012093","2":"A","3":"G","4":"A","5":"G","6":"-0.16180284","7":"0.0402","8":"0.0173","9":"0.0177","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"4","15":"134506440","16":"0.0859","17":"0.4679860","18":"6.395e-01","19":"734693","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"4","24":"134506440","25":"0.033576021","26":"-4.819","27":"1.445e-06","28":"26065","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"5.489102e-03","38":"1","39":"TRUE"},{"1":"rs143933797","2":"A","3":"G","4":"A","5":"G","6":"0.22638451","7":"-0.0272","8":"0.0166","9":"0.0287","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"17","15":"78252238","16":"0.0677","17":"-0.4017725","18":"6.883e-01","19":"709941","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"17","24":"78252238","25":"0.047143797","26":"4.802","27":"1.571e-06","28":"13758","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"6.146349e-03","38":"1","39":"TRUE"},{"1":"rs17172044","2":"C","3":"A","4":"C","5":"A","6":"-0.07408290","7":"0.0341","8":"0.0775","9":"0.0728","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"7","15":"42397586","16":"0.0397","17":"0.8589420","18":"3.907e-01","19":"738167","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"7","24":"42397586","25":"0.016143574","26":"-4.589","27":"4.464e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.501630e-03","38":"1","39":"TRUE"},{"1":"rs2268894","2":"T","3":"C","4":"T","5":"C","6":"-0.05668170","7":"-0.0258","8":"0.5412","9":"0.5301","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"2","15":"162856148","16":"0.0205","17":"-1.2585366","18":"2.071e-01","19":"738170","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"2","24":"162856148","25":"0.008658983","26":"-6.546","27":"5.894e-11","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.400649e-04","38":"1","39":"TRUE"},{"1":"rs2289881","2":"T","3":"G","4":"T","5":"G","6":"-0.05014690","7":"-0.0530","8":"0.3544","9":"0.3568","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"5","15":"66084260","16":"0.0214","17":"-2.4766355","18":"1.339e-02","19":"738169","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"5","24":"66084260","25":"0.009022472","26":"-5.558","27":"2.728e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.019412e-03","38":"0.693","39":"TRUE"},{"1":"rs2346440","2":"C","3":"G","4":"C","5":"G","6":"0.04059843","7":"0.0249","8":"0.4591","9":"0.4580","10":"FALSE","11":"TRUE","12":"TRUE","13":"OlZghu","14":"7","15":"133685512","16":"0.0205","17":"1.2146341","18":"2.238e-01","19":"738170","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"7","24":"133685512","25":"0.008661921","26":"4.687","27":"2.767e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"FALSE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"NA"},{"1":"rs429358","2":"C","3":"T","4":"C","5":"T","6":"-0.06342470","7":"0.1879","8":"0.1537","9":"0.1531","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"19","15":"45411941","16":"0.0292","17":"6.4349300","18":"1.279e-10","19":"739409","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"19","24":"45411941","25":"0.012519680","26":"-5.066","27":"4.067e-07","28":"24498","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"FALSE","36":"5e-06","37":"NA","38":"NA","39":"NA"},{"1":"rs5753220","2":"C","3":"T","4":"C","5":"T","6":"-0.04931970","7":"0.0088","8":"0.2497","9":"0.2607","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"22","15":"30986350","16":"0.0234","17":"0.3760680","18":"7.079e-01","19":"737558","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"22","24":"30986350","25":"0.010038609","26":"-4.913","27":"8.988e-07","28":"26459","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"3.673738e-04","38":"1","39":"TRUE"},{"1":"rs59966106","2":"G","3":"A","4":"G","5":"A","6":"0.04276760","7":"0.0045","8":"0.3114","9":"0.3190","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"2","15":"96999086","16":"0.0219","17":"0.2054790","18":"8.386e-01","19":"738169","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"2","24":"96999086","25":"0.009321611","26":"4.588","27":"4.470e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.644882e-05","38":"1","39":"TRUE"},{"1":"rs6060504","2":"C","3":"T","4":"C","5":"T","6":"0.06315530","7":"0.0674","8":"0.1624","9":"0.1498","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"20","15":"34197619","16":"0.0288","17":"2.3402800","18":"1.931e-02","19":"745818","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"20","24":"34197619","25":"0.011701919","26":"5.397","27":"6.762e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"3.245906e-03","38":"1","39":"TRUE"},{"1":"rs61921502","2":"G","3":"T","4":"G","5":"T","6":"-0.10788400","7":"-0.0452","8":"0.1534","9":"0.1650","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"12","15":"65832468","16":"0.0285","17":"-1.5859600","18":"1.136e-01","19":"744813","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"12","24":"65832468","25":"0.011964511","26":"-9.017","27":"1.941e-19","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"7.160524e-04","38":"1","39":"TRUE"},{"1":"rs62583528","2":"A","3":"G","4":"A","5":"G","6":"0.05622208","7":"0.0435","8":"0.1951","9":"0.2104","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"9","15":"106929593","16":"0.0254","17":"1.7125984","18":"8.648e-02","19":"745818","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"9","24":"106929593","25":"0.010891531","26":"5.162","27":"2.447e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.130918e-03","38":"1","39":"TRUE"},{"1":"rs6552737","2":"A","3":"T","4":"A","5":"T","6":"-0.04324518","7":"-0.0216","8":"0.4152","9":"0.4306","10":"FALSE","11":"TRUE","12":"TRUE","13":"OlZghu","14":"4","15":"184955461","16":"0.0211","17":"-1.0236967","18":"3.050e-01","19":"734147","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"4","24":"184955461","25":"0.008759404","26":"-4.937","27":"7.922e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"FALSE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"NA"},{"1":"rs659065","2":"G","3":"C","4":"G","5":"C","6":"-0.06743310","7":"0.0012","8":"0.1413","9":"0.1450","10":"FALSE","11":"TRUE","12":"FALSE","13":"OlZghu","14":"12","15":"4008887","16":"0.0291","17":"0.0412371","18":"9.671e-01","19":"742025","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"12","24":"4008887","25":"0.012611389","26":"-5.347","27":"8.931e-08","28":"25881","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.283779e-04","38":"1","39":"TRUE"},{"1":"rs7020341","2":"C","3":"G","4":"C","5":"G","6":"0.05989482","7":"-0.0044","8":"0.3590","9":"0.3600","10":"FALSE","11":"TRUE","12":"FALSE","13":"OlZghu","14":"9","15":"119247974","16":"0.0213","17":"-0.2065728","18":"8.364e-01","19":"741944","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"9","24":"119247974","25":"0.009013518","26":"6.645","27":"3.035e-11","28":"26700","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"2.970221e-04","38":"1","39":"TRUE"},{"1":"rs7588305","2":"C","3":"G","4":"C","5":"G","6":"-0.04002256","7":"0.0176","8":"0.5308","9":"0.5418","10":"FALSE","11":"TRUE","12":"TRUE","13":"OlZghu","14":"2","15":"8780959","16":"0.0213","17":"0.8262911","18":"4.089e-01","19":"735053","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"2","24":"8780959","25":"0.008681684","26":"-4.610","27":"4.023e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"FALSE","35":"TRUE","36":"5e-06","37":"NA","38":"NA","39":"NA"},{"1":"rs77956314","2":"C","3":"T","4":"C","5":"T","6":"0.16185400","7":"0.0418","8":"0.0840","9":"0.0833","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"12","15":"117323367","16":"0.0374","17":"1.1176500","18":"2.634e-01","19":"745817","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"12","24":"117323367","25":"0.015536016","26":"10.418","27":"2.055e-25","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"1.311244e-04","38":"1","39":"TRUE"},{"1":"rs79522035","2":"T","3":"C","4":"T","5":"C","6":"0.09939183","7":"-0.0107","8":"0.0419","9":"0.0399","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"12","15":"72956782","16":"0.0546","17":"-0.1959707","18":"8.448e-01","19":"744703","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"12","24":"72956782","25":"0.021592837","26":"4.603","27":"4.164e-06","28":"26692","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"9.660956e-04","38":"1","39":"TRUE"},{"1":"rs79727675","2":"A","3":"C","4":"A","5":"C","6":"-0.13610794","7":"-0.0064","8":"0.0472","9":"0.0522","10":"FALSE","11":"FALSE","12":"FALSE","13":"OlZghu","14":"18","15":"11653053","16":"0.0501","17":"-0.1277445","18":"8.985e-01","19":"689699","20":"Evangelou2018pp","21":"TRUE","22":"reported","23":"18","24":"11653053","25":"0.027913852","26":"-4.876","27":"1.082e-06","28":"14245","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"EZiFDn","33":"2","34":"TRUE","35":"TRUE","36":"5e-06","37":"4.687576e-04","38":"1","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Pulse Pressure GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs429358","2":"19","3":"45411941","4":"4.067e-07","5":"1.279e-10"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.02637030","3":"34.55470","4":"0.05","5":"5.451181","6":"0.6461087"},{"1":"TRUE","2":"0.02557084","3":"35.15491","4":"0.05","5":"2.625109","6":"0.3671959"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Hippocampal Volume on Pulse Pressure.
<br>

**Table 6** MR causaul estimates for Hippocampal Volume on Pulse Pressure
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"21","7":"0.19736194","8":"0.08623369","9":"0.02209754"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Weighted median","6":"21","7":"0.10474397","8":"0.12831482","9":"0.41432598"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Weighted mode","6":"21","7":"0.05607379","8":"0.16600413","9":"0.73904451"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"MR Egger","6":"21","7":"0.01230907","8":"0.29011997","9":"0.96660059"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal Volume versus the association in Pulse Pressure and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018pp/Hilbar2017hipv_5e-6_Evangelou2018pp_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"MR Egger","6":"39.54205","7":"19","8":"0.003756334"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"40.57953","7":"20","8":"0.004216682"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018pp/Hilbar2017hipv_5e-6_Evangelou2018pp_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018pp/Hilbar2017hipv_5e-6_Evangelou2018pp_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"0.01380166","6":"0.01954761","7":"0.4887226"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"5e-06","6":"FALSE","7":"1","8":"43.62586","9":"0.011"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"20","7":"0.13779607","8":"0.08745577","9":"0.1151160"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Weighted median","6":"20","7":"0.09466187","8":"0.12885106","9":"0.4625459"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Weighted mode","6":"20","7":"0.05532118","8":"0.17604704","9":"0.7567624"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"MR Egger","6":"20","7":"0.18752235","8":"0.23671827","9":"0.4385747"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Evangelou2018pp/Hilbar2017hipv_5e-6_Evangelou2018pp_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"MR Egger","6":"23.79268","7":"18","8":"0.1619378"},{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"23.86385","7":"19","8":"0.2014268"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"EZiFDn","2":"OlZghu","3":"Evangelou2018pp","4":"Hilbar2017hipv","5":"-0.003803603","6":"0.01639218","7":"0.8191264"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
