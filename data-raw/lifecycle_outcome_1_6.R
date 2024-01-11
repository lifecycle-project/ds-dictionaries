library(readxl)
library(tidyverse)
# Copy over the original dictionary from dictionaries/outcome/1_6 to data-raw and rename folder to lifecycle_outcome_1_6
non_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_non_rep.xlsx", sheet = "Variables")
non_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_non_rep.xlsx", sheet = "Categories")

weekly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_weekly_rep.xlsx", sheet = "Variables")

monthly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_monthly_rep.xlsx", sheet = "Variables")
monthly_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_monthly_rep.xlsx", sheet = "Categories")

yearly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_yearly_rep.xlsx", sheet = "Variables")
yearly_rep_c <- readxl::read_xlsx("data-raw/lifecycle_outcome_1_6/1_6_yearly_rep.xlsx", sheet = "Categories")

categories <- rbind(non_rep_c,monthly_rep_c, yearly_rep_c)
categories <- unique(categories)
categories <- tibble::add_column(table = "outcome", categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

weekly_rep_v <- weekly_rep_v[!(weekly_rep_v$name %in% non_rep_v$name),]
monthly_rep_v <- monthly_rep_v[!(monthly_rep_v$name %in% non_rep_v$name),]
yearly_rep_v <- yearly_rep_v[!(yearly_rep_v$name %in% non_rep_v$name),]

non_rep_v <- tibble::add_column(repeatable = 0, non_rep_v, .before = "label")

variables <- rbind(weekly_rep_v, monthly_rep_v, yearly_rep_v)
variables <- tibble::add_column(repeatable = 1, variables, .before = "label")

variables <- rbind(non_rep_v, variables)
variables <- unique(variables)
variables <- tibble::add_column(table = "outcome", variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

lifecycle_outcome_1_6 <- nest_join(variables, categories, by = "name")

lifecycle_outcome_1_6 <- lifecycle_outcome_1_6 %>% dplyr::filter(name!="age_years" | label!="Age of child in years")


# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories

data("lifecycle_outcome_1_5")

diff <- dplyr::setdiff(lifecycle_outcome_1_6, lifecycle_outcome_1_5)
NEWS <- diff %>% dplyr::select(name, valueType, label)

write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("## Release: lifecycle_outcome_1_6", "NEWS.md", append = TRUE)
write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("### Usage\n", "NEWS.md", append = TRUE)
write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(lifecycle_outcome_1_6)\n```\n"), "NEWS.md", append = TRUE)
write_lines("### Changes\n", "NEWS.md", append = TRUE)
write_lines(
  knitr::kable(NEWS, caption = "lifecycle_outcome_1_6 changes"),
  "NEWS.md",
  append = TRUE, )
# Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(lifecycle_outcome_1_6, overwrite = TRUE)
