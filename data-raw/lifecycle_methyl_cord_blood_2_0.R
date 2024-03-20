library(readxl)
library(tidyverse)
dictionary_kind = "methyl_cord_blood"
# Copy over the original dictionary from dictionaries/methyl/1_5 to data-raw and rename folder to lifecycle_methyl_cord_blood_2_0
cord_blood_v <- readxl::read_xlsx("data-raw/lifecycle_methyl_cord_blood_2_0/1_5_corblood.xlsx", sheet = "Variables")
cord_blood_c <- readxl::read_xlsx("data-raw/lifecycle_methyl_cord_blood_2_0/1_5_corblood.xlsx", sheet = "Categories")

categories <- cord_blood_c
categories <- unique(categories)
categories <- tibble::add_column(table = dictionary_kind, categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

variables <- cord_blood_v
variables <- unique(variables)
variables <- variables %>% dplyr::filter(name != "row_id")
variables <- tibble::add_column(repeatable = 1, variables, .before = "label")
variables <- tibble::add_column(timeDependentCovariate = "age", variables, .before = "repeatable")

variables <- tibble::add_column(table = dictionary_kind, variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

lifecycle_methyl_cord_blood_2_0 <- nest_join(variables, categories, by = "name")

#lifecycle_methyl_cord_blood_2_0 <- lifecycle_methyl_cord_blood_2_0 %>% dplyr::mutate(repeatable = ifelse(name == "row_id", 0, repeatable))
lifecycle_methyl_cord_blood_2_0 <- lifecycle_methyl_cord_blood_2_0 %>% dplyr::mutate(repeatable = ifelse(name == "child_id", 0, repeatable))
lifecycle_methyl_cord_blood_2_0 <- lifecycle_methyl_cord_blood_2_0 %>% dplyr::mutate(timeDependentCovariate = ifelse(name == "child_id", "", timeDependentCovariate))

#lifecycle_methyl_cord_blood_2_0 <- lifecycle_methyl_cord_blood_2_0 %>% dplyr::filter(name!="age" | label!="Chronological age at the time of DNA methylation measurement in methylclock")

# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories

# data("lifecycle_methyl_cord_blood_2_0")
#
# diff <- dplyr::setdiff(lifecycle_methyl_cord_blood_2_1, lifecycle_methyl_cord_blood_2_0)
# NEWS <- diff %>% dplyr::select(name, valueType, label)
#
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("## Release: lifecycle_methyl_cord_blood_2_1", "NEWS.md", append = TRUE)
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("### Usage\n", "NEWS.md", append = TRUE)
# write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(lifecycle_methyl_cord_blood_2_1)\n```\n"), "NEWS.md", append = TRUE)
# write_lines("### Changes\n", "NEWS.md", append = TRUE)
# write_lines(
#   knitr::kable(NEWS, caption = "lifecycle_methyl_cord_blood_2_1 changes"),
#   "NEWS.md",
#   append = TRUE, )
# Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(lifecycle_methyl_cord_blood_2_0, overwrite = TRUE)
