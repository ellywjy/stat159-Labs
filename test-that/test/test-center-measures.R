source("../functions/center-measures.R")

# context with one test that groups expectations
context("Test for center measures") 

test_that("center-measures works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_length(center_measures(x), 2)
  expect_type(center_measures(x), 'double')
  expect_equal(center_measures(x), c(3, 3))
})