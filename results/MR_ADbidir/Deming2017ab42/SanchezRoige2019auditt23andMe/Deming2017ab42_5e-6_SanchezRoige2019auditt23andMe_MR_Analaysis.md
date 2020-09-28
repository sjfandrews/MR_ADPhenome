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

### Exposure: CSF Ab42
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with CSF Ab42
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs115141604","2":"3","3":"47251391","4":"A","5":"G","6":"0.0206672","7":"0.05535","8":"0.012030","9":"4.600998","10":"4.401e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs62313278","2":"4","3":"61743347","4":"A","5":"G","6":"0.0746187","7":"0.03407","8":"0.007360","9":"4.629076","10":"3.825e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs13115400","2":"4","3":"181885905","4":"G","5":"A","6":"0.3287940","7":"0.01924","8":"0.004122","9":"4.667637","10":"3.184e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs12153566","2":"5","3":"26951397","4":"T","5":"A","6":"0.8418080","7":"0.02566","8":"0.005300","9":"4.841510","10":"1.351e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs141162384","2":"5","3":"65091178","4":"G","5":"T","6":"0.0335875","7":"0.05123","8":"0.010240","9":"5.002930","10":"6.013e-07","11":"3146","12":"CSF_Ab42"},{"1":"rs316341","2":"6","3":"2838248","4":"G","5":"A","6":"0.7082420","7":"0.02460","8":"0.004352","9":"5.652570","10":"1.724e-08","11":"3146","12":"CSF_Ab42"},{"1":"rs17207326","2":"7","3":"37739901","4":"G","5":"A","6":"0.0884058","7":"0.03666","8":"0.008001","9":"4.581927","10":"4.825e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs61957926","2":"13","3":"71694685","4":"T","5":"C","6":"0.5949710","7":"-0.01874","8":"0.004053","9":"-4.623740","10":"3.908e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs76881547","2":"14","3":"96632992","4":"C","5":"T","6":"0.0718443","7":"-0.03289","8":"0.007169","9":"-4.587809","10":"4.647e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"-0.10060","8":"0.004723","9":"-21.300021","10":"4.775e-94","11":"3146","12":"CSF_Ab42"},{"1":"rs7247764","2":"19","3":"45675873","4":"T","5":"C","6":"0.2297890","7":"-0.02570","8":"0.005569","9":"-4.614832","10":"4.121e-06","11":"3146","12":"CSF_Ab42"},{"1":"rs2664588","2":"20","3":"46580634","4":"C","5":"T","6":"0.4395210","7":"0.01913","8":"0.004026","9":"4.751615","10":"2.105e-06","11":"3146","12":"CSF_Ab42"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: AUDIT Total
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with CSF Ab42 avaliable in AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs115141604","2":"3","3":"47251391","4":"A","5":"G","6":"0.0206672","7":"-0.0043651300","8":"0.002650351","9":"-1.647","10":"0.09963","11":"141678","12":"AUDIT_Total"},{"1":"rs62313278","2":"4","3":"61743347","4":"A","5":"G","6":"0.0746187","7":"-0.0008002250","8":"0.002667416","9":"-0.300","10":"0.76390","11":"140928","12":"AUDIT_Total"},{"1":"rs13115400","2":"4","3":"181885905","4":"G","5":"A","6":"0.3287940","7":"0.0010233563","8":"0.002664990","9":"0.384","10":"0.70130","11":"141083","12":"AUDIT_Total"},{"1":"rs12153566","2":"5","3":"26951397","4":"T","5":"A","6":"0.8418080","7":"-0.0030586980","8":"0.002657427","9":"-1.151","10":"0.24970","11":"141246","12":"AUDIT_Total"},{"1":"rs141162384","2":"5","3":"65091178","4":"G","5":"T","6":"0.0335875","7":"-0.0039221114","8":"0.002651867","9":"-1.479","10":"0.13920","11":"141622","12":"AUDIT_Total"},{"1":"rs316341","2":"6","3":"2838248","4":"G","5":"A","6":"0.7082420","7":"-0.0054753791","8":"0.002664418","9":"-2.055","10":"0.03985","11":"139934","12":"AUDIT_Total"},{"1":"rs17207326","2":"7","3":"37739901","4":"G","5":"A","6":"0.0884058","7":"0.0041817951","8":"0.002648382","9":"1.579","10":"0.11440","11":"141932","12":"AUDIT_Total"},{"1":"rs61957926","2":"13","3":"71694685","4":"T","5":"C","6":"0.5949710","7":"-0.0055010500","8":"0.002660084","9":"-2.068","10":"0.03860","11":"140384","12":"AUDIT_Total"},{"1":"rs76881547","2":"14","3":"96632992","4":"C","5":"T","6":"0.0718443","7":"-0.0030839331","8":"0.002665456","9":"-1.157","10":"0.24720","11":"140391","12":"AUDIT_Total"},{"1":"rs769449","2":"19","3":"45410002","4":"G","5":"A","6":"0.0998545","7":"-0.0060161170","8":"0.002644447","9":"-2.275","10":"0.02290","11":"141932","12":"AUDIT_Total"},{"1":"rs7247764","2":"19","3":"45675873","4":"T","5":"C","6":"0.2297890","7":"0.0010132800","8":"0.002659531","9":"0.381","10":"0.70310","11":"141665","12":"AUDIT_Total"},{"1":"rs2664588","2":"20","3":"46580634","4":"C","5":"T","6":"0.4395210","7":"-0.0002438887","8":"0.002680095","9":"-0.091","10":"0.92730","11":"139989","12":"AUDIT_Total"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized CSF Ab42 and AUDIT Total datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs115141604","2":"G","3":"A","4":"G","5":"A","6":"0.05535","7":"-0.0043651300","8":"0.0206672","9":"0.0206672","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"3","15":"47251391","16":"0.002650351","17":"-1.647","18":"0.09963","19":"141678","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"3","24":"47251391","25":"0.012030","26":"4.600998","27":"4.401e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs12153566","2":"A","3":"T","4":"A","5":"T","6":"0.02566","7":"-0.0030586980","8":"0.8418080","9":"0.8418080","10":"FALSE","11":"TRUE","12":"FALSE","13":"QGEUEu","14":"5","15":"26951397","16":"0.002657427","17":"-1.151","18":"0.24970","19":"141246","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"5","24":"26951397","25":"0.005300","26":"4.841510","27":"1.351e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs13115400","2":"A","3":"G","4":"A","5":"G","6":"0.01924","7":"0.0010233563","8":"0.3287940","9":"0.3287940","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"4","15":"181885905","16":"0.002664990","17":"0.384","18":"0.70130","19":"141083","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"4","24":"181885905","25":"0.004122","26":"4.667637","27":"3.184e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs141162384","2":"T","3":"G","4":"T","5":"G","6":"0.05123","7":"-0.0039221114","8":"0.0335875","9":"0.0335875","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"5","15":"65091178","16":"0.002651867","17":"-1.479","18":"0.13920","19":"141622","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"5","24":"65091178","25":"0.010240","26":"5.002930","27":"6.013e-07","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs17207326","2":"A","3":"G","4":"A","5":"G","6":"0.03666","7":"0.0041817951","8":"0.0884058","9":"0.0884058","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"7","15":"37739901","16":"0.002648382","17":"1.579","18":"0.11440","19":"141932","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"7","24":"37739901","25":"0.008001","26":"4.581927","27":"4.825e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs2664588","2":"T","3":"C","4":"T","5":"C","6":"0.01913","7":"-0.0002438887","8":"0.4395210","9":"0.4395210","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"20","15":"46580634","16":"0.002680095","17":"-0.091","18":"0.92730","19":"139989","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"20","24":"46580634","25":"0.004026","26":"4.751615","27":"2.105e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs316341","2":"A","3":"G","4":"A","5":"G","6":"0.02460","7":"-0.0054753791","8":"0.7082420","9":"0.7082420","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"6","15":"2838248","16":"0.002664418","17":"-2.055","18":"0.03985","19":"139934","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"6","24":"2838248","25":"0.004352","26":"5.652570","27":"1.724e-08","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs61957926","2":"C","3":"T","4":"C","5":"T","6":"-0.01874","7":"-0.0055010500","8":"0.5949710","9":"0.5949710","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"13","15":"71694685","16":"0.002660084","17":"-2.068","18":"0.03860","19":"140384","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"13","24":"71694685","25":"0.004053","26":"-4.623740","27":"3.908e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs62313278","2":"G","3":"A","4":"G","5":"A","6":"0.03407","7":"-0.0008002250","8":"0.0746187","9":"0.0746187","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"4","15":"61743347","16":"0.002667416","17":"-0.300","18":"0.76390","19":"140928","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"4","24":"61743347","25":"0.007360","26":"4.629076","27":"3.825e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs7247764","2":"C","3":"T","4":"C","5":"T","6":"-0.02570","7":"0.0010132800","8":"0.2297890","9":"0.2297890","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"19","15":"45675873","16":"0.002659531","17":"0.381","18":"0.70310","19":"141665","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"19","24":"45675873","25":"0.005569","26":"-4.614832","27":"4.121e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs76881547","2":"T","3":"C","4":"T","5":"C","6":"-0.03289","7":"-0.0030839331","8":"0.0718443","9":"0.0718443","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"14","15":"96632992","16":"0.002665456","17":"-1.157","18":"0.24720","19":"140391","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"14","24":"96632992","25":"0.007169","26":"-4.587809","27":"4.647e-06","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs769449","2":"A","3":"G","4":"A","5":"G","6":"-0.10060","7":"-0.0060161170","8":"0.0998545","9":"0.0998545","10":"FALSE","11":"FALSE","12":"FALSE","13":"QGEUEu","14":"19","15":"45410002","16":"0.002644447","17":"-2.275","18":"0.02290","19":"141932","20":"SanchezRoige2019auditt23andMe","21":"TRUE","22":"reported","23":"19","24":"45410002","25":"0.004723","26":"-21.300021","27":"4.775e-94","28":"3146","29":"Deming2017ab42","30":"TRUE","31":"reported","32":"XrVONb","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the AUDIT Total GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs769449","2":"19","3":"45410002","4":"4.775e-94","5":"0.0229"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.07869321","3":"24.33545","4":"0.05","5":"0.5487954","6":"0.1148513"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted CSF Ab42 on AUDIT Total.
<br>

**Table 6** MR causaul estimates for CSF Ab42 on AUDIT Total
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"Inverse variance weighted (fixed effects)","6":"11","7":"-0.02742430","8":"0.02396682","9":"0.25251531"},{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"Weighted median","6":"11","7":"-0.06262919","8":"0.03568169","9":"0.07922184"},{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"Weighted mode","6":"11","7":"-0.06535278","8":"0.03956488","9":"0.12958689"},{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"MR Egger","6":"11","7":"-0.11297221","8":"0.08863048","9":"0.23435928"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with CSF Ab42 versus the association in AUDIT Total and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/SanchezRoige2019auditt23andMe/Deming2017ab42_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"MR Egger","6":"15.76612","7":"9","8":"0.07192920"},{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"Inverse variance weighted","6":"17.63795","7":"10","8":"0.06138679"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/SanchezRoige2019auditt23andMe/Deming2017ab42_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/SanchezRoige2019auditt23andMe/Deming2017ab42_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"0.003066845","6":"0.002966878","7":"0.3282551"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"5e-06","6":"FALSE","7":"0","8":"21.31675","9":"0.069"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Deming2017ab42/SanchezRoige2019auditt23andMe/Deming2017ab42_5e-6_SanchezRoige2019auditt23andMe_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"XrVONb","2":"QGEUEu","3":"SanchezRoige2019auditt23andMe","4":"Deming2017ab42","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
