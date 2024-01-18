# list of all available datasets for dsDictionaries
l <- data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("list of datasets not empty", {
  expect_false(purrr::is_empty(l))
})

test_that("expect athlete datasets" , {
  expect_contains(l, c("athlete_chemicals_2_0",
                       "athlete_outcome_2_0",
                       "athlete_urban_1_2","athlete_urban_1_3"))
})

test_that("expect lifecycle datasets" , {
  expect_contains(l, c("lifecycle_core_3_0",
                       "lifecycle_methyl_1_5",
                       "lifecycle_outcome_1_5", "lifecycle_outcome_1_6"))
})

data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("expect string not empty", {
  for (x in l) {
    expect_equal(sum(eval(parse(text=x))$table==""), 0)
    expect_equal(sum(eval(parse(text=x))$name==""), 0)
    expect_equal(sum(eval(parse(text=x))$valueType==""), 0)
    expect_equal(sum(eval(parse(text=x))$label==""), 0)
  }
})

test_that("expect zero or one", {
  for (x in l) {
    expect_in(eval(parse(text=x))$repeatable, c(0,1))
  }
})

test_that("categories column names and types", {
  for (x in l) {
    t <- dplyr::bind_rows(eval(parse(text=x))$categories)
    if (nrow(t) > 0) {
      expect_equal(names(t), c("table", "value", "missing", "label"))
      expect_true(is.character(t$table))
      expect_true(is.double(t$value))
      expect_true(is.logical(t$missing))
      expect_true(is.character(t$label))
    }
  }
})

test_that("variable name is unique", {
  for (x in l) {
    expect_equal(dplyr::n_distinct(eval(parse(text=x))$name), nrow(eval(parse(text=x))))
  }
})

test_that("variable column names and types", {
  for (x in l) {
    expect_equal(names(eval(parse(text=x))), c("table", "name", "valueType", "unit", "repeatable", "label", "columnNamePattern", "valuePattern", "categories"))
    expect_true(is.character(eval(parse(text=x))$table))
    expect_true(is.character(eval(parse(text=x))$name))
    expect_true(is.character(eval(parse(text=x))$valueType))
    expect_true(is.character(eval(parse(text=x))$unit))
    expect_true(is.double(eval(parse(text=x))$repeatable))
    expect_true(is.character(eval(parse(text=x))$label))
  }
})

test_that("variable valueType", {
  for (x in l) {
    expect_in(eval(parse(text=x))$valueType, c("text", "integer", "decimal"))
  }
})
