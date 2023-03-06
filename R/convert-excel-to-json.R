# Convert existing dictionaries from excel (Sheet 1) to json
library(readxl)
excel <- readxl::read_excel(
  path = "../dictionaries/chemicals_ath/1_1/1_1_non_rep.xlsx",
  sheet = 1,
  col_types = c("text","text","text","text"))

library(jsonlite)
#?toJSON
#json <- toJSON(excel)
#json_v <- toJSON(x = excel, dataframe = 'values', pretty = T)
json_c <- jsonlite::toJSON(x = excel, dataframe = 'columns', pretty = T)

jsonlite::write_json(x = json_c, path = "../dictionaries-json/chemicals_ath/1_1/1_1_non_rep_variables.json")
