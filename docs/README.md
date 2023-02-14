# DataSHIELD ds-dictionaries to use with dsUpload

## Short introduction

The dictionaries found in this repository are used by dsUpload and defined by the network Lifecycle and more recently by Athlete and LongITools. DsUpload uploads your transformed data defined by the dictionaries. This will ensure that the harmonized variables are used across multiple cohorts running Armadillo and/or Opal. Which can subsequently be analyzed in a federated system called DataSHIELD.

### Add variables to a (new) dictionary

When a new dictionary or new variables for a dictionary need to be added a number of steps need to be considered which we will go through below.

### Dictionary

- [DONE] Dictionary versioning
- Dictionary excel sheets
- Dictionary columns
- Dictionary template (empty)

#### Dictionary versioning

Dictionaries are placed in the directory `/dictionaries/<name>/x_y` in the repository [lifecycle-project/ds-dictionaries](https://github.com/lifecycle-project/ds-dictionaries)

The dictionary `<name>` will be defined by the network, for this example we take the LifeCycle dictionary `core`.

Next we find that there are [multiple versions](https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries/core) (`x_y`) of this dictionary defined: 1_0, 2_0, 2_1, 2_2, 2_3. Where `x` is the dictionary mayor and `y` the minor version.

In this example the [latest version](https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries/core/2_3) of the LifeCycle dictionary `core` is `/dictionaries/core/2_3`

This latest version contains multiple dictionary kinds:

- `2_3_non_rep.xslx`
- `2_3_monthly_rep.xslx`
- `2_3_trimester_rep.xslx`
- `2_3_yearly_rep.xslx`

The dictionary kinds currently supported by dsUpload are:

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

### Variables

- Variables 'rules'
- 'Protected' variables
- variable valueType (list)
- variable Unit (link to CatalogueOntologies)

### Changelogs

To keep track of all the changed within the different versions of the dictionaries and data releases need to have changelogs. This way we can trace back what has happened in which release.

Changelogs are placed in the [directory](https://github.com/lifecycle-project/ds-dictionaries/tree/master/changelogs) `changelogs` and should contain at minimum the following:

- Explanation where the variables came from and which network/project defined these variables.
- Version of the published dictionary
- Which version of dsUpload is compatible with the dictionary
- List of General changes
- List of Additional variables which in case of a new dictionary should list ALL variables for each dictionary kind, list Variable, Type and Description.
- List of tables (dictionaries) defined and published
