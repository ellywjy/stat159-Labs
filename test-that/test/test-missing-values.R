source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing values") 

test_that("Missing values works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})