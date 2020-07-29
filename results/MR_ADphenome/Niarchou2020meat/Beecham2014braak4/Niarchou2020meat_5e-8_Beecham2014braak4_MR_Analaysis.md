---
title: "Mendelian Randomization Analysis"
author: "Dr. Shea Andrews"
date: "2020-07-23"
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

### Exposure: Meat related diet
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Meat related diet
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs2815753","2":"1","3":"72812324","4":"G","5":"A","6":"0.601201","7":"-0.0183605","8":"0.00247730","9":"-7.41150","10":"1.2e-13","11":"335576","12":"fish_plant_diet"},{"1":"rs506589","2":"1","3":"177894287","4":"T","5":"C","6":"0.206119","7":"-0.0164985","8":"0.00300566","9":"-5.48914","10":"4.0e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs36016753","2":"1","3":"187269477","4":"G","5":"A","6":"0.405961","7":"0.0139536","8":"0.00248123","9":"5.62366","10":"1.9e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs10900457","2":"1","3":"205146726","4":"G","5":"A","6":"0.621425","7":"-0.0143457","8":"0.00250486","9":"-5.72715","10":"1.0e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs62106258","2":"2","3":"417167","4":"T","5":"C","6":"0.048512","7":"0.0362759","8":"0.00564869","9":"6.42200","10":"1.3e-10","11":"335576","12":"fish_plant_diet"},{"1":"rs7644667","2":"3","3":"69040601","4":"T","5":"C","6":"0.547560","7":"0.0142657","8":"0.00243810","9":"5.85115","10":"4.9e-09","11":"335576","12":"fish_plant_diet"},{"1":"rs13340130","2":"3","3":"81790970","4":"A","5":"T","6":"0.346035","7":"0.0146033","8":"0.00255453","9":"5.71663","10":"1.1e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs701760","2":"4","3":"113439212","4":"C","5":"G","6":"0.483589","7":"-0.0134451","8":"0.00243618","9":"-5.51893","10":"3.4e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs300046","2":"5","3":"37081705","4":"A","5":"G","6":"0.453693","7":"0.0134073","8":"0.00245446","9":"5.46242","10":"4.7e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs10064431","2":"5","3":"92950673","4":"T","5":"C","6":"0.524467","7":"0.0159263","8":"0.00243369","9":"6.54410","10":"6.0e-11","11":"335576","12":"fish_plant_diet"},{"1":"rs806794","2":"6","3":"26200677","4":"A","5":"G","6":"0.270603","7":"-0.0197927","8":"0.00273532","9":"-7.23597","10":"4.6e-13","11":"335576","12":"fish_plant_diet"},{"1":"rs35797675","2":"7","3":"72878044","4":"T","5":"G","6":"0.212993","7":"-0.0199499","8":"0.00300577","9":"-6.63720","10":"3.2e-11","11":"335576","12":"fish_plant_diet"},{"1":"rs11772832","2":"7","3":"135073047","4":"T","5":"C","6":"0.398899","7":"-0.0135343","8":"0.00248076","9":"-5.45571","10":"4.9e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs10125463","2":"9","3":"15677925","4":"A","5":"T","6":"0.506358","7":"0.0206152","8":"0.00244783","9":"8.42183","10":"3.7e-17","11":"335576","12":"fish_plant_diet"},{"1":"rs6478868","2":"9","3":"131927092","4":"T","5":"C","6":"0.315903","7":"-0.0171298","8":"0.00262040","9":"-6.53709","10":"6.3e-11","11":"335576","12":"fish_plant_diet"},{"1":"rs1912286","2":"10","3":"87318888","4":"G","5":"A","6":"0.665374","7":"0.0158809","8":"0.00257568","9":"6.16571","10":"7.0e-10","11":"335576","12":"fish_plant_diet"},{"1":"rs3909727","2":"11","3":"126587382","4":"A","5":"G","6":"0.835788","7":"0.0185228","8":"0.00328005","9":"5.64711","10":"1.6e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs4759074","2":"12","3":"54664097","4":"C","5":"T","6":"0.410809","7":"0.0147949","8":"0.00246406","9":"6.00428","10":"1.9e-09","11":"335576","12":"fish_plant_diet"},{"1":"rs12103229","2":"16","3":"74167594","4":"C","5":"A","6":"0.547810","7":"-0.0138449","8":"0.00244789","9":"-5.65585","10":"1.6e-08","11":"335576","12":"fish_plant_diet"},{"1":"rs12232804","2":"19","3":"42677807","4":"C","5":"T","6":"0.112306","7":"0.0228620","8":"0.00385512","9":"5.93030","10":"3.0e-09","11":"335576","12":"fish_plant_diet"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.155607","7":"-0.0242948","8":"0.00335552","9":"-7.24025","10":"4.5e-13","11":"335576","12":"fish_plant_diet"},{"1":"rs79564737","2":"20","3":"43408372","4":"G","5":"A","6":"0.306786","7":"-0.0151755","8":"0.00264239","9":"-5.74310","10":"9.3e-09","11":"335576","12":"fish_plant_diet"},{"1":"rs136528","2":"22","3":"27245262","4":"G","5":"C","6":"0.381980","7":"0.0149240","8":"0.00252151","9":"5.91868","10":"3.2e-09","11":"335576","12":"fish_plant_diet"},{"1":"rs139911","2":"22","3":"40704052","4":"C","5":"T","6":"0.576683","7":"0.0141502","8":"0.00247127","9":"5.72588","10":"1.0e-08","11":"335576","12":"fish_plant_diet"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Neurofibrillary Tangles
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Meat related diet avaliable in Neurofibrillary Tangles
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs2815753","2":"1","3":"72812324","4":"G","5":"A","6":"0.6174","7":"0.0511","8":"0.0443","9":"1.1534989","10":"2.486e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs506589","2":"1","3":"177894287","4":"T","5":"C","6":"0.1862","7":"-0.0745","8":"0.0552","9":"-1.3496400","10":"1.770e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs10900457","2":"1","3":"205146726","4":"G","5":"A","6":"0.6184","7":"-0.0377","8":"0.0451","9":"-0.8359202","10":"4.039e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs62106258","2":"2","3":"417167","4":"T","5":"C","6":"0.0559","7":"-0.0606","8":"0.1431","9":"-0.4234800","10":"6.721e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs7644667","2":"3","3":"69040601","4":"T","5":"C","6":"0.5303","7":"0.0944","8":"0.0494","9":"1.9109300","10":"5.600e-02","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs300046","2":"5","3":"37081705","4":"A","5":"G","6":"0.4641","7":"-0.0259","8":"0.0447","9":"-0.5794180","10":"5.628e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs10064431","2":"5","3":"92950673","4":"T","5":"C","6":"0.5200","7":"0.0722","8":"0.0456","9":"1.5833300","10":"1.131e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs806794","2":"6","3":"26200677","4":"A","5":"G","6":"0.3053","7":"0.0294","8":"0.0482","9":"0.6099590","10":"5.420e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs35797675","2":"7","3":"72878044","4":"T","5":"G","6":"0.1949","7":"0.1468","8":"0.0568","9":"2.5845100","10":"9.797e-03","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs11772832","2":"7","3":"135073047","4":"T","5":"C","6":"0.3991","7":"-0.0203","8":"0.0443","9":"-0.4582390","10":"6.464e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs6478868","2":"9","3":"131927092","4":"T","5":"C","6":"0.3129","7":"0.0303","8":"0.0492","9":"0.6158540","10":"5.384e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs1912286","2":"10","3":"87318888","4":"G","5":"A","6":"0.6630","7":"0.0128","8":"0.0465","9":"0.2752688","10":"7.837e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs4759074","2":"12","3":"54664097","4":"C","5":"T","6":"0.3898","7":"-0.0159","8":"0.0446","9":"-0.3565022","10":"7.213e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs12103229","2":"16","3":"74167594","4":"C","5":"A","6":"0.5493","7":"-0.0588","8":"0.0439","9":"-1.3394077","10":"1.806e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs12232804","2":"19","3":"42677807","4":"C","5":"T","6":"0.1114","7":"0.0301","8":"0.0669","9":"0.4499253","10":"6.528e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs429358","2":"19","3":"45411941","4":"T","5":"C","6":"0.2645","7":"0.8072","8":"0.0670","9":"12.0478000","10":"1.908e-33","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs79564737","2":"20","3":"43408372","4":"G","5":"A","6":"0.3089","7":"0.0051","8":"0.0470","9":"0.1085106","10":"9.142e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs139911","2":"22","3":"40704052","4":"C","5":"T","6":"0.5727","7":"-0.0122","8":"0.0444","9":"-0.2747748","10":"7.836e-01","11":"4735","12":"Neurofibrillary_Tangles"},{"1":"rs36016753","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs13340130","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs701760","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs10125463","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs3909727","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs136528","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Neurofibrillary Tangles
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs36016753","2":"rs2088248","3":"1.000000","4":"1.000000","5":"AG/GA","6":"NA","7":"1","8":"187275417","9":"A","10":"G","11":"0.4050","12":"-0.0236","13":"0.0446","14":"-0.52914800","15":"0.597000","16":"4735","17":"Neurofibrillary_Tangles","18":"A","19":"G","20":"G","21":"A","22":"A","23":"G","24":"TRUE"},{"1":"rs13340130","2":"rs3772895","3":"1.000000","4":"1.000000","5":"TG/AA","6":"NA","7":"3","8":"81769493","9":"A","10":"G","11":"0.3338","12":"-0.0599","13":"0.0462","14":"-1.29654000","15":"0.194500","16":"4735","17":"Neurofibrillary_Tangles","18":"T","19":"G","20":"A","21":"A","22":"T","23":"A","24":"TRUE"},{"1":"rs701760","2":"rs4833412","3":"0.900497","4":"0.991453","5":"CC/GT","6":"NA","7":"4","8":"113410427","9":"C","10":"T","11":"0.4389","12":"-0.0008","13":"0.0462","14":"-0.01731602","15":"0.985700","16":"4735","17":"Neurofibrillary_Tangles","18":"C","19":"C","20":"G","21":"T","22":"G","23":"C","24":"TRUE"},{"1":"rs10125463","2":"rs6474946","3":"0.992051","4":"1.000000","5":"TT/AC","6":"NA","7":"9","8":"15674969","9":"C","10":"T","11":"0.4896","12":"0.0707","13":"0.0431","14":"1.64037123","15":"0.101400","16":"4735","17":"Neurofibrillary_Tangles","18":"T","19":"T","20":"A","21":"C","22":"T","23":"A","24":"TRUE"},{"1":"rs3909727","2":"rs3909726","3":"1.000000","4":"1.000000","5":"AG/GA","6":"NA","7":"11","8":"126587391","9":"G","10":"A","11":"0.8425","12":"0.1564","13":"0.0603","14":"2.59369818","15":"0.009472","16":"4735","17":"Neurofibrillary_Tangles","18":"A","19":"G","20":"G","21":"A","22":"G","23":"A","24":"TRUE"},{"1":"rs136528","2":"rs136527","3":"0.971716","4":"0.991783","5":"CC/GA","6":"NA","7":"22","8":"27245222","9":"A","10":"C","11":"0.3978","12":"-0.0457","13":"0.0457","14":"-1.00000000","15":"0.316500","16":"4735","17":"Neurofibrillary_Tangles","18":"C","19":"C","20":"G","21":"A","22":"C","23":"G","24":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Meat related diet and Neurofibrillary Tangles datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs10064431","2":"C","3":"T","4":"C","5":"T","6":"0.0159263","7":"0.0722","8":"0.524467","9":"0.5200","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"5","15":"92950673","16":"0.0456","17":"1.58333000","18":"1.131e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"5","24":"92950673","25":"0.00243369","26":"6.54410","27":"6.0e-11","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs10125463","2":"T","3":"A","4":"T","5":"A","6":"0.0206152","7":"-0.0707","8":"0.506358","9":"0.5104","10":"FALSE","11":"TRUE","12":"TRUE","13":"EIBFap","14":"9","15":"15674969","16":"0.0431","17":"1.64037123","18":"1.014e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"9","24":"15677925","25":"0.00244783","26":"8.42183","27":"3.7e-17","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"FALSE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs10900457","2":"A","3":"G","4":"A","5":"G","6":"-0.0143457","7":"-0.0377","8":"0.621425","9":"0.6184","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"1","15":"205146726","16":"0.0451","17":"-0.83592018","18":"4.039e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"1","24":"205146726","25":"0.00250486","26":"-5.72715","27":"1.0e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs11772832","2":"C","3":"T","4":"C","5":"T","6":"-0.0135343","7":"-0.0203","8":"0.398899","9":"0.3991","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"7","15":"135073047","16":"0.0443","17":"-0.45823900","18":"6.464e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"7","24":"135073047","25":"0.00248076","26":"-5.45571","27":"4.9e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12103229","2":"A","3":"C","4":"A","5":"C","6":"-0.0138449","7":"-0.0588","8":"0.547810","9":"0.5493","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"16","15":"74167594","16":"0.0439","17":"-1.33940774","18":"1.806e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"16","24":"74167594","25":"0.00244789","26":"-5.65585","27":"1.6e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12232804","2":"T","3":"C","4":"T","5":"C","6":"0.0228620","7":"0.0301","8":"0.112306","9":"0.1114","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"19","15":"42677807","16":"0.0669","17":"0.44992526","18":"6.528e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"19","24":"42677807","25":"0.00385512","26":"5.93030","27":"3.0e-09","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs13340130","2":"T","3":"A","4":"T","5":"A","6":"0.0146033","7":"-0.0599","8":"0.346035","9":"0.3338","10":"FALSE","11":"TRUE","12":"FALSE","13":"EIBFap","14":"3","15":"81769493","16":"0.0462","17":"-1.29654000","18":"1.945e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"3","24":"81790970","25":"0.00255453","26":"5.71663","27":"1.1e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs136528","2":"C","3":"G","4":"C","5":"G","6":"0.0149240","7":"-0.0457","8":"0.381980","9":"0.3978","10":"FALSE","11":"TRUE","12":"FALSE","13":"EIBFap","14":"22","15":"27245222","16":"0.0457","17":"-1.00000000","18":"3.165e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"22","24":"27245262","25":"0.00252151","26":"5.91868","27":"3.2e-09","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs139911","2":"T","3":"C","4":"T","5":"C","6":"0.0141502","7":"-0.0122","8":"0.576683","9":"0.5727","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"22","15":"40704052","16":"0.0444","17":"-0.27477477","18":"7.836e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"22","24":"40704052","25":"0.00247127","26":"5.72588","27":"1.0e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs1912286","2":"A","3":"G","4":"A","5":"G","6":"0.0158809","7":"0.0128","8":"0.665374","9":"0.6630","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"10","15":"87318888","16":"0.0465","17":"0.27526882","18":"7.837e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"10","24":"87318888","25":"0.00257568","26":"6.16571","27":"7.0e-10","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2815753","2":"A","3":"G","4":"A","5":"G","6":"-0.0183605","7":"0.0511","8":"0.601201","9":"0.6174","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"1","15":"72812324","16":"0.0443","17":"1.15349887","18":"2.486e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"1","24":"72812324","25":"0.00247730","26":"-7.41150","27":"1.2e-13","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs300046","2":"G","3":"A","4":"G","5":"A","6":"0.0134073","7":"-0.0259","8":"0.453693","9":"0.4641","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"5","15":"37081705","16":"0.0447","17":"-0.57941800","18":"5.628e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"5","24":"37081705","25":"0.00245446","26":"5.46242","27":"4.7e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs35797675","2":"G","3":"T","4":"G","5":"T","6":"-0.0199499","7":"0.1468","8":"0.212993","9":"0.1949","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"7","15":"72878044","16":"0.0568","17":"2.58451000","18":"9.797e-03","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"7","24":"72878044","25":"0.00300577","26":"-6.63720","27":"3.2e-11","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs36016753","2":"A","3":"G","4":"A","5":"G","6":"0.0139536","7":"-0.0236","8":"0.405961","9":"0.4050","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"1","15":"187275417","16":"0.0446","17":"-0.52914800","18":"5.970e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"1","24":"187269477","25":"0.00248123","26":"5.62366","27":"1.9e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs3909727","2":"G","3":"A","4":"G","5":"A","6":"0.0185228","7":"0.1564","8":"0.835788","9":"0.8425","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"11","15":"126587391","16":"0.0603","17":"2.59369818","18":"9.472e-03","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"11","24":"126587382","25":"0.00328005","26":"5.64711","27":"1.6e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs429358","2":"C","3":"T","4":"C","5":"T","6":"-0.0242948","7":"0.8072","8":"0.155607","9":"0.2645","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"19","15":"45411941","16":"0.0670","17":"12.04780000","18":"1.908e-33","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"19","24":"45411941","25":"0.00335552","26":"-7.24025","27":"4.5e-13","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4759074","2":"T","3":"C","4":"T","5":"C","6":"0.0147949","7":"-0.0159","8":"0.410809","9":"0.3898","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"12","15":"54664097","16":"0.0446","17":"-0.35650224","18":"7.213e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"12","24":"54664097","25":"0.00246406","26":"6.00428","27":"1.9e-09","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs506589","2":"C","3":"T","4":"C","5":"T","6":"-0.0164985","7":"-0.0745","8":"0.206119","9":"0.1862","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"1","15":"177894287","16":"0.0552","17":"-1.34964000","18":"1.770e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"1","24":"177894287","25":"0.00300566","26":"-5.48914","27":"4.0e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs62106258","2":"C","3":"T","4":"C","5":"T","6":"0.0362759","7":"-0.0606","8":"0.048512","9":"0.0559","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"2","15":"417167","16":"0.1431","17":"-0.42348000","18":"6.721e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"2","24":"417167","25":"0.00564869","26":"6.42200","27":"1.3e-10","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6478868","2":"C","3":"T","4":"C","5":"T","6":"-0.0171298","7":"0.0303","8":"0.315903","9":"0.3129","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"9","15":"131927092","16":"0.0492","17":"0.61585400","18":"5.384e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"9","24":"131927092","25":"0.00262040","26":"-6.53709","27":"6.3e-11","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs701760","2":"G","3":"C","4":"G","5":"C","6":"-0.0134451","7":"-0.0008","8":"0.483589","9":"0.4389","10":"FALSE","11":"TRUE","12":"TRUE","13":"EIBFap","14":"4","15":"113410427","16":"0.0462","17":"-0.01731602","18":"9.857e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"4","24":"113439212","25":"0.00243618","26":"-5.51893","27":"3.4e-08","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"FALSE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"NA"},{"1":"rs7644667","2":"C","3":"T","4":"C","5":"T","6":"0.0142657","7":"0.0944","8":"0.547560","9":"0.5303","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"3","15":"69040601","16":"0.0494","17":"1.91093000","18":"5.600e-02","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"3","24":"69040601","25":"0.00243810","26":"5.85115","27":"4.9e-09","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs79564737","2":"A","3":"G","4":"A","5":"G","6":"-0.0151755","7":"0.0051","8":"0.306786","9":"0.3089","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"20","15":"43408372","16":"0.0470","17":"0.10851064","18":"9.142e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"20","24":"43408372","25":"0.00264239","26":"-5.74310","27":"9.3e-09","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs806794","2":"G","3":"A","4":"G","5":"A","6":"-0.0197927","7":"0.0294","8":"0.270603","9":"0.3053","10":"FALSE","11":"FALSE","12":"FALSE","13":"EIBFap","14":"6","15":"26200677","16":"0.0482","17":"0.60995900","18":"5.420e-01","19":"4735","20":"Beecham2014braak4","21":"TRUE","22":"reported","23":"6","24":"26200677","25":"0.00273532","26":"-7.23597","27":"4.6e-13","28":"335576","29":"Niarchou2020meat","30":"TRUE","31":"reported","32":"P3xcqR","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Neurofibrillary Tangles GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs429358","2":"19","3":"45411941","4":"4.5e-13","5":"1.908e-33"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.002303531","3":"36.89256","4":"0.05","5":"0.007152524","6":"0.05081973"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Meat related diet on Neurofibrillary Tangles.
<br>

**Table 6** MR causaul estimates for Meat related diet on Neurofibrillary Tangles
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Inverse variance weighted (fixed effects)","6":"21","7":"0.04672697","8":"0.6628513","9":"0.9438006"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Weighted median","6":"21","7":"-1.00855986","8":"0.9851614","9":"0.3059529"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Weighted mode","6":"21","7":"-1.51130380","8":"1.7618912","9":"0.4011802"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"MR Egger","6":"21","7":"-3.75013005","8":"4.8843432","9":"0.4520515"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Meat related diet versus the association in Neurofibrillary Tangles and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/Niarchou2020meat/Beecham2014braak4/Niarchou2020meat_5e-8_Beecham2014braak4_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"MR Egger","6":"29.18032","7":"19","8":"0.06320119"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Inverse variance weighted","6":"30.13539","7":"20","8":"0.06768941"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/Niarchou2020meat/Beecham2014braak4/Niarchou2020meat_5e-8_Beecham2014braak4_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/Niarchou2020meat/Beecham2014braak4/Niarchou2020meat_5e-8_Beecham2014braak4_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"0.06185593","6":"0.07843912","7":"0.4400837"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"5e-08","6":"FALSE","7":"0","8":"33.21165","9":"0.0672"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Inverse variance weighted (fixed effects)","6":"21","7":"0.04672697","8":"0.6628513","9":"0.9438006"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Weighted median","6":"21","7":"-1.00855986","8":"0.9632942","9":"0.2951040"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Weighted mode","6":"21","7":"-1.51130380","8":"1.6169871","9":"0.3611213"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"MR Egger","6":"21","7":"-3.75013005","8":"4.8843432","9":"0.4520515"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/Niarchou2020meat/Beecham2014braak4/Niarchou2020meat_5e-8_Beecham2014braak4_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"MR Egger","6":"29.18032","7":"19","8":"0.06320119"},{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"Inverse variance weighted","6":"30.13539","7":"20","8":"0.06768941"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"P3xcqR","2":"EIBFap","3":"Beecham2014braak4","4":"Niarchou2020meat","5":"0.06185593","6":"0.07843912","7":"0.4400837"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
