---
title: "Mendelian Randomization Analysis"
author: "Dr. Shea Andrews"
date: "2020-09-25"
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

### Exposure: AUDIT Total
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs1260326","2":"2","3":"27730940","4":"T","5":"C","6":"0.61366100","7":"0.01873020","8":"0.002619605","9":"7.150","10":"8.664e-13","11":"141932","12":"AUDIT_Total"},{"1":"rs4953148","2":"2","3":"45152522","4":"A","5":"T","6":"0.39332400","7":"0.01478690","8":"0.002646656","9":"5.587","10":"2.314e-08","11":"139850","12":"AUDIT_Total"},{"1":"rs1920650","2":"3","3":"160335588","4":"T","5":"C","6":"0.30047400","7":"0.01482480","8":"0.002629442","9":"5.638","10":"1.717e-08","11":"141678","12":"AUDIT_Total"},{"1":"rs11940694","2":"4","3":"39414993","4":"A","5":"G","6":"0.60549300","7":"0.02478080","8":"0.002643005","9":"9.376","10":"6.834e-21","11":"138206","12":"AUDIT_Total"},{"1":"rs144198753","2":"4","3":"99713350","4":"C","5":"T","6":"0.00670047","7":"-0.03076248","8":"0.002606990","9":"-11.800","10":"3.887e-32","11":"140814","12":"AUDIT_Total"},{"1":"rs11733695","2":"4","3":"100122916","4":"G","5":"A","6":"0.00543085","7":"-0.02971133","8":"0.002601920","9":"-11.419","10":"3.370e-30","11":"141581","12":"AUDIT_Total"},{"1":"rs13135092","2":"4","3":"103198082","4":"A","5":"G","6":"0.05434780","7":"-0.01991090","8":"0.002623302","9":"-7.590","10":"3.198e-14","11":"141289","12":"AUDIT_Total"},{"1":"rs35040843","2":"8","3":"93341497","4":"C","5":"T","6":"0.30359100","7":"0.01471763","8":"0.002653260","9":"5.547","10":"2.909e-08","11":"139169","12":"AUDIT_Total"},{"1":"rs7078436","2":"10","3":"30378863","4":"A","5":"G","6":"0.27403000","7":"-0.01508130","8":"0.002628329","9":"-5.738","10":"9.583e-09","11":"141745","12":"AUDIT_Total"},{"1":"rs2293576","2":"11","3":"47434986","4":"G","5":"A","6":"0.32902900","7":"0.01535348","8":"0.002632176","9":"5.833","10":"5.454e-09","11":"141275","12":"AUDIT_Total"},{"1":"rs62062288","2":"17","3":"44096553","4":"G","5":"A","6":"0.13753600","7":"-0.01645099","8":"0.002650821","9":"-6.206","10":"5.430e-10","11":"139072","12":"AUDIT_Total"},{"1":"rs492602","2":"19","3":"49206417","4":"A","5":"G","6":"0.38356900","7":"0.01463750","8":"0.002627447","9":"5.571","10":"2.526e-08","11":"141932","12":"AUDIT_Total"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: CSF Ab42
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with AUDIT Total avaliable in CSF Ab42
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs1260326","2":"2","3":"27730940","4":"T","5":"C","6":"0.6136610","7":"-0.002212","8":"0.004110","9":"-0.5382000","10":"0.590400","11":"3146","12":"CSF_Ab42"},{"1":"rs1920650","2":"3","3":"160335588","4":"T","5":"C","6":"0.3004740","7":"-0.001836","8":"0.004360","9":"-0.4211009","10":"0.673800","11":"3146","12":"CSF_Ab42"},{"1":"rs13135092","2":"4","3":"103198082","4":"A","5":"G","6":"0.0543478","7":"0.007321","8":"0.007966","9":"0.9190309","10":"0.358200","11":"3146","12":"CSF_Ab42"},{"1":"rs7078436","2":"10","3":"30378863","4":"A","5":"G","6":"0.2740300","7":"-0.001126","8":"0.004373","9":"-0.2574891","10":"0.796700","11":"3146","12":"CSF_Ab42"},{"1":"rs2293576","2":"11","3":"47434986","4":"G","5":"A","6":"0.3290290","7":"-0.011200","8":"0.004316","9":"-2.5949954","10":"0.009522","11":"3146","12":"CSF_Ab42"},{"1":"rs4953148","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs11940694","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs144198753","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs11733695","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs35040843","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs62062288","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs492602","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for CSF Ab42
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["target_snp"],"name":[1],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["ld.r2"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Dprime"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PHASE"],"name":[5],"type":["chr"],"align":["left"]},{"label":["X12"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["REF.proxy"],"name":[9],"type":["chr"],"align":["left"]},{"label":["ALT.proxy"],"name":[10],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[12],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[13],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[17],"type":["chr"],"align":["left"]},{"label":["ref"],"name":[18],"type":["chr"],"align":["left"]},{"label":["ref.proxy"],"name":[19],"type":["chr"],"align":["left"]},{"label":["alt"],"name":[20],"type":["chr"],"align":["left"]},{"label":["alt.proxy"],"name":[21],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[22],"type":["chr"],"align":["left"]},{"label":["REF"],"name":[23],"type":["chr"],"align":["left"]},{"label":["proxy.outcome"],"name":[24],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs11940694","2":"rs4975013","3":"0.901443","4":"0.977884","5":"AA/GG","6":"NA","7":"4","8":"39423789","9":"G","10":"A","11":"0.383370","12":"0.003275","13":"0.004145","14":"0.7901086","15":"0.4295","16":"3146","17":"CSF_Ab42","18":"A","19":"A","20":"G","21":"G","22":"A","23":"G","24":"TRUE"},{"1":"rs35040843","2":"rs13259661","3":"0.938802","4":"0.995331","5":"TC/CT","6":"NA","7":"8","8":"93345304","9":"T","10":"C","11":"0.318330","12":"0.002576","13":"0.004542","14":"0.5671510","15":"0.5706","16":"3146","17":"CSF_Ab42","18":"T","19":"C","20":"C","21":"T","22":"T","23":"C","24":"TRUE"},{"1":"rs62062288","2":"rs62641967","3":"0.945918","4":"0.983286","5":"AG/GT","6":"NA","7":"17","8":"44047216","9":"T","10":"G","11":"0.147657","12":"0.002152","13":"0.005074","14":"0.4241230","15":"0.6715","16":"3146","17":"CSF_Ab42","18":"A","19":"G","20":"G","21":"T","22":"A","23":"G","24":"TRUE"},{"1":"rs492602","2":"rs571689","3":"0.885394","4":"0.991314","5":"GT/AC","6":"NA","7":"19","8":"49207554","9":"C","10":"T","11":"0.413695","12":"-0.004967","13":"0.004051","14":"-1.2261170","15":"0.2202","16":"3146","17":"CSF_Ab42","18":"G","19":"T","20":"A","21":"C","22":"G","23":"A","24":"TRUE"},{"1":"rs4953148","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs144198753","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"},{"1":"rs11733695","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized AUDIT Total and CSF Ab42 datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs11940694","2":"G","3":"A","4":"G","5":"A","6":"0.02478080","7":"-0.003275","8":"0.6054930","9":"0.6166300","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"4","15":"39423789","16":"0.004145","17":"0.7901086","18":"0.429500","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"4","24":"39414993","25":"0.002643005","26":"9.376","27":"6.834e-21","28":"138206","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs1260326","2":"C","3":"T","4":"C","5":"T","6":"0.01873020","7":"-0.002212","8":"0.6136610","9":"0.6136610","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"2","15":"27730940","16":"0.004110","17":"-0.5382000","18":"0.590400","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"2","24":"27730940","25":"0.002619605","26":"7.150","27":"8.664e-13","28":"141932","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs13135092","2":"G","3":"A","4":"G","5":"A","6":"-0.01991090","7":"0.007321","8":"0.0543478","9":"0.0543478","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"4","15":"103198082","16":"0.007966","17":"0.9190309","18":"0.358200","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"4","24":"103198082","25":"0.002623302","26":"-7.590","27":"3.198e-14","28":"141289","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs1920650","2":"C","3":"T","4":"C","5":"T","6":"0.01482480","7":"-0.001836","8":"0.3004740","9":"0.3004740","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"3","15":"160335588","16":"0.004360","17":"-0.4211009","18":"0.673800","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"3","24":"160335588","25":"0.002629442","26":"5.638","27":"1.717e-08","28":"141678","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2293576","2":"A","3":"G","4":"A","5":"G","6":"0.01535348","7":"-0.011200","8":"0.3290290","9":"0.3290290","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"11","15":"47434986","16":"0.004316","17":"-2.5949954","18":"0.009522","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"11","24":"47434986","25":"0.002632176","26":"5.833","27":"5.454e-09","28":"141275","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs35040843","2":"T","3":"C","4":"T","5":"C","6":"0.01471763","7":"0.002576","8":"0.3035910","9":"0.3183300","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"8","15":"93345304","16":"0.004542","17":"0.5671510","18":"0.570600","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"8","24":"93341497","25":"0.002653260","26":"5.547","27":"2.909e-08","28":"139169","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs492602","2":"G","3":"A","4":"G","5":"A","6":"0.01463750","7":"-0.004967","8":"0.3835690","9":"0.4136950","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"19","15":"49207554","16":"0.004051","17":"-1.2261170","18":"0.220200","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"19","24":"49206417","25":"0.002627447","26":"5.571","27":"2.526e-08","28":"141932","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs62062288","2":"A","3":"G","4":"A","5":"G","6":"-0.01645099","7":"0.002152","8":"0.1375360","9":"0.1476570","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"17","15":"44047216","16":"0.005074","17":"0.4241230","18":"0.671500","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"17","24":"44096553","25":"0.002650821","26":"-6.206","27":"5.430e-10","28":"139072","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7078436","2":"G","3":"A","4":"G","5":"A","6":"-0.01508130","7":"-0.001126","8":"0.2740300","9":"0.2740300","10":"FALSE","11":"FALSE","12":"FALSE","13":"XtQFB6","14":"10","15":"30378863","16":"0.004373","17":"-0.2574891","18":"0.796700","19":"3146","20":"Deming2017ab42","21":"TRUE","22":"reported","23":"10","24":"30378863","25":"0.002628329","26":"-5.738","27":"9.583e-09","28":"141745","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"7MpR06","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the CSF Ab42 GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.00277103","3":"43.8181","4":"0.05","5":"1.666086","6":"0.2522613"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted AUDIT Total on CSF Ab42.
<br>

**Table 6** MR causaul estimates for AUDIT Total on CSF Ab42
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted (fixed effects)","6":"9","7":"-0.17464284","8":"0.08673207","9":"0.04405258"},{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"Weighted median","6":"9","7":"-0.13111313","8":"0.11568516","9":"0.25706241"},{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"Weighted mode","6":"9","7":"-0.12511457","8":"0.15326655","9":"0.43794684"},{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"9","7":"-0.08266354","8":"0.44611688","9":"0.85825173"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with AUDIT Total versus the association in CSF Ab42 and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/SanchezRoige2019auditt23andMe/Deming2017ab42/SanchezRoige2019auditt23andMe_5e-8_Deming2017ab42_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"6.642355","7":"7","8":"0.4670423"},{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted","6":"6.686534","7":"8","8":"0.5707996"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/SanchezRoige2019auditt23andMe/Deming2017ab42/SanchezRoige2019auditt23andMe_5e-8_Deming2017ab42_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/SanchezRoige2019auditt23andMe/Deming2017ab42/SanchezRoige2019auditt23andMe_5e-8_Deming2017ab42_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"-0.001629873","6":"0.007754352","7":"0.8395079"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"5e-08","6":"FALSE","7":"0","8":"8.128886","9":"0.6097"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome/SanchezRoige2019auditt23andMe/Deming2017ab42/SanchezRoige2019auditt23andMe_5e-8_Deming2017ab42_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"7MpR06","2":"XtQFB6","3":"Deming2017ab42","4":"SanchezRoige2019auditt23andMe","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
