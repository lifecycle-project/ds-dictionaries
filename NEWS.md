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

# Changes in version 0.0.0.9000

## Release: athlete_chemicals_2_0

Athlete chemicals 2_0 dictionary is build from athlete chemicals  1_2 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(athlete_chemicals_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(athlete_chemicals_2_0)
```

### Changes

No new or changed variables compared to athlete chemicals 1_2, only the format of the dictionary has changed.

## Release: athlete_outcome_2_0

Athlete outcome 2_0 dictionary is build from athlete outcome 1_3 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(athlete_outcome_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(athlete_outcome_2_0)
```

### Changes

No new or changed variables compared to athlete outcome 1_3, only the format of the dictionary has changed.

## Release: athlete_urban_2_0

Athlete urban 2_0 dictionary is build from athlete urban 1_3 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(athlete_urban_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(athlete_urban_2_0)
```

### Changes

No new or changed variables compared to athlete urban 1_3, only the format of the dictionary has changed.

## Release: lifecycle_core_3_0

LifeCycle core 3_0 dictionary is build from LifeCycle core 2_6 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(lifecyle_core_3_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)`
`data(lifecycle_core_3_0)
```

### Changes

No new or changed variables compared to lifeCycle core 2_6, only the format of the dictionary has changed.

## Release: lifecycle_outcome_2_0

LifeCycle outcome 2_0 dictionary is build from LifeCycle outcome 1_6 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(lifecyle_outcome_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(lifecycle_outcome_2_0)
```

### Changes

No new or changed variables compared to lifeCycle outcome 1_6, only the format of the dictionary has changed.

## Release: lifecycle_methyl_cord_blood_2_0

LifeCycle methyl_cord_blood 2_0 dictionary is build from LifeCycle methyl 1_5 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and cord blood repeats (lifecycle_methyl_peripherial_blood_2_0 and lifecycle_methyl_placenta_2_0 separately available) into 1 dataset `data(lifecyle_methyl_cord_blood_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(lifecycle_methyl_cord_blood_2_0)
```

### Changes

No new or changed variables compared to lifeCycle methyl 1_5, only the format of the dictionary has changed.
