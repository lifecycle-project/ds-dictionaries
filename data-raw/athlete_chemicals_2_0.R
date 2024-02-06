library(readxl)
library(tidyverse)
dictionary_kind = "chemicals"
# Copy over the original dictionary from dictionaries/chemicals_ath/1_2 to data-raw and rename folder to athlete_chemicals_2_0
non_rep_v <- readxl::read_xlsx("data-raw/athlete_chemicals_2_0/1_2_non_rep.xlsx", sheet = "Variables")
non_rep_c <- readxl::read_xlsx("data-raw/athlete_chemicals_2_0/1_2_non_rep.xlsx", sheet = "Categories")

trimester_rep_v <- readxl::read_xlsx("data-raw/athlete_chemicals_2_0/1_2_trimester_rep.xlsx", sheet = "Variables")

yearly_rep_v <- readxl::read_xlsx("data-raw/athlete_chemicals_2_0/1_2_yearly_rep.xlsx", sheet = "Variables")

categories <- rbind(non_rep_c)
categories <- unique(categories)
categories <- tibble::add_column(table = dictionary_kind, categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

trimester_rep_v <- trimester_rep_v[!(trimester_rep_v$name %in% non_rep_v$name),]
yearly_rep_v <- yearly_rep_v[!(yearly_rep_v$name %in% non_rep_v$name),]

non_rep_v <- tibble::add_column(repeatable = 0, non_rep_v, .before = "label")
non_rep_v <- tibble::add_column(timeDependentCovariate = "", non_rep_v, .before = "repeatable")

trimester_rep_v <- tibble::add_column(repeatable = 1, trimester_rep_v, .before = "label")
trimester_rep_v <- tibble::add_column(timeDependentCovariate = "age_trimester", trimester_rep_v, .before = "repeatable")

yearly_rep_v <- tibble::add_column(repeatable = 1, yearly_rep_v, .before = "label")
yearly_rep_v <- tibble::add_column(timeDependentCovariate = "age_years", yearly_rep_v, .before = "repeatable")

variables <- rbind(non_rep_v, trimester_rep_v, yearly_rep_v)
variables <- unique(variables)
variables <- variables %>% dplyr::filter(name != "row_id")

variables <- tibble::add_column(table = dictionary_kind, variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

athlete_chemicals_2_0 <- nest_join(variables, categories, by = "name")

# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories

#data("athlete_chemicals_2_0")
#
# diff <- dplyr::setdiff(athlete_chemicals_2_1, athlete_chemicals_2_0)
# NEWS <- diff %>% dplyr::select(name, valueType, label)
#
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("## Release: athlete_chemicals_2_1", "NEWS.md", append = TRUE)
# write_lines(c("\n"), "NEWS.md", append = TRUE)
# write_lines("### Usage\n", "NEWS.md", append = TRUE)
# write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(athlete_chemicals_2_1)\n```\n"), "NEWS.md", append = TRUE)
# write_lines("### Changes\n", "NEWS.md", append = TRUE)
# write_lines(
#   knitr::kable(NEWS, caption = "athlete_chemicals_2_1 changes"),
#   "NEWS.md",
#   append = TRUE, )
# # Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(athlete_chemicals_2_0, overwrite = TRUE)
