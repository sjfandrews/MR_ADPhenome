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

### Outcome: Total cholesterol
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with CSF Ptau avaliable in Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs4267554","2":"2","3":"46901045","4":"A","5":"G","6":"0.1037360","7":"0.0065","8":"0.0082","9":"0.79268293","10":"3.461e-01","11":"94595.00","12":"Total_Cholesterol"},{"1":"rs35055419","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs16897042","2":"5","3":"67107448","4":"T","5":"C","6":"0.0184850","7":"0.0223","8":"0.0167","9":"1.33532934","10":"1.219e-01","11":"91474.00","12":"Total_Cholesterol"},{"1":"rs60871478","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs7798280","2":"7","3":"15093202","4":"C","5":"A","6":"0.3549910","7":"0.0004","8":"0.0055","9":"0.07272727","10":"8.575e-01","11":"94595.00","12":"Total_Cholesterol"},{"1":"rs2439313","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs514716","2":"9","3":"3929424","4":"C","5":"T","6":"0.8443070","7":"0.0005","8":"0.0078","9":"0.06410256","10":"8.204e-01","11":"94595.00","12":"Total_Cholesterol"},{"1":"rs9527039","2":"13","3":"53504675","4":"T","5":"C","6":"0.0810909","7":"-0.0100","8":"0.0096","9":"-1.04167000","10":"3.745e-01","11":"93623.00","12":"Total_Cholesterol"},{"1":"rs12889974","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs12961169","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"0.1589","8":"0.0072","9":"22.06944444","10":"6.770e-103","11":"93260.18","12":"Total_Cholesterol"},{"1":"rs34871495","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs41157","2":"22","3":"30405151","4":"T","5":"C","6":"0.7146230","7":"0.0086","8":"0.0053","9":"1.62264151","10":"1.874e-01","11":"91556.00","12":"Total_Cholesterol"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs35055419","2":"rs2088882","3":"1.000000","4":"1.000000","5":"CG/TA","6":"NA","7":"3","8":"190656524","9":"A","10":"G","11":"0.347834","12":"0.0023","13":"0.0052","14":"0.4423077","15":"0.80690","16":"94595","17":"Total_Cholesterol","18":"C","19":"G","20":"T","21":"A","22":"C","23":"T","24":"TRUE"},{"1":"rs60871478","2":"rs4374882","3":"0.980202","4":"1.000000","5":"AC/GT","6":"NA","7":"7","8":"821798","9":"C","10":"T","11":"0.726636","12":"0.0083","13":"0.0077","14":"1.0779221","15":"0.07868","16":"92600","17":"Total_Cholesterol","18":"A","19":"C","20":"G","21":"T","22":"G","23":"A","24":"TRUE"},{"1":"rs2439313","2":"rs2919392","3":"0.919506","4":"0.978764","5":"AA/GG","6":"NA","7":"8","8":"32524451","9":"A","10":"G","11":"0.563021","12":"-0.0032","13":"0.0053","14":"-0.6037740","15":"0.42530","16":"94595","17":"Total_Cholesterol","18":"A","19":"A","20":"G","21":"G","22":"G","23":"A","24":"TRUE"},{"1":"rs12961169","2":"rs7233060","3":"0.938982","4":"0.979050","5":"TA/CG","6":"NA","7":"18","8":"77392379","9":"G","10":"A","11":"0.139594","12":"-0.0011","13":"0.0075","14":"-0.1466670","15":"0.62040","16":"92797","17":"Total_Cholesterol","18":"T","19":"A","20":"C","21":"G","22":"T","23":"C","24":"TRUE"},{"1":"rs12889974","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs34871495","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized CSF Ptau and Total cholesterol datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[23],"type":["lgl"],"align":["right"]},{"label":["target_snp.outcome"],"name":[24],"type":["chr"],"align":["left"]},{"label":["proxy_snp.outcome"],"name":[25],"type":["chr"],"align":["left"]},{"label":["target_a1.outcome"],"name":[26],"type":["chr"],"align":["left"]},{"label":["target_a2.outcome"],"name":[27],"type":["chr"],"align":["left"]},{"label":["proxy_a1.outcome"],"name":[28],"type":["chr"],"align":["left"]},{"label":["proxy_a2.outcome"],"name":[29],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[31],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[32],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[34],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[36],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[38],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[39],"type":["chr"],"align":["left"]},{"label":["action"],"name":[40],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[41],"type":["lgl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[42],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[43],"type":["dbl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[44],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[45],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[46],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs12961169","2":"T","3":"C","4":"T","5":"C","6":"0.05004","7":"-0.0011","8":"0.1395560","9":"0.1395940","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"18","15":"77392379","16":"0.0075","17":"-0.14666700","18":"6.204e-01","19":"92797.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"TRUE","24":"rs12961169","25":"rs7233060","26":"T","27":"C","28":"A","29":"G","30":"18","31":"77381649","32":"0.008013","33":"6.244852","34":"5.117e-10","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs16897042","2":"C","3":"T","4":"C","5":"T","6":"0.07870","7":"0.0223","8":"0.0184850","9":"0.0184850","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"5","15":"67107448","16":"0.0167","17":"1.33532934","18":"1.219e-01","19":"91474.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"5","31":"67107448","32":"0.016050","33":"4.903427","34":"9.998e-07","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs2439313","2":"G","3":"A","4":"G","5":"A","6":"-0.02653","7":"-0.0032","8":"0.5620010","9":"0.5630210","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"8","15":"32524451","16":"0.0053","17":"-0.60377400","18":"4.253e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"TRUE","24":"rs2439313","25":"rs2919392","26":"G","27":"A","28":"G","29":"A","30":"8","31":"32533316","32":"0.005418","33":"-4.896640","34":"1.025e-06","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs35055419","2":"C","3":"T","4":"C","5":"T","6":"0.03490","7":"0.0023","8":"0.3498150","9":"0.3478340","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"3","15":"190656524","16":"0.0052","17":"0.44230769","18":"8.069e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"TRUE","24":"rs35055419","25":"rs2088882","26":"C","27":"T","28":"G","29":"A","30":"3","31":"190663557","32":"0.005653","33":"6.173713","34":"7.624e-10","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs41157","2":"C","3":"T","4":"C","5":"T","6":"-0.02538","7":"0.0086","8":"0.7146230","9":"0.7146230","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"22","15":"30405151","16":"0.0053","17":"1.62264151","18":"1.874e-01","19":"91556.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"22","31":"30405151","32":"0.005504","33":"-4.611190","34":"4.182e-06","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs4267554","2":"G","3":"A","4":"G","5":"A","6":"-0.04197","7":"0.0065","8":"0.1037360","9":"0.1037360","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"2","15":"46901045","16":"0.0082","17":"0.79268293","18":"3.461e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"2","31":"46901045","32":"0.008801","33":"-4.768776","34":"1.976e-06","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs514716","2":"T","3":"C","4":"T","5":"C","6":"0.04876","7":"0.0005","8":"0.8443070","9":"0.8443070","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"9","15":"3929424","16":"0.0078","17":"0.06410256","18":"8.204e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"9","31":"3929424","32":"0.008764","33":"5.563670","34":"2.935e-08","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs60871478","2":"G","3":"A","4":"G","5":"A","6":"-0.03472","7":"0.0083","8":"0.7729760","9":"0.7266360","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"7","15":"821798","16":"0.0077","17":"1.07792208","18":"7.868e-02","19":"92600.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"TRUE","24":"rs60871478","25":"rs4374882","26":"G","27":"A","28":"T","29":"C","30":"7","31":"827325","32":"0.006863","33":"-5.059010","34":"4.505e-07","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs769449","2":"A","3":"G","4":"A","5":"G","6":"0.07930","7":"0.1589","8":"0.0998545","9":"0.0998545","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"19","15":"45410002","16":"0.0072","17":"22.06944444","18":"6.770e-103","19":"93260.18","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"19","31":"45410002","32":"0.006542","33":"12.121675","34":"5.299e-33","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"FALSE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs7798280","2":"A","3":"C","4":"A","5":"C","6":"-0.03378","7":"0.0004","8":"0.3549910","9":"0.3549910","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"7","15":"15093202","16":"0.0055","17":"0.07272727","18":"8.575e-01","19":"94595.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"7","31":"15093202","32":"0.006773","33":"-4.987450","34":"6.699e-07","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"},{"1":"rs9527039","2":"C","3":"T","4":"C","5":"T","6":"-0.06098","7":"-0.0100","8":"0.0810909","9":"0.0810909","10":"FALSE","11":"FALSE","12":"FALSE","13":"8xxcXe","14":"13","15":"53504675","16":"0.0096","17":"-1.04167000","18":"3.745e-01","19":"93623.00","20":"Willer2013tc","21":"TRUE","22":"reported","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"NA","29":"NA","30":"13","31":"53504675","32":"0.010450","33":"-5.835407","34":"5.947e-09","35":"3146","36":"Deming2017ptau","37":"TRUE","38":"reported","39":"zWiv9J","40":"2","41":"TRUE","42":"TRUE","43":"5e-06","44":"NA","45":"NA","46":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Total cholesterol GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs769449","2":"19","3":"45410002","4":"5.299e-33","5":"6.77e-103"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.09095326","3":"31.36676","4":"0.05","5":"0.0003275093","6":"0.05003752"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted CSF Ptau on Total cholesterol.
<br>

**Table 6** MR causaul estimates for CSF Ptau on Total cholesterol
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"Inverse variance weighted (fixed effects)","6":"10","7":"0.003673033","8":"0.05560406","9":"0.9473325"},{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"Weighted median","6":"10","7":"0.004995048","8":"0.07326540","9":"0.9456444"},{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"Weighted mode","6":"10","7":"0.032947486","8":"0.10591403","9":"0.7628260"},{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"MR Egger","6":"10","7":"0.283407254","8":"0.19105542","9":"0.1762643"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with CSF Ptau versus the association in Total cholesterol and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/Deming2017ptau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"MR Egger","6":"5.536001","7":"8","8":"0.6990482"},{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"Inverse variance weighted","6":"7.878126","7":"9","8":"0.5464734"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/Deming2017ptau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/Deming2017ptau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"-0.01116978","6":"0.007298603","7":"0.1644484"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"5e-06","6":"FALSE","7":"0","8":"9.308096","9":"0.591"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ptau/Willer2013tc/Deming2017ptau_5e-6_Willer2013tc_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"zWiv9J","2":"8xxcXe","3":"Willer2013tc","4":"Deming2017ptau","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
