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

### Exposure: Any Neuritic Plaques
`#r exposure.blurb`
<br>

**Table 1:** Independent SNPs associated with Any Neuritic Plaques
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs34487851","2":"2","3":"106642554","4":"A","5":"G","6":"0.2647","7":"-0.4143","8":"0.0903","9":"-4.588040","10":"4.474e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs112833681","2":"3","3":"72020152","4":"T","5":"G","6":"0.0257","7":"-0.9748","8":"0.2039","9":"-4.780770","10":"1.747e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs73214476","2":"4","3":"65287903","4":"T","5":"C","6":"0.0118","7":"-1.6678","8":"0.3399","9":"-4.906740","10":"9.279e-07","11":"4046","12":"Neuritic_Plaques"},{"1":"rs62341097","2":"4","3":"174094940","4":"G","5":"A","6":"0.0458","7":"-1.1474","8":"0.1975","9":"-5.809620","10":"6.273e-09","11":"4046","12":"Neuritic_Plaques"},{"1":"rs80125278","2":"6","3":"14334854","4":"T","5":"C","6":"0.0146","7":"-1.5167","8":"0.3246","9":"-4.672520","10":"2.976e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs144621483","2":"9","3":"129356304","4":"G","5":"T","6":"0.0172","7":"-1.7657","8":"0.3224","9":"-5.476737","10":"4.332e-08","11":"4046","12":"Neuritic_Plaques"},{"1":"rs9578438","2":"13","3":"22729205","4":"C","5":"T","6":"0.0393","7":"-1.2374","8":"0.2537","9":"-4.877414","10":"1.080e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs28479400","2":"15","3":"99995884","4":"A","5":"G","6":"0.0506","7":"-0.7864","8":"0.1647","9":"-4.774740","10":"1.788e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs61041336","2":"16","3":"58733162","4":"A","5":"G","6":"0.1531","7":"-0.4512","8":"0.0966","9":"-4.670810","10":"3.036e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs4803748","2":"19","3":"45247048","4":"C","5":"T","6":"0.3589","7":"-0.4005","8":"0.0829","9":"-4.831122","10":"1.345e-06","11":"4046","12":"Neuritic_Plaques"},{"1":"rs6857","2":"19","3":"45392254","4":"C","5":"T","6":"0.2661","7":"1.2932","8":"0.1191","9":"10.858102","10":"1.780e-27","11":"4046","12":"Neuritic_Plaques"},{"1":"rs142544282","2":"21","3":"43678066","4":"C","5":"T","6":"0.0108","7":"-2.1080","8":"0.3658","9":"-5.762712","10":"8.299e-09","11":"4046","12":"Neuritic_Plaques"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

### Outcome: Moderate-Vigours Physical Activity
`#r outcome.blurb`
<br>

**Table 2:** SNPs associated with Any Neuritic Plaques avaliable in Moderate-Vigours Physical Activity
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["CHROM"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["POS"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["REF"],"name":[4],"type":["chr"],"align":["left"]},{"label":["ALT"],"name":[5],"type":["chr"],"align":["left"]},{"label":["AF"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["BETA"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["SE"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["Z"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["P"],"name":[10],"type":["dbl"],"align":["right"]},{"label":["N"],"name":[11],"type":["dbl"],"align":["right"]},{"label":["TRAIT"],"name":[12],"type":["chr"],"align":["left"]}],"data":[{"1":"rs34487851","2":"2","3":"106642554","4":"A","5":"G","6":"0.281211","7":"0.000226055","8":"0.00247932","9":"0.0911762","10":"9.3e-01","11":"377234","12":"MVPA"},{"1":"rs112833681","2":"3","3":"72020152","4":"T","5":"G","6":"0.024541","7":"-0.014879200","8":"0.00720691","9":"-2.0645700","10":"3.9e-02","11":"377234","12":"MVPA"},{"1":"rs73214476","2":"4","3":"65287903","4":"T","5":"C","6":"0.015454","7":"0.001369040","8":"0.00899481","9":"0.1522030","10":"8.8e-01","11":"377234","12":"MVPA"},{"1":"rs62341097","2":"4","3":"174094940","4":"G","5":"A","6":"0.051147","7":"-0.007533060","8":"0.00500051","9":"-1.5064600","10":"1.3e-01","11":"377234","12":"MVPA"},{"1":"rs80125278","2":"6","3":"14334854","4":"T","5":"C","6":"0.011961","7":"-0.010212800","8":"0.01014560","9":"-1.0066200","10":"3.1e-01","11":"377234","12":"MVPA"},{"1":"rs144621483","2":"9","3":"129356304","4":"G","5":"T","6":"0.023639","7":"-0.010518500","8":"0.00733646","9":"-1.4337300","10":"1.5e-01","11":"377234","12":"MVPA"},{"1":"rs9578438","2":"13","3":"22729205","4":"C","5":"T","6":"0.032477","7":"-0.003024230","8":"0.00621591","9":"-0.4865310","10":"6.3e-01","11":"377234","12":"MVPA"},{"1":"rs28479400","2":"15","3":"99995884","4":"A","5":"G","6":"0.048639","7":"0.005678110","8":"0.00527221","9":"1.0769900","10":"2.8e-01","11":"377234","12":"MVPA"},{"1":"rs61041336","2":"16","3":"58733162","4":"A","5":"G","6":"0.147177","7":"0.000472543","8":"0.00311688","9":"0.1516080","10":"8.8e-01","11":"377234","12":"MVPA"},{"1":"rs4803748","2":"19","3":"45247048","4":"C","5":"T","6":"0.382777","7":"-0.004131570","8":"0.00228188","9":"-1.8106000","10":"7.0e-02","11":"377234","12":"MVPA"},{"1":"rs6857","2":"19","3":"45392254","4":"C","5":"T","6":"0.170458","7":"0.018694400","8":"0.00293602","9":"6.3672600","10":"1.9e-10","11":"377234","12":"MVPA"},{"1":"rs142544282","2":"21","3":"43678066","4":"C","5":"T","6":"0.010124","7":"-0.020499600","8":"0.01103600","9":"-1.8575200","10":"6.3e-02","11":"377234","12":"MVPA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 3:** Proxy SNPs for Moderate-Vigours Physical Activity
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["proxy.outcome"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["target_snp"],"name":[2],"type":["lgl"],"align":["right"]},{"label":["proxy_snp"],"name":[3],"type":["lgl"],"align":["right"]},{"label":["ld.r2"],"name":[4],"type":["lgl"],"align":["right"]},{"label":["Dprime"],"name":[5],"type":["lgl"],"align":["right"]},{"label":["ref.proxy"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["alt.proxy"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["CHROM"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["POS"],"name":[9],"type":["lgl"],"align":["right"]},{"label":["ALT.proxy"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["REF.proxy"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["AF"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["BETA"],"name":[13],"type":["lgl"],"align":["right"]},{"label":["SE"],"name":[14],"type":["lgl"],"align":["right"]},{"label":["P"],"name":[15],"type":["lgl"],"align":["right"]},{"label":["N"],"name":[16],"type":["lgl"],"align":["right"]},{"label":["ref"],"name":[17],"type":["lgl"],"align":["right"]},{"label":["alt"],"name":[18],"type":["lgl"],"align":["right"]},{"label":["ALT"],"name":[19],"type":["lgl"],"align":["right"]},{"label":["REF"],"name":[20],"type":["lgl"],"align":["right"]},{"label":["PHASE"],"name":[21],"type":["lgl"],"align":["right"]}],"data":[{"1":"NA","2":"NA","3":"NA","4":"NA","5":"NA","6":"NA","7":"NA","8":"NA","9":"NA","10":"NA","11":"NA","12":"NA","13":"NA","14":"NA","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

## Data harmonization
Harmonize the exposure and outcome datasets so that the effect of a SNP on the exposure and the effect of that SNP on the outcome correspond to the same allele. The harmonise_data function from the TwoSampleMR package can be used to perform the harmonization step, by default it try's to infer the forward strand alleles using allele frequency information.
<br>

**Table 4:** Harmonized Any Neuritic Plaques and Moderate-Vigours Physical Activity datasets
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["effect_allele.exposure"],"name":[2],"type":["chr"],"align":["left"]},{"label":["other_allele.exposure"],"name":[3],"type":["chr"],"align":["left"]},{"label":["effect_allele.outcome"],"name":[4],"type":["chr"],"align":["left"]},{"label":["other_allele.outcome"],"name":[5],"type":["chr"],"align":["left"]},{"label":["beta.exposure"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["beta.outcome"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["eaf.exposure"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["eaf.outcome"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["remove"],"name":[10],"type":["lgl"],"align":["right"]},{"label":["palindromic"],"name":[11],"type":["lgl"],"align":["right"]},{"label":["ambiguous"],"name":[12],"type":["lgl"],"align":["right"]},{"label":["id.outcome"],"name":[13],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[14],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[15],"type":["dbl"],"align":["right"]},{"label":["se.outcome"],"name":[16],"type":["dbl"],"align":["right"]},{"label":["z.outcome"],"name":[17],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[18],"type":["dbl"],"align":["right"]},{"label":["samplesize.outcome"],"name":[19],"type":["dbl"],"align":["right"]},{"label":["outcome"],"name":[20],"type":["chr"],"align":["left"]},{"label":["mr_keep.outcome"],"name":[21],"type":["lgl"],"align":["right"]},{"label":["pval_origin.outcome"],"name":[22],"type":["chr"],"align":["left"]},{"label":["chr.exposure"],"name":[23],"type":["dbl"],"align":["right"]},{"label":["pos.exposure"],"name":[24],"type":["dbl"],"align":["right"]},{"label":["se.exposure"],"name":[25],"type":["dbl"],"align":["right"]},{"label":["z.exposure"],"name":[26],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[27],"type":["dbl"],"align":["right"]},{"label":["samplesize.exposure"],"name":[28],"type":["dbl"],"align":["right"]},{"label":["exposure"],"name":[29],"type":["chr"],"align":["left"]},{"label":["mr_keep.exposure"],"name":[30],"type":["lgl"],"align":["right"]},{"label":["pval_origin.exposure"],"name":[31],"type":["chr"],"align":["left"]},{"label":["id.exposure"],"name":[32],"type":["chr"],"align":["left"]},{"label":["action"],"name":[33],"type":["dbl"],"align":["right"]},{"label":["mr_keep"],"name":[34],"type":["lgl"],"align":["right"]},{"label":["pt"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["pleitropy_keep"],"name":[36],"type":["lgl"],"align":["right"]},{"label":["mrpresso_RSSobs"],"name":[37],"type":["lgl"],"align":["right"]},{"label":["mrpresso_pval"],"name":[38],"type":["lgl"],"align":["right"]},{"label":["mrpresso_keep"],"name":[39],"type":["lgl"],"align":["right"]}],"data":[{"1":"rs112833681","2":"G","3":"T","4":"G","5":"T","6":"-0.9748","7":"-0.014879200","8":"0.0257","9":"0.024541","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"3","15":"72020152","16":"0.00720691","17":"-2.0645700","18":"3.9e-02","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"3","24":"72020152","25":"0.2039","26":"-4.780770","27":"1.747e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs142544282","2":"T","3":"C","4":"T","5":"C","6":"-2.1080","7":"-0.020499600","8":"0.0108","9":"0.010124","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"21","15":"43678066","16":"0.01103600","17":"-1.8575200","18":"6.3e-02","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"21","24":"43678066","25":"0.3658","26":"-5.762712","27":"8.299e-09","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs144621483","2":"T","3":"G","4":"T","5":"G","6":"-1.7657","7":"-0.010518500","8":"0.0172","9":"0.023639","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"9","15":"129356304","16":"0.00733646","17":"-1.4337300","18":"1.5e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"9","24":"129356304","25":"0.3224","26":"-5.476737","27":"4.332e-08","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs28479400","2":"G","3":"A","4":"G","5":"A","6":"-0.7864","7":"0.005678110","8":"0.0506","9":"0.048639","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"15","15":"99995884","16":"0.00527221","17":"1.0769900","18":"2.8e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"15","24":"99995884","25":"0.1647","26":"-4.774740","27":"1.788e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs34487851","2":"G","3":"A","4":"G","5":"A","6":"-0.4143","7":"0.000226055","8":"0.2647","9":"0.281211","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"2","15":"106642554","16":"0.00247932","17":"0.0911762","18":"9.3e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"2","24":"106642554","25":"0.0903","26":"-4.588040","27":"4.474e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs4803748","2":"T","3":"C","4":"T","5":"C","6":"-0.4005","7":"-0.004131570","8":"0.3589","9":"0.382777","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"19","15":"45247048","16":"0.00228188","17":"-1.8106000","18":"7.0e-02","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"19","24":"45247048","25":"0.0829","26":"-4.831122","27":"1.345e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs61041336","2":"G","3":"A","4":"G","5":"A","6":"-0.4512","7":"0.000472543","8":"0.1531","9":"0.147177","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"16","15":"58733162","16":"0.00311688","17":"0.1516080","18":"8.8e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"16","24":"58733162","25":"0.0966","26":"-4.670810","27":"3.036e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs62341097","2":"A","3":"G","4":"A","5":"G","6":"-1.1474","7":"-0.007533060","8":"0.0458","9":"0.051147","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"4","15":"174094940","16":"0.00500051","17":"-1.5064600","18":"1.3e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"4","24":"174094940","25":"0.1975","26":"-5.809620","27":"6.273e-09","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs6857","2":"T","3":"C","4":"T","5":"C","6":"1.2932","7":"0.018694400","8":"0.2661","9":"0.170458","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"19","15":"45392254","16":"0.00293602","17":"6.3672600","18":"1.9e-10","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"19","24":"45392254","25":"0.1191","26":"10.858102","27":"1.780e-27","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"FALSE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs73214476","2":"C","3":"T","4":"C","5":"T","6":"-1.6678","7":"0.001369040","8":"0.0118","9":"0.015454","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"4","15":"65287903","16":"0.00899481","17":"0.1522030","18":"8.8e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"4","24":"65287903","25":"0.3399","26":"-4.906740","27":"9.279e-07","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs80125278","2":"C","3":"T","4":"C","5":"T","6":"-1.5167","7":"-0.010212800","8":"0.0146","9":"0.011961","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"6","15":"14334854","16":"0.01014560","17":"-1.0066200","18":"3.1e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"6","24":"14334854","25":"0.3246","26":"-4.672520","27":"2.976e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"},{"1":"rs9578438","2":"T","3":"C","4":"T","5":"C","6":"-1.2374","7":"-0.003024230","8":"0.0393","9":"0.032477","10":"FALSE","11":"FALSE","12":"FALSE","13":"V23C6k","14":"13","15":"22729205","16":"0.00621591","17":"-0.4865310","18":"6.3e-01","19":"377234","20":"Klimentidis2018mvpa","21":"TRUE","22":"reported","23":"13","24":"22729205","25":"0.2537","26":"-4.877414","27":"1.080e-06","28":"4046","29":"Beecham2014npany","30":"TRUE","31":"reported","32":"UErvWK","33":"2","34":"TRUE","35":"5e-06","36":"TRUE","37":"NA","38":"NA","39":"TRUE"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

SNPs that genome-wide significant in the outcome GWAS are likely pleitorpic and should be removed from analysis. Additionaly remove variants within the APOE locus by exclude variants 1MB either side of APOE e4 (rs429358 = 19:45411941, GRCh37.p13)
<br>


**Table 5:** SNPs that were genome-wide significant in the Moderate-Vigours Physical Activity GWAS
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["SNP"],"name":[1],"type":["chr"],"align":["left"]},{"label":["chr.outcome"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["pos.outcome"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["pval.exposure"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["pval.outcome"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"rs4803748","2":"19","3":"45247048","4":"1.345e-06","5":"7.0e-02"},{"1":"rs6857","2":"19","3":"45392254","4":"1.780e-27","5":"1.9e-10"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
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
{"columns":[{"label":["outliers_removed"],"name":[1],"type":["lgl"],"align":["right"]},{"label":["pve.exposure"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["F"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Alpha"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["NCP"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["Power"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"FALSE","2":"0.06448464","3":"27.81307","4":"0.05","5":"5.323861","6":"0.635859"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>

##  MR Results
To obtain an overall estimate of causal effect, the SNP-exposure and SNP-outcome coefficients were combined in 1) a fixed-effects meta-analysis using an inverse-variance weighted approach (IVW); 2) a Weighted Median approach; 3) Weighted Mode approach and 4) Egger Regression.


[**IVW**](https://doi.org/10.1002/gepi.21758) is equivalent to a weighted regression of the SNP-outcome coefficients on the SNP-exposure coefficients with the intercept constrained to zero. This method assumes that all variants are valid instrumental variables based on the Mendelian randomization assumptions. The causal estimate of the IVW analysis expresses the causal increase in the outcome (or log odds of the outcome for a binary outcome) per unit change in the exposure. [**Weighted median MR**](https://doi.org/10.1002/gepi.21965) allows for 50% of the instrumental variables to be invalid. [**MR-Egger regression**](https://doi.org/10.1093/ije/dyw220) allows all the instrumental variables to be subject to direct effects (i.e. horizontal pleiotropy), with the intercept representing bias in the causal estimate due to pleiotropy and the slope representing the causal estimate. [**Weighted Mode**](https://doi.org/10.1093/ije/dyx102) gives consistent estimates as the sample size increases if a plurality (or weighted plurality) of the genetic variants are valid instruments.
<br>



Table 6 presents the MR causal estimates of genetically predicted Any Neuritic Plaques on Moderate-Vigours Physical Activity.
<br>

**Table 6** MR causaul estimates for Any Neuritic Plaques on Moderate-Vigours Physical Activity
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["int"],"align":["right"]},{"label":["b"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"Inverse variance weighted (fixed effects)","6":"10","7":"0.004044235","8":"0.001733336","9":"0.01963722"},{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"Weighted median","6":"10","7":"0.005038275","8":"0.002436362","9":"0.03864470"},{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"Weighted mode","6":"10","7":"0.005109272","8":"0.003276127","9":"0.15329778"},{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"MR Egger","6":"10","7":"0.008026912","8":"0.003307237","9":"0.04139070"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 1 illustrates the SNP-specific associations with Any Neuritic Plaques versus the association in Moderate-Vigours Physical Activity and the corresponding MR estimates.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Klimentidis2018mvpa/Beecham2014npany_5e-6_Klimentidis2018mvpa_MR_Analaysis_files/figure-html/scatter_plot-1.png" alt="Fig. 1: Scatterplot of SNP effects for the association of the Exposure on the Outcome"  />
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
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["dbl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"MR Egger","6":"7.058990","7":"8","8":"0.5302817"},{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"Inverse variance weighted","6":"9.058358","7":"9","8":"0.4319048"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Figure 2 shows a funnel plot displaying the MR estimates of individual genetic variants against their precession. Aysmmetry in the funnel plot may arrise due to some genetic variants having unusally strong effects on the outcome, which is indicative of directional pleiotropy.
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Klimentidis2018mvpa/Beecham2014npany_5e-6_Klimentidis2018mvpa_MR_Analaysis_files/figure-html/funnel_plot-1.png" alt="Fig. 2: Funnel plot of the MR causal estimates against their precession"  />
<p class="caption">Fig. 2: Funnel plot of the MR causal estimates against their precession</p>
</div>
<br>

Figure 3 shows a [Radial Plots](https://github.com/WSpiller/RadialMR) can be used to visualize influential data points with large contributions to Cochran's Q Statistic that may bias causal effect estimates.




```
## [1] "No significant Outliers"
```

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Klimentidis2018mvpa/Beecham2014npany_5e-6_Klimentidis2018mvpa_MR_Analaysis_files/figure-html/Radial_Plot-1.png" alt="Fig. 4: Radial Plot showing influential data points using Radial IVW"  />
<p class="caption">Fig. 4: Radial Plot showing influential data points using Radial IVW</p>
</div>
<br>

The intercept of the MR-Regression model captures the average pleitropic affect across all genetic variants (Table 8).
<br>

**Table 8:** MR Egger test for directional pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["se"],"name":[6],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[7],"type":["dbl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"-0.004087841","6":"0.002890996","7":"0.1950788"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

Pleiotropy was also assesed using Mendelian Randomization Pleiotropy RESidual Sum and Outlier [(MR-PRESSO)](https://doi.org/10.1038/s41588-018-0099-7), that allows for the evlation of evaluation of horizontal pleiotropy in a standared MR model (Table 9). MR-PRESSO performs a global test for detection of horizontal pleiotropy and correction of pleiotropy via outlier removal (Table 10).
<br>

**Table 9:** MR-PRESSO Global Test for pleitropy
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["chr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["chr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["chr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["chr"],"align":["left"]},{"label":["pt"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["outliers_removed"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["n_outliers"],"name":[7],"type":["dbl"],"align":["right"]},{"label":["RSSobs"],"name":[8],"type":["dbl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["dbl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"5e-06","6":"FALSE","7":"0","8":"10.73681","9":"0.4835"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>


**Table 10:** MR Estimates after MR-PRESSO outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["nsnp"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["b"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[8],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[9],"type":["lgl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"mrpresso","6":"NA","7":"NA","8":"NA","9":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

<div class="figure" style="text-align: center">
<img src="/sc/arion/projects/LOAD/shea/Projects/MR_ADPhenome/results/MR_ADbidir/Beecham2014npany/Klimentidis2018mvpa/Beecham2014npany_5e-6_Klimentidis2018mvpa_MR_Analaysis_files/figure-html/scatter_plot_outlier-1.png" alt="Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal"  />
<p class="caption">Fig. 5: Scatterplot of SNP effects for the association of the Exposure on the Outcome after outlier removal</p>
</div>
<br>

**Table 11:** Heterogenity Tests after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["Q"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["Q_df"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["Q_pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>

**Table 12:** MR Egger test for directional pleitropy after outlier removal
<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["id.exposure"],"name":[1],"type":["fctr"],"align":["left"]},{"label":["id.outcome"],"name":[2],"type":["fctr"],"align":["left"]},{"label":["outcome"],"name":[3],"type":["fctr"],"align":["left"]},{"label":["exposure"],"name":[4],"type":["fctr"],"align":["left"]},{"label":["method"],"name":[5],"type":["fctr"],"align":["left"]},{"label":["egger_intercept"],"name":[6],"type":["lgl"],"align":["right"]},{"label":["se"],"name":[7],"type":["lgl"],"align":["right"]},{"label":["pval"],"name":[8],"type":["lgl"],"align":["right"]}],"data":[{"1":"UErvWK","2":"V23C6k","3":"Klimentidis2018mvpa","4":"Beecham2014npany","5":"mrpresso","6":"NA","7":"NA","8":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>
<br>
