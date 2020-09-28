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

### Outcome: Cortical Surface Area
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with AUDIT Total avaliable in Cortical Surface Area
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs1260326","2":"2","3":"27730940","4":"T","5":"C","6":"0.6046","7":"48.6835","8":"111.7372","9":"0.4356960","10":"6.631e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs4953148","2":"2","3":"45152522","4":"A","5":"T","6":"0.3179","7":"216.7060","8":"118.7964","9":"1.8241800","10":"6.813e-02","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs1920650","2":"3","3":"160335588","4":"T","5":"C","6":"0.3014","7":"108.1950","8":"118.8333","9":"0.9104810","10":"3.626e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs11940694","2":"4","3":"39414993","4":"A","5":"G","6":"0.5892","7":"-94.7533","8":"111.1163","9":"-0.8527400","10":"3.938e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs11733695","2":"4","3":"100122916","4":"G","5":"A","6":"0.0148","7":"-411.3765","8":"528.0505","9":"-0.7790476","10":"4.360e-01","11":"29608","12":"Cortical_Surface_Area"},{"1":"rs13135092","2":"4","3":"103198082","4":"A","5":"G","6":"0.0781","7":"876.4060","8":"214.1914","9":"4.0917000","10":"4.282e-05","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs35040843","2":"8","3":"93341497","4":"C","5":"T","6":"0.2806","7":"383.4658","8":"123.5514","9":"3.1036945","10":"1.911e-03","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs7078436","2":"10","3":"30378863","4":"A","5":"G","6":"0.3437","7":"-186.6500","8":"115.4199","9":"-1.6171400","10":"1.058e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs2293576","2":"11","3":"47434986","4":"G","5":"A","6":"0.3350","7":"-99.1652","8":"115.8933","9":"-0.8556595","10":"3.922e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs492602","2":"19","3":"49206417","4":"A","5":"G","6":"0.4797","7":"-14.9980","8":"111.0313","9":"-0.1350790","10":"8.925e-01","11":"32176","12":"Cortical_Surface_Area"},{"1":"rs144198753","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"},{"1":"rs62062288","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Cortical Surface Area
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["chr"],"align":["left"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"rs144198753","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"},{"1":"NA","2":"rs62062288","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized AUDIT Total and Cortical Surface Area datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["chr"],"align":["left"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs11733695","2":"A","3":"G","4":"A","5":"G","6":"-0.02971133","7":"-411.3765","8":"0.00543085","9":"0.0148","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"4","15":"100122916","16":"528.0505","17":"-0.7790476","18":"4.360e-01","19":"29608","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"4","24":"100122916","25":"0.002601920","26":"-11.419","27":"3.370e-30","28":"141581","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"132491.5894","38":"1","39":"TRUE"},{"1":"rs11940694","2":"G","3":"A","4":"G","5":"A","6":"0.02478080","7":"-94.7533","8":"0.60549300","9":"0.5892","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"4","15":"39414993","16":"111.1163","17":"-0.8527400","18":"3.938e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"4","24":"39414993","25":"0.002643005","26":"9.376","27":"6.834e-21","28":"138206","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"36089.0374","38":"1","39":"TRUE"},{"1":"rs1260326","2":"C","3":"T","4":"C","5":"T","6":"0.01873020","7":"48.6835","8":"0.61366100","9":"0.6046","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"2","15":"27730940","16":"111.7372","17":"0.4356960","18":"6.631e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"2","24":"27730940","25":"0.002619605","26":"7.150","27":"8.664e-13","28":"141932","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"308.6161","38":"1","39":"TRUE"},{"1":"rs13135092","2":"G","3":"A","4":"G","5":"A","6":"-0.01991090","7":"876.4060","8":"0.05434780","9":"0.0781","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"4","15":"103198082","16":"214.1914","17":"4.0917000","18":"4.282e-05","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"4","24":"103198082","25":"0.002623302","26":"-7.590","27":"3.198e-14","28":"141289","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"914925.1621","38":"<0.001","39":"FALSE"},{"1":"rs1920650","2":"C","3":"T","4":"C","5":"T","6":"0.01482480","7":"108.1950","8":"0.30047400","9":"0.3014","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"3","15":"160335588","16":"118.8333","17":"0.9104810","18":"3.626e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"3","24":"160335588","25":"0.002629442","26":"5.638","27":"1.717e-08","28":"141678","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"7899.2249","38":"1","39":"TRUE"},{"1":"rs2293576","2":"A","3":"G","4":"A","5":"G","6":"0.01535348","7":"-99.1652","8":"0.32902900","9":"0.3350","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"11","15":"47434986","16":"115.8933","17":"-0.8556595","18":"3.922e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"11","24":"47434986","25":"0.002632176","26":"5.833","27":"5.454e-09","28":"141275","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"19594.9937","38":"1","39":"TRUE"},{"1":"rs35040843","2":"T","3":"C","4":"T","5":"C","6":"0.01471763","7":"383.4658","8":"0.30359100","9":"0.2806","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"8","15":"93341497","16":"123.5514","17":"3.1036945","18":"1.911e-03","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"8","24":"93341497","25":"0.002653260","26":"5.547","27":"2.909e-08","28":"139169","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"149202.9212","38":"0.026","39":"FALSE"},{"1":"rs492602","2":"G","3":"A","4":"G","5":"A","6":"0.01463750","7":"-14.9980","8":"0.38356900","9":"0.4797","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"19","15":"49206417","16":"111.0313","17":"-0.1350790","18":"8.925e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"19","24":"49206417","25":"0.002627447","26":"5.571","27":"2.526e-08","28":"141932","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"2081.3212","38":"1","39":"TRUE"},{"1":"rs4953148","2":"T","3":"A","4":"T","5":"A","6":"0.01478690","7":"216.7060","8":"0.39332400","9":"0.3179","10":"FALSE","11":"TRUE","12":"FALSE","13":"tQHRxr","14":"2","15":"45152522","16":"118.7964","17":"1.8241800","18":"6.813e-02","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"2","24":"45152522","25":"0.002646656","26":"5.587","27":"2.314e-08","28":"139850","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"42946.5737","38":"0.845","39":"TRUE"},{"1":"rs7078436","2":"G","3":"A","4":"G","5":"A","6":"-0.01508130","7":"-186.6500","8":"0.27403000","9":"0.3437","10":"FALSE","11":"FALSE","12":"FALSE","13":"tQHRxr","14":"10","15":"30378863","16":"115.4199","17":"-1.6171400","18":"1.058e-01","19":"32176","20":"Grasby2020surfarea","21":"TRUE","22":"reported","23":"10","24":"30378863","25":"0.002628329","26":"-5.738","27":"9.583e-09","28":"141745","29":"SanchezRoige2019auditt23andMe","30":"TRUE","31":"reported","32":"4B5pcV","33":"2","34":"TRUE","35":"5e-08","36":"TRUE","37":"30800.8632","38":"1","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Cortical Surface Area GWAS
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.003636781","3":"51.80196","4":"0.05","5":"0.06642892","6":"0.05764409"},{"1":"TRUE","2":"0.003013525","3":"53.62265","4":"0.05","5":"0.81304078","6":"0.14707196"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted AUDIT Total on Cortical Surface Area.
<br>

**Table 6** MR causaul estimates for AUDIT Total on Cortical Surface Area
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted (fixed effects)","6":"10","7":"1802.29011","8":"2313.148","9":"0.4358912"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Weighted median","6":"10","7":"72.42805","8":"3260.605","9":"0.9822780"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Weighted mode","6":"10","7":"-563.48207","8":"3584.976","9":"0.8785736"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"10","7":"-26409.87801","8":"21210.236","9":"0.2483121"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with AUDIT Total versus the association in Cortical Surface Area and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome_wo_apoe/SanchezRoige2019auditt23andMe/Grasby2020surfarea/SanchezRoige2019auditt23andMe_5e-8_Grasby2020surfarea_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"28.28417","7":"8","8":"4.231244e-04"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted","6":"34.81387","7":"9","8":"6.425949e-05"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome_wo_apoe/SanchezRoige2019auditt23andMe/Grasby2020surfarea/SanchezRoige2019auditt23andMe_5e-8_Grasby2020surfarea_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.



<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome_wo_apoe/SanchezRoige2019auditt23andMe/Grasby2020surfarea/SanchezRoige2019auditt23andMe_5e-8_Grasby2020surfarea_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"498.734","6":"366.9859","7":"0.2112178"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"5e-08","6":"FALSE","7":"2","8":"40.68195","9":"1e-04"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted (fixed effects)","6":"8","7":"2117.9594","8":"2468.859","9":"0.3909644"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Weighted median","6":"8","7":"-255.9876","8":"3239.996","9":"0.9370258"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Weighted mode","6":"8","7":"-2101.3652","8":"4009.187","9":"0.6163643"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"8","7":"-13491.2019","8":"12099.491","9":"0.3074992"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADphenome_wo_apoe/SanchezRoige2019auditt23andMe/Grasby2020surfarea/SanchezRoige2019auditt23andMe_5e-8_Grasby2020surfarea_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"MR Egger","6":"6.440174","7":"6","8":"0.3757273"},{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"Inverse variance weighted","6":"8.310110","7":"7","8":"0.3060446"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"4B5pcV","2":"tQHRxr","3":"Grasby2020surfarea","4":"SanchezRoige2019auditt23andMe","5":"279.1458","6":"211.4905","7":"0.2349899"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
