# list of all available datasets for dsDictionaries
l <- data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("list of datasets not empty", {
  expect_false(purrr::is_empty(l))
})
test_that("expect lifecycle datasets" , {
  expect_contains(l, c("athlete_chemicals_1_1" ,"athlete_chemicals_1_2",
                       "athlete_outcome_1_2", "athlete_outcome_1_3",
                       "athlete_urban_1_2","athlete_urban_1_3",
                       "lifecycle_core_2_5", "lifecycle_core_2_6",
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
    expect_contains(eval(parse(text=x))$repeatable, c(0,1))
    expect_true(is.double(eval(parse(text=x))$repeatable))
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


