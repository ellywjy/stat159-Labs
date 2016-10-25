source("../functions/spread-measures.R")

# context with one test that groups expectations
context("Test for spread measures") 

test_that("spread-measures works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_length(spread_measures(x), 4)
  expect_type(spread_measures(x), 'double')
  expect_equal(spread_measures(x)[3], 2)
})

