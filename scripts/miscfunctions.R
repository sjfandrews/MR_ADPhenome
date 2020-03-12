## ================================================================================ ##
##                                Misc functions                                    ##

outcomes = c("Lambert2013load", "Kunkle2019load", "Huang2017aaos", 
             "Deming2017ab42", "Deming2017ptau", "Deming2017tau", 
             "Hilbar2017hipv", "Hilbar2015hipv", 
             "Beecham2014npany", "Beecham2014braak4", "Beecham2014vbiany")
## Exposures to include in the results
exposures = c("Liu2019drnkwk", "Liu2019smkcpd", "Liu2019smkint", "SanchezRoige2018auditt",
              "Yengo2018bmi", "Howard2018dep", "Wray2018mdd",
              "Day2018sociso", "Xue2018diab", "Lee2018educ", "NealeLab2018oilfish",
              "Wells2019hdiff","Willer2013hdl", "Willer2013ldl", "Willer2013tc",
              "Willer2013tg", "Jansen2018insom", "Dashti2019slepdur",  
              "Klimentidis2018mvpa", "Evangelou2018dbp", "Evangelou2018sbp", 
              "Evangelou2018pp", "Liu2019drnkwk23andMe", "Liu2019smkcpd23andMe", "Liu2019smkint23andMe",
              "Jansen2018insomnia23andMe", "Howard2019dep23andMe", "SanchezRoige2019auditt23andMe", 
              "Lee2018education23andMe")

## Sample Sizes
samplesize <- tibble(
  code = c('Liu2019drnkwk', 'Liu2019smkint', 'Liu2019smkcpd', 'SanchezRoige2018auditt', 
           'NealeLab2018oilfish', 'Wells2019hdiff', 'Xue2018diab',
           'Yengo2018bmi', 'Willer2013tc', 'Willer2013ldl', 'Willer2013hdl', 
           'Willer2013tg', 'Evangelou2018dbp', 'Evangelou2018sbp', 'Evangelou2018pp',
           'Howard2018dep', 'Wray2018mdd', 'Jansen2018insom', 'Dashti2019slepdur',
           'Day2018sociso', 'Lee2018educ', 'Huang2017aaos', 'Deming2017ab42',
           'Hilbar2017hipv', 'Hilbar2015hipv', 'Lambert2013load', 'Kunkle2019load',
           'Beecham2014braak4', 'Beecham2014npany', 'Deming2017ptau', 'Deming2017tau',
           'Beecham2014vbiany', 'Klimentidis2018mvpa', "Lee2018education23andMe",
           "Liu2019drnkwk23andMe", "Liu2019smkint23andMe", "Liu2019smkcpd23andMe", 
           "SanchezRoige2019auditt23andMe", "Jansen2018insomnia23andMe", "Howard2019dep23andMe"),
  trait = c("Alcohol Consumption", "Smoking Initiation", "Cigarettes per Day", 
            "AUDIT", "Oily Fish Intake", "Hearing Difficulties",
            "Type 2 Diabetes", 'BMI', "Total Cholesterol", "Low-density lipoproteins",
            "High-density lipoproteins", "Triglycerides", "Diastolic Blood Pressure",
            "Systolic Blood Pressure", "Pulse Pressure", "Depressive Symptoms", 
            "Major Depressive Disorder", "Insomnia Symptoms", "Sleep Duration",
            "Social Isolation", "Educational Attainment", "AAOS", "AB42", 
            "Hippocampal Volume", "Hippocampal Volume", "LOAD", "LOAD",
            "Neurofibrillary Tangles", "Neuritic Plaques", "Ptau181", "Tau", 
            "Vascular Brain Injury", "Moderate-to-vigorous PA", 
            "Educational Attainment (23andMe)", "Alcohol Consumption (23andMe)", 
            "Smoking Initiation (23andMe)", "Cigarettes per Day (23andMe)",
            "AUDIT (23andMe)", "Insomnia Symptoms (23andMe)", "Depression (23andMe)"),
  pmid = c(30643251, 30643251, 30643251, 30336701, NA, 31564434, 30054458, 30124842, 24097068, 24097068, 24097068, 24097068, 30224653, 30224653, 30224653, 29662059, 29700475, 30804565, 30846698, 29970889, 30038396, 28628103, 28247064, 28098162, 25607358, 24162737, 30820047, 25188341, 25188341, 28247064, 28247064, 25188341, 29899525, 
           30038396, 30643251, 30643251, 30643251, 30336701, 30804565, 30718901),
  logistic = c(FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, 
               FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, 
               TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, 
               FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE),
  samplesize = c(537349, 286736, 263954, 121600, 359340, 250389, 659316, 690495, 188577, 
                 188577, 188577, 188577, 757601, 757601, 757601, 322580, 480359, 386533, 446118, 
                 452302, 766345, 40255, 3146, 26814, 13688, 54162, 63926, 4735, 4046, 3146, 3146, 
                 2764, 377234, 
                 11318, 941280, 1232091, 337334, 141932, 1331010, 807553),
  ncase = c(NA, 156452, NA, NA, NA, 87056, 62892, NA, NA, NA, NA, NA, NA, NA, NA,  113769, 
            135458, 109402, NA, NA, NA, 14406, NA, NA, NA, 17008, 21982, 2927, 3426, NA, NA, 992, NA, 
            NA, NA, 557337, NA, NA, 397972, 246363),
  ncontrol = c(NA, 130284, NA, NA, NA, 163333, 596424, NA, NA, NA, NA, NA, NA, NA, NA,  208811, 
               344901, 277131, NA, NA, NA, 25849, NA, NA, NA, 37154, 41944, 1808, 620, NA, NA, 1772, NA, 
               NA, NA, 674754, NA, NA, 933038, 561190)) 

## negate
`%nin%` = Negate(`%in%`)

## Standardization of SNP effect and its standard error using z-statistic, allele 
## frequency and sample size. Based on gsmr::std_effect. 
## http://cnsgenomics.com/software/gsmr/#Tutorial
std_beta = function(z, eaf, n){
  std.b = z/sqrt(2 * eaf * (1 - eaf) * (n + z^2))
  std.b
}

std_se = function(z, eaf, n){
  std.se = 1/sqrt(2 * eaf * (1 - eaf) * (n + z^2))
  std.se
}

# Calculated F-statistics 
## Burgess, Stephen, Simon G. Thompson, and CRP CHD Genetics Collaboration. 2011. 
## International Journal of Epidemiology 40 (3): 755–64.
f_stat = function(N, K, R){
  f = ((N-K-1) / K) * (R/(1-R))}

## Proportion of phenotypic variance explained by SNP 
## https://doi.org/10.1371/journal.pone.0120758.s001
snp.pve <- function(eaf, beta, se, n){
  (2*eaf*(1 - eaf)*beta^2) / (2 * beta * eaf * (1-eaf) + se^2 * 2 * n * eaf * (1-eaf))
}

## if value is less then 0.001, use scientific notation
round_sci <- function(x){ifelse(x < 0.001, formatC(x, format = "e", digits = 2), round(x, 3))}

## replace pvalues with stars
signif.num <- function(x) {
  symnum(x, corr = FALSE, na = FALSE, legend = FALSE,
         cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1), 
         symbols = c("***", "**", "*", ".", " "))
}

## Function for spreading multiple columns 
# https://community.rstudio.com/t/spread-with-multiple-value-columns/5378 
myspread <- function(df, key, value) {
  # quote key
  keyq <- rlang::enquo(key)
  # break value vector into quotes
  valueq <- rlang::enquo(value)
  s <- rlang::quos(!!valueq)
  df %>% gather(variable, value, !!!s) %>%
    unite(temp, !!keyq, variable) %>%
    spread(temp, value)
}

## From Greenbrown package
AllEqual <- structure(function(x) {
  res <- FALSE
  x <- na.omit(as.vector(x))
  if (length(unique(x)) == 1 | length(x) == 0) res <- TRUE
  return(res)
},ex=function(){
  AllEqual(1:10)
  AllEqual(rep(0, 10))
  AllEqual(letters)
  AllEqual(rep(NA, 10))
})

passfunc <- function(ivw.p, ivw.b, mre.p, mre.b, wme.p, wme.b, wmb.p, wmb.b){
  ifelse(AllEqual(c(
    ifelse(ivw.p < 0.05, sign(ivw.b), NA), 
    ifelse(mre.p < 0.05, sign(mre.b), NA),
    ifelse(wme.p < 0.05, sign(wme.b), NA),
    ifelse(wmb.p < 0.05, sign(wmb.b), NA)
  )) == TRUE, 
  TRUE, FALSE)
}