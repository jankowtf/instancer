instancer
======

[![Build Status](https://travis-ci.org/rappster/instancer.png)](https://travis-ci.org/rappster/instancer)
[![Coverage Status](https://img.shields.io/codecov/c/github/rappster/instancer/master.svg)](https://codecov.io/github/rappster/instancer?branch=master)
[![License](https://img.shields.io/badge/license-mit-brightgreen.svg?style=flat)](https://opensource.org/licenses/MIT)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/instancer)](http://cran.r-project.org/package=instancer)
[![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/instancer)](http://cran.rstudio.com/package=instancer)

## Description

TODO

## Installation

```
require("devtools")
devtools::install_github("rappster/instancer")
require("instancer")
```
## Create instances 

```
createInstance(of = "test_class")
createInstance(of = "test_class", with = letters[1:3])
createInstance(of = "test_class", with = letters[1:3], inherits = FALSE)

createInstance(of = "test_class", with = letters[1:3],
  attributes = list(attr_1 = TRUE, attr_2 = "yep!"))
createInstance(of = "test_class", with = letters[1:3],
  attributes = list(my_attrs = list(attr_1 = TRUE, attr_2 = "yep!")))
```

# Use in S3 methods

## Create methods

```
foo <- function(x, ...) {
  UseMethod("foo", x)
}

foo.test_class <- function(x, ...) {
  print("hello world")
}
```

## Call methods

```
x <- createInstance("test_class")
foo(x)
```

## Vignettes

- [Introduction](https://github.com/rappster/instancer/tree/master/vignettes/introduction.Rmd) (rendered versions available in R via `vignette("introduction", package = "instancer")`)
- [Multi dispatch (draft)](https://github.com/rappster/instancer/tree/master/vignettes/multi_dispatch.Rmd) (rendered versions available in R via `vignette("multi_dispatch", package = "instancer")`)
