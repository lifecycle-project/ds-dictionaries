# Convert existing dictionaries which are in excel format to json schema
# pip install jsonschema
# TODO
# sanity check on certain columns, names in Variables should be unique for example
import csv
import json
import jsonschema.exceptions
import os
import pandas as pd
from jsonschema import validate
from json import loads

excel_file = "../dictionaries/core/2_4/2_4_non_rep.xlsx"
dict_table = "core"
dict_entity_type = "Participant"
dict_unit = pd.read_csv(
    "https://data-catalogue.molgeniscloud.org/CatalogueOntologies/api/csv/Units"
)
dict_unit = dict_unit["name"].tolist()
dict_unit.append("")
dict_rep = 0

dict_new_version = "3_0"
dict_source_folder = (
    "../dictionaries-source/lifecycle/" + dict_table + "/" + dict_new_version
)
if not os.path.exists(dict_source_folder):
    os.mkdir(dict_source_folder)

dict_folder = "../dictionaries/" + dict_table + "/" + dict_new_version
if not os.path.exists(dict_folder):
    os.mkdir(dict_folder)

variables_non_rep = pd.read_excel(
    excel_file,
    sheet_name="Variables",
    keep_default_na=False,
    na_values="",
    dtype={"name": str, "valueType": str, "unit": str, "label": str},
)
categories_non_rep = pd.read_excel(
    excel_file,
    sheet_name="Categories",
    keep_default_na=False,
    na_values="",
    dtype={"variable": str, "name": int, "isMissing": bool, "label": str},
)
# variable rules
# - preg_no > 0
# - age_years <= 18
# - height_ (in cm so not bigger than 150cm)
# - smk_t (trimester not bigger than 3)
# - pm25_t (trimester 1 and 3 permitted)


variables_schema = {
    "type": "object",
    "required": ["name", "valueType", "label"],
    "properties": {
        "table": {"type": "string"},
        "name": {"type": "string"},
        "valueType": {"enum": ["decimal", "integer", "text"]},
        "entityType": {"enum": ["Participant", "Instrument", "Area", "Drug"]},
        "unit": {"enum": dict_unit},
        "mimeType": {"enum": ["image/jpeg", "application/excel", ""]},
        "repeatable": {"type": "integer"},
        "occurrenceGroup": {"type": "string"},
        "referencedEntityType": {"type": "string"},
        "index": {"type": "integer"},
        "label": {"type": "string"},
        "alias": {"type": "string"},
    },
}

categories_schema = {
    "type": "object",
    "required": ["variable", "name", "missing", "label"],
    "properties": {
        "table": {"type": "string"},
        "variable": {"type": "string"},
        "name": {"type": "integer"},
        "missing": {"type": "boolean"},
        "label": {"type": "string"},
    },
}

bundled_schema = {
    "$id": "https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries-source/lifecycle/core/3_0/variables",
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "type": "object",
    "required": ["name", "valueType", "label"],
    "properties": {
        "table": {"type": "string"},
        "name": {"type": "string"},
        "valueType": {"enum": ["decimal", "integer", "text"]},
        "entityType": {"enum": ["Participant", "Instrument", "Area", "Drug"]},
        "unit": {"enum": dict_unit},
        "mimeType": {"enum": ["image/jpeg", "application/excel", ""]},
        "repeatable": {"type": "integer"},
        "occurrenceGroup": {"type": "string"},
        "referencedEntityType": {"type": "string"},
        "index": {"type": "integer"},
        "label": {"type": "string"},
        "alias": {"type": "string"},
    },
    "defs": {
        "categories": {
            "$id": "https://github.com/lifecycle-project/ds-dictionaries/tree/master/dictionaries-source/lifecycle/core/3_0/categories",
            "$schema": "https://json-schema.org/draft/2020-12/schema",
            "type": "object",
            "required": ["variable", "name", "missing", "label"],
            "properties": {
                "table": {"type": "string"},
                "variable": {"type": "string"},
                "name": {"type": "integer"},
                "missing": {"type": "boolean"},
                "label": {"type": "string"},
            },
        }
    },
}

jsonschema.Draft202012Validator(variables_schema)
jsonschema.Draft202012Validator(bundled_schema)

variables_non_rep = variables_non_rep.fillna("")
variables_non_rep = variables_non_rep.assign(table=dict_table)
variables_non_rep = variables_non_rep.assign(entityType=dict_entity_type)
variables_non_rep = variables_non_rep.assign(mimeType="")
variables_non_rep = variables_non_rep.assign(repeatable=dict_rep)
variables_non_rep = variables_non_rep.assign(occurrenceGroup="")
variables_non_rep = variables_non_rep.assign(referencedEntityType="")
variables_non_rep = variables_non_rep.assign(index=0)
variables_non_rep = variables_non_rep.assign(alias="")

variables_non_rep = variables_non_rep[
    [
        "table",
        "name",
        "valueType",
        "entityType",
        "unit",
        "mimeType",
        "repeatable",
        "occurrenceGroup",
        "referencedEntityType",
        "index",
        "label",
        "alias",
    ]
]

categories_non_rep = categories_non_rep.assign(table=dict_table)
categories_non_rep = categories_non_rep.rename(columns={"isMissing": "missing"})

categories_non_rep = categories_non_rep[
    ["table", "variable", "name", "missing", "label"]
]

# process repeat files
dict_rep = 1
excel_files = [
    "../dictionaries/core/2_4/2_4_monthly_rep.xlsx",
    "../dictionaries/core/2_4/2_4_trimester_rep.xlsx",
    "../dictionaries/core/2_4/2_4_yearly_rep.xlsx",
]

variables_rep = pd.DataFrame()
categories_rep = pd.DataFrame()

for excel_file in excel_files:
    variables = pd.read_excel(
        excel_file,
        sheet_name="Variables",
        keep_default_na=False,
        na_values="",
        dtype={"name": str, "valueType": str, "unit": str, "label": str},
    )
    variables_rep = pd.concat([variables_rep, variables])
    categories = pd.read_excel(
        excel_file,
        sheet_name="Categories",
        keep_default_na=False,
        na_values="",
        dtype={"variable": str, "name": int, "isMissing": bool, "label": str},
    )
    categories_rep = pd.concat([categories_rep, categories])

variables_rep = variables_rep.fillna("")
variables_rep = variables_rep.assign(table=dict_table)
variables_rep = variables_rep.assign(entityType=dict_entity_type)
variables_rep = variables_rep.assign(mimeType="")
variables_rep = variables_rep.assign(repeatable=dict_rep)
variables_rep = variables_rep.assign(occurrenceGroup="")
variables_rep = variables_rep.assign(referencedEntityType="")
variables_rep = variables_rep.assign(index=0)
variables_rep = variables_rep.assign(alias="")

variables_rep = variables_rep[
    [
        "table",
        "name",
        "valueType",
        "entityType",
        "unit",
        "mimeType",
        "repeatable",
        "occurrenceGroup",
        "referencedEntityType",
        "index",
        "label",
        "alias",
    ]
]

categories_rep = categories_rep.assign(table=dict_table)
categories_rep = categories_rep.rename(columns={"isMissing": "missing"})

categories_rep = categories_rep[["table", "variable", "name", "missing", "label"]]

variables = pd.concat([variables_non_rep, variables_rep])
categories = pd.concat([categories_non_rep, categories_rep])
categories["label"] = categories["label"].str.strip()

variables = variables.drop_duplicates(subset="name")

result = variables.to_json(orient="records")
parsed = loads(result)
for p in parsed:
    try:
        validate(p, variables_schema)
    except jsonschema.exceptions.ValidationError as e:
        print(p)
        print(e)

result = categories.to_json(orient="records")
parsed = loads(result)
for p in parsed:
    try:
        validate(p, categories_schema)
    except jsonschema.exceptions.ValidationError as e:
        print(p)
        print(e)

# Do sanity check
# - Categories.variable is.in Variables.name
# - Categories.name is unique for Categories.variable
# - Categories.label is unique for Categories.variable

# write csv(s)
variables.to_csv(
    (dict_source_folder + "/Variables.csv"), index=False, quoting=csv.QUOTE_MINIMAL
)

categories["missing"] = categories["missing"].astype(int)
categories.to_csv(
    (dict_source_folder + "/Categories.csv"), index=False, quoting=csv.QUOTE_MINIMAL
)

# write json schema(s)
with open((dict_source_folder + "/Variables_schema.json"), "w") as out:
    json.dump(variables_schema, out, indent=4)
with open((dict_source_folder + "/Categories_schema.json"), "w") as out:
    json.dump(categories_schema, out, indent=4)

# write excel
writer = pd.ExcelWriter(
    (dict_folder + "/" + dict_new_version + "_" + dict_table + ".xlsx"),
    engine="xlsxwriter",
)
variables.to_excel(writer, sheet_name="Variables", index=False)
categories.to_excel(writer, sheet_name="Categories", index=False)
writer.close()
