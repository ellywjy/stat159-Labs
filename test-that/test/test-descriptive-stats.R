source("../functions/descriptive-stats.R")

# context with one test that groups expectations
context("Test for descriptive stats") 

test_that("Descritpive stats works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_length(descriptive_stats(x), 7)
  expect_type(descriptive_stats(x), 'double')
  expect_equal(descriptive_stats(x)[1:5], c(3,3,1,5,2))
  expect_equal(descriptive_stats(x)[7], 0)

})