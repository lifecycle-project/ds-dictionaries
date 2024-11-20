# DataSHIELD ds-dictionaries to use with dsUpload

The dictionaries found in this repository are used by dsUpload and defined by the LifeCycle Project, and more recently by ATHLETE and LongITools. DsUpload uploads your transformed data according to the structure defined by the dictionaries. This will ensure that the harmonized variables can be used across multiple cohorts running Armadillo and/or Opal servers, which can subsequently be analyzed using a federated system called DataSHIELD.

When a new dictionary, or new variables for a dictionary, will be added, a number of steps should be followed, which are described below.

## Dictionary versioning

Dictionaries are placed in the directory `/dictionaries/<name>/x_y` in the repository [lifecycle-project/ds-dictionaries](https://github.com/lifecycle-project/ds-dictionaries)

The dictionary `<name>` will be defined by the network, for this example we take the LifeCycle dictionary `core`.

Next we find that there are [multiple versions](https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries/core) (`x_y`) of this dictionary defined: 1_0, 2_0, 2_1, 2_2, 2_3. Where `x` is the dictionary major and `y` the minor version.

In this example the [latest version](https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries/core/2_3) of the LifeCycle dictionary `core` is `/dictionaries/core/2_3`

This latest version contains multiple dictionary types:

- `2_3_non_rep.xslx`
- `2_3_monthly_rep.xslx`
- `2_3_trimester_rep.xslx`
- `2_3_yearly_rep.xslx`

The dictionary type currently supported by dsUpload are:

- `non_rep` (non repeating variables)
- `weekly_rep` (weekly repeating variables)
- `monthly_rep` (monthly repeating variables)
- `trimester_rep` (trimester repeating variables)
- `yearly_rep` (yearly repeating variables)

**LongITools `methyl` uses the following dictionary kind which are NOT directly supported by dsUpload, see [dsUploadMethyl](https://github.com/lifecycle-project/ds-upload-methyl)**

- `cordblood`
- `peripheral-blood`
- `placenta`

The dictionary naming of versions is as follows: **dictionary-major_dictionary-minor_dictionary-kind.xlsx**

For example:

- `1_0_non_rep.xslx`
- `1_0_weekly_rep.xslx`
- `1_0_monthly_rep.xslx`
- `1_0_trimester_rep.xslx`
- `1_0_yearly_rep.xslx`

Semantic versioning is used with the following implementation: *(Note: is this correct? row instead of column)*

- **dictionary-major**
  - Remove columns from the existing tables
- **dictionary-minor**
  - Add additional columns to the existing tables
  - Renaming of columns withing the existing tables (the original column remains in the set)
  - Changing the column type within the existing tables

## Dictionary excel file

The dictionary should be provided as an excel file (.xslx) with two sheets:

- Variables
- Categories

## Dictionary columns

The following columns are allowed:

- Variables (sheet)
  - name (`variable_name`, `repeat_name_0`*, `cats_`)
  - valueType (`decimal`, `integer`, `text`)
  - unit ([see list](https://data-catalogue.molgeniscloud.org/CatalogueOntologies/tables/#/Units))
  - label (eg. [Cat ownership in child's household from 0 to <1 year](https://data-catalogue.molgeniscloud.org/catalogue/catalogue/#/networks-catalogue/EUChildNetwork/variables/cats_0?model=LifeCycle_CDM&version=1.0.0))

- Categories (sheet)
  - variable (`cats_`)
  - name (`0`)
  - isMissing (`=FALSE()`) **delete column?, is never used**
  - label (`no`)

`*` If used in non_rep. 

## Dictionary template

*NOTE: add empty template*

## Variables

Non repeating and repeating variables follow a slightly different format. A non repeating variable will look like `variable_name`, lower case and connected by an underscore.

Repeating variables are defined like `repeat_name_`, lower case and postfix with an underscore. dsUpload will accept variables like `repeat_name_0`, `repeat_name_1`.

Some variables are reserved by dsUpload:

- `row_id`
- `child_id`
- `age_years`
- `age_months`
- `age_weeks`
- `age_trimester`

## Changelogs

To keep track of all the changed within the different versions of the dictionaries and data releases need to have changelogs. This way we can trace back what has happened in which release.

Changelogs are placed in the [directory](https://github.com/lifecycle-project/ds-dictionaries/tree/master/changelogs) `changelogs` and should contain at minimum the following:

- Explanation where the variables came from and which network/project defined these variables.
- Version of the published dictionary
- Which version of dsUpload is compatible with the dictionary
- List of General changes
- LList of additional variables. In case of a new dictionary this list should contain ALL variables for each dictionary, (including name, type and description).
- List of tables (dictionaries) defined and published
