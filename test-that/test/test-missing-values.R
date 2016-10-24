source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing values") 

test_that("Missing values works as expected", {
  y <- c(1, 2, 3, 4, NA)

  expect_length(missing_values(y), 1)
  expect_type(missing_values(y), 'integer')
  expect_gte(missing_values(y), 0)
})

