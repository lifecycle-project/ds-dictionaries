library(readxl)
library(tidyverse)
dictionary_kind = "outcome"
# Copy over the original dictionary from dictionaries/outcome/1_6 to data-raw and rename folder to lifecycle_outcome_2_0
non_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_non_rep.xlsx", sheet = "Variables")
non_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_non_rep.xlsx", sheet = "Categories")

weekly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_weekly_rep.xlsx", sheet = "Variables")

monthly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_monthly_rep.xlsx", sheet = "Variables")
monthly_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_monthly_rep.xlsx", sheet = "Categories")

yearly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_yearly_rep.xlsx", sheet = "Variables")
yearly_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_2_0/1_6_yearly_rep.xlsx", sheet = "Categories")

categories <- rbind(non_rep_c,monthly_rep_c, yearly_rep_c)
categories <- unique(categories)
categories <- tibble::add_column(table = dictionary_kind, categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

weekly_rep_v <- weekly_rep_v[!(weekly_rep_v$name %in% non_rep_v$name),]
monthly_rep_v <- monthly_rep_v[!(monthly_rep_v$name %in% non_rep_v$name),]
yearly_rep_v <- yearly_rep_v[!(yearly_rep_v$name %in% non_rep_v$name),]

non_rep_v <- tibble::add_column(repeatable = 0, non_rep_v, .before = "label")
non_rep_v <- tibble::add_column(timeDependentCovariate = "", non_rep_v, .before = "repeatable")

weekly_rep_v <- weekly_rep_v %>% dplyr::filter(name != "age_years")

weekly_rep_v <- tibble::add_column(repeatable = 1, weekly_rep_v, .before = "label")
weekly_rep_v <- tibble::add_column(timeDependentCovariate = "age_weeks", weekly_rep_v, .before = "repeatable")

monthly_rep_v <- monthly_rep_v %>% dplyr::filter(name != "age_years")

monthly_rep_v <- tibble::add_column(repeatable = 1, monthly_rep_v, .before = "label")
monthly_rep_v <- tibble::add_column(timeDependentCovariate = "age_months", monthly_rep_v, .before = "repeatable")

yearly_rep_v <- tibble::add_column(repeatable = 1, yearly_rep_v, .before = "label")
yearly_rep_v <- tibble::add_column(timeDependentCovariate = "age_years", yearly_rep_v, .before = "repeatable")

#variables <- rbind(weekly_rep_v, monthly_rep_v, yearly_rep_v)
#variables <- tibble::add_column(repeatable = 1, variables, .before = "label")

variables <- rbind(non_rep_v, weekly_rep_v, monthly_rep_v, yearly_rep_v)
variables <- variables %>% dplyr::filter(name != "row_id")
variables <- unique(variables)
variables <- tibble::add_column(table = dictionary_kind, variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

lifecycle_outcome_2_0 <- nest_join(variables, categories, by = "name")

#lifecycle_outcome_2_0 <- lifecycle_outcome_2_0 %>% dplyr::filter(name!="age_years" | label!="Age of child in years")


# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories
#
# data("lifecycle_outcome_2_0")
#
# diff <- dplyr::setdiff(lifecycle_outcome_2_1, lifecycle_outcome_2_0)
# NEWS <- diff %>% dplyr::select(name, valueType, label)
#
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("## Release: lifecycle_outcome_2_1", "NEWS.md", append = TRUE)
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("### Usage\n", "NEWS.md", append = TRUE)
# write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(lifecycle_outcome_2_1)\n```\n"), "NEWS.md", append = TRUE)
# write_lines("### Changes\n", "NEWS.md", append = TRUE)
# write_lines(
#   knitr::kable(NEWS, caption = "lifecycle_outcome_2_1 changes"),
#   "NEWS.md",
#   append = TRUE, )
# Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(lifecycle_outcome_2_0, overwrite = TRUE)
