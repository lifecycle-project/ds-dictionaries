library(readxl)
library(tidyverse)
# Copy over the original dictionary from dictionaries/core/2_5 to data-raw and rename folder to lifecycle_core_2_5
non_rep_v <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_non_rep.xlsx", sheet = "Variables")
non_rep_c <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_non_rep.xlsx", sheet = "Categories")

monthly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_monthly_rep.xlsx", sheet = "Variables")

trimester_rep_v <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_trimester_rep.xlsx", sheet = "Variables")
trimester_rep_c <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_trimester_rep.xlsx", sheet = "Categories")

yearly_rep_v <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_yearly_rep.xlsx", sheet = "Variables")
yearly_rep_c <- readxl::read_xlsx("data-raw/lifecycle_core_2_5/2_5_yearly_rep.xlsx", sheet = "Categories")

categories <- rbind(non_rep_c,trimester_rep_c, yearly_rep_c)
categories <- unique(categories)
categories <- tibble::add_column(table = "core", categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

monthly_rep_v <- monthly_rep_v[!(monthly_rep_v$name %in% non_rep_v$name),]
trimester_rep_v <- trimester_rep_v[!(trimester_rep_v$name %in% non_rep_v$name),]
yearly_rep_v <- yearly_rep_v[!(yearly_rep_v$name %in% non_rep_v$name),]

non_rep_v <- tibble::add_column(repeatable = 0, non_rep_v, .before = "label")

variables <- rbind(monthly_rep_v, trimester_rep_v, yearly_rep_v)
variables <- tibble::add_column(repeatable = 1, variables, .before = "label")

variables <- rbind(non_rep_v, variables)
variables <- unique(variables)
variables <- tibble::add_column(table = "core", variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

lifecycle_core_2_5 <- nest_join(variables, categories, by = "name")

usethis::use_data(lifecycle_core_2_5, overwrite = TRUE)
