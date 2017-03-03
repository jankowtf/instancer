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

test_that("attributes work", {

  of <- "Testclass"
  with <- letters[1:5]

  target_1 <- structure(NA, class = of, attr_1 = TRUE, attr_2 = "yep!")

  expect_identical(createInstance(of,
    attributes = list(attr_1 = TRUE, attr_2 = "yep!")), target_1)

})
