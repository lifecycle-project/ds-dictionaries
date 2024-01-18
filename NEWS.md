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

## Release: athlete_outcome_2_0

Athlete outcome 2_0 dictionary is build from athlete outcome  1_3 dictionary. The major change is the format of the new dictionary and the fact that the non-repeated and repeats are now combined into 1 dataset `data(athlete_outcome_2_0). After you uploaded your data with dsUpload you need to make sure that your analyses steps are changed to reflect the new format.

### Usage

``` r
library(dsDictionaries)
data(athlete_outcome_2_0)
```

### Changes

No new or changed variables compared to athlete outcome 1_3, only the format of the dictionary has changed.

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
