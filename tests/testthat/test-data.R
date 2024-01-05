# list of all available datasets for dsDictionaries
l <- data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("list of datasets not empty", {
  expect_false(purrr::is_empty(l))
})
test_that("expect lifecycle datasets" , {
  expect_contains(l, c("lifecycle_core_2_6"))
})

data(list = data.frame(data(package = "dsDictionaries")$result)$Item, package = "dsDictionaries")

test_that("expect string not empty", {
  expect_equal(sum(lifecycle_core_2_6$table==""), 0)
  expect_equal(sum(lifecycle_core_2_6$name==""), 0)
  expect_equal(sum(lifecycle_core_2_6$valueType==""), 0)
  expect_contains(lifecycle_core_2_6$repeatable, c(0,1))
})
