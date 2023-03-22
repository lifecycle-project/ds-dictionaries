# Convert existing dictionaries from excel (Sheet 1 and 2) to yaml.
# And add dictionary settings.
library(readxl)
variables <- readxl::read_excel(
  path = "./dictionaries/chemicals_ath/1_1/1_1_non_rep.xlsx",
  sheet = 1,
  col_types = c("text","text","text","text"))

categories <- readxl::read_excel(
  path = "./dictionaries/chemicals_ath/1_1/1_1_non_rep.xlsx",
  sheet = 2,
  col_types = c("text","text","text","text"))

# yaml::as.yaml(
#   x = variables,
#   column.major = FALSE)
# 
# yaml::as.yaml(
#   x = categories,
#   column.major = FALSE
# )

yaml::write_yaml(
  data.frame(
    dictionary = data.frame(
      name = "chemicals_ath",
      version = "1_1",
      type = "non_rep"
    ),
    Variables = yaml::as.yaml(
      x = variables,
      column.major = FALSE),
    Categories = yaml::as.yaml(
      x = categories,
      column.major = FALSE
    )
  ),
  file = "./dictionaries-yaml/chemicals_ath/1_1/1_1_non_rep.yml"
)
