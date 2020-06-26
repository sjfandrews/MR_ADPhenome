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

### Outcome: Triglycerides
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Hippocampal Volume avaliable in Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs10908512","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs7588305","2":"2","3":"8780959","4":"G","5":"C","6":"0.569222","7":"-0.0066","8":"0.0057","9":"-1.1578900","10":"0.18780","11":"90292","12":"Triglycerides"},{"1":"rs59966106","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs2268894","2":"2","3":"162856148","4":"C","5":"T","6":"0.559688","7":"0.0020","8":"0.0047","9":"0.4255319","10":"0.59990","11":"91013","12":"Triglycerides"},{"1":"rs138012093","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs144578582","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs6552737","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs2289881","2":"5","3":"66084260","4":"G","5":"T","6":"0.365062","7":"0.0022","8":"0.0049","9":"0.4489796","10":"0.40740","11":"91013","12":"Triglycerides"},{"1":"rs148054686","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs10041542","2":"5","3":"167832067","4":"T","5":"C","6":"0.240889","7":"0.0111","8":"0.0056","9":"1.9821429","10":"0.07554","11":"90999","12":"Triglycerides"},{"1":"rs17172044","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs2346440","2":"7","3":"133685512","4":"G","5":"C","6":"0.474536","7":"0.0025","8":"0.0047","9":"0.5319149","10":"0.36640","11":"91013","12":"Triglycerides"},{"1":"rs11979341","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs11993215","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs113835443","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs62583528","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs7020341","2":"9","3":"119247974","4":"G","5":"C","6":"0.411583","7":"0.0073","8":"0.0049","9":"1.4897959","10":"0.05044","11":"91008","12":"Triglycerides"},{"1":"rs11245365","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs12802656","2":"11","3":"16534415","4":"A","5":"C","6":"0.520894","7":"0.0019","8":"0.0033","9":"0.5757576","10":"0.53820","11":"177777","12":"Triglycerides"},{"1":"rs659065","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs61921502","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs79522035","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs77956314","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs143933797","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs79727675","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs429358","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs6060504","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs5753220","2":"22","3":"30986350","4":"T","5":"C","6":"0.209648","7":"-0.0028","8":"0.0054","9":"-0.5185190","10":"0.81190","11":"89427","12":"Triglycerides"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10908512","2":"rs10494303","3":"0.948971","4":"1.000000","5":"CA/TG","6":"NA","7":"1","8":"153893023","9":"G","10":"A","11":"0.4139370","12":"0.0055","13":"0.0047","14":"1.1702128","15":"0.31290","16":"90998","17":"Triglycerides","18":"C","19":"A","20":"T","21":"G","22":"C","23":"T","24":"TRUE"},{"1":"rs59966106","2":"rs4907310","3":"1.000000","4":"1.000000","5":"GT/AC","6":"NA","7":"2","8":"96980113","9":"C","10":"T","11":"0.2843920","12":"-0.0097","13":"0.0050","14":"-1.9400000","15":"0.15420","16":"91013","17":"Triglycerides","18":"G","19":"T","20":"A","21":"C","22":"G","23":"A","24":"TRUE"},{"1":"rs6552737","2":"rs1970892","3":"0.805769","4":"0.942465","5":"AA/TT","6":"NA","7":"4","8":"184955853","9":"T","10":"A","11":"0.3892940","12":"-0.0117","13":"0.0047","14":"-2.4893600","15":"0.06863","16":"90896","17":"Triglycerides","18":"A","19":"A","20":"T","21":"T","22":"A","23":"T","24":"TRUE"},{"1":"rs17172044","2":"rs10951684","3":"0.966872","4":"0.983297","5":"CT/AG","6":"NA","7":"7","8":"42411818","9":"G","10":"T","11":"0.0629764","12":"0.0019","13":"0.0090","14":"0.2111111","15":"0.83390","16":"91013","17":"Triglycerides","18":"C","19":"T","20":"A","21":"G","22":"C","23":"A","24":"TRUE"},{"1":"rs62583528","2":"rs980249","3":"0.828577","4":"0.974832","5":"AC/GT","6":"NA","7":"9","8":"106888517","9":"T","10":"C","11":"0.2059570","12":"-0.0032","13":"0.0056","14":"-0.5714290","15":"0.30330","16":"91013","17":"Triglycerides","18":"A","19":"C","20":"G","21":"T","22":"A","23":"G","24":"TRUE"},{"1":"rs11245365","2":"rs12570348","3":"0.995995","4":"1.000000","5":"GG/AT","6":"NA","7":"10","8":"126438963","9":"G","10":"T","11":"0.6062750","12":"-0.0019","13":"0.0047","14":"-0.4042550","15":"0.86080","16":"90939","17":"Triglycerides","18":"G","19":"G","20":"A","21":"T","22":"A","23":"G","24":"TRUE"},{"1":"rs659065","2":"rs671811","3":"0.957992","4":"1.000000","5":"GT/CC","6":"NA","7":"12","8":"4008326","9":"C","10":"T","11":"0.1458180","12":"0.0042","13":"0.0070","14":"0.6000000","15":"0.42320","16":"91013","17":"Triglycerides","18":"G","19":"T","20":"C","21":"C","22":"G","23":"C","24":"TRUE"},{"1":"rs79522035","2":"rs461075","3":"0.815963","4":"1.000000","5":"TC/CT","6":"NA","7":"12","8":"73060382","9":"C","10":"T","11":"0.9401310","12":"-0.0206","13":"0.0151","14":"-1.3642400","15":"0.25180","16":"65851","17":"Triglycerides","18":"T","19":"C","20":"C","21":"T","22":"C","23":"T","24":"TRUE"},{"1":"rs77956314","2":"rs7294919","3":"0.864397","4":"0.974878","5":"CC/TT","6":"NA","7":"12","8":"117327592","9":"T","10":"C","11":"0.0922012","12":"0.0077","13":"0.0086","14":"0.8953488","15":"0.63800","16":"90978","17":"Triglycerides","18":"C","19":"C","20":"T","21":"T","22":"C","23":"T","24":"TRUE"},{"1":"rs6060504","2":"rs6060507","3":"1.000000","4":"1.000000","5":"CG/TA","6":"NA","7":"20","8":"34198334","9":"A","10":"G","11":"0.1588320","12":"-0.0098","13":"0.0065","14":"-1.5076900","15":"0.07486","16":"89485","17":"Triglycerides","18":"C","19":"G","20":"T","21":"A","22":"C","23":"T","24":"TRUE"},{"1":"rs138012093","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs144578582","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs148054686","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs11979341","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs11993215","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs113835443","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs61921502","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs143933797","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs79727675","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs429358","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Hippocampal Volume and Triglycerides datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["target_snp.outcome"],"name":[24],"type":["chr"],"align":["left"]},{"label":["proxy_snp.outcome"],"name":[25],"type":["chr"],"align":["left"]},{"label":["target_a1.outcome"],"name":[26],"type":["chr"],"align":["left"]},{"label":["target_a2.outcome"],"name":[27],"type":["chr"],"align":["left"]},{"label":["proxy_a1.outcome"],"name":[28],"type":["chr"],"align":["left"]},{"label":["proxy_a2.outcome"],"name":[29],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[31],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[32],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[34],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[36],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[38],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[39],"type":["chr"],"align":["left"]},{"label":["action"],"name":[40],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[41],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[42],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[43],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[44],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[45],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[46],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10041542","2":"C","3":"T","4":"C","5":"T","6":"-0.04686000","7":"0.0111","8":"0.2452","9":"0.2408890","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"5","15":"167832067","16":"0.0056","17":"1.9821429","18":"0.07554","19":"90999","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"5","31":"167832067","32":"0.010070917","33":"-4.653","34":"3.273e-06","35":"26615","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs10908512","2":"T","3":"C","4":"T","5":"C","6":"0.04051169","7":"-0.0055","8":"0.5624","9":"0.5860630","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"1","15":"153893023","16":"0.0047","17":"1.1702128","18":"0.31290","19":"90998","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs10908512","25":"rs10494303","26":"C","27":"T","28":"A","29":"G","30":"1","31":"153856498","32":"0.008700965","33":"4.656","34":"3.217e-06","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs11245365","2":"A","3":"G","4":"A","5":"G","6":"-0.04474128","7":"-0.0019","8":"0.5648","9":"0.6062750","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"10","15":"126438963","16":"0.0047","17":"-0.4042550","18":"0.86080","19":"90939","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs11245365","25":"rs12570348","26":"A","27":"G","28":"T","29":"G","30":"10","31":"126482389","32":"0.008786582","33":"-5.092","34":"3.547e-07","35":"26322","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs12802656","2":"C","3":"A","4":"C","5":"A","6":"-0.03979580","7":"0.0019","8":"0.4696","9":"0.5208940","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"11","15":"16534415","16":"0.0033","17":"0.5757576","18":"0.53820","19":"177777","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"11","31":"16534415","32":"0.008681459","33":"-4.584","34":"4.560e-06","35":"26614","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs17172044","2":"C","3":"A","4":"C","5":"A","6":"-0.07408290","7":"0.0019","8":"0.0775","9":"0.0629764","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"7","15":"42411818","16":"0.0090","17":"0.2111111","18":"0.83390","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs17172044","25":"rs10951684","26":"C","27":"A","28":"T","29":"G","30":"7","31":"42397586","32":"0.016143574","33":"-4.589","34":"4.464e-06","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2268894","2":"T","3":"C","4":"T","5":"C","6":"-0.05668170","7":"0.0020","8":"0.5412","9":"0.5596880","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"2","15":"162856148","16":"0.0047","17":"0.4255319","18":"0.59990","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"2","31":"162856148","32":"0.008658983","33":"-6.546","34":"5.894e-11","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2289881","2":"T","3":"G","4":"T","5":"G","6":"-0.05014690","7":"0.0022","8":"0.3544","9":"0.3650620","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"5","15":"66084260","16":"0.0049","17":"0.4489796","18":"0.40740","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"5","31":"66084260","32":"0.009022472","33":"-5.558","34":"2.728e-08","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2346440","2":"C","3":"G","4":"C","5":"G","6":"0.04059843","7":"0.0025","8":"0.4591","9":"0.4745360","10":"FALSE","11":"TRUE","12":"TRUE","13":"J2FLTB","14":"7","15":"133685512","16":"0.0047","17":"0.5319149","18":"0.36640","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"7","31":"133685512","32":"0.008661921","33":"4.687","34":"2.767e-06","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"FALSE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"NA"},{"1":"rs5753220","2":"C","3":"T","4":"C","5":"T","6":"-0.04931970","7":"-0.0028","8":"0.2497","9":"0.2096480","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"22","15":"30986350","16":"0.0054","17":"-0.5185190","18":"0.81190","19":"89427","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"22","31":"30986350","32":"0.010038609","33":"-4.913","34":"8.988e-07","35":"26459","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs59966106","2":"G","3":"A","4":"G","5":"A","6":"0.04276760","7":"-0.0097","8":"0.3114","9":"0.2843920","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"2","15":"96980113","16":"0.0050","17":"-1.9400000","18":"0.15420","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs59966106","25":"rs4907310","26":"G","27":"A","28":"T","29":"C","30":"2","31":"96999086","32":"0.009321611","33":"4.588","34":"4.470e-06","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs6060504","2":"C","3":"T","4":"C","5":"T","6":"0.06315530","7":"-0.0098","8":"0.1624","9":"0.1588320","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"20","15":"34198334","16":"0.0065","17":"-1.5076900","18":"0.07486","19":"89485","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs6060504","25":"rs6060507","26":"C","27":"T","28":"G","29":"A","30":"20","31":"34197619","32":"0.011701919","33":"5.397","34":"6.762e-08","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs62583528","2":"A","3":"G","4":"A","5":"G","6":"0.05622208","7":"-0.0032","8":"0.1951","9":"0.2059570","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"9","15":"106888517","16":"0.0056","17":"-0.5714290","18":"0.30330","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs62583528","25":"rs980249","26":"A","27":"G","28":"C","29":"T","30":"9","31":"106929593","32":"0.010891531","33":"5.162","34":"2.447e-07","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs6552737","2":"A","3":"T","4":"A","5":"T","6":"-0.04324518","7":"-0.0117","8":"0.4152","9":"0.3892940","10":"FALSE","11":"TRUE","12":"FALSE","13":"J2FLTB","14":"4","15":"184955853","16":"0.0047","17":"-2.4893600","18":"0.06863","19":"90896","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs6552737","25":"rs1970892","26":"A","27":"T","28":"A","29":"T","30":"4","31":"184955461","32":"0.008759404","33":"-4.937","34":"7.922e-07","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs659065","2":"G","3":"C","4":"G","5":"C","6":"-0.06743310","7":"0.0042","8":"0.1413","9":"0.1458180","10":"FALSE","11":"TRUE","12":"FALSE","13":"J2FLTB","14":"12","15":"4008326","16":"0.0070","17":"0.6000000","18":"0.42320","19":"91013","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs659065","25":"rs671811","26":"G","27":"C","28":"T","29":"C","30":"12","31":"4008887","32":"0.012611389","33":"-5.347","34":"8.931e-08","35":"25881","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs7020341","2":"C","3":"G","4":"C","5":"G","6":"0.05989482","7":"0.0073","8":"0.3590","9":"0.4115830","10":"FALSE","11":"TRUE","12":"FALSE","13":"J2FLTB","14":"9","15":"119247974","16":"0.0049","17":"1.4897959","18":"0.05044","19":"91008","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"9","31":"119247974","32":"0.009013518","33":"6.645","34":"3.035e-11","35":"26700","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs7588305","2":"C","3":"G","4":"C","5":"G","6":"-0.04002256","7":"-0.0066","8":"0.5308","9":"0.5692220","10":"FALSE","11":"TRUE","12":"TRUE","13":"J2FLTB","14":"2","15":"8780959","16":"0.0057","17":"-1.1578900","18":"0.18780","19":"90292","20":"Willer2013tg","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"2","31":"8780959","32":"0.008681684","33":"-4.610","34":"4.023e-06","35":"26615","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"FALSE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"NA"},{"1":"rs77956314","2":"C","3":"T","4":"C","5":"T","6":"0.16185400","7":"0.0077","8":"0.0840","9":"0.0922012","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"12","15":"117327592","16":"0.0086","17":"0.8953488","18":"0.63800","19":"90978","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs77956314","25":"rs7294919","26":"C","27":"T","28":"C","29":"T","30":"12","31":"117323367","32":"0.015536016","33":"10.418","34":"2.055e-25","35":"26814","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs79522035","2":"T","3":"C","4":"T","5":"C","6":"0.09939183","7":"0.0206","8":"0.0419","9":"0.0598690","10":"FALSE","11":"FALSE","12":"FALSE","13":"J2FLTB","14":"12","15":"73060382","16":"0.0151","17":"-1.3642400","18":"0.25180","19":"65851","20":"Willer2013tg","21":"TRUE","22":"reported","23":"TRUE","24":"rs79522035","25":"rs461075","26":"C","27":"T","28":"T","29":"C","30":"12","31":"72956782","32":"0.021592837","33":"4.603","34":"4.164e-06","35":"26692","36":"Hilbar2017hipv","37":"TRUE","38":"reported","39":"BWdorl","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.01909961","3":"32.61113","4":"0.05","5":"0.0797349","6":"0.05918333"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Hippocampal Volume on Triglycerides.
<br>

**Table 6** MR causaul estimates for Hippocampal Volume on Triglycerides
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"16","7":"-0.00693768","8":"0.02373913","9":"0.7700981"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Weighted median","6":"16","7":"-0.02965366","8":"0.03506145","9":"0.3976852"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Weighted mode","6":"16","7":"-0.00588633","8":"0.04755179","9":"0.9031269"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"MR Egger","6":"16","7":"0.08155989","8":"0.08473934","9":"0.3521393"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Hippocampal Volume versus the association in Triglycerides and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013tg/Hilbar2017hipv_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"MR Egger","6":"22.22819","7":"14","8":"0.07404567"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"24.20636","7":"15","8":"0.06167090"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013tg/Hilbar2017hipv_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013tg/Hilbar2017hipv_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"-0.005283972","6":"0.004733869","7":"0.2831263"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"5e-06","6":"FALSE","7":"0","8":"27.22444","9":"0.088"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Inverse variance weighted (fixed effects)","6":"16","7":"-0.00693768","8":"0.02373913","9":"0.7700981"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Weighted median","6":"16","7":"-0.02965366","8":"0.03372305","9":"0.3792228"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Weighted mode","6":"16","7":"-0.00588633","8":"0.04441415","9":"0.8963244"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"MR Egger","6":"16","7":"0.08155989","8":"0.08473934","9":"0.3521393"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Hilbar2017hipv/Willer2013tg/Hilbar2017hipv_5e-6_Willer2013tg_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"MR Egger","6":"22.22819","7":"14","8":"0.07404567"},{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"Inverse variance weighted","6":"24.20636","7":"15","8":"0.06167090"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"BWdorl","2":"J2FLTB","3":"Willer2013tg","4":"Hilbar2017hipv","5":"-0.005283972","6":"0.004733869","7":"0.2831263"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
