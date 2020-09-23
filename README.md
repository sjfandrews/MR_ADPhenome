# Causal effect of modifiable risk factors on the Alzheimer’s phenome
Esimating the causal associations between potentially modifiable risk factors and the Alzheimer’s phenome using Mendelian randomization.

_Shea J Andrews, Brian Fulton-Howard, Paul O’Reilly, Edoardo Marcora, & Alison M Goate and collaborators of the Alzheimer’s Disease Genetics Consortium_. 2020. **Causal associations between modifiable risk factors and the Alzheimer’s phenome.** Annals of Neurology. In Press.

_Shea J Andrews, Brian Fulton-Howard, Paul O’Reilly, Lindsay A Farrer, Jonathan L Haines, Richard Mayeux, Adam C Naj, Margaret A Pericak-Vance, Gerard D Schellenberg, Li-San Wang, Edoardo Marcora, and Alison M. Goate_. 2019. **Causal Associations between Potentially Modifiable Risk Factors and the Alzheimer’s Phenome: A Mendelian Randomization Study**. [bioRxiv](https://doi.org/10.1101/689752v2)

## Abstract
**Objective**: To infer causal relationships between 22 previously reported risk factors for Alzheimer’s disease (AD) and the “AD phenome”: AD, AD age of onset (AAOS), hippocampal volume, cortical surface area and thickness, cerebrospinal fluid (CSF) levels of Aβ42, tau, and ptau181, and the neuropathological burden of neuritic plaques, neurofibrillary tangles, and vascular brain injury (VBI).

**Methods**: Polygenic risk scores (PRS) for the 22 risk factors were computed in 26,431 AD cases/controls and the association with AD was evaluated using logistic regression. Two-sample Mendelian randomization was used to infer the causal effect of risk factors on the AD phenome.

**Results**: PRS for increased education and diastolic blood pressure were associated with reduced risk for AD. MR indicated that only education was causally associated with reduced risk of AD, delayed AAOS, and increased cortical surface area and thickness. Total- and LDL-cholesterol levels were causally associated with increased neuritic plaque burden, though the effects were driven by SNPs within the APOE locus. Diastolic blood pressure and pulse pressure are causally associated with increased risk of VBI. Furthermore, total cholesterol was associated with decreased hippocampal volume; smoking initiation with decreased cortical thickness; type 2 diabetes with an earlier AAOS; and sleep duration with increased cortical thickness.

**Interpretation**: Our comprehensive examination of the genetic evidence for the causal relationships between previously reported risk factors in AD using PRS and MR, supports a causal role for education, blood pressure, cholesterol levels, smoking, and diabetes with the AD phenome.

## MR Analysis
Mendelian randomization was conducted using the [MR snakemake pipeline](https://github.com/marcoralab/MRPipeline). See the corresponding repo for more information.

Mendelian Randomization results for each exposure-outcome pair can be found in `docs/TableS3-4.xlsx`.

## Data Avaliability
The data used in these analysis are either pubilicaly avaliable or were made avaliable by request from the authors. Summary Statistics were harmonized using the [Summary Statistic Munging pipeline](https://github.com/marcoralab/sumstats_munger). For more details on harmonizing and using VCF's for efficient and robust storage of GWAS summary statistics see [Lyon et al 2020. BioRxiv](https://dx.doi.org/10.1101/2020.05.29.115824).

Harmonized exposure - outcome SNP sets for conducting MR analysis can be found in `docs/TableS1-2.xlsx`.

| Ref | Data Avaliability | Trait |
| --- | ----------------- | ----- |
| Liu et al. [Nat Genet 2019](https://doi.org/10.1038/s41588-018-0307-5) | [GSCAN](https://genome.psych.umn.edu/index.php/GSCAN#Summary_Statistics) <sup>†</sup> | Alcohol Consumption |
| | | Smoking Initiation |
| | | Cigarettes per Day |
| Sanchez-Roige et al. [Am J Psychiat 2019](https://doi.org/10.1176/appi.ajp.2018.18040369) | by requst <sup>†</sup> | AUDIT |
| Klimentidis et al. [Int J Obes 2018](https://doi.org/10.1038/s41366-018-0120-3) | by request | Moderate-Vigoures Physical Activity |
| Willer et al. [Nat Genet 2013](https://doi.org/10.1038/ng.2797) | [GLGC](http://csg.sph.umich.edu/willer/public/lipids2013/) | Total Cholesterol |
| | | LDL Cholesterol |
| | | HDL Cholesterol |
| | | Triglycerides |
| Evangelou et al. [Nat Genet 2018](https://doi.org/10.1038/s41588-018-0205-x) | by request | Diastolic Blood Pressure |
| | | Systolic Blood Pressure |
| | | Pulse Pressure |
| Xue et al. [Nat Commun 2018](https://doi.org/10.1038/s41467-018-04951-w) | [CNSGenomics](https://cnsgenomics.com/content/data) | Type 2 Diabetes |
| Yengo et al. [Hum Mol Genet 2018](https://doi.org/10.1093/hmg/ddy271) | [CNSGenomics](https://cnsgenomics.com/content/data) | BMI |
| Niarchou et al. [Transl Psychiat 2020](https://doi.org/10.1038/s41398-020-0688-y) | [CNSGenomics](https://cnsgenomics.com/content/data) | Meat-related diet |
| | | Fish and plant related diet |
| Howard et al. [Nat Neurosci 2019](https://doi.org/10.1038/s41593-018-0326-7) | [Edinburgh DataShare](https://datashare.is.ed.ac.uk/handle/10283/3203) <sup>†</sup> | Depression |
| Jansen et al. [Nat Genet 2019](https://doi.org/10.1038/s41588-018-0333-3) | [CTGLab](https://ctg.cncr.nl/software/summary_statistics) <sup>†</sup> | Insomnia Symptoms |
| Dashti et al. [Nat Commun 2019](https://doi.org/10.1038/s41467-019-08917-4) | [SDKP](http://kp4cd.org/datasets/sleep)| Sleep Duration |
| Day et al. [Nat Commun 2018](https://doi.org/10.1038/s41467-018-04930-1) | [Apollo](https://www.repository.cam.ac.uk/handle/1810/277812) | Social Isolation |
| Lee et al. [Nat Genet 2018](https://doi.org/10.1038/s41588-018-0147-3) | [SSGAC](https://www.thessgac.org/data) <sup>†</sup> | Education |
| Wells et al. [Am J Hum Genetics 2019](https://doi.org/10.1016/j.ajhg.2019.09.008) | by request| Hearing Difficulties |
| Kunkle et al. [Nat Genet 2019](https://doi.org/10.1038/s41588-019-0358-2) | [NIGADS](https://www.niagads.org/datasets/ng00075) | LOAD |
| Lambert et al. [Nat Genet 2013](https://doi.org/10.1038/ng.2802) | [NIGADS](https://www.niagads.org/datasets/ng00036) | LOAD |
| Huang et al. [Nat Neurosci 2017](https://doi.org/10.1038/nn.4587) | [NIGADS](https://www.niagads.org/datasets/ng00058) | AD Age of Onset |
| Hibar et al. [Nat Commun 2017](https://doi.org/10.1038/ncomms13624) | [ENIGMA](http://enigma.ini.usc.edu/research/download-enigma-gwas-results/) | Hippocampal Volume |
| Hibar et al. [Nature 2015](https://doi.org/10.1038/nature14101) | [ENIGMA](http://enigma.ini.usc.edu/research/download-enigma-gwas-results/) | Hippocampal Volume |
| Grasby et al. [Science 2020](https://doi.org/10.1126/science.aay6690) | [ENIGMA](http://enigma.ini.usc.edu/research/download-enigma-gwas-results/) | Cortical surface area and thickness |
| Deming et al. [Acta Neuropathol 2017](https://doi.org/10.1007/s00401-017-1685-y) | [NIGADS](https://www.niagads.org/datasets/ng00055) | CSF A&beta;<sub>42</sub> |
|  |       | CSF Ptau<sub>181</sub> |
|  |       | CSF Tau |
| Beecham et al. [Plos Genet 2014](https://doi.org/10.1371/journal.pgen.1004606) | [NIGADS](https://www.niagads.org/datasets/ng00041) | Neuritic Plaques |
|  |       | Neurofibrillary tangles |
|  |       | Vascular Brain Injury |

<sup>†</sup> Includes data from 23andMe, which is avaliable upon request from 23andMe
