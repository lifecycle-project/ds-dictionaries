# Readme

## Create new dictionary

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

The format is roughly but not exactly the format Opal uses for the dictionary [template](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server), this is one reason to transform the dictionaries. Another reason to transform the dictionaries is that excel files are not version controlled in github. This is why we will first create .csv files out of the original dictionaries and so be able to version control these.

Using the *script?* the csv files `Variables.csv` and `Categories.csv` are created, you can find these here: `lifecycle-project/ds-dictionaries/dictionaries-source/`

The following columns are used for (mandatory*):

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

**Categories**
- table *
- variable *
- name *
- missing *
- label *

The dictionary csv files are ordered in the folder `dictionaries-source` as follows:

`/dictionaries-source/{project}/{dictionary}/{version}/`



## Manually upload dictionary to Opal server
Navigate to the dictionary folder that contains the Excel (.xlsx) file, for instance `lifecycle-project/ds-dictionaries/dictionaries/core/3_0`.
Here you find the dictionary *lifecycle_core_3_0.xlsx*.

You will need to log in to your Opal server, for this example we will be using the [Opal demo server](https://opal-demo.obiba.org/ui/index.html), you can find the credentials here: [Connect with Opal Server](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server) (`opal.login()`).

The dictionary needs to follow a certain format in order to be recognized in Opal, a template is [provided](https://opaldoc.obiba.org/en/latest/cookbook/import-data/r.html#connect-with-opal-server) as an excel (*opalVariableTemplate.xls*). Or find a copy of the template [here](./files/opalVariableTemplate.xls).

After you logged into your Opal server navigate to 'Projects' and select 'Add Project'. Fill in a 'Name' for your project `lifecycle_core_3_0` for this example and press 'Save'.

In the 'Projects' page of lifecycle_core_3_0 select the 'Tables' icon (left menu). Select 'Add Table > Add/update tables from dictionary..'.

A popup menu 'Add/Update Tables' is shown and click 'Browse'. This will open a 'File Selector' and now select 'Upload' and click 'Choose files', navigate to your dictionary you want to upload. Now press 'Upload'. Next select your dictionary you just uploaded and press 'Select'. Press 'Next', review the upload and press 'Finish'.

It will take a second for the database to update but the table `core` should appear and after you select this you should see your dictionary variables.