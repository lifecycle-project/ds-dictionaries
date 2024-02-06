
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dsDictionaries

<!-- badges: start -->
<!-- badges: end -->

Define and manage harmonised data dictionaries for DataSHIELD

## Amending a versioning of a dictionary

[dsUpload amending a version of
dictionaries](https://lifecycle-project.github.io/ds-upload/articles/dictionaryVersioning.html)

## Installation

You can install the development version of dsDictionaries from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("lifecycle-project/ds-dictionaries")
```

## Dictionary format

The following columns are used for (required\*, used by dsUpload\*\*):

*Variables*

- table \* (required)

- name \* (required)

- valueType \* (required)

- entityType

- unit

- mimeType

- repeatable \* (required)

- occurrenceGroup

- referencedEntityType

- index

- label \* (required)

- alias

- timeDependentCovariate \* (required, empty for non repeats)

- columnNamePattern \*\* (optional used by dsUpload)

- valuePattern \*\* (optional used by dsUpload)

*Categories*

- table \* (required)

- variable \* (required)

- name \* (required)

- missing \* (required)

- label \* (required)

## Create a dataset from existing dictionary

The transformation (or creating a dataset from existing dictionary) is
performed once and is described here only to explain the process.

The original dictionaries are located here:
[`lifecycle-project/ds-dictionaries/dictionaries/`](https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries "dictionaries").

These dictionaries are saved in an Excel file with two sheets
*Variables* and *Categories* and contain the following columns:

*Variables*

- name

- valueType

- unit

- label

*Categories*

- variable

- name

- isMissing

- label

The format is roughly the format Opal uses for the dictionary template.
Excel files are not version controlled in github. This is why new
dictionaries will be saved as comma separated files (.csv) in order to
enable version control.

Please note that the **original** dictionaries (Excel) will not be saved
as .csv files, instead these will be available by calling
`data(lifecycle_core_3_0)` after loading the R package
`library(dsDictionaries)`. Newly created dictionaries will be available
as .csv for the developers/maintainers, users will be able to use the
dictionary as described above. For example `data(athlete_urban_2_0)`.

Data (dictionaries) are prepared under the folder `data-raw/`.

The dictionary Excel files are saved in the folder
`data-raw/{project}_{dictionary-kind}_{version}/`.

## Cleanup dictionary and prepare package data

For each existing (and new) dictionary a `.R` file is saved in the
folder `data-raw/{project}_{dictionary-kind}_{version}`. These files are
not bundled in the package however it makes updates and version control
of the data easy. Below the steps to prepare package data.

Create a new dictionary:

``` r
usethis::use_data_raw("lifecycle_core_3_0")
```

`usethis::use_data_raw()` creates the `data-raw/` folder and lists it in
`.Rbuildignore`.

Navigate to the folder `data-raw` and create a directory with the name
of the dataset:

``` bash
mkdir {project}_{dictionary-kind}_{version}
```

In this example: `mkdir lifecycle_core_3_0`.

Copy the original dictionary files into this folder and edit your R
script in `lifecycle_core_3_0.R`, use this script as inspiration.

Make sure to update [`NEWS.md`](NEWS.md) by describing the changes
between dictionaries, for example which variables where added to
`lifecycle_core_3_1` compared to `lifecycle_core_3_0`. The script
`data-raw/lifecycle_core_3_0.R` contains some code to make this process
semi automatic.

A typical script in `data-raw/` includes code to prepare a dataset and
ends with a call to `use_data()`.

Run the script you just prepared, in this example
`data-raw/lifecycle_core_3_0.R`.

Document the dataset by editing `R/data.R`.

Add tests for the ‘new’ dataset by editing `tests/testthat/test-data.R`

source: <https://r-pkgs.org/data.html>

## Developers

``` bash
git clone https://github.com/lifecycle-project/ds-dictionaries.git
```

Navigate to the folder you just cloned. Open your rstudio and in the
console run the following command to load the package in development
mode:

``` r
library(devtools)
devtools::load_all()
```

To document the package:

``` r
devtools::document()
```

To run the tests:

``` r
devtools::tests()
```

To perform automatically build and check the package:

``` r
devtools::check()
```

If the check complains about a missing library you might need to include
it into DESCRIPTION, use `usethis::use_package("library")` to do this
for you.

Create a new or edit an existing dictionary.

### update README

Use README.Rmd for the readme documentation. After you edited this file
run the following command to update the README.md file:

``` r
devtools::build_readme()
```
