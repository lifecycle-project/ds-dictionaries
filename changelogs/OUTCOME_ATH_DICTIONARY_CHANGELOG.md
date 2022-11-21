# Versions of data dictionaries (outcome_ath data)

We define here in what versions of the data dictionaries contains which tables

## 1.0

**dsUpload R-package version >= 4.6.x**

### Content

#### General changes

- *non-repeated variables*
  - Added variables see list below
- *trimester-repeated variables*
  - Added variables see list below

#### Additional variables

- see lists below

*non-repeated variables*

**Added variables**

| Variable        | Type        | Description                                      |
| ----------------| ----------- | --------------------------------------------- |
| row_id          | integer     | Unique identifer for the row in Opal          |
| mother_id       | text        | Unique identifier number for the mother       |
| child_id        | text        | Unique identifier number for the index child  |
| cohort_id       | integer     | Unique identifier for the cohort              |
| CRL_t1          | decimal     | Crown-rump length in 1st trimester            |

*trimester-repeated variables*

**Added variables**

| Variable                      | Type    | Description                                                                                                                         |
| ------------------------------| ------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| row_id                        | integer | Unique identifer for the row in Opal                                                                                                |
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

### Tables

- 1_0_nonrep
- 1_0_trimester_rep
