# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected for y", {
  y <- c(1, 2, 3, 4, NA)

  expect_length(range_value(y), 1)
  expect_equal(range_value(y), NA_real_)
  expect_equal(range_value(y, na.rm = TRUE), 3)
})



test_that("range works as expected for z", {
  z <- c(TRUE, FALSE, TRUE)

  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})


test_that("range works as expected for w", {
  
 w <- letters[1:5]
	expect_error(range_value(w))
})