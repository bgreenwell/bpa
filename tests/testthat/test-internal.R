################################################################################
# Internal functions
################################################################################

context("internal functions")

test_that("trim_ws works properly", {
  x <- c("abc", " abc", "abc ", " abc ")
  y <- c("123", " 123", "123 ", " 123 ")
  d <- data.frame(x, y)
  expect_equal(trim_ws(x), rep("abc", 4))
  expect_equal(trim_ws(y), rep("123", 4))
  expect_equal(trim_ws(d), data.frame(x = rep("abc", 4), y = rep("123", 4),
                                      stringsAsFactors = FALSE))
})

