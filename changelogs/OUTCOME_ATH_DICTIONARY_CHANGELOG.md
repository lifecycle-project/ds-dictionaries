# Versions of data dictionaries (outcome_ath data)

We define here what versions of the data dictionaries contains which tables


## 1.3

### Content
in 1_3_yearly_rep dictionary
- changed categories typo for mets_score_partial_idefics_ (not partical)

#### General changes
- fix categories in 1_3_yearly_rep

#### Additional variables

- none

### Tables

- 1_3_non_rep
- 1_3_monthly_rep
- 1_3_trimester_rep
- 1_3_yearly_rep



## 1.2

These variables were changed to decimal type in 1_2_yearly_rep
att_age_	decimal
edR_age_	decimal
anR_age_	decimal
bnR_age_	decimal
bedR_age_	decimal

in 1_2_yearly_rep dictionary:
- changed variable name to mets_score_partial_idefics_ (not partical).
- remove space for variable 'mets_ idefics_' to 'mets_idefics_'


**dsUpload R-package version >= 4.7.x**

### Content
- added mets_score_partial_idefics_ to yearly_rep

#### General changes

- added mets_score_partial_idefics_ to yearly_rep

#### Additional variables

- none

### Tables

- 1_2_non_rep
- 1_2_monthly_rep
- 1_2_trimester_rep
- 1_2_yearly_rep

## 1.1

**dsUpload R-package version >= 4.7.x**

### Content
- fix cohort_id for helix, elspac and genrnext in 1_1_non_rep.xslx (Categories)

#### General changes

- fix cohort_id

#### Additional variables

- none

### Tables

- 1_1_non_rep
- 1_1_monthly_rep
- 1_1_trimester_rep
- 1_1_yearly_rep


## 1.0

**dsUpload R-package version >= 4.7.x**

### Content

#### General changes

- *non-repeated variables*
  - Added variables see list below
- *monthly-repeated variables*
  - Added variables see list below
- *trimester-repeated variables*
  - Added variables see list below
- *yearly-repeated variables*
  - Added variables see list below

#### Additional variables

- none, this is the first release

*non-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| row_id          | integer     | Unique identifier for the row in Opal          |
| mother_id       | text        | Unique identifier number for the mother       |
| child_id        | text        | Unique identifier number for the index child  |
| cohort_id       | integer     | Unique identifier for the cohort              |
| CRL_t1          | decimal     | Crown-rump length in 1st trimester            |

*monthly-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| row_id | integer | Unique identifier for the row in Opal |
| child_id | text | Unique identifier for the child |
| age_years | integer | Age of child in years |
| age_months | integer | Age of the child in months |
| z_height_ | decimal | Repeated measures of child's height z-score calculated using the World Health Organization (WHO) reference curves |
| z_weight_ | decimal | Repeated measures of child's weight z-score calculated using the World Health Organization (WHO) reference curves |
| z_bmi_ | decimal | Repeated measures of child's BMI z-score calculated using the World Health Organization (WHO) reference curves |

*trimester-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| row_id                        | integer | Unique identifier for the row in Opal                                                                                                |
| mother_id                     | text    | Unique identifier number for the mother                                                                                             |
| child_id                      | text    | Unique identifier number for the index child                                                                                        |
| age_trimester                 | integer | Age of the child in trimesters                                                                                                      |
| ga_us_t                       | decimal | Gestational age when ultrasound in X trimester was performed                                                                        |
| fetus_biparietal_diam_t       | decimal | Biparietal diameter of the fetus in X trimester                                                                                     |
| fetus_head_circum_t           | decimal | Circumference of the head of the fetus in X trimester                                                                               |
| fetus_abd_circum_t            | decimal | Abdominal circumference of the fetus in X trimester                                                                                 |
| fetus_femur_length_t          | decimal | Femur length of the fetus in X trimester                                                                                            |
| fetus_weight_t                | decimal | Estimated weight of the fetus in X trimester                                                                                        |
| biparietal_diam_sdsWHO_t      | decimal | Gestational age-adjusted biparietal diameter SDS  in X trimester based on overall WHO-based reference growth curves                 |
| head_circum_sdsWHO_t          | decimal | Gestational age-adjusted head circumference SDS  in X trimester based on overall WHO-based reference growth curves                  |
| abd_circum_sdsWHO_t           | decimal | Gestational age-adjusted abdominal circumference SDS  in X trimester based on overall WHO-based reference growth curves             |
| femur_length_sdsWHO_t         | decimal | Gestational age-adjusted femur length SDS  in X trimester based on overall WHO-based reference growth curves                        |
| weight_sdsWHO_t               | decimal | Gestational age- and sex- adjusted estimated fetal weight SDS  in X trimester based on overall WHO-based reference growth curves    |
| biparietal_diam_sdsWHOEUR_t   | decimal | Gestational age- and sex-adjusted biparietal diameter SDS  in X trimester based on European WHO-based reference growth curves       |
| head_circum_sdsWHOEUR_t       | decimal | Gestational age- and sex-adjusted head circumference SDS  in X trimester based on European WHO-based reference growth curves        |
| abd_circum_sdsWHOEUR_t        | decimal | Gestational age- and sex-adjusted abdominal circumference SDS  in X trimester based on European WHO-based reference growth curves   |
| femur_length_sdsWHOEUR_t      | decimal | Gestational age- and sex-adjusted femur length SDS  in X trimester based on European WHO-based reference growth curves              |
| weight_sdsWHOEUR_t            | decimal | Gestational age- and sex- adjusted estimated fetal weight SDS  in X trimester based on European WHO-based reference growth curves   |
| pi_uma_t                      | decimal | Pulsatility index umbilical artery in X trimester                                                                                   |
| pi_uta_t                      | decimal | Pulsatility index uterine artery in X trimester                                                                                     |

yearly-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| row_id | integer | Unique identifier for the row in Opal |
| child_id | text | Unique identifier for the child |
| age_years | integer | Age of child in years |
| aggr_raw_ | decimal | Repeated measures of aggressive behavior, total raw score: aggr_raw_0: assessed within one year of childbirth (>0 year and <1 year) aggr_raw_1: assessed when the child was aged between ≥ 1 year and < 2 years … aggr_raw_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| aggr_age_ | integer | Exact age of the child (in years) when aggressive behavior was recorded for aggr_raw_0, aggr_raw_1, etc. |
| aggr_instr_ | integer | Cohort-specific instrument used to measure the aggressive behavior for aggr_raw_0, aggr_raw_1, etc. |
| aggr_eval_ | decimal | Who the test was administered/answered by for aggr_raw_0, aggr_raw_1, etc. |
| aggr_avg_ | decimal | Average of available items comprising the total raw score of aggr_raw_0, aggr_raw_1, etc. |
| aggr_pro_ | decimal | Total aggressive behavior score after prorating aggr_raw_0, aggr_raw1, etc. |
| aggr_pc_ | decimal | Aggressive behavior, percentiles of aggr_pro_0, aggr_pro_1, etc. |
| att_om_raw_ | decimal | Repeated measures of attentional function, raw score of number of omissions: att_om_raw_0: assessed within one year of childbirth (>0 year and <1 year) att_om_raw_1: assessed when the child was aged between ≥ 1 year and < 2 years … att_om_raw_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| att_com_raw_ | decimal | Repeated measures of attentional function, raw score of number of commissions: att_com_raw_0: assessed within one year of childbirth (>0 year and <1 year) att_com_raw_1: assessed when the child was aged between ≥ 1 year and < 2 years … att_com_raw_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| att_hrt_raw_ | decimal | Repeated measures of attentional function, raw score of hit reaction time: att_hrt_raw_0: assessed within one year of childbirth (>0 year and <1 year) att_hrt_raw_1: assessed when the child was aged between ≥ 1 year and < 2 years … att_hrt_raw_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| att_hrtse_raw_ | decimal | Repeated measures of attentional function, raw score of standard error of hit reaction time: att_hrtse_raw_0: assessed within one year of childbirth (>0 year and <1 year) att_hrtse_raw_1: assessed when the child was aged between ≥ 1 year and < 2 years … att_hrtse_raw_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| att_age_ | integer | Exact age of the child (in years) when attentional function was recorded for att_raw_0, att_raw_1, etc. |
| att_instr_ | integer | Cohort-specific instrument used to measure the attentional function for att_raw_0, att_raw_1, etc. |
| att_eval_ | decimal | Who the test was administered/answered by for att_raw_0, att_raw_1, etc. |
| att_om_pc_ | decimal | Attentional function, percentiles of att_om_pro_0, att_pro_om_1, etc. |
| att_com_pc_ | decimal | Attentional function, percentiles of att_com_pro_0, att_com_pro_1, etc. |
| att_hrt_pc_ | decimal | Attentional function, percentiles of att_hrt_pro_0, att_hrt_pro_1, etc. |
| att_hrtse_pc_ | decimal | Attentional function, standardized score of att_hrtse_pro_0, att_hrtse_pro_1, etc. |
| att_om_std_ | decimal | Attentional function, standardized score of att_om_pro_0, att_om_pro_1, etc. |
| att_com_std_ | decimal | Attentional function, standardized score of att_com_pro_0, att_com_pro_1, etc. |
| att_hrt_std_ | decimal | Attentional function, standardized score of att_hrt_pro_0, att_hrt_pro_1, etc. |
| att_hrtse_std_ | integer | Attentional function, standardized score of att_hrtse_pro_0, att_hrtse_pro_1, etc. |
| edR_ | decimal | Repeated measures of offspring eating disorder diagnosis: |
| edR_age_ | integer | Exact age at eating disorder onset for edR_10, edR_11, etc. |
| edR_eval_ | integer | How was the medical diagnosis reported for edR_10, edR_11, etc assessed. |
| anR_ | decimal | Repeated measures of offspring anorexia nervosa diagnosis: |
| anR_age_ | integer | Exact age at anorexia nervosa onset for anR_10, anR_11, etc. |
| anR_eval_ | integer | How was the medical diagnosis reported for anR_10, anR_11, etc assessed. |
| bnR_ | decimal | Repeated measures of offspring bulimia nervosa diagnosis: |
| bnR_age_ | integer | Exact age at bulimia nervosa onset for bnR_10, bnR_11, etc. |
| bnR_eval_ | integer | How was the medical diagnosis reported for bnR_10, bnR_11, etc assessed. |
| bedR_ | decimal | Repeated measures of offspring binge eating disorder diagnosis: |
| bedR_age_ | integer | Exact age at binge eating disorder onset for bedR_10, bedR_11, etc. |
| bedR_eval_ | integer | How was the medical diagnosis reported for bedR_10, bedR_11, etc assessed. |
| aggr_wave_ | integer | Which wave of aggressive behavior measurement was recorded? From 1 to the total number of measurement in the cohort |
| att_wave_ | integer | Which wave of attentional function measurement was recorded? From 1 to the total number of measurement in the cohort |
| edR_wave_ | integer | Which wave of offspring eating disorder diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| anR_wave_ | integer | Which wave of offspring anorexia nervosa diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| bnR_wave_ | integer | Which wave of bulimia nervosa diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| bedR_wave_ | integer | Which wave of binge eating disorder diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| int_wave_ | integer | Which wave of internalizing symptoms measurement was recorded? From 1 to the total number of measurement in the cohort |
| ext_wave_ | integer | Which wave of externalizing symptoms measurement was recorded? From 1 to the total number of measurement in the cohort |
| adhd_wave_ | integer | Which wave of adhd scale measurement was recorded? From 1 to the total number of measurement in the cohort |
| adhdR_wave_ | integer | Which wave of ADHD diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| asd_wave_ | integer | Which wave of ASD measurement was recorded? From 1 to the total number of measurement in the cohort |
| asdR_wave_ | integer | Which wave of ASD diagnosis was recorded? From 1 to the total number of measurement in the cohort |
| gm_wave_ | integer | Which wave of gross motor measurement was recorded? From 1 to the total number of measurement in the cohort |
| fm_wave_ | integer | Which wave of fine motor measurement was recorded? From 1 to the total number of measurement in the cohort |
| nvi_wave_ | integer | Which wave of non-verbal intelligence measurement was recorded? From 1 to the total number of measurement in the cohort |
| wm_wave_ | integer | Which wave of working memory measurement was recorded? From 1 to the total number of measurement in the cohort |
| lan_wave_ | decimal | Which wave of language measurement was recorded? From 1 to the total number of measurement in the cohort |
| crae_ | decimal | Repeated measures of child‘s central retinal arterial equivalent (CRAE) (mean value from right and left fundus): rmccrae_: assessed within one year of childbirth (>0 year and <1 year) rmccrae_1: assessed when the child was aged between ≥ 1 year and < 2 years … rmccrae_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| crve_ | decimal | Repeated measures of child‘s central retinal venular equivalent (CRVE) (mean value from right and left fundus): rmccrve_: assessed within one year of childbirth (>0 year and <1 year) rmccrve_1: assessed when the child was aged between ≥ 1 year and < 2 years … rmccrve_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| avr_ | decimal | Repeated measures of child‘s arteriole-to-venule ratio (AVR) (mean value from right and left fundus): rmcavr_ assessed within one year of childbirth (>0 year and <1 year) rmcavr_1: assessed when the child was aged between ≥ 1 year and < 2 years … rmcavr_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| tortuosity_ | decimal | Repeated measures of child‘s tortuosity index (mean value from right and left fundus): rmcavr_ assessed within one year of childbirth (>0 year and <1 year) rmcavr_1: assessed when the child was aged between ≥ 1 year and < 2 years … rmcavr_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| rmc_age_ | decimal | Exact age of the child (in years) when arteriole-to-venule ratio (AVR) vas measured for rmcavr_, rmcavr_1, etc. |
| rmcmes_ | integer | Method used to measure retinal microcirculation parameters (i.e. CRAE, CRVE, and AVR) for each measurement (e.g. rmcrve_, rmcrve_1, rmcrve_2 etc.) |
| mets_ idefics_ | integer | Repeated classification of pediatric MetS based on the IDEFICS definition (pediatric MetS at a monitoring level when the values of at least three of the components of MetS exceed the 90th percentile) |
| mets_score_idefics_ | decimal | Continuous pediatric MetS score combining all components based on the IDEFICS z-scores |
| cvd_risk_score_ | decimal | Continuous pediatric CVD score combining three MetS components (not including the HOMA-IR/glucose component) based on the IDEFICS z-scores |
| wc_idefics_perc_ | decimal | Repeated WC percentiles based on the IDEFICS study reference values |
| sbp_idefics_perc_ | decimal | Repeated SBP percentiles based on the IDEFICS study reference values |
| dbp_idefics_perc_ | decimal | Repeated DBP percentiles based on the IDEFICS study reference values |
| triglyceride_idefics_perc_ | decimal | Repeated triglycerides percentiles based on the IDEFICS study reference values |
| hdl_idefics_perc_ | decimal | Repeated HDL-C percentiles based on the IDEFICS study reference values |
| homa_ir_ | decimal | Repeated HOMA-IR values |
| homa_ir_idefics_perc_ | decimal | Repeated HOMA-IR percentiles based on the IDEFICS study reference values |
| glucose_idefics_perc_ | decimal | Repeated glucose percentiles based on the IDEFICS study reference values |
| mets_age_ | decimal | Exact age of the child (in years) when the MetS components were measured. |
| alt_ | decimal | Repeated measures of child’s alanine aminotrasferase concentrations |
| ast_ | decimal | Repeated measures of child’s aspartate aminotrasferase concentrations |
| ggt_ | decimal | Repeated measures of child’s gamma-glutamyl transferase concentrations |
| ck18_ | decimal | Repeated measures of child’s Cytokeratin-18 concentrations |
| liver_age_ | decimal | Exact age of the child (in years) when liver enzymes were measured etc. |
| mrivafm_ | decimal | Repeated measures of child‘s visceral abdominal fat mass measured using MRI: mrivafm_: assessed within one year of childbirth (>0 year and <1 year) mrivafm_1: assessed when the child was aged between ≥ 1 year and < 2 years … mrivafm_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| mrihff_ | decimal | Repeated measures of child’s mean hepatic fat-fraction  measured using MRI: mrihff_: assessed within one year of childbirth (>0 year and <1 year) mrihff_1: assessed when the child was aged between ≥ 1 year and < 2 years … mrihff_17: assessed when the child was aged between ≥ 17 years and < 18 years |
| mri_age_ | decimal | Exact age of the child (in years) when abdominal MRI (for visceral abdominal fat and hepatic fat-fraction) was measured e.g. for mrihff_, mrihff_1, etc. |
| rhinitis_sx_ever_ | integer | Ever (lifetime) problem with sneezing, or a runny, or blocked nose  when the child DID NOT have a cold or the flu and was aged 0-1 year / 1-2 years / … /17-18 years |
| rhinitis_sx_12m_ | integer | Problem with sneezing, or a runny, or blocked nose  when the child DID NOT have a cold or the flu, in the past 12 months, and was aged 0-1 year / 1-2 years / … /17-18 years |
| rhinitis_ | integer | Hay fever / rhinitis ever, reported at 0-1 yr / 1-2 yrs / …/17-18 years |
| n_wheezing_12m_ | integer | Number of wheezing attacks in the past 12 months, when the child was aged 0-1 year / 1-2 years / … /17-18 years |
| rhinitis_ttt_12m_ | integer | Did your child take any medicines against nasal allergy/hay fever/allergic rhinitis, when the child was aged 0-1 year / 1-2 years / … /17-18 years |

### Tables

- 1_0_non_rep
- 1_0_monthly_rep
- 1_0_trimester_rep
- 1_0_yearly_rep
