# dsDictionaries (development version)

Install devtools:

``` r
install.packages("devtools")
```

Load devtools and install ds-dictionaries

``` r
library(devtools)
devtools::install_github("lifecycle-project/ds-dictionaries")
```

Load `dsDictionaries`.

``` r
library(dsDictionaries)
```

Load for example the `lifecycle_core_3_0` dictionary.

``` r
data(lifecycle_core_3_0)
```

## Release: athlete_chemicals_2_0

Athlete chemicals 2_0 dictionary is build from athlete chemicals  1_2 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(athlete_chemicals_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.
### Usage

``` r
library(dsDictionaries)
data(athlete_chemicals_2_0)
```

### Changes

No new or changed variables compared to athlete chemicals 1_2, only the format of the dictionary has changed.

## Release: athlete_outcome_1_3

### Usage

``` r
library(dsDictionaries)
data(athlete_outcome_1_3)
```

### Changes

| name                         | valueType | label                                                                                                                             |
|:-----------------------------|:----------|:----------------------------------------------------------------------------------------------------------------------------------|
| mets_score_partial_idefics\_ | integer   | Partial definition of MetS. To have a definition of MetS also in those cohorts without information on fasting glucose or HOMA-IR. |

: athlete_outcome_1_3 changes

## Release: athlete_urban_1_3

### Usage

``` r
library(dsDictionaries)
data(athlete_urban_1_3)
```

### Changes

| name                      | valueType | label                                                                                                                |
|:--------------------------|:----------|:---------------------------------------------------------------------------------------------------------------------|
| urb_deg_birth             | integer   | Urban degree at birth as classified by GHS-SMOD                                                                      |
| ath_fefoodenv300_preg     | decimal   | number of facilities related to food divided by the area of the 300 meters buffer at pregnancy                       |
| ath_fefoodenv300_0        | decimal   | number of facilities related to food divided by the area of the 300 meters buffer at birth                           |
| ath_fealcohol300_preg     | decimal   | number of facilities related to alcohol establishments divided by the area of the 300 meters buffer at pregnancy     |
| ath_fealcohol300_0        | decimal   | number of facilities related to alcohol establishments divided by the area of the 300 meters buffer at birth         |
| ath_febar300_preg         | decimal   | number of facilities related to bar establishments divided by the area of the 300 meters buffer at pregnancy         |
| ath_febar300_0            | decimal   | number of facilities related to bar establishments divided by the area of the 300 meters buffer at birth             |
| ath_febeverages300_preg   | decimal   | number of facilities related to beverages establishments divided by the area of the 300 meters buffer at pregnancy   |
| ath_febeverages300_0      | decimal   | number of facilities related to beverages establishments divided by the area of the 300 meters buffer at birth       |
| ath_febiergarten300_preg  | decimal   | number of facilities related to biergarten establishments divided by the area of the 300 meters buffer at pregnancy  |
| ath_febiergarten300_0     | decimal   | number of facilities related to biergarten establishments divided by the area of the 300 meters buffer at birth      |
| ath_fecafe300_preg        | decimal   | number of facilities related to cafe establishments divided by the area of the 300 meters buffer at pregnancy        |
| ath_fecafe300_0           | decimal   | number of facilities related to cafe establishments divided by the area of the 300 meters buffer at birth            |
| ath_feconvenience300_preg | decimal   | number of facilities related to convenience divided by the area of the 300 meters buffer at pregnancy                |
| ath_feconvenience300_0    | decimal   | number of facilities related to convenience establishments divided by the area of the 300 meters buffer at birth     |
| ath_fefastfood300_preg    | decimal   | number of facilities related to fast food establishments divided by the area of the 300 meters buffer at pregnancy   |
| ath_fefastfood300_0       | decimal   | number of facilities related to fast food establishments divided by the area of the 300 meters buffer at birth       |
| ath_fepub300_preg         | decimal   | number of facilities related to pub establishments divided by the area of the 300 meters buffer at pregnancy         |
| ath_fepub300_0            | decimal   | number of facilities related to pub establishments divided by the area of the 300 meters buffer at birth             |
| ath_ferestaurant300_preg  | decimal   | number of facilities related to restaurant establishments divided by the area of the 300 meters buffer at pregnancy  |
| ath_ferestaurant300_0     | decimal   | number of facilities related to restaurant establishments divided by the area of the 300 meters buffer at birth      |
| ath_fesupermarket300_preg | decimal   | number of facilities related to supermarket establishments divided by the area of the 300 meters buffer at pregnancy |
| ath_fesupermarket300_0    | decimal   | number of facilities related to supermarket establishments divided by the area of the 300 meters buffer at birth     |
| ath_fefoodenv800_preg     | decimal   | number of facilities related to food divided by the area of the 800 meters buffer at pregnancy                       |
| ath_fefoodenv800_0        | decimal   | number of facilities related to food divided by the area of the 800 meters buffer at birth                           |
| ath_fealcohol800_preg     | decimal   | number of facilities related to alcohol establishments divided by the area of the 800 meters buffer at pregnancy     |
| ath_fealcohol800_0        | decimal   | number of facilities related to alcohol establishments divided by the area of the 800 meters buffer at birth         |
| ath_febar800_preg         | decimal   | number of facilities related to bar establishments divided by the area of the 800 meters buffer at pregnancy         |
| ath_febar800_0            | decimal   | number of facilities related to bar establishments divided by the area of the 800 meters buffer at birth             |
| ath_febeverages800_preg   | decimal   | number of facilities related to beverage establishments divided by the area of the 800 meters buffer at pregnancy    |
| ath_febeverages800_0      | decimal   | number of facilities related to beverages establishments divided by the area of the 800 meters buffer at birth       |
| ath_febiergarten800_preg  | decimal   | number of facilities related to biergarten establishments divided by the area of the 800 meters buffer at pregnancy  |
| ath_febiergarten800_0     | decimal   | number of facilities related to biergarten establishments divided by the area of the 800 meters buffer at birth      |
| ath_fecafe800_preg        | decimal   | number of facilities related to cafe establishments divided by the area of the 800 meters buffer at pregnancy        |
| ath_fecafe800_0           | decimal   | number of facilities related to cafe establishments divided by the area of the 800 meters buffer at birth            |
| ath_feconvenience800_preg | decimal   | number of facilities related to convenience establishments divided by the area of the 800 meters buffer at pregnancy |
| ath_feconvenience800_0    | decimal   | number of facilities related to convenience establishments divided by the area of the 800 meters buffer at birth     |
| ath_fefastfood800_preg    | decimal   | number of facilities related to fast food establishments divided by the area of the 800 meters buffer at pregnancy   |
| ath_fefastfood800_0       | decimal   | number of facilities related to fast food establishments divided by the area of the 800 meters buffer at birth       |
| ath_fepub800_preg         | decimal   | number of facilities related to pub establishments divided by the area of the 800 meters buffer at pregnancy         |
| ath_fepub800_0            | decimal   | number of facilities related to pub establishments divided by the area of the 800 meters buffer at birth             |
| ath_ferestaurant800_preg  | decimal   | number of facilities related to restaurant establishments divided by the area of the 800 meters buffer at pregnancy  |
| ath_ferestaurant800_0     | decimal   | number of facilities related to restaurant establishments divided by the area of the 800 meters buffer at birth      |
| ath_fesupermarket800_preg | decimal   | number of facilities related to supermarket establishments divided by the area of the 800 meters buffer at pregnancy |
| ath_fesupermarket800_0    | decimal   | number of facilities related to supermarket establishments divided by the area of the 800 meters buffer at birth     |
| ath_fefoodenv300_t        | decimal   | number of facilities related to food divided by the area of the 300 meters buffer at trimester                       |
| ath_fealcohol300_t        | decimal   | number of facilities related to alcohol establishments divided by the area of the 300 meters buffer at trimester     |
| ath_febar300_t            | decimal   | number of facilities related to bar establishments divided by the area of the 300 meters buffer at trimester         |
| ath_febeverages300_t      | decimal   | number of facilities related to beverages establishments divided by the area of the 300 meters buffer at trimester   |
| ath_febiergarten300_t     | decimal   | number of facilities related to biergarten establishments divided by the area of the 300 meters buffer at trimester  |
| ath_fecafe300_t           | decimal   | number of facilities related to cafe establishments divided by the area of the 300 meters buffer at trimester        |
| ath_feconvenience300_t    | decimal   | number of facilities related to convenience establishments divided by the area of the 300 meters buffer at trimester |
| ath_fefastfood300_t       | decimal   | number of facilities related to fast food establishments divided by the area of the 300 meters buffer at trimester   |
| ath_fepub300_t            | decimal   | number of facilities related to pub establishments divided by the area of the 300 meters buffer at trimester         |
| ath_ferestaurant300_t     | decimal   | number of facilities related to restaurant establishments divided by the area of the 300 meters buffer at trimester  |
| ath_fesupermarket300_t    | decimal   | number of facilities related to supermarket establishments divided by the area of the 300 meters buffer at trimester |
| ath_fefoodenv800_t        | decimal   | number of facilities related to food divided by the area of the 800 meters buffer at trimester                       |
| ath_fealcohol800_t        | decimal   | number of facilities related to alcohol establishments divided by the area of the 800 meters buffer at trimester     |
| ath_febar800_t            | decimal   | number of facilities related to bar establishments divided by the area of the 800 meters buffer at trimester         |
| ath_febeverages800_t      | decimal   | number of facilities related to beverages establishments divided by the area of the 800 meters buffer at trimester   |
| ath_febiergarten800_t     | decimal   | number of facilities related to biergarten establishments divided by the area of the 800 meters buffer at trimester  |
| ath_fecafe800_t           | decimal   | number of facilities related to cafe establishments divided by the area of the 800 meters buffer at trimester        |
| ath_feconvenience800_t    | decimal   | number of facilities related to convenience establishments divided by the area of the 800 meters buffer at trimester |
| ath_fefastfood800_t       | decimal   | number of facilities related to fast food establishments divided by the area of the 800 meters buffer at trimester   |
| ath_fepub800_t            | decimal   | number of facilities related to pub establishments divided by the area of the 800 meters buffer at trimester         |
| ath_ferestaurant800_t     | decimal   | number of facilities related to restaurant establishments divided by the area of the 800 meters buffer at trimester  |
| ath_fesupermarket800_t    | decimal   | number of facilities related to supermarket establishments divided by the area of the 800 meters buffer at trimester |
| ath_blueyn300\_           | integer   | is there a blue space \> 5,000 m2 in a distance of 300 m? at \# year                                                 |
| ath_greenyn300\_          | integer   | is there a green space \> 5,000 m2 in a distance of 300 m? at \# year                                                |
| ath_fefoodenv300\_        | decimal   | number of facilities related to food divided by the area of the 300 meters buffer at \# year                         |
| ath_fealcohol300\_        | decimal   | number of facilities related to alcohol establishments divided by the area of the 300 meters buffer at \# year       |
| ath_febar300\_            | decimal   | number of facilities related to bar establishments divided by the area of the 300 meters buffer at \# year           |
| ath_febeverages300\_      | decimal   | number of facilities related to beverages establishments divided by the area of the 300 meters buffer at \# year     |
| ath_febiergarten300\_     | decimal   | number of facilities related to biergarten establishments divided by the area of the 300 meters buffer at \# year    |
| ath_fecafe300\_           | decimal   | number of facilities related to cafe establishments divided by the area of the 300 meters buffer at \# year          |
| ath_feconvenience300\_    | decimal   | number of facilities related to convenience establishments divided by the area of the 300 meters buffer at \# year   |
| ath_fefastfood300\_       | decimal   | number of facilities related to fast food establishments divided by the area of the 300 meters buffer at \# year     |
| ath_fepub300\_            | decimal   | number of facilities related to pub establishments divided by the area of the 300 meters buffer at \# year           |
| ath_ferestaurant300\_     | decimal   | number of facilities related to restaurant establishments divided by the area of the 300 meters buffer at \# year    |
| ath_fesupermarket300\_    | decimal   | number of facilities related to supermarket establishments divided by the area of the 300 meters buffer at \# year   |
| ath_fefoodenv800\_        | decimal   | number of facilities related to food divided by the area of the 800 meters buffer at \# year                         |
| ath_fealcohol800\_        | decimal   | number of facilities related to alcohol establishments divided by the area of the 800 meters buffer at \# year       |
| ath_febar800\_            | decimal   | number of facilities related to bar establishments divided by the area of the 800 meters buffer at \# year           |
| ath_febeverages800\_      | decimal   | number of facilities related to beverages establishments divided by the area of the 800 meters buffer at \# year     |
| ath_febiergarten800\_     | decimal   | number of facilities related to biergarten establishments divided by the area of the 800 meters buffer at \# year    |
| ath_fecafe800\_           | decimal   | number of facilities related to cafe establishments divided by the area of the 800 meters buffer at \# year          |
| ath_feconvenience800\_    | decimal   | number of facilities related to convenience establishments divided by the area of the 800 meters buffer at \# year   |
| ath_fefastfood800\_       | decimal   | number of facilities related to fast food establishments divided by the area of the 800 meters buffer at \# year     |
| ath_fepub800\_            | decimal   | number of facilities related to pub establishments divided by the area of the 800 meters buffer at \# year           |
| ath_ferestaurant800\_     | decimal   | number of facilities related to restaurant establishments divided by the area of the 800 meters buffer at \# year    |
| ath_fesupermarket800\_    | decimal   | number of facilities related to supermarket establishments divided by the area of the 800 meters buffer at \# year   |

: athlete_urban_1_3 changes

## Release: lifecycle_core_3_0

LifeCycle core 3_0 dictionary is build from LifeCycle core 2_6 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(lifecyle_core_3_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)`
`data(lifecycle_core_3_0)
```

### Changes

No new or changed variables compared to lifeCycle core 2_6, only the format of the dictionary has changed.

## Release: lifecycle_outcome_1_6

### Usage

``` r
library(dsDictionaries)
data(lifecycle_outcome_1_6)
```

### Changes

| name                       | valueType | label                                               |
|:---------------------------|:----------|:----------------------------------------------------|
| matsmo_score\_             | integer   | Calculated smoking score using DNAsmokeR            |
| matsmo_age_at_dna_methyl\_ | integer   | Age of child when DNA sample was collected in years |

: lifecycle_outcome_1_6 changes

## Release: athlete_chemicals_1_2

### Usage

``` r
library(dsDictionaries)
data(athlete_chemicals_1_2)
```

### Changes

| name                         | valueType | label                                                                                                                                                                                                                                                                                                                                                                                      |
|:-----------------------------|:----------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| cohort_id                    | integer   | Unique identifier for the cohort                                                                                                                                                                                                                                                                                                                                                           |
| mother_id                    | text      | Unique identifier number for the mother                                                                                                                                                                                                                                                                                                                                                    |
| ga_us_t                      | decimal   | Gestational age when ultrasound in X trimester was performed                                                                                                                                                                                                                                                                                                                               |
| fetus_biparietal_diam_t      | decimal   | Biparietal diameter of the fetus in X trimester                                                                                                                                                                                                                                                                                                                                            |
| fetus_head_circum_t          | decimal   | Circumference of the head of the fetus in X trimester                                                                                                                                                                                                                                                                                                                                      |
| fetus_abd_circum_t           | decimal   | Abdominal circumference of the fetus in X trimester                                                                                                                                                                                                                                                                                                                                        |
| fetus_femur_length_t         | decimal   | Femur length of the fetus in X trimester                                                                                                                                                                                                                                                                                                                                                   |
| fetus_weight_t               | decimal   | Estimated weight of the fetus in X trimester                                                                                                                                                                                                                                                                                                                                               |
| biparietal_diam_sdsWHO_t     | decimal   | Gestational age-adjusted biparietal diameter SDS in X trimester based on overall WHO-based reference growth curves                                                                                                                                                                                                                                                                         |
| head_circum_sdsWHO_t         | decimal   | Gestational age-adjusted head circumference SDS in X trimester based on overall WHO-based reference growth curves                                                                                                                                                                                                                                                                          |
| abd_circum_sdsWHO_t          | decimal   | Gestational age-adjusted abdominal circumference SDS in X trimester based on overall WHO-based reference growth curves                                                                                                                                                                                                                                                                     |
| femur_length_sdsWHO_t        | decimal   | Gestational age-adjusted femur length SDS in X trimester based on overall WHO-based reference growth curves                                                                                                                                                                                                                                                                                |
| weight_sdsWHO_t              | decimal   | Gestational age- and sex- adjusted estimated fetal weight SDS in X trimester based on overall WHO-based reference growth curves                                                                                                                                                                                                                                                            |
| biparietal_diam_sdsWHOEUR_t  | decimal   | Gestational age- and sex-adjusted biparietal diameter SDS in X trimester based on European WHO-based reference growth curves                                                                                                                                                                                                                                                               |
| head_circum_sdsWHOEUR_t      | decimal   | Gestational age- and sex-adjusted head circumference SDS in X trimester based on European WHO-based reference growth curves                                                                                                                                                                                                                                                                |
| abd_circum_sdsWHOEUR_t       | decimal   | Gestational age- and sex-adjusted abdominal circumference SDS in X trimester based on European WHO-based reference growth curves                                                                                                                                                                                                                                                           |
| femur_length_sdsWHOEUR_t     | decimal   | Gestational age- and sex-adjusted femur length SDS in X trimester based on European WHO-based reference growth curves                                                                                                                                                                                                                                                                      |
| weight_sdsWHOEUR_t           | decimal   | Gestational age- and sex- adjusted estimated fetal weight SDS in X trimester based on European WHO-based reference growth curves                                                                                                                                                                                                                                                           |
| pi_uma_t                     | decimal   | Pulsatility index umbilical artery in X trimester                                                                                                                                                                                                                                                                                                                                          |
| pi_uta_t                     | decimal   | Pulsatility index uterine artery in X trimester                                                                                                                                                                                                                                                                                                                                            |
| age_years                    | decimal   | Age of child in years                                                                                                                                                                                                                                                                                                                                                                      |
| aggr_raw\_                   | decimal   | Repeated measures of aggressive behavior, total raw score: aggr_raw_0: assessed within one year of childbirth (\>0 year and \<1 year) aggr_raw_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … aggr_raw_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                                                    |
| aggr_age\_                   | decimal   | Exact age of the child (in years) when aggressive behavior was recorded for aggr_raw_0, aggr_raw_1, etc.                                                                                                                                                                                                                                                                                   |
| aggr_instr\_                 | integer   | Cohort-specific instrument used to measure the aggressive behavior for aggr_raw_0, aggr_raw_1, etc.                                                                                                                                                                                                                                                                                        |
| aggr_eval\_                  | decimal   | Who the test was administered/answered by for aggr_raw_0, aggr_raw_1, etc.                                                                                                                                                                                                                                                                                                                 |
| aggr_avg\_                   | decimal   | Average of available items comprising the total raw score of aggr_raw_0, aggr_raw_1, etc.                                                                                                                                                                                                                                                                                                  |
| aggr_pro\_                   | decimal   | Total aggressive behavior score after prorating aggr_raw_0, aggr_raw1, etc.                                                                                                                                                                                                                                                                                                                |
| aggr_pc\_                    | decimal   | Aggressive behavior, percentiles of aggr_pro_0, aggr_pro_1, etc.                                                                                                                                                                                                                                                                                                                           |
| att_om_raw\_                 | decimal   | Repeated measures of attentional function, raw score of number of omissions: att_om_raw_0: assessed within one year of childbirth (\>0 year and \<1 year) att_om_raw_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … att_om_raw_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                            |
| att_com_raw\_                | decimal   | Repeated measures of attentional function, raw score of number of commissions: att_com_raw_0: assessed within one year of childbirth (\>0 year and \<1 year) att_com_raw_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … att_com_raw_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                       |
| att_hrt_raw\_                | decimal   | Repeated measures of attentional function, raw score of hit reaction time: att_hrt_raw_0: assessed within one year of childbirth (\>0 year and \<1 year) att_hrt_raw_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … att_hrt_raw_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                           |
| att_hrtse_raw\_              | decimal   | Repeated measures of attentional function, raw score of standard error of hit reaction time: att_hrtse_raw_0: assessed within one year of childbirth (\>0 year and \<1 year) att_hrtse_raw_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … att_hrtse_raw_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years   |
| att_age\_                    | decimal   | Exact age of the child (in years) when attentional function was recorded for att_raw_0, att_raw_1, etc.                                                                                                                                                                                                                                                                                    |
| att_instr\_                  | integer   | Cohort-specific instrument used to measure the attentional function for att_raw_0, att_raw_1, etc.                                                                                                                                                                                                                                                                                         |
| att_eval\_                   | decimal   | Who the test was administered/answered by for att_raw_0, att_raw_1, etc.                                                                                                                                                                                                                                                                                                                   |
| att_om_pc\_                  | decimal   | Attentional function, percentiles of att_om_pro_0, att_pro_om_1, etc.                                                                                                                                                                                                                                                                                                                      |
| att_com_pc\_                 | decimal   | Attentional function, percentiles of att_com_pro_0, att_com_pro_1, etc.                                                                                                                                                                                                                                                                                                                    |
| att_hrt_pc\_                 | decimal   | Attentional function, percentiles of att_hrt_pro_0, att_hrt_pro_1, etc.                                                                                                                                                                                                                                                                                                                    |
| att_hrtse_pc\_               | decimal   | Attentional function, standardized score of att_hrtse_pro_0, att_hrtse_pro_1, etc.                                                                                                                                                                                                                                                                                                         |
| att_om_std\_                 | decimal   | Attentional function, standardized score of att_om_pro_0, att_om_pro_1, etc.                                                                                                                                                                                                                                                                                                               |
| att_com_std\_                | decimal   | Attentional function, standardized score of att_com_pro_0, att_com_pro_1, etc.                                                                                                                                                                                                                                                                                                             |
| att_hrt_std\_                | decimal   | Attentional function, standardized score of att_hrt_pro_0, att_hrt_pro_1, etc.                                                                                                                                                                                                                                                                                                             |
| att_hrtse_std\_              | integer   | Attentional function, standardized score of att_hrtse_pro_0, att_hrtse_pro_1, etc.                                                                                                                                                                                                                                                                                                         |
| edR\_                        | decimal   | Repeated measures of offspring eating disorder diagnosis:                                                                                                                                                                                                                                                                                                                                  |
| edR_age\_                    | decimal   | Exact age at eating disorder onset for edR_10, edR_11, etc.                                                                                                                                                                                                                                                                                                                                |
| edR_eval\_                   | integer   | How was the medical diagnosis reported for edR_10, edR_11, etc assessed.                                                                                                                                                                                                                                                                                                                   |
| anR\_                        | decimal   | Repeated measures of offspring anorexia nervosa diagnosis:                                                                                                                                                                                                                                                                                                                                 |
| anR_age\_                    | decimal   | Exact age at anorexia nervosa onset for anR_10, anR_11, etc.                                                                                                                                                                                                                                                                                                                               |
| anR_eval\_                   | integer   | How was the medical diagnosis reported for anR_10, anR_11, etc assessed.                                                                                                                                                                                                                                                                                                                   |
| bnR\_                        | decimal   | Repeated measures of offspring bulimia nervosa diagnosis:                                                                                                                                                                                                                                                                                                                                  |
| bnR_age\_                    | decimal   | Exact age at bulimia nervosa onset for bnR_10, bnR_11, etc.                                                                                                                                                                                                                                                                                                                                |
| bnR_eval\_                   | integer   | How was the medical diagnosis reported for bnR_10, bnR_11, etc assessed.                                                                                                                                                                                                                                                                                                                   |
| bedR\_                       | decimal   | Repeated measures of offspring binge eating disorder diagnosis:                                                                                                                                                                                                                                                                                                                            |
| bedR_age\_                   | decimal   | Exact age at binge eating disorder onset for bedR_10, bedR_11, etc.                                                                                                                                                                                                                                                                                                                        |
| bedR_eval\_                  | integer   | How was the medical diagnosis reported for bedR_10, bedR_11, etc assessed.                                                                                                                                                                                                                                                                                                                 |
| aggr_wave\_                  | integer   | Which wave of aggressive behavior measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                        |
| att_wave\_                   | integer   | Which wave of attentional function measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                       |
| edR_wave\_                   | integer   | Which wave of offspring eating disorder diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                    |
| anR_wave\_                   | integer   | Which wave of offspring anorexia nervosa diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                   |
| bnR_wave\_                   | integer   | Which wave of bulimia nervosa diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                              |
| bedR_wave\_                  | integer   | Which wave of binge eating disorder diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                        |
| int_wave\_                   | integer   | Which wave of internalizing symptoms measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                     |
| ext_wave\_                   | integer   | Which wave of externalizing symptoms measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                     |
| adhd_wave\_                  | integer   | Which wave of adhd scale measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                 |
| adhdR_wave\_                 | integer   | Which wave of ADHD diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                         |
| asd_wave\_                   | integer   | Which wave of ASD measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                        |
| asdR_wave\_                  | integer   | Which wave of ASD diagnosis was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                          |
| gm_wave\_                    | integer   | Which wave of gross motor measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                |
| fm_wave\_                    | integer   | Which wave of fine motor measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                 |
| nvi_wave\_                   | integer   | Which wave of non-verbal intelligence measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                    |
| wm_wave\_                    | integer   | Which wave of working memory measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                             |
| lan_wave\_                   | decimal   | Which wave of language measurement was recorded? From 1 to the total number of measurement in the cohort                                                                                                                                                                                                                                                                                   |
| crae\_                       | decimal   | Repeated measures of child‘s central retinal arterial equivalent (CRAE) (mean value from right and left fundus): rmccrae\_: assessed within one year of childbirth (\>0 year and \<1 year) rmccrae_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … rmccrae_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years |
| crve\_                       | decimal   | Repeated measures of child‘s central retinal venular equivalent (CRVE) (mean value from right and left fundus): rmccrve\_: assessed within one year of childbirth (\>0 year and \<1 year) rmccrve_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … rmccrve_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years  |
| avr\_                        | decimal   | Repeated measures of child‘s arteriole-to-venule ratio (AVR) (mean value from right and left fundus): rmcavr\_ assessed within one year of childbirth (\>0 year and \<1 year) rmcavr_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … rmcavr_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                |
| tortuosity\_                 | decimal   | Repeated measures of child‘s tortuosity index (mean value from right and left fundus): rmcavr\_ assessed within one year of childbirth (\>0 year and \<1 year) rmcavr_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … rmcavr_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                               |
| rmc_age\_                    | decimal   | Exact age of the child (in years) when arteriole-to-venule ratio (AVR) vas measured for rmcavr\_, rmcavr_1, etc.                                                                                                                                                                                                                                                                           |
| rmcmes\_                     | integer   | Method used to measure retinal microcirculation parameters (i.e. CRAE, CRVE, and AVR) for each measurement (e.g. rmcrve\_, rmcrve_1, rmcrve_2 etc.)                                                                                                                                                                                                                                        |
| mets_idefics\_               | integer   | Repeated classification of pediatric MetS based on the IDEFICS definition (pediatric MetS at a monitoring level when the values of at least three of the components of MetS exceed the 90th percentile)                                                                                                                                                                                    |
| mets_score_idefics\_         | decimal   | Continuous pediatric MetS score combining all components based on the IDEFICS z-scores                                                                                                                                                                                                                                                                                                     |
| cvd_risk_score\_             | decimal   | Continuous pediatric CVD score combining three MetS components (not including the HOMA-IR/glucose component) based on the IDEFICS z-scores                                                                                                                                                                                                                                                 |
| wc_idefics_perc\_            | decimal   | Repeated WC percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                        |
| sbp_idefics_perc\_           | decimal   | Repeated SBP percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                       |
| dbp_idefics_perc\_           | decimal   | Repeated DBP percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                       |
| triglyceride_idefics_perc\_  | decimal   | Repeated triglycerides percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                             |
| hdl_idefics_perc\_           | decimal   | Repeated HDL-C percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                     |
| homa_ir\_                    | decimal   | Repeated HOMA-IR values                                                                                                                                                                                                                                                                                                                                                                    |
| homa_ir_idefics_perc\_       | decimal   | Repeated HOMA-IR percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                   |
| glucose_idefics_perc\_       | decimal   | Repeated glucose percentiles based on the IDEFICS study reference values                                                                                                                                                                                                                                                                                                                   |
| mets_age\_                   | decimal   | Exact age of the child (in years) when the MetS components were measured.                                                                                                                                                                                                                                                                                                                  |
| alt\_                        | decimal   | Repeated measures of child’s alanine aminotrasferase concentrations                                                                                                                                                                                                                                                                                                                        |
| ast\_                        | decimal   | Repeated measures of child’s aspartate aminotrasferase concentrations                                                                                                                                                                                                                                                                                                                      |
| ggt\_                        | decimal   | Repeated measures of child’s gamma-glutamyl transferase concentrations                                                                                                                                                                                                                                                                                                                     |
| ck18\_                       | decimal   | Repeated measures of child’s Cytokeratin-18 concentrations                                                                                                                                                                                                                                                                                                                                 |
| liver_age\_                  | decimal   | Exact age of the child (in years) when liver enzymes were measured etc.                                                                                                                                                                                                                                                                                                                    |
| mrivafm\_                    | decimal   | Repeated measures of child‘s visceral abdominal fat mass measured using MRI: mrivafm\_: assessed within one year of childbirth (\>0 year and \<1 year) mrivafm_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … mrivafm_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                                     |
| mrihff\_                     | decimal   | Repeated measures of child’s mean hepatic fat-fraction measured using MRI: mrihff\_: assessed within one year of childbirth (\>0 year and \<1 year) mrihff_1: assessed when the child was aged between bigger or equal to 1 year and \< 2 years … mrihff_17: assessed when the child was aged between bigger or equal to 17 years and \< 18 years                                          |
| mri_age\_                    | decimal   | Exact age of the child (in years) when abdominal MRI (for visceral abdominal fat and hepatic fat-fraction) was measured e.g. for mrihff\_, mrihff_1, etc.                                                                                                                                                                                                                                  |
| rhinitis_sx_ever\_           | integer   | Ever (lifetime) problem with sneezing, or a runny, or blocked nose when the child DID NOT have a cold or the flu and was aged 0-1 year / 1-2 years / … /17-18 years                                                                                                                                                                                                                        |
| rhinitis_sx_12m\_            | integer   | Problem with sneezing, or a runny, or blocked nose when the child DID NOT have a cold or the flu, in the past 12 months, and was aged 0-1 year / 1-2 years / … /17-18 years                                                                                                                                                                                                                |
| rhinitis\_                   | integer   | Hay fever / rhinitis ever, reported at 0-1 yr / 1-2 yrs / …/17-18 years                                                                                                                                                                                                                                                                                                                    |
| n_wheezing_12m\_             | integer   | Number of wheezing attacks in the past 12 months, when the child was aged 0-1 year / 1-2 years / … /17-18 years                                                                                                                                                                                                                                                                            |
| rhinitis_ttt_12m\_           | integer   | Did your child take any medicines against nasal allergy/hay fever/allergic rhinitis, when the child was aged 0-1 year / 1-2 years / … /17-18 years                                                                                                                                                                                                                                         |
| mets_score_partial_idefics\_ | integer   | Partial definition of MetS. To have a definition of MetS also in those cohorts without information on fasting glucose or HOMA-IR.                                                                                                                                                                                                                                                          |

: athlete_chemicals_1_2 changes
