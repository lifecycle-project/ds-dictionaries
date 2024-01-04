Check: [Amending an versioning of dictionaries](https://lifecycle-project.github.io/ds-upload/articles/dictionaryVersioning.html)

# Create a dataset from existing dictionary

The transformation (or creating a dataset from existing dictionary) is performed once and is described here only to explain the process.

The original dictionaries are located here: `lifecycle-project/ds-dictionaries/dictionaries/`.

These dictionaries are saved in an Excel file with two sheets *Variables* and *Categories* and contain the following columns:

*Variables*

-   name

-   valueType

-   unit

-   label

*Categories*

-   variable

-   name

-   isMissing

-   label

The format is roughly the format Opal uses for the dictionary template. Excel files are not version controlled in github. This is why new dictionaries will be saved as comma separated files (.csv) in order to enable version control.

Please note that the original dictionaries (Excel) will not be saved as .csv files, instead these will be available by calling `data(lifecycle_core_2_6)` after loading the R package `library(dsDictionaries)`. Newly created dictionaries will be available as .csv for the developers/maintainers, users will be able to use the dictionary as described above. For example `data(athlete_urban_1_4)`.

Data (dictionaries) are prepared under the folder `data-raw/`.

The dictionary Excel files are saved in the folder `data-raw/{project}/{dictionary-kind}/{version}/`.

## Cleanup dictionary and prepare package data

For each existing (and new) dictionary a `.R` file is saved in the folder `data-raw/`. These files are not bundled in the package but makes it easy to update and version control the data. Below the steps to prepare package data.

``` r
usethis::use_data_raw("lifecycle_core_2_6")
```

`use_data_raw()` creates the `data-raw/` folder and lists it in `.Rbuildignore`. A typical script in `data-raw/` includes code to prepare a dataset and ends with a call to `use_data()`.

source: <https://r-pkgs.org/data.html>

The following columns are used for (mandatory\*, used by dsUpload\*\*):

*Variables*

-   table \*

-   name \*

-   valueType \*

-   entityType

-   unit

-   mimeType

-   repeatable \*

-   occurrenceGroup

-   referencedEntityType

-   index

-   label \*

-   alias

-   columnNamePattern \*\*

-   valuePattern \*\*

*Categories*

-   table \*

-   variable \*

-   name \*

-   missing \*

-   label \*
