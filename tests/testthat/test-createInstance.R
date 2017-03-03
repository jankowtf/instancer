context("create instance")

test_that("create instance works", {

  of <- "Testclass"
  with <- letters[1:5]

  target_1 <- structure(NA, class = c(of, class(with)))
  target_2 <- structure(with, class = c(of, class(with)))

  expect_identical(createInstance(of), target_1)
  expect_identical(createInstance(of, with), target_2)

})
