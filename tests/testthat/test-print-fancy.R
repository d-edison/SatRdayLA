context("test-print-fancy")

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("returns x", {
  expect_equal("test", print_fancy("test"))
})

test_that("non character fails", {
  expect_error(print_fancy(1L))
})

test_that("non length 1 fails", {
  expect_error(print_fancy(letters))
})
