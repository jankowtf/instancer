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
createInstance(of = "Testclass")
createInstance(of = "Testclass", with = letters[1:3])
createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE)

createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE,
  attributes = list(attr_1 = TRUE, attr_2 = "yep!"))
createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE,
  attributes = list(my_attrs = list(attr_1 = TRUE, attr_2 = "yep!")))
```

## Use with S3 methods 

### Create methods

```
foo <- function(x, context) {
  UseMethod("foo", x)
}

foo.Testclass1 <- function(x, context = NULL) {
  UseMethod("foo.Testclass1", context)
}

foo.Testclass1.NULL <- function(x, context = NULL) {
  "Hello World!"
}

foo.Testclass1.Context1 <- function(x, context) {
  "I'm the method for context 1"
}

foo.Testclass1.Context2 <- function(x, context) {
  "I'm the method for context 2"
}
```

### Call methods

```
x <- createInstance("Testclass1")
foo(x)

ctxt_1 <- createInstance("Context1")
foo(x = x, context = ctxt_1)

ctxt_2 <- createInstance("Context2")
foo(x = x, context = ctxt_2)
```

## Vignettes

- [Introduction](https://github.com/rappster/instancer/tree/master/vignettes/introduction.Rmd) (rendered versions available in R via `vignette("introduction", package = "instancer")`)
