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

### Outcome: Fish and plant related diet
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10908512","2":"1","3":"153856498","4":"C","5":"T","6":"0.561685","7":"-1.72135e-02","8":"0.00243624","9":"-7.0656000","10":"1.6e-12","11":"335576","12":"fish_plant_diet"},{"1":"rs7588305","2":"2","3":"8780959","4":"G","5":"C","6":"0.542262","7":"1.98821e-03","8":"0.00242498","9":"0.8198870","10":"4.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs59966106","2":"2","3":"96999086","4":"A","5":"G","6":"0.322798","7":"3.82149e-03","8":"0.00258047","9":"1.4809300","10":"1.4e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.521162","7":"3.28045e-03","8":"0.00243231","9":"1.3487000","10":"1.8e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs138012093","2":"4","3":"134506440","4":"G","5":"A","6":"0.013494","7":"5.40490e-03","8":"0.01051900","9":"0.5138230","10":"6.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs144578582","2":"4","3":"155539564","4":"G","5":"A","6":"0.006577","7":"1.28276e-03","8":"0.01499490","9":"0.0855464","10":"9.3e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs6552737","2":"4","3":"184955461","4":"T","5":"A","6":"0.436414","7":"-2.59592e-03","8":"0.00249099","9":"-1.0421200","10":"3.0e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.356962","7":"9.35432e-05","8":"0.00255066","9":"0.0366741","10":"9.7e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs148054686","2":"5","3":"94459128","4":"G","5":"A","6":"0.007661","7":"1.12858e-02","8":"0.01390720","9":"0.8115080","10":"4.2e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs10041542","2":"5","3":"167832067","4":"T","5":"C","6":"0.245841","7":"-7.60919e-03","8":"0.00282842","9":"-2.6902600","10":"7.1e-03","11":"335576","12":"fish_plant_diet"},{"1":"rs17172044","2":"7","3":"42397586","4":"A","5":"C","6":"0.070715","7":"1.74495e-03","8":"0.00472165","9":"0.3695640","10":"7.1e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs2346440","2":"7","3":"133685512","4":"G","5":"C","6":"0.458201","7":"-6.65304e-03","8":"0.00243680","9":"-2.7302400","10":"6.3e-03","11":"335576","12":"fish_plant_diet"},{"1":"rs11979341","2":"7","3":"155797978","4":"C","5":"G","6":"0.295717","7":"2.23002e-04","8":"0.00268882","9":"0.0829368","10":"9.3e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs113835443","2":"8","3":"144717251","4":"C","5":"T","6":"0.102400","7":"2.60073e-03","8":"0.00400880","9":"0.6487550","10":"5.2e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs62583528","2":"9","3":"106929593","4":"G","5":"A","6":"0.214348","7":"-6.39944e-03","8":"0.00295732","9":"-2.1639300","10":"3.0e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs7020341","2":"9","3":"119247974","4":"G","5":"C","6":"0.362041","7":"3.55706e-03","8":"0.00251866","9":"1.4122800","10":"1.6e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs11245365","2":"10","3":"126482389","4":"G","5":"A","6":"0.572292","7":"4.51900e-03","8":"0.00244307","9":"1.8497200","10":"6.4e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs12802656","2":"11","3":"16534415","4":"A","5":"C","6":"0.479122","7":"-6.21058e-03","8":"0.00242618","9":"-2.5598200","10":"1.0e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs659065","2":"12","3":"4008887","4":"C","5":"G","6":"0.147970","7":"-5.82011e-03","8":"0.00340376","9":"-1.7099100","10":"8.7e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs61921502","2":"12","3":"65832468","4":"T","5":"G","6":"0.171180","7":"-3.77782e-03","8":"0.00323878","9":"-1.1664300","10":"2.4e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs79522035","2":"12","3":"72956782","4":"C","5":"T","6":"0.036282","7":"-3.13366e-03","8":"0.00650162","9":"-0.4819810","10":"6.3e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs77956314","2":"12","3":"117323367","4":"T","5":"C","6":"0.081441","7":"1.14444e-02","8":"0.00442180","9":"2.5881800","10":"9.6e-03","11":"335576","12":"fish_plant_diet"},{"1":"rs143933797","2":"17","3":"78252238","4":"G","5":"A","6":"0.029255","7":"1.46623e-03","8":"0.00719093","9":"0.2039000","10":"8.4e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs79727675","2":"18","3":"11653053","4":"C","5":"A","6":"0.051224","7":"4.39869e-03","8":"0.00548505","9":"0.8019420","10":"4.2e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.155607","7":"2.08983e-02","8":"0.00334197","9":"6.2532900","10":"4.0e-10","11":"335576","12":"fish_plant_diet"},{"1":"rs6060504","2":"20","3":"34197619","4":"T","5":"C","6":"0.143630","7":"7.40072e-03","8":"0.00345562","9":"2.1416500","10":"3.2e-02","11":"335576","12":"fish_plant_diet"},{"1":"rs5753220","2":"22","3":"30986350","4":"T","5":"C","6":"0.266765","7":"-3.33205e-03","8":"0.00273433","9":"-1.2186000","10":"2.2e-01","11":"335576","12":"fish_plant_diet"},{"1":"rs11993215","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"rs11993215","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Hippocampal Volume and Fish and plant related diet datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["dbl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10041542","2":"C","3":"T","4":"C","5":"T","6":"-0.04686000","7":"-7.60919e-03","8":"0.2452","9":"0.245841","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"5","15":"167832067","16":"0.00282842","17":"-2.6902600","18":"7.1e-03","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"5","24":"167832067","25":"0.010070917","26":"-4.653","27":"3.273e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"4.574558e-05","38":"0.3740","39":"TRUE"},{"1":"rs10908512","2":"T","3":"C","4":"T","5":"C","6":"0.04051169","7":"-1.72135e-02","8":"0.5624","9":"0.561685","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"1","15":"153856498","16":"0.00243624","17":"-7.0656000","18":"1.6e-12","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"1","24":"153856498","25":"0.008700965","26":"4.656","27":"3.217e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs11245365","2":"A","3":"G","4":"A","5":"G","6":"-0.04474128","7":"4.51900e-03","8":"0.5648","9":"0.572292","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"10","15":"126482389","16":"0.00244307","17":"1.8497200","18":"6.4e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"10","24":"126482389","25":"0.008786582","26":"-5.092","27":"3.547e-07","28":"26322","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.218026e-05","38":"0.4444","39":"TRUE"},{"1":"rs113835443","2":"T","3":"C","4":"T","5":"C","6":"0.07553081","7":"2.60073e-03","8":"0.0904","9":"0.102400","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"8","15":"144717251","16":"0.00400880","17":"0.6487550","18":"5.2e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"8","24":"144717251","25":"0.016197900","26":"4.663","27":"3.118e-06","28":"23154","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"9.776437e-07","38":"1.0000","39":"TRUE"},{"1":"rs11979341","2":"G","3":"C","4":"G","5":"C","6":"0.06558170","7":"2.23002e-04","8":"0.3163","9":"0.295717","10":"FALSE","11":"TRUE","12":"FALSE","13":"RR5Shj","14":"7","15":"155797978","16":"0.00268882","17":"0.0829368","18":"9.3e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"7","24":"155797978","25":"0.009708611","26":"6.755","27":"1.424e-11","28":"24484","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.630606e-06","38":"1.0000","39":"TRUE"},{"1":"rs12802656","2":"C","3":"A","4":"C","5":"A","6":"-0.03979580","7":"-6.21058e-03","8":"0.4696","9":"0.479122","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"11","15":"16534415","16":"0.00242618","17":"-2.5598200","18":"1.0e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"11","24":"16534415","25":"0.008681459","26":"-4.584","27":"4.560e-06","28":"26614","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.006171e-05","38":"0.4532","39":"TRUE"},{"1":"rs138012093","2":"A","3":"G","4":"A","5":"G","6":"-0.16180284","7":"5.40490e-03","8":"0.0173","9":"0.013494","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"4","15":"134506440","16":"0.01051900","17":"0.5138230","18":"6.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"4","24":"134506440","25":"0.033576021","26":"-4.819","27":"1.445e-06","28":"26065","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"8.340417e-05","38":"1.0000","39":"TRUE"},{"1":"rs143933797","2":"A","3":"G","4":"A","5":"G","6":"0.22638451","7":"1.46623e-03","8":"0.0166","9":"0.029255","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"17","15":"78252238","16":"0.00719093","17":"0.2039000","18":"8.4e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"17","24":"78252238","25":"0.047143797","26":"4.802","27":"1.571e-06","28":"13758","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.460258e-05","38":"1.0000","39":"TRUE"},{"1":"rs144578582","2":"A","3":"G","4":"A","5":"G","6":"-0.36225028","7":"1.28276e-03","8":"0.0068","9":"0.006577","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"4","15":"155539564","16":"0.01499490","17":"0.0855464","18":"9.3e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"4","24":"155539564","25":"0.074659992","26":"-4.852","27":"1.221e-06","28":"13258","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"9.421423e-05","38":"1.0000","39":"TRUE"},{"1":"rs148054686","2":"A","3":"G","4":"A","5":"G","6":"-0.21659175","7":"1.12858e-02","8":"0.0124","9":"0.007661","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"5","15":"94459128","16":"0.01390720","17":"0.8115080","18":"4.2e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"5","24":"94459128","25":"0.047064699","26":"-4.602","27":"4.184e-06","28":"18411","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.682230e-04","38":"1.0000","39":"TRUE"},{"1":"rs17172044","2":"C","3":"A","4":"C","5":"A","6":"-0.07408290","7":"1.74495e-03","8":"0.0775","9":"0.070715","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"7","15":"42397586","16":"0.00472165","17":"0.3695640","18":"7.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"7","24":"42397586","25":"0.016143574","26":"-4.589","27":"4.464e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.182146e-05","38":"1.0000","39":"TRUE"},{"1":"rs2268894","2":"T","3":"C","4":"T","5":"C","6":"-0.05668170","7":"3.28045e-03","8":"0.5412","9":"0.521162","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"2","15":"162856148","16":"0.00243231","17":"1.3487000","18":"1.8e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"2","24":"162856148","25":"0.008658983","26":"-6.546","27":"5.894e-11","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.264343e-05","38":"1.0000","39":"TRUE"},{"1":"rs2289881","2":"T","3":"G","4":"T","5":"G","6":"-0.05014690","7":"9.35432e-05","8":"0.3544","9":"0.356962","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"5","15":"66084260","16":"0.00255066","17":"0.0366741","18":"9.7e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"5","24":"66084260","25":"0.009022472","26":"-5.558","27":"2.728e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.514286e-06","38":"1.0000","39":"TRUE"},{"1":"rs2346440","2":"C","3":"G","4":"C","5":"G","6":"0.04059843","7":"-6.65304e-03","8":"0.4591","9":"0.458201","10":"FALSE","11":"TRUE","12":"TRUE","13":"RR5Shj","14":"7","15":"133685512","16":"0.00243680","17":"-2.7302400","18":"6.3e-03","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"7","24":"133685512","25":"0.008661921","26":"4.687","27":"2.767e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"FALSE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs429358","2":"C","3":"T","4":"C","5":"T","6":"-0.06342470","7":"2.08983e-02","8":"0.1537","9":"0.155607","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"19","15":"45411941","16":"0.00334197","17":"6.2532900","18":"4.0e-10","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"19","24":"45411941","25":"0.012519680","26":"-5.066","27":"4.067e-07","28":"24498","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs5753220","2":"C","3":"T","4":"C","5":"T","6":"-0.04931970","7":"-3.33205e-03","8":"0.2497","9":"0.266765","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"22","15":"30986350","16":"0.00273433","17":"-1.2186000","18":"2.2e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"22","24":"30986350","25":"0.010038609","26":"-4.913","27":"8.988e-07","28":"26459","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"5.425605e-06","38":"1.0000","39":"TRUE"},{"1":"rs59966106","2":"G","3":"A","4":"G","5":"A","6":"0.04276760","7":"3.82149e-03","8":"0.3114","9":"0.322798","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"2","15":"96999086","16":"0.00258047","17":"1.4809300","18":"1.4e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"2","24":"96999086","25":"0.009321611","26":"4.588","27":"4.470e-06","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"8.802021e-06","38":"1.0000","39":"TRUE"},{"1":"rs6060504","2":"C","3":"T","4":"C","5":"T","6":"0.06315530","7":"7.40072e-03","8":"0.1624","9":"0.143630","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"20","15":"34197619","16":"0.00345562","17":"2.1416500","18":"3.2e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"20","24":"34197619","25":"0.011701919","26":"5.397","27":"6.762e-08","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.870131e-05","38":"1.0000","39":"TRUE"},{"1":"rs61921502","2":"G","3":"T","4":"G","5":"T","6":"-0.10788400","7":"-3.77782e-03","8":"0.1534","9":"0.171180","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"12","15":"65832468","16":"0.00323878","17":"-1.1664300","18":"2.4e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"12","24":"65832468","25":"0.011964511","26":"-9.017","27":"1.941e-19","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.543700e-06","38":"1.0000","39":"TRUE"},{"1":"rs62583528","2":"A","3":"G","4":"A","5":"G","6":"0.05622208","7":"-6.39944e-03","8":"0.1951","9":"0.214348","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"9","15":"106929593","16":"0.00295732","17":"-2.1639300","18":"3.0e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"9","24":"106929593","25":"0.010891531","26":"5.162","27":"2.447e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"6.229620e-05","38":"0.2398","39":"TRUE"},{"1":"rs6552737","2":"A","3":"T","4":"A","5":"T","6":"-0.04324518","7":"-2.59592e-03","8":"0.4152","9":"0.436414","10":"FALSE","11":"TRUE","12":"TRUE","13":"RR5Shj","14":"4","15":"184955461","16":"0.00249099","17":"-1.0421200","18":"3.0e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"4","24":"184955461","25":"0.008759404","26":"-4.937","27":"7.922e-07","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"FALSE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs659065","2":"G","3":"C","4":"G","5":"C","6":"-0.06743310","7":"-5.82011e-03","8":"0.1413","9":"0.147970","10":"FALSE","11":"TRUE","12":"FALSE","13":"RR5Shj","14":"12","15":"4008887","16":"0.00340376","17":"-1.7099100","18":"8.7e-02","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"12","24":"4008887","25":"0.012611389","26":"-5.347","27":"8.931e-08","28":"25881","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.041744e-05","38":"1.0000","39":"TRUE"},{"1":"rs7020341","2":"C","3":"G","4":"C","5":"G","6":"0.05989482","7":"3.55706e-03","8":"0.3590","9":"0.362041","10":"FALSE","11":"TRUE","12":"FALSE","13":"RR5Shj","14":"9","15":"119247974","16":"0.00251866","17":"1.4122800","18":"1.6e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"9","24":"119247974","25":"0.009013518","26":"6.645","27":"3.035e-11","28":"26700","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"5.661396e-06","38":"1.0000","39":"TRUE"},{"1":"rs7588305","2":"C","3":"G","4":"C","5":"G","6":"-0.04002256","7":"1.98821e-03","8":"0.5308","9":"0.542262","10":"FALSE","11":"TRUE","12":"TRUE","13":"RR5Shj","14":"2","15":"8780959","16":"0.00242498","17":"0.8198870","18":"4.1e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"2","24":"8780959","25":"0.008681684","26":"-4.610","27":"4.023e-06","28":"26615","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"FALSE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs77956314","2":"C","3":"T","4":"C","5":"T","6":"0.16185400","7":"1.14444e-02","8":"0.0840","9":"0.081441","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"12","15":"117323367","16":"0.00442180","17":"2.5881800","18":"9.6e-03","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"12","24":"117323367","25":"0.015536016","26":"10.418","27":"2.055e-25","28":"26814","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"8.215105e-05","38":"1.0000","39":"TRUE"},{"1":"rs79522035","2":"T","3":"C","4":"T","5":"C","6":"0.09939183","7":"-3.13366e-03","8":"0.0419","9":"0.036282","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"12","15":"72956782","16":"0.00650162","17":"-0.4819810","18":"6.3e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"12","24":"72956782","25":"0.021592837","26":"4.603","27":"4.164e-06","28":"26692","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.935175e-05","38":"1.0000","39":"TRUE"},{"1":"rs79727675","2":"A","3":"C","4":"A","5":"C","6":"-0.13610794","7":"4.39869e-03","8":"0.0472","9":"0.051224","10":"FALSE","11":"FALSE","12":"FALSE","13":"RR5Shj","14":"18","15":"11653053","16":"0.00548505","17":"0.8019420","18":"4.2e-01","19":"335576","20":"Niarchou2020fish","21":"TRUE","22":"reported","23":"18","24":"11653053","25":"0.027913852","26":"-4.876","27":"1.082e-06","28":"14245","29":"Hilbar2017hipv","30":"TRUE","31":"reported","32":"ZV0toJ","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"6.110102e-05","38":"1.0000","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Fish and plant related diet GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs10908512","2":"1","3":"153856498","4":"3.217e-06","5":"1.6e-12"},{"1":"rs429358","2":"19","3":"45411941","4":"4.067e-07","5":"4.0e-10"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.02725197","3":"34.11645","4":"0.05","5":"5.887635","6":"0.6795702"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Hippocampal Volume on Fish and plant related diet.
<br>

**Table 6** MR causaul estimates for Hippocampal Volume on Fish and plant related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"22","7":"0.021779869","8":"0.009707929","9":"0.02486373"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Weighted median","6":"22","7":"0.019422407","8":"0.015760468","9":"0.21781850"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Weighted mode","6":"22","7":"0.018940876","8":"0.022361540","9":"0.40652883"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"MR Egger","6":"22","7":"0.005130213","8":"0.029745000","9":"0.86479898"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal Volume versus the association in Fish and plant related diet and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020fish/Hilbar2017hipv_5e-6_Niarchou2020fish_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"MR Egger","6":"41.50016","7":"20","8":"0.003211349"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"42.33477","7":"21","8":"0.003818274"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020fish/Hilbar2017hipv_5e-6_Niarchou2020fish_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020fish/Hilbar2017hipv_5e-6_Niarchou2020fish_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"0.001374774","6":"0.00216771","7":"0.5331343"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"5e-06","6":"FALSE","7":"0","8":"46.17129","9":"0.004"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"22","7":"0.021779869","8":"0.009707929","9":"0.02486373"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Weighted median","6":"22","7":"0.019422407","8":"0.015580687","9":"0.21255544"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Weighted mode","6":"22","7":"0.018940876","8":"0.023719006","9":"0.43348862"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"MR Egger","6":"22","7":"0.005130213","8":"0.029745000","9":"0.86479898"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Niarchou2020fish/Hilbar2017hipv_5e-6_Niarchou2020fish_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"MR Egger","6":"41.50016","7":"20","8":"0.003211349"},{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"42.33477","7":"21","8":"0.003818274"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"ZV0toJ","2":"RR5Shj","3":"Niarchou2020fish","4":"Hilbar2017hipv","5":"0.001374774","6":"0.00216771","7":"0.5331343"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
