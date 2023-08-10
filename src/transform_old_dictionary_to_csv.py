# Transform original (old) dictionaries to separate csv (Variables.csv, Categories.csv) files which follows the Opal
# dictionary template format
import csv
import os
import sys
import pandas as pd


def process_variables_non_repeat_files(
    version: str,
    table: str,
    new_table: str,
    type: dict,
    repeat: int = 0,
) -> pd.DataFrame:
    dict_dir = "../dictionaries/{}/{}/{}_non_rep.xlsx".format(table, version, version)
    if not os.path.isfile(dict_dir):
        print("{}/{}_non_rep.xlsx not found.".format(table, version))
    else:
        result = pd.read_excel(
            dict_dir,
            sheet_name="Variables",
            keep_default_na=False,
            na_values="",
            dtype=type,
            # dtype={"name": str, "valueType": str, "unit": str, "label": str},
        )
        result = result.fillna("")
        result = result.assign(table=new_table)
        result = result.assign(repeatable=repeat)

        result = result[
            [
                "table",
                "name",
                "valueType",
                "unit",
                "repeatable",
                "label",
            ]
        ]
        return result


def process_categories_non_repeat_files(
    version: str, table: str, new_table: str, type: dict
) -> pd.DataFrame:
    dict_dir = "../dictionaries/{}/{}/{}_non_rep.xlsx".format(table, version, version)

    if not os.path.isfile(dict_dir):
        print("{}/{}_non_rep.xlsx not found.".format(table, version))
        return pd.DataFrame()
    else:

        result = pd.read_excel(
            dict_dir,
            sheet_name="Categories",
            keep_default_na=False,
            na_values="",
            dtype=type,
            # dtype={"variable": str, "name": int, "isMissing": bool, "label": str},
        )

        result = result.assign(table=new_table)
        if "isMissing" in result.columns:
            result = result.rename(columns={"isMissing": "missing"})

        result = result[["table", "variable", "name", "missing", "label"]]
        return result


def process_variables_repeat_files(
    version: str, table: str, new_table: str, type: dict, repeat: int = 1
) -> pd.DataFrame():
    dict_dir = "../dictionaries/{}/{}/".format(table, version)
    files = os.listdir(dict_dir)
    try:
        files.remove("{}_non_rep.xlsx".format(version))
    except ValueError:
        print("{}_non_rep.xlsx not found".format(version))
    finally:
        result = pd.DataFrame()
        for file in files:
            variables = pd.read_excel(
                "{}/{}".format(dict_dir, file),
                sheet_name="Variables",
                keep_default_na=False,
                na_values="",
                dtype=type,
                # dtype={"name": str, "valueType": str, "unit": str, "label": str},
            )
            result = pd.concat([result, variables])

        result = result.fillna("")
        result = result.assign(table=new_table)
        result = result.assign(repeatable=repeat)
        if "label:en" in result.columns:
            result = result.rename(columns={"label:en": "label"})

        result = result[
            [
                "table",
                "name",
                "valueType",
                "unit",
                "repeatable",
                "label",
            ]
        ]
        return result


def process_categories_repeat_files(
    version: str, table: str, new_table: str, type: dict
) -> pd.DataFrame():
    dict_dir = "../dictionaries/{}/{}/".format(table, version)
    files = os.listdir(dict_dir)
    try:
        files.remove("{}_non_rep.xlsx".format(version))
    except ValueError:
        print("{}_non_rep.xlsx not found".format(version))
    finally:
        result = pd.DataFrame()
        for file in files:
            categories = pd.read_excel(
                "{}/{}".format(dict_dir, file),
                sheet_name="Categories",
                keep_default_na=False,
                na_values="",
                dtype=type,
                # dtype={"variable": str, "name": int, "isMissing": bool, "label": str},
            )
            result = pd.concat([result, categories])

        result = result.assign(table=new_table)
        if "isMissing" in result.columns:
            result = result.rename(columns={"isMissing": "missing"})

        result = result[["table", "variable", "name", "missing", "label"]]
        return result


def process_dictionary(
    old_version: str,
    old_table: str,
    new_version: str,
    new_table: str,
    project: str = "lifecycle",
    variables_type: dict = {"name": str, "valueType": str, "unit": str, "label": str},
    categories_type: dict = {
        "variable": str,
        "name": int,
        "isMissing": bool,
        "label": str,
    },
) -> None:
    dict_folder = "../dictionaries/{}/{}".format(old_table, old_version)
    if not os.path.exists(dict_folder):
        sys.exit("{} does not exists".format(dict_folder))

    dict_new_folder = "../dictionaries/{}/{}".format(old_table, new_version)
    if not os.path.exists(dict_new_folder):
        os.mkdir(dict_new_folder)

    dict_source_folder = "../dictionaries-source/{}/{}/{}".format(
        project, new_table, new_version
    )
    if not os.path.exists(dict_source_folder):
        os.mkdir(dict_source_folder)

    """
    variables = pd.concat(
        [
            process_variables_non_repeat_files(version=old_version, table=old_table),
            process_variables_repeat_files(version=old_version, table=old_table),
        ]
    )
    categories = pd.concat(
        [
            process_categories_non_repeat_files(version=old_version, table=old_table),
            process_categories_repeat_files(version=old_version, table=old_table),
        ]
    )
    """
    variables_non_repeat = process_variables_non_repeat_files(
        version=old_version, table=old_table, new_table=new_table, type=variables_type
    )
    variables_repeat = process_variables_repeat_files(
        version=old_version, table=old_table, new_table=new_table, type=variables_type
    )

    categories_non_repeat = process_categories_non_repeat_files(
        version=old_version, table=old_table, new_table=new_table, type=categories_type
    )
    categories_repeat = process_categories_repeat_files(
        version=old_version, table=old_table, new_table=new_table, type=categories_type
    )

    categories = pd.DataFrame(columns=["table", "variable", "name", "missing", "label"])
    if categories_non_repeat.empty and categories_repeat.empty:
        print(
            "Categories non_rep and repeats are empty for {} {}".format(
                old_table, old_version
            )
        )
    elif categories_non_repeat.empty:
        print("Categories non_rep empty for {} {}".format(old_table, old_version))
        categories = categories_non_repeat
    elif categories_repeat.empty:
        print("Categories repeat empty for {} {}".format(old_table, old_version))
        categories = categories_repeat
    else:
        categories = pd.concat([categories_non_repeat, categories_repeat])

    if categories_repeat.empty:
        print("Categories repeats empty for {} {}".format(old_table, old_version))

    categories = categories.drop_duplicates()

    variables = pd.concat([variables_non_repeat, variables_repeat])
    variables = variables.drop_duplicates(subset="name")

    if "label" in categories.columns:
        categories["label"] = categories["label"].str.strip()
    if "missing" in categories.columns:
        categories["missing"] = categories["missing"].astype(int)

    variables.to_csv(
        (dict_source_folder + "/Variables.csv"), index=False, quoting=csv.QUOTE_MINIMAL
    )
    if categories.empty:
        categories = pd.DataFrame(
            columns=["table", "variable", "name", "missing", "label"]
        )

    categories.to_csv(
        (dict_source_folder + "/Categories.csv"), index=False, quoting=csv.QUOTE_MINIMAL
    )
    # write excel
    writer = pd.ExcelWriter(
        ("{}/{}_{}_{}.xlsx".format(dict_new_folder, project, new_version, new_table)),
        engine="xlsxwriter",
    )
    variables.to_excel(writer, sheet_name="Variables", index=False)
    categories.to_excel(writer, sheet_name="Categories", index=False)
    writer.close()


print("Transform: chemicals_ath 1_2")
process_dictionary(
    old_version="1_2",
    old_table="chemicals_ath",
    new_version="2_0",
    new_table="chemicals",
    project="athlete",
    # categories_type={"variable": str, "name": str, "missing": bool, "label:en": str},
)

print("Transform: core 2_4")
process_dictionary(
    old_version="2_4",
    old_table="core",
    new_version="3_0",
    new_table="core",
    project="lifecycle",
)

print("Transform: methyl 1_5")
process_dictionary(
    old_version="1_5",
    old_table="methyl",
    new_version="2_0",
    new_table="methyl",
    project="lifecycle",
)

print("Transform: outcome 1_6")
process_dictionary(
    old_version="1_6",
    old_table="outcome",
    new_version="2_0",
    new_table="outcome",
    project="lifecycle",
)

print("Transform: outcome_ath 1_1")
process_dictionary(
    old_version="1_1",
    old_table="outcome_ath",
    new_version="2_0",
    new_table="outcome",
    project="athlete",
)

print("Transform: urban_ath 1_1")
process_dictionary(
    old_version="1_1",
    old_table="urban_ath",
    new_version="2_0",
    new_table="urban",
    project="athlete",
)
