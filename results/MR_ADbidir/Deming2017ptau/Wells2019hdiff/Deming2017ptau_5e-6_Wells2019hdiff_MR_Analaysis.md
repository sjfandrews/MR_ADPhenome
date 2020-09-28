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

### Exposure: CSF Ptau
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with CSF Ptau
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs4267554","2":"2","3":"46901045","4":"A","5":"G","6":"0.1037360","7":"-0.04197","8":"0.008801","9":"-4.768776","10":"1.976e-06","11":"3146","12":"CSF_ptau"},{"1":"rs35055419","2":"3","3":"190663557","4":"T","5":"C","6":"0.3498150","7":"0.03490","8":"0.005653","9":"6.173713","10":"7.624e-10","11":"3146","12":"CSF_ptau"},{"1":"rs16897042","2":"5","3":"67107448","4":"T","5":"C","6":"0.0184850","7":"0.07870","8":"0.016050","9":"4.903427","10":"9.998e-07","11":"3146","12":"CSF_ptau"},{"1":"rs60871478","2":"7","3":"827325","4":"A","5":"G","6":"0.7729760","7":"-0.03472","8":"0.006863","9":"-5.059010","10":"4.505e-07","11":"3146","12":"CSF_ptau"},{"1":"rs7798280","2":"7","3":"15093202","4":"C","5":"A","6":"0.3549910","7":"-0.03378","8":"0.006773","9":"-4.987450","10":"6.699e-07","11":"3146","12":"CSF_ptau"},{"1":"rs2439313","2":"8","3":"32533316","4":"A","5":"G","6":"0.5620010","7":"-0.02653","8":"0.005418","9":"-4.896640","10":"1.025e-06","11":"3146","12":"CSF_ptau"},{"1":"rs514716","2":"9","3":"3929424","4":"C","5":"T","6":"0.8443070","7":"0.04876","8":"0.008764","9":"5.563670","10":"2.935e-08","11":"3146","12":"CSF_ptau"},{"1":"rs9527039","2":"13","3":"53504675","4":"T","5":"C","6":"0.0810909","7":"-0.06098","8":"0.010450","9":"-5.835407","10":"5.947e-09","11":"3146","12":"CSF_ptau"},{"1":"rs12889974","2":"14","3":"77609298","4":"C","5":"G","6":"0.0913043","7":"0.04955","8":"0.010660","9":"4.648218","10":"3.555e-06","11":"3146","12":"CSF_ptau"},{"1":"rs12961169","2":"18","3":"77381649","4":"C","5":"T","6":"0.1395560","7":"0.05004","8":"0.008013","9":"6.244852","10":"5.117e-10","11":"3146","12":"CSF_ptau"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"0.07930","8":"0.006542","9":"12.121675","10":"5.299e-33","11":"3146","12":"CSF_ptau"},{"1":"rs34871495","2":"20","3":"55310283","4":"C","5":"T","6":"0.0282916","7":"0.08995","8":"0.016740","9":"5.373357","10":"8.307e-08","11":"3146","12":"CSF_ptau"},{"1":"rs41157","2":"22","3":"30405151","4":"T","5":"C","6":"0.7146230","7":"-0.02538","8":"0.005504","9":"-4.611190","10":"4.182e-06","11":"3146","12":"CSF_ptau"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Hearing Difficulty
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Hearing Difficulty
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs4267554","2":"2","3":"46901045","4":"A","5":"G","6":"0.133878","7":"-0.001322580","8":"0.00195904","9":"-0.675116","10":"5.0e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs35055419","2":"3","3":"190663557","4":"T","5":"C","6":"0.381936","7":"0.005770650","8":"0.00136315","9":"4.233320","10":"2.3e-05","11":"250389","12":"Hearing_Difficulty"},{"1":"rs16897042","2":"5","3":"67107448","4":"T","5":"C","6":"0.026141","7":"0.003340460","8":"0.00413824","9":"0.807218","10":"4.2e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs60871478","2":"7","3":"827325","4":"A","5":"G","6":"0.830480","7":"0.001925480","8":"0.00175933","9":"1.094440","10":"2.7e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs7798280","2":"7","3":"15093202","4":"C","5":"A","6":"0.332069","7":"0.000469300","8":"0.00140736","9":"0.333461","10":"7.4e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs2439313","2":"8","3":"32533316","4":"A","5":"G","6":"0.620708","7":"-0.000879378","8":"0.00136636","9":"-0.643592","10":"5.2e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs514716","2":"9","3":"3929424","4":"C","5":"T","6":"0.878600","7":"0.001286670","8":"0.00203044","9":"0.633690","10":"5.3e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs9527039","2":"13","3":"53504675","4":"T","5":"C","6":"0.079177","7":"-0.002717890","8":"0.00246527","9":"-1.102470","10":"2.7e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs12889974","2":"14","3":"77609298","4":"C","5":"G","6":"0.093580","7":"0.000738659","8":"0.00227915","9":"0.324094","10":"7.5e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs12961169","2":"18","3":"77381649","4":"C","5":"T","6":"0.171251","7":"-0.000389010","8":"0.00176119","9":"-0.220879","10":"8.3e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.126696","7":"0.003379480","8":"0.00198591","9":"1.701730","10":"8.9e-02","11":"250389","12":"Hearing_Difficulty"},{"1":"rs34871495","2":"20","3":"55310283","4":"C","5":"T","6":"0.021433","7":"-0.001757820","8":"0.00459076","9":"-0.382904","10":"7.0e-01","11":"250389","12":"Hearing_Difficulty"},{"1":"rs41157","2":"22","3":"30405151","4":"T","5":"C","6":"0.609757","7":"0.002498700","8":"0.00135341","9":"1.846230","10":"6.5e-02","11":"250389","12":"Hearing_Difficulty"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Hearing Difficulty
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized CSF Ptau and Hearing Difficulty datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["dbl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs12889974","2":"G","3":"C","4":"G","5":"C","6":"0.04955","7":"0.000738659","8":"0.0913043","9":"0.093580","10":"FALSE","11":"TRUE","12":"FALSE","13":"3XCQOS","14":"14","15":"77609298","16":"0.00227915","17":"0.324094","18":"7.5e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"14","24":"77609298","25":"0.010660","26":"4.648218","27":"3.555e-06","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"8.389342e-08","38":"1.0000","39":"TRUE"},{"1":"rs12961169","2":"T","3":"C","4":"T","5":"C","6":"0.05004","7":"-0.000389010","8":"0.1395560","9":"0.171251","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"18","15":"77381649","16":"0.00176119","17":"-0.220879","18":"8.3e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"18","24":"77381649","25":"0.008013","26":"6.244852","27":"5.117e-10","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.630640e-06","38":"1.0000","39":"TRUE"},{"1":"rs16897042","2":"C","3":"T","4":"C","5":"T","6":"0.07870","7":"0.003340460","8":"0.0184850","9":"0.026141","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"5","15":"67107448","16":"0.00413824","17":"0.807218","18":"4.2e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"5","24":"67107448","25":"0.016050","26":"4.903427","27":"9.998e-07","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.439882e-06","38":"1.0000","39":"TRUE"},{"1":"rs2439313","2":"G","3":"A","4":"G","5":"A","6":"-0.02653","7":"-0.000879378","8":"0.5620010","9":"0.620708","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"8","15":"32533316","16":"0.00136636","17":"-0.643592","18":"5.2e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"8","24":"32533316","25":"0.005418","26":"-4.896640","27":"1.025e-06","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.323103e-07","38":"1.0000","39":"TRUE"},{"1":"rs34871495","2":"T","3":"C","4":"T","5":"C","6":"0.08995","7":"-0.001757820","8":"0.0282916","9":"0.021433","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"20","15":"55310283","16":"0.00459076","17":"-0.382904","18":"7.0e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"20","24":"55310283","25":"0.016740","26":"5.373357","27":"8.307e-08","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.464773e-05","38":"1.0000","39":"TRUE"},{"1":"rs35055419","2":"C","3":"T","4":"C","5":"T","6":"0.03490","7":"0.005770650","8":"0.3498150","9":"0.381936","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"3","15":"190663557","16":"0.00136315","17":"4.233320","18":"2.3e-05","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"3","24":"190663557","25":"0.005653","26":"6.173713","27":"7.624e-10","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"3.226963e-05","38":"0.0048","39":"FALSE"},{"1":"rs41157","2":"C","3":"T","4":"C","5":"T","6":"-0.02538","7":"0.002498700","8":"0.7146230","9":"0.609757","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"22","15":"30405151","16":"0.00135341","17":"1.846230","18":"6.5e-02","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"22","24":"30405151","25":"0.005504","26":"-4.611190","27":"4.182e-06","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.024413e-05","38":"0.2352","39":"TRUE"},{"1":"rs4267554","2":"G","3":"A","4":"G","5":"A","6":"-0.04197","7":"-0.001322580","8":"0.1037360","9":"0.133878","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"2","15":"46901045","16":"0.00195904","17":"-0.675116","18":"5.0e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"2","24":"46901045","25":"0.008801","26":"-4.768776","27":"1.976e-06","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.597718e-07","38":"1.0000","39":"TRUE"},{"1":"rs514716","2":"T","3":"C","4":"T","5":"C","6":"0.04876","7":"0.001286670","8":"0.8443070","9":"0.878600","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"9","15":"3929424","16":"0.00203044","17":"0.633690","18":"5.3e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"9","24":"3929424","25":"0.008764","26":"5.563670","27":"2.935e-08","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.079740e-07","38":"1.0000","39":"TRUE"},{"1":"rs60871478","2":"G","3":"A","4":"G","5":"A","6":"-0.03472","7":"0.001925480","8":"0.7729760","9":"0.830480","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"7","15":"827325","16":"0.00175933","17":"1.094440","18":"2.7e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"7","24":"827325","25":"0.006863","26":"-5.059010","27":"4.505e-07","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"7.906914e-06","38":"1.0000","39":"TRUE"},{"1":"rs769449","2":"A","3":"G","4":"A","5":"G","6":"0.07930","7":"0.003379480","8":"0.0998545","9":"0.126696","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"19","15":"45410002","16":"0.00198591","17":"1.701730","18":"8.9e-02","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"19","24":"45410002","25":"0.006542","26":"12.121675","27":"5.299e-33","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"NA"},{"1":"rs7798280","2":"A","3":"C","4":"A","5":"C","6":"-0.03378","7":"0.000469300","8":"0.3549910","9":"0.332069","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"7","15":"15093202","16":"0.00140736","17":"0.333461","18":"7.4e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"7","24":"15093202","25":"0.006773","26":"-4.987450","27":"6.699e-07","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"1.630693e-06","38":"1.0000","39":"TRUE"},{"1":"rs9527039","2":"C","3":"T","4":"C","5":"T","6":"-0.06098","7":"-0.002717890","8":"0.0810909","9":"0.079177","10":"FALSE","11":"FALSE","12":"FALSE","13":"3XCQOS","14":"13","15":"53504675","16":"0.00246527","17":"-1.102470","18":"2.7e-01","19":"250389","20":"Wells2019hdiff","21":"TRUE","22":"reported","23":"13","24":"53504675","25":"0.010450","26":"-5.835407","27":"5.947e-09","28":"3146","29":"Deming2017ptau","30":"TRUE","31":"reported","32":"tHESl6","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"2.715083e-06","38":"1.0000","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Hearing Difficulty GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs769449","2":"19","3":"45410002","4":"5.299e-33","5":"0.089"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
##   or = col_logical()
## )
```

```
## See spec(...) for full column specifications.
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.10657113","3":"31.14288","4":"0.05","5":"2.58000043","6":"0.36195321"},{"1":"TRUE","2":"0.09529778","3":"30.01121","4":"0.05","5":"0.03655181","6":"0.05419762"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted CSF Ptau on Hearing Difficulty.
<br>

**Table 6** MR causaul estimates for CSF Ptau on Hearing Difficulty
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Inverse variance weighted (fixed effects)","6":"12","7":"0.02029409","8":"0.01288552","9":"0.1152673"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Weighted median","6":"12","7":"0.01868053","8":"0.01850794","9":"0.3128187"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Weighted mode","6":"12","7":"0.02464274","8":"0.02668643","9":"0.3756007"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"MR Egger","6":"12","7":"0.03997254","8":"0.06283263","9":"0.5389496"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus the association in Hearing Difficulty and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/Deming2017ptau_5e-6_Wells2019hdiff_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"MR Egger","6":"23.34321","7":"10","8":"0.009548223"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Inverse variance weighted","6":"23.59710","7":"11","8":"0.014542966"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/Deming2017ptau_5e-6_Wells2019hdiff_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/Deming2017ptau_5e-6_Wells2019hdiff_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"-0.0008319899","6":"0.002522748","7":"0.7483592"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"5e-06","6":"FALSE","7":"1","8":"28.70839","9":"0.0152"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Inverse variance weighted (fixed effects)","6":"11","7":"0.002579174","8":"0.01364969","9":"0.8501283"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Weighted median","6":"11","7":"0.013056929","8":"0.01812215","9":"0.4712200"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Weighted mode","6":"11","7":"0.022560390","8":"0.02836366","9":"0.4448515"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"MR Egger","6":"11","7":"0.058050721","8":"0.04135473","9":"0.1939514"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Wells2019hdiff/Deming2017ptau_5e-6_Wells2019hdiff_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"MR Egger","6":"6.101655","7":"9","8":"0.7297026"},{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"Inverse variance weighted","6":"8.120878","7":"10","8":"0.6170310"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"tHESl6","2":"3XCQOS","3":"Wells2019hdiff","4":"Deming2017ptau","5":"-0.002407461","6":"0.00169421","7":"0.1890263"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
