# Readme

## Create a new dictionary

The following steps are needed to create a new dictionary:
* Dictionary project
* Dictionary name
* Dictionary version

### Dictionary project

Check if the project (lifecycle/athlete/longitools) is already present in the directory: `lifecycle-project/ds-dictionaries/dictionaries-source/`

If your dictionary project is not present create a new directory with your project name (lower case).

### Dictionary name

Check if the name of the dictionary is already defined, for example lifecycle contains the dictionary names `core`, `methyl` and `outcome`.

If your dictionary name is not present create a new directory with the dictionary name (lower case).

### Dictionary version

In case of a completely new dictionary your version will be `1_0`, otherwise check the previous version and depending on the changes (major or minor) create a new directory, for example: `dictionaries-source/lifecycle/core/x_y/`.

`x_y` (x = major, y = minor) [source](https://lifecycle-project.github.io/ds-upload/articles/dictionaryVersioning.html).

* Major
    * Remove columns from the existing tables.
* Minor
  * Add additional columns to the existing tables.
  * Renaming of columns within the existing tables (the original column remains in the set).
  * Changing the columntype within the existing tables.

## Transform existing ds-dictionary
The transformation is performed once and is described here only to explain the process, follow the link if you need to [create a new dictionary] or [update an existing dictionary].

The original dictionaries are located here: `lifecycle-project/ds-dictionaries/dictionaries/`.

**LifeCycle** dictionaries `core` (*version: 1_0 to 2_4*), `outcome` (*version: 1_0 to 1_6*) and `methyl` (*version: 1_0 to 1_5*) are described.

**Athlete** the dictionaries `chemicals_ath` (*version: 1_0 to 1_2*), `outcome_ath` (*version: 1_0 to 1_1*) and `urban_ath` (*version: 1_0 to 1_1*),

These dictionaries are saved in an Excel file with two sheets `Variables` and `Categories` and contain the following columns:

**Variables**
- name
- ValueType
- unit
- label

**Categories**
- variable
- name
- isMissing
- label

The format is roughly but not exactly the format Opal uses for the dictionary [template](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server), this is one reason to transform the dictionaries. Another reason is that Excel files are not version controlled in github. This is why we will first create .csv files out of the original dictionaries and so be able to version control these.

Using the *script?* the csv files `Variables.csv` and `Categories.csv` are created, you can find these here: `lifecycle-project/ds-dictionaries/dictionaries-source/{project}/`

The following columns are used for (mandatory*, used by dsUpload**):

**Variables**
- table *
- name *
- valueType *
- entityType
- unit
- mimeType
- repeatable *
- occurrenceGroup
- referencedEntityType
- index
- label *
- alias
- variableNameRegexp **
- variableValueRegexp **

**Categories**
- table *
- variable *
- name *
- missing *
- label *

The dictionary csv files are saved in the folder `dictionaries-source` as follows:

`/dictionaries-source/{project}/{dictionary}/{version}/`

## Manually upload dictionary to Opal server
Navigate to the dictionary folder that contains the Excel (.xlsx) file, for instance `lifecycle-project/ds-dictionaries/dictionaries/core/3_0`.
Here you find the dictionary *lifecycle_core_3_0.xlsx*.

You will need to log in to your Opal server, for this example we will be using the [Opal demo server](https://opal-demo.obiba.org/ui/index.html), you can find the credentials here: [Connect with Opal Server](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server) (`opal.login()`).

The dictionary needs to follow a certain format in order to be recognized in Opal, a template is [provided](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server) as an Excel (*opalVariableTemplate.xls*). Or find a copy of the template [here](./files/opalVariableTemplate.xls).

After you logged into your Opal server navigate to 'Projects' and select 'Add Project'. Fill in a 'Name' for your project `lifecycle_core_3_0` for this example and press 'Save'.

In the 'Projects' page of lifecycle_core_3_0 select the 'Tables' icon (left menu). Select 'Add Table > Add/update tables from dictionary..'.

A popup menu 'Add/Update Tables' is shown and click 'Browse'. This will open a 'File Selector' and now select 'Upload' and click 'Choose files', navigate to your dictionary you want to upload. Now press 'Upload'. Next select your dictionary you just uploaded and press 'Select'. Press 'Next', review the upload and press 'Finish'.

It will take a second for the database to update but the table `core` should appear, and after you select this you should see your dictionary variables.

## Variables

`Variables.csv` has a number of mandatory(*) and optional(**) columns:

**Variables**
- table *
- name *
- valueType *
- repeatable *
- label *
- variableNameRegexp **
- variableValueRegexp **

Take for example the Lifecycle core dictionary:

| table | name     | valueType | repeatable | label                           | variableNameRegexp | variableValueRegexp |
|-------|----------|-----------|------------|---------------------------------|--------------------|---------------------| 
| core  | child_id | text      | 0          | Unique identifier for the child |                    |                     | 
| core  | preg_no  | integer   | 0          | Pregnancy number                |                    |                     | 
| core  | height_  | decimal   | 1          | Height of the child             |                    |                     |
| core  | smk_t    | integer   | 1          | Smoking                         |                    |                     |

### Variable values

With the variables (example above) a data manager prepares the data as follows (example_core.csv).

| child_id | preg_no | height_0 | height_1 | smk_t1 | smk_t2 | smk_t3 |
|----------|---------|----------|----------|--------|--------|--------|
| 10       | 1       | 49.2     | 53.8     | 1      | 0      | 0      |
| 11       | 3       | 47.4     | 50.8     | 1      | 1      | 0      |
| 12       | 1       | 44.2     | 52.8     | 1      | 0      | 1      |
| 13       | 2       | 50.4     | 58.8     | 0      | 0      | 0      |

### Variable name and value rules (regular expression)

In some cases we need to set additional rules to variable names and/or values. dsUpload will process these as regular expressions. In order to use this option we will set a _variableNameRegexp_ and/or _variableValueRegexp_:

| table | name     | valueType | repeatable | label                           | variableNameRegexp                   | variableValueRegexp |
|-------|----------|-----------|------------|---------------------------------|--------------------------------------|---------------------| 
| core  | child_id | text      | 0          | Unique identifier for the child |                                      |                     | 
| core  | preg_no  | integer   | 0          | Pregnancy number                |                                      | [1-9]               | 
| core  | height_  | decimal   | 1          | Height of the child             | ^(height_(\d\|\d\d\|\d\[0-1][0-5]))$ |                     |
| core  | smk_t    | integer   | 1          | Smoking                         | smk_t[1-3]                           |                     |

*preg_no* value > 0

*height_x* name should be any digit between 1 and 215

*smk_tx* name should be any digit between 1 and 3

### Variable check by dsUpload

Variable names and values struck though are removed and not uploaded to Opal/Armadillo

| child_id | preg_no | height_0 | height_1 | ~~height_216~~ | ~~smk_t0~~ | smk_t1 | smk_t2 | smk_t3 |
|----------|---------|----------|----------|----------------|------------|--------|--------|--------|
| 10       | 1       | 49.2     | 53.8     | ~~120.6~~      | ~~0~~      | 1      | 0      | 0      |
| 11       | 3       | 47.4     | 50.8     | ~~145.2~~      | ~~1~~      | 1      | 1      | 0      |
| 12       | 1       | 44.2     | 52.8     | ~~142.8~~      | ~~0~~      | 1      | 0      | 1      |
| 13       | 2       | 50.4     | 58.8     | ~~167.9~~      | ~~1~~      | 0      | 0      | 0      |
| ~~14~~   | ~~0~~   | ~~50.4~~ | ~~58.8~~ | ~~145.9~~      | ~~0~~      | ~~0~~  | ~~0~~  | 0      |
| ~~15~~   | ~~0~~   | ~~50.4~~ | ~~58.8~~ | ~~172.8~~      | ~~1~~      | ~~0~~  | ~~0~~  | 0      |

## Categories

`Categories.csv` has the following mandatory(*) columns:

- table *
- variable *
- name *
- missing *
- label *

### Categories: table

Should be set to match the dictionary name, `core` for example.

### Categories: variable

Categories.variable should exist in Variables.name, `cohort_id` for example.

### Categories: name

Categories.name `101` is the option that can be chosen for given variable `cohort_id`.

### Categories: missing

Opal setting: if the category indicates a missing answer. 

Some categories are interpreted as missing answers (e.g. 'Don't know', 'Prefer not to answer').  Use 1 for missing and 0 for not. missing (normal answer). Default value is 0

### Categories: label

Categories.label for example `genr`.

## Categories example

| table | variable  | name | missing | label |
|-------|-----------|------|---------|-------|
| core  | cohort_id | 101  | 0       | genr  |
| core  | cohort_id | 102  | 0       | inma  |