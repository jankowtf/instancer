context("create instance")

test_that("create instance works", {

  of <- "test_class"
  with <- letters[1:5]

  target_1 <- structure(with, class = c(of, class(with)))
  target_2 <- structure(NA, class = of)
  target_3 <- structure(with, class = of)

  expect_identical(createInstance(of, with), target_1)
  expect_identical(createInstance(of, inherits = FALSE), target_2)
  expect_identical(createInstance(of, with, inherits = FALSE), target_3)

})

test_that("attributes work", {

  of <- "test_class"
  with <- letters[1:5]

  target_1 <- structure(NA, class = c(of, class(NA)),
    attr_1 = TRUE, attr_2 = "yep!")
  expect_identical(
    createInstance(of, attributes = list(attr_1 = TRUE, attr_2 = "yep!")),
    target_1)

  target_2 <- structure(NA, class = c(of, class(NA)),
    my_attrs = list(attr_1 = TRUE, attr_2 = "yep!"))
  expect_identical(
    createInstance(of,
      attributes = list(my_attrs = list(attr_1 = TRUE, attr_2 = "yep!"))),
    target_2)

})

test_that("unique class table elements works", {

  of <- "test_class"
  with <- letters[1:5]

  target_1 <- structure(NA, class = c(of, class(NA)))

  expect_identical(res <- createInstance(of), target_1)
  expect_identical(createInstance(class(res)), target_1)

})

test_that("df doesn't get turned into a list", {

  of <- "test_class"
  with <- mtcars

  target <- structure(with, class = c(of, class(with)))
  target_2 <- structure(with, class = of)

  expect_identical(inst <- createInstance(of, with), target)
  expect_error(inst <- createInstance(of, with, inherits = FALSE))

})
