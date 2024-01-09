# list of all available datasets for dsDictionaries
l <- data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("list of datasets not empty", {
  expect_false(purrr::is_empty(l))
})
test_that("expect lifecycle datasets" , {
  expect_contains(l, c("athlete_urban_1_2","athlete_urban_1_3",
                       "lifecycle_core_2_5", "lifecycle_core_2_6",
                       "lifecycle_outcome_1_5", "lifecycle_outcome_1_6"))
})

data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("expect string not empty", {
  # athlete_urban_1_2
  expect_equal(sum(athlete_urban_1_2$table==""), 0)
  expect_equal(sum(athlete_urban_1_2$name==""), 0)
  expect_equal(sum(athlete_urban_1_2$valueType==""), 0)
  expect_equal(sum(athlete_urban_1_2$label==""), 0)
  # athlete_urban_1_3
  expect_equal(sum(athlete_urban_1_3$table==""), 0)
  expect_equal(sum(athlete_urban_1_3$name==""), 0)
  expect_equal(sum(athlete_urban_1_3$valueType==""), 0)
  expect_equal(sum(athlete_urban_1_3$label==""), 0)
  # lifecycle_core_2_5
  expect_equal(sum(lifecycle_core_2_5$table==""), 0)
  expect_equal(sum(lifecycle_core_2_5$name==""), 0)
  expect_equal(sum(lifecycle_core_2_5$valueType==""), 0)
  expect_equal(sum(lifecycle_core_2_5$label==""), 0)
  # lifecycle_core_2_6
  expect_equal(sum(lifecycle_core_2_6$table==""), 0)
  expect_equal(sum(lifecycle_core_2_6$name==""), 0)
  expect_equal(sum(lifecycle_core_2_6$valueType==""), 0)
  expect_equal(sum(lifecycle_core_2_6$label==""), 0)
  # lifecycle_outcome_1_5
  expect_equal(sum(lifecycle_outcome_1_5$table==""), 0)
  expect_equal(sum(lifecycle_outcome_1_5$name==""), 0)
  expect_equal(sum(lifecycle_outcome_1_5$valueType==""), 0)
  expect_equal(sum(lifecycle_outcome_1_5$label==""), 0)
  # lifecycle_outcome_1_6
  expect_equal(sum(lifecycle_outcome_1_6$table==""), 0)
  expect_equal(sum(lifecycle_outcome_1_6$name==""), 0)
  expect_equal(sum(lifecycle_outcome_1_6$valueType==""), 0)
  expect_equal(sum(lifecycle_outcome_1_6$label==""), 0)
})

test_that("expect zero or one", {
  # athlete_urban_1_2
  expect_contains(athlete_urban_1_2$repeatable, c(0,1))
  expect_true(is.double(athlete_urban_1_2$repeatable))
  # athlete_urban_1_3
  expect_contains(athlete_urban_1_3$repeatable, c(0,1))
  expect_true(is.double(athlete_urban_1_3$repeatable))
  # lifecycle_core_2_5
  expect_contains(lifecycle_core_2_5$repeatable, c(0,1))
  expect_true(is.double(lifecycle_core_2_5$repeatable))
  # lifecycle_core_2_6
  expect_contains(lifecycle_core_2_6$repeatable, c(0,1))
  expect_true(is.double(lifecycle_core_2_6$repeatable))
  # lifecycle_outcome_1_5
  expect_contains(lifecycle_outcome_1_5$repeatable, c(0,1))
  expect_true(is.double(lifecycle_outcome_1_5$repeatable))
  # lifecycle_outcome_1_6
  expect_contains(lifecycle_outcome_1_6$repeatable, c(0,1))
  expect_true(is.double(lifecycle_outcome_1_6$repeatable))
})

test_that("categories column names and types", {
  # athlete_urban_1_2
  t <- dplyr::bind_rows(athlete_urban_1_2$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
  # athlete_urban_1_3
  t <- dplyr::bind_rows(athlete_urban_1_3$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
  # lifecycle_core_2_5
  t <- dplyr::bind_rows(lifecycle_core_2_5$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
  # lifecyle_core_2_6
  t <- dplyr::bind_rows(lifecycle_core_2_6$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
  # lifecyle_outcome_1_5
  t <- dplyr::bind_rows(lifecycle_outcome_1_5$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
  # lifecyle_outcome_1_6
  t <- dplyr::bind_rows(lifecycle_outcome_1_6$categories)
  if (nrow(t) > 0) {
    expect_equal(names(t), c("table", "value", "missing", "label"))
    expect_true(is.character(t$table))
    expect_true(is.double(t$value))
    expect_true(is.logical(t$missing))
    expect_true(is.character(t$label))
  }
})


