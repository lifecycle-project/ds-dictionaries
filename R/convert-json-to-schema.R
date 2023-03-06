library(tidyjson)
library(dplyr)
json <- jsonlite::read_json(
  path = "../dictionaries-json/chemicals_ath/1_1/1_1_non_rep_variables.json",
  simplifyVector = TRUE)

json_s <- tidyjson::json_schema(json)
# [1] "{\"label\": [\"string\"], \"name\": [\"string\"], \"unit\": [\"string\"], \"valueType\": [\"string\"]}"
#json_st <- tidyjson::json_structure(json)
