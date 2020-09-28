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

### Outcome: Insomnia
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10908512","2":"1","3":"153856498","4":"C","5":"T","6":"0.57319700","7":"-2.818545e-04","8":"0.0008672447","9":"-0.325","10":"7.450e-01","11":"1330662","12":"Insomnia_Symptoms"},{"1":"rs7588305","2":"2","3":"8780959","4":"G","5":"C","6":"0.56922200","7":"1.461183e-03","8":"0.0008661429","9":"1.687","10":"9.163e-02","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs59966106","2":"2","3":"96999086","4":"A","5":"G","6":"0.28173900","7":"1.674160e-04","8":"0.0008674413","9":"0.193","10":"8.473e-01","11":"1330656","12":"Insomnia_Symptoms"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.55968800","7":"1.912483e-03","8":"0.0008673393","9":"2.205","10":"2.746e-02","11":"1326169","12":"Insomnia_Symptoms"},{"1":"rs138012093","2":"4","3":"134506440","4":"G","5":"A","6":"0.02685050","7":"-9.299293e-04","8":"0.0008674714","9":"-1.072","10":"2.838e-01","11":"1327961","12":"Insomnia_Symptoms"},{"1":"rs144578582","2":"4","3":"155539564","4":"G","5":"A","6":"0.00362450","7":"1.736019e-04","8":"0.0008680095","9":"0.200","10":"8.412e-01","11":"1328874","12":"Insomnia_Symptoms"},{"1":"rs6552737","2":"4","3":"184955461","4":"T","5":"A","6":"0.40243900","7":"-1.622483e-03","8":"0.0010281892","9":"-1.578","10":"1.147e-01","11":"944267","12":"Insomnia_Symptoms"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.36506200","7":"1.861472e-04","8":"0.0008698468","9":"0.214","10":"8.306e-01","11":"1323200","12":"Insomnia_Symptoms"},{"1":"rs148054686","2":"5","3":"94459128","4":"G","5":"A","6":"0.00362056","7":"-5.259705e-04","8":"0.0010292964","9":"-0.511","10":"6.093e-01","11":"944267","12":"Insomnia_Symptoms"},{"1":"rs10041542","2":"5","3":"167832067","4":"T","5":"C","6":"0.24088900","7":"1.395420e-03","8":"0.0008683377","9":"1.607","10":"1.080e-01","11":"1324228","12":"Insomnia_Symptoms"},{"1":"rs17172044","2":"7","3":"42397586","4":"A","5":"C","6":"0.06297640","7":"-1.664950e-03","8":"0.0008662592","9":"-1.922","10":"5.466e-02","11":"1330001","12":"Insomnia_Symptoms"},{"1":"rs2346440","2":"7","3":"133685512","4":"G","5":"C","6":"0.47453600","7":"-4.253824e-04","8":"0.0008681273","9":"-0.490","10":"6.242e-01","11":"1327401","12":"Insomnia_Symptoms"},{"1":"rs11979341","2":"7","3":"155797978","4":"C","5":"G","6":"0.33175500","7":"1.492290e-03","8":"0.0008701426","9":"1.715","10":"8.628e-02","11":"1318530","12":"Insomnia_Symptoms"},{"1":"rs11993215","2":"8","3":"28055926","4":"A","5":"T","6":"0.89588700","7":"6.802380e-04","8":"0.0010291049","9":"0.661","10":"5.087e-01","11":"944267","12":"Insomnia_Symptoms"},{"1":"rs113835443","2":"8","3":"144717251","4":"C","5":"T","6":"0.11809600","7":"-7.578234e-04","8":"0.0008680680","9":"-0.873","10":"3.826e-01","11":"1326580","12":"Insomnia_Symptoms"},{"1":"rs62583528","2":"9","3":"106929593","4":"G","5":"A","6":"0.17478300","7":"-1.832769e-04","8":"0.0008686110","9":"-0.211","10":"8.328e-01","11":"1326980","12":"Insomnia_Symptoms"},{"1":"rs7020341","2":"9","3":"119247974","4":"G","5":"C","6":"0.41158300","7":"-3.037881e-05","8":"0.0008679660","9":"-0.035","10":"9.717e-01","11":"1330486","12":"Insomnia_Symptoms"},{"1":"rs11245365","2":"10","3":"126482389","4":"G","5":"A","6":"0.60673900","7":"-9.480907e-04","8":"0.0008666277","9":"-1.094","10":"2.742e-01","11":"1330502","12":"Insomnia_Symptoms"},{"1":"rs12802656","2":"11","3":"16534415","4":"A","5":"C","6":"0.52089400","7":"7.537090e-04","8":"0.0008673294","9":"0.869","10":"3.850e-01","11":"1328851","12":"Insomnia_Symptoms"},{"1":"rs659065","2":"12","3":"4008887","4":"C","5":"G","6":"0.14661100","7":"7.715200e-04","8":"0.0008668765","9":"0.890","10":"3.733e-01","11":"1330190","12":"Insomnia_Symptoms"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.14724000","7":"1.051440e-03","8":"0.0008682414","9":"1.211","10":"2.257e-01","11":"1325310","12":"Insomnia_Symptoms"},{"1":"rs79522035","2":"12","3":"72956782","4":"C","5":"T","6":"0.05612060","7":"1.415634e-04","8":"0.0008684873","9":"0.163","10":"8.709e-01","11":"1327627","12":"Insomnia_Symptoms"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.07391780","7":"7.783480e-04","8":"0.0008667573","9":"0.898","10":"3.691e-01","11":"1330538","12":"Insomnia_Symptoms"},{"1":"rs143933797","2":"17","3":"78252238","4":"G","5":"A","6":"0.03779070","7":"7.356212e-04","8":"0.0008674778","9":"0.848","10":"3.967e-01","11":"1328446","12":"Insomnia_Symptoms"},{"1":"rs79727675","2":"18","3":"11653053","4":"C","5":"A","6":"0.05414240","7":"-7.531571e-04","8":"0.0008666941","9":"-0.869","10":"3.849e-01","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.13181000","7":"-4.839820e-03","8":"0.0008639458","9":"-5.602","10":"2.125e-08","11":"1330800","12":"Insomnia_Symptoms"},{"1":"rs6060504","2":"20","3":"34197619","4":"T","5":"C","6":"0.16094300","7":"2.482430e-03","8":"0.0008658618","9":"2.867","10":"4.142e-03","11":"1329528","12":"Insomnia_Symptoms"},{"1":"rs5753220","2":"22","3":"30986350","4":"T","5":"C","6":"0.20964800","7":"1.427440e-03","8":"0.0008661670","9":"1.648","10":"9.933e-02","11":"1330800","12":"Insomnia_Symptoms"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Hippocampal Volume and Insomnia datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10041542","2":"C","3":"T","4":"C","5":"T","6":"-0.04686000","7":"1.395420e-03","8":"0.2452","9":"0.24088900","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"5","15":"167832067","16":"0.0008683377","17":"1.607","18":"1.080e-01","19":"1324228","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"5","24":"167832067","25":"0.010070917","26":"-4.653","27":"3.273e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs10908512","2":"T","3":"C","4":"T","5":"C","6":"0.04051169","7":"-2.818545e-04","8":"0.5624","9":"0.57319700","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"1","15":"153856498","16":"0.0008672447","17":"-0.325","18":"7.450e-01","19":"1330662","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"1","24":"153856498","25":"0.008700965","26":"4.656","27":"3.217e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11245365","2":"A","3":"G","4":"A","5":"G","6":"-0.04474128","7":"-9.480907e-04","8":"0.5648","9":"0.60673900","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"10","15":"126482389","16":"0.0008666277","17":"-1.094","18":"2.742e-01","19":"1330502","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"10","24":"126482389","25":"0.008786582","26":"-5.092","27":"3.547e-07","28":"26322","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs113835443","2":"T","3":"C","4":"T","5":"C","6":"0.07553081","7":"-7.578234e-04","8":"0.0904","9":"0.11809600","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"8","15":"144717251","16":"0.0008680680","17":"-0.873","18":"3.826e-01","19":"1326580","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"8","24":"144717251","25":"0.016197900","26":"4.663","27":"3.118e-06","28":"23154","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11979341","2":"G","3":"C","4":"G","5":"C","6":"0.06558170","7":"1.492290e-03","8":"0.3163","9":"0.33175500","10":"FALSE","11":"TRUE","12":"FALSE","13":"GlAGic","14":"7","15":"155797978","16":"0.0008701426","17":"1.715","18":"8.628e-02","19":"1318530","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"7","24":"155797978","25":"0.009708611","26":"6.755","27":"1.424e-11","28":"24484","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11993215","2":"T","3":"A","4":"T","5":"A","6":"0.06998320","7":"6.802380e-04","8":"0.9102","9":"0.89588700","10":"FALSE","11":"TRUE","12":"FALSE","13":"GlAGic","14":"8","15":"28055926","16":"0.0010291049","17":"0.661","18":"5.087e-01","19":"944267","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"8","24":"28055926","25":"0.015193929","26":"4.606","27":"4.108e-06","28":"26477","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12802656","2":"C","3":"A","4":"C","5":"A","6":"-0.03979580","7":"7.537090e-04","8":"0.4696","9":"0.52089400","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"11","15":"16534415","16":"0.0008673294","17":"0.869","18":"3.850e-01","19":"1328851","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"11","24":"16534415","25":"0.008681459","26":"-4.584","27":"4.560e-06","28":"26614","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs138012093","2":"A","3":"G","4":"A","5":"G","6":"-0.16180284","7":"-9.299293e-04","8":"0.0173","9":"0.02685050","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"4","15":"134506440","16":"0.0008674714","17":"-1.072","18":"2.838e-01","19":"1327961","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"4","24":"134506440","25":"0.033576021","26":"-4.819","27":"1.445e-06","28":"26065","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs143933797","2":"A","3":"G","4":"A","5":"G","6":"0.22638451","7":"7.356212e-04","8":"0.0166","9":"0.03779070","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"17","15":"78252238","16":"0.0008674778","17":"0.848","18":"3.967e-01","19":"1328446","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"17","24":"78252238","25":"0.047143797","26":"4.802","27":"1.571e-06","28":"13758","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs144578582","2":"A","3":"G","4":"A","5":"G","6":"-0.36225028","7":"1.736019e-04","8":"0.0068","9":"0.00362450","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"4","15":"155539564","16":"0.0008680095","17":"0.200","18":"8.412e-01","19":"1328874","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"4","24":"155539564","25":"0.074659992","26":"-4.852","27":"1.221e-06","28":"13258","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs148054686","2":"A","3":"G","4":"A","5":"G","6":"-0.21659175","7":"-5.259705e-04","8":"0.0124","9":"0.00362056","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"5","15":"94459128","16":"0.0010292964","17":"-0.511","18":"6.093e-01","19":"944267","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"5","24":"94459128","25":"0.047064699","26":"-4.602","27":"4.184e-06","28":"18411","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs17172044","2":"C","3":"A","4":"C","5":"A","6":"-0.07408290","7":"-1.664950e-03","8":"0.0775","9":"0.06297640","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"7","15":"42397586","16":"0.0008662592","17":"-1.922","18":"5.466e-02","19":"1330001","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"7","24":"42397586","25":"0.016143574","26":"-4.589","27":"4.464e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2268894","2":"T","3":"C","4":"T","5":"C","6":"-0.05668170","7":"1.912483e-03","8":"0.5412","9":"0.55968800","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"2","15":"162856148","16":"0.0008673393","17":"2.205","18":"2.746e-02","19":"1326169","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"2","24":"162856148","25":"0.008658983","26":"-6.546","27":"5.894e-11","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2289881","2":"T","3":"G","4":"T","5":"G","6":"-0.05014690","7":"1.861472e-04","8":"0.3544","9":"0.36506200","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"5","15":"66084260","16":"0.0008698468","17":"0.214","18":"8.306e-01","19":"1323200","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"5","24":"66084260","25":"0.009022472","26":"-5.558","27":"2.728e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2346440","2":"C","3":"G","4":"C","5":"G","6":"0.04059843","7":"-4.253824e-04","8":"0.4591","9":"0.47453600","10":"FALSE","11":"TRUE","12":"TRUE","13":"GlAGic","14":"7","15":"133685512","16":"0.0008681273","17":"-0.490","18":"6.242e-01","19":"1327401","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"7","24":"133685512","25":"0.008661921","26":"4.687","27":"2.767e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"FALSE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs429358","2":"C","3":"T","4":"C","5":"T","6":"-0.06342470","7":"-4.839820e-03","8":"0.1537","9":"0.13181000","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"19","15":"45411941","16":"0.0008639458","17":"-5.602","18":"2.125e-08","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"19","24":"45411941","25":"0.012519680","26":"-5.066","27":"4.067e-07","28":"24498","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs5753220","2":"C","3":"T","4":"C","5":"T","6":"-0.04931970","7":"1.427440e-03","8":"0.2497","9":"0.20964800","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"22","15":"30986350","16":"0.0008661670","17":"1.648","18":"9.933e-02","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"22","24":"30986350","25":"0.010038609","26":"-4.913","27":"8.988e-07","28":"26459","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs59966106","2":"G","3":"A","4":"G","5":"A","6":"0.04276760","7":"1.674160e-04","8":"0.3114","9":"0.28173900","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"2","15":"96999086","16":"0.0008674413","17":"0.193","18":"8.473e-01","19":"1330656","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"2","24":"96999086","25":"0.009321611","26":"4.588","27":"4.470e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6060504","2":"C","3":"T","4":"C","5":"T","6":"0.06315530","7":"2.482430e-03","8":"0.1624","9":"0.16094300","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"20","15":"34197619","16":"0.0008658618","17":"2.867","18":"4.142e-03","19":"1329528","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"20","24":"34197619","25":"0.011701919","26":"5.397","27":"6.762e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs61921502","2":"G","3":"T","4":"G","5":"T","6":"-0.10788400","7":"1.051440e-03","8":"0.1534","9":"0.14724000","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"12","15":"65832468","16":"0.0008682414","17":"1.211","18":"2.257e-01","19":"1325310","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"12","24":"65832468","25":"0.011964511","26":"-9.017","27":"1.941e-19","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs62583528","2":"A","3":"G","4":"A","5":"G","6":"0.05622208","7":"-1.832769e-04","8":"0.1951","9":"0.17478300","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"9","15":"106929593","16":"0.0008686110","17":"-0.211","18":"8.328e-01","19":"1326980","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"9","24":"106929593","25":"0.010891531","26":"5.162","27":"2.447e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6552737","2":"A","3":"T","4":"A","5":"T","6":"-0.04324518","7":"-1.622483e-03","8":"0.4152","9":"0.40243900","10":"FALSE","11":"TRUE","12":"FALSE","13":"GlAGic","14":"4","15":"184955461","16":"0.0010281892","17":"-1.578","18":"1.147e-01","19":"944267","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"4","24":"184955461","25":"0.008759404","26":"-4.937","27":"7.922e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs659065","2":"G","3":"C","4":"G","5":"C","6":"-0.06743310","7":"7.715200e-04","8":"0.1413","9":"0.14661100","10":"FALSE","11":"TRUE","12":"FALSE","13":"GlAGic","14":"12","15":"4008887","16":"0.0008668765","17":"0.890","18":"3.733e-01","19":"1330190","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"12","24":"4008887","25":"0.012611389","26":"-5.347","27":"8.931e-08","28":"25881","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7020341","2":"C","3":"G","4":"C","5":"G","6":"0.05989482","7":"-3.037881e-05","8":"0.3590","9":"0.41158300","10":"FALSE","11":"TRUE","12":"FALSE","13":"GlAGic","14":"9","15":"119247974","16":"0.0008679660","17":"-0.035","18":"9.717e-01","19":"1330486","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"9","24":"119247974","25":"0.009013518","26":"6.645","27":"3.035e-11","28":"26700","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7588305","2":"C","3":"G","4":"C","5":"G","6":"-0.04002256","7":"1.461183e-03","8":"0.5308","9":"0.56922200","10":"FALSE","11":"TRUE","12":"TRUE","13":"GlAGic","14":"2","15":"8780959","16":"0.0008661429","17":"1.687","18":"9.163e-02","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"2","24":"8780959","25":"0.008681684","26":"-4.610","27":"4.023e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"FALSE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs77956314","2":"C","3":"T","4":"C","5":"T","6":"0.16185400","7":"7.783480e-04","8":"0.0840","9":"0.07391780","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"12","15":"117323367","16":"0.0008667573","17":"0.898","18":"3.691e-01","19":"1330538","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"12","24":"117323367","25":"0.015536016","26":"10.418","27":"2.055e-25","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs79522035","2":"T","3":"C","4":"T","5":"C","6":"0.09939183","7":"1.415634e-04","8":"0.0419","9":"0.05612060","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"12","15":"72956782","16":"0.0008684873","17":"0.163","18":"8.709e-01","19":"1327627","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"12","24":"72956782","25":"0.021592837","26":"4.603","27":"4.164e-06","28":"26692","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs79727675","2":"A","3":"C","4":"A","5":"C","6":"-0.13610794","7":"-7.531571e-04","8":"0.0472","9":"0.05414240","10":"FALSE","11":"FALSE","12":"FALSE","13":"GlAGic","14":"18","15":"11653053","16":"0.0008666941","17":"-0.869","18":"3.849e-01","19":"1330800","20":"Jansen2018insomnia23andMe","21":"TRUE","22":"reported","23":"18","24":"11653053","25":"0.027913852","26":"-4.876","27":"1.082e-06","28":"14245","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"75JMW7","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Insomnia GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs429358","2":"19","3":"45411941","4":"4.067e-07","5":"2.125e-08"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.02975544","3":"32.86136","4":"0.05","5":"0.03210294","6":"0.05368559"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Hippocampal Volume on Insomnia.
<br>

**Table 6** MR causaul estimates for Hippocampal Volume on Insomnia
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"25","7":"0.001551398","8":"0.001443639","9":"0.2825341"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Weighted median","6":"25","7":"0.001428019","8":"0.002070745","9":"0.4904357"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Weighted mode","6":"25","7":"0.001617374","8":"0.001764965","9":"0.3685858"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"MR Egger","6":"25","7":"0.001839658","8":"0.002914970","9":"0.5341925"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal Volume versus the association in Insomnia and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Jansen2018insomnia23andMe/Hilbar2017hipv_5e-6_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"MR Egger","6":"35.72769","7":"23","8":"0.04396916"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"35.75223","7":"24","8":"0.05799935"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Jansen2018insomnia23andMe/Hilbar2017hipv_5e-6_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Jansen2018insomnia23andMe/Hilbar2017hipv_5e-6_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"-4.482226e-05","6":"0.0003566049","7":"0.9010682"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"5e-06","6":"FALSE","7":"0","8":"37.82903","9":"0.0783"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"25","7":"0.001551398","8":"0.001443639","9":"0.2825341"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Weighted median","6":"25","7":"0.001428019","8":"0.002114544","9":"0.4994651"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Weighted mode","6":"25","7":"0.001617374","8":"0.001651093","9":"0.3370665"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"MR Egger","6":"25","7":"0.001839658","8":"0.002914970","9":"0.5341925"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Jansen2018insomnia23andMe/Hilbar2017hipv_5e-6_Jansen2018insomnia23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"MR Egger","6":"35.72769","7":"23","8":"0.04396916"},{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"35.75223","7":"24","8":"0.05799935"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"75JMW7","2":"GlAGic","3":"Jansen2018insomnia23andMe","4":"Hilbar2017hipv","5":"-4.482226e-05","6":"0.0003566049","7":"0.9010682"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
