library(readxl)
library(tidyverse)
# Copy over the original dictionary from dictionaries/methyl/1_5 to data-raw and rename folder to lifecycle_methyl_1_5
cordblood_v <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_corblood.xlsx", sheet = "Variables")
cordblood_c <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_corblood.xlsx", sheet = "Categories")

peripheralblood_v <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_peripheral-blood.xlsx", sheet = "Variables")
peripheralblood_c <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_peripheral-blood.xlsx", sheet = "Categories")

placenta_v <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_placenta.xlsx", sheet = "Variables")
placenta_c <- readxl::read_xlsx("data-raw/lifecycle_methyl_1_5/1_5_placenta.xlsx", sheet = "Categories")

categories <- rbind(cordblood_c, peripheralblood_c, placenta_c)
categories <- unique(categories)
categories <- tibble::add_column(table = "methyl", categories, .before = "variable")
categories <- dplyr::rename(categories, missing = isMissing)

variables <- rbind(cordblood_v, peripheralblood_v, placenta_v)
variables <- tibble::add_column(repeatable = 1, variables, .before = "label")

variables <- unique(variables)
variables <- tibble::add_column(table = "methyl", variables, .before = "name")

variables <- tibble::add_column(columnNamePattern = "", variables, .after = "label")
variables <- tibble::add_column(valuePattern = "", variables, .after = "columnNamePattern")

categories <- categories %>%
  dplyr::rename(value = name, name = variable) %>%
  dplyr::mutate(name = as.character(name), label = as.character(label))

lifecycle_methyl_1_5 <- nest_join(variables, categories, by = "name")

# Update NEWS.md (changelogs)
# - Compare the old and new data variables and categories

data("lifecycle_methyl_1_4")

diff <- dplyr::setdiff(lifecycle_methyl_1_5, lifecycle_methyl_1_4)
NEWS <- diff %>% dplyr::select(name, valueType, label)

write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("## Release: lifecycle_methyl_1_5", "NEWS.md", append = TRUE)
write_lines(c("\n"), "NEWS.md", append = TRUE)
write_lines("### Usage\n", "NEWS.md", append = TRUE)
write_lines(c("``` r\nlibrary(dsDictionaries)\ndata(lifecycle_methyl_1_5)\n```\n"), "NEWS.md", append = TRUE)
write_lines("### Changes\n", "NEWS.md", append = TRUE)
write_lines(
  knitr::kable(NEWS, caption = "lifecycle_methyl_1_5 changes"),
  "NEWS.md",
  append = TRUE, )
# Edit the NEWS.md file by hand to make sure it is formatted correctly

usethis::use_data(lifecycle_methyl_1_5, overwrite = TRUE)
