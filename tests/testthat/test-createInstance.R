context("create instance")

test_that("create instance works", {

  of <- "Testclass"
  with <- letters[1:5]

  target_1 <- structure(NA, class = of)
  target_2 <- structure(with, class = of)
  target_3 <- structure(with, class = c(of, class(with)))

  expect_identical(createInstance(of), target_1)
  expect_identical(createInstance(of, with), target_2)
  expect_identical(createInstance(of, with, inherits = TRUE), target_3)

})
