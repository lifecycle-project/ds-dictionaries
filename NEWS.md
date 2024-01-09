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

Load for example the `lifecycle_core_2_6` dictionary.

``` r
data(lifecycle_core_2_6)
```

## Release: lifecycle_core_2_6

### Usage

``` r
library(dsDictionaries)`
`data(lifecycle_core_2_6)
```

### Changes

| name                    | valueType | label                                                                                      |
|:------------------------|:----------|:-------------------------------------------------------------------------------------------|
| preg_dep                | integer   | Maternal depression during pregnancy (based on questionnaire, interview or medical record) |
| preg_dep_raw_continuous | decimal   | Maternal depression during pregnancy, raw score of questionnaire                           |
| preg_dep_std_continuous | decimal   | Maternal depression during pregnancy, standardised score of questionnaire                  |

: lifecycle_core_2_6 changes

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
