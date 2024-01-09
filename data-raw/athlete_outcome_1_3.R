library(readxl)
library(tidyverse)
# Copy over the original dictionary from dictionaries/outcome_ath/1_3 to data-raw and rename folder to athlete_outcome_1_3
non_rep_v <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_non_rep.xlsx", sheet = "Variables")
non_rep_c <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_non_rep.xlsx", sheet = "Categories")

monthly_rep_v <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_monthly_rep.xlsx", sheet = "Variables")

trimester_rep_v <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_trimester_rep.xlsx", sheet = "Variables")

yearly_rep_v <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_yearly_rep.xlsx", sheet = "Variables")
yearly_rep_c <- readxl::read_xlsx("data-raw/athlete_outcome_1_3/1_3_yearly_rep.xlsx", sheet = "Categories")

categories <- rbind(non_rep_c, yearly_rep_c)
categories <- unique(categories)
categories <- tibble::add_column(table = "outcome", categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

monthly_rep_v <- monthly_rep_v[!(monthly_rep_v$name %in% non_rep_v$name),]
trimester_rep_v <- trimester_rep_v[!(trimester_rep_v$name %in% non_rep_v$name),]
yearly_rep_v <- yearly_rep_v[!(yearly_rep_v$name %in% non_rep_v$name),]

non_rep_v <- tibble::add_column(repeatable = 0, non_rep_v, .before = "label")

variables <- rbind(monthly_rep_v, trimester_rep_v, yearly_rep_v)
variables <- tibble::add_column(repeatable = 1, variables, .before = "label")

variables <- rbind(non_rep_v, variables)
variables <- unique(variables)
variables <- tibble::add_column(table = "outcome", variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

athlete_outcome_1_3 <- nest_join(variables, categories, by = "name")

# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories

data("athlete_outcome_1_2")

diff <- dplyr::setdiff(athlete_outcome_1_3, athlete_outcome_1_2)
NEWS <- diff %>% dplyr::select(name, valueType, label)

write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("## Release: athlete_outcome_1_3", "NEWS.md", append = TRUE)
write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("### Usage\n", "NEWS.md", append = TRUE)
write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(athlete_outcome_1_3)\n```\n"), "NEWS.md", append = TRUE)
write_lines("### Changes\n", "NEWS.md", append = TRUE)
write_lines(
  knitr::kable(NEWS, caption = "athlete_outcome_1_3 changes"),
  "NEWS.md",
  append = TRUE, )
# Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(athlete_outcome_1_3, overwrite = TRUE)
