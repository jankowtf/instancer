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
## Examples

```
createInstance(of = "Testclass")
createInstance(of = "Testclass", with = letters[1:3])
```

## Vignettes

- [Introduction](https://github.com/rappster/instancer/tree/master/vignettes/introduction.Rmd) (rendered versions available in R via `vignette("introduction", package = "instancer")`)
