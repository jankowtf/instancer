#' @title
#' Simple instantiation for S3
#'
#' @description
#' Currently a convenience wrapper around `structure()` to create "instances"
#' (typed objects) for methods based on the S3 method dispatch mechanism.
#'
#' @details
#' None yet
#'
#' @section Main functions/methods:
#'
#'  \itemize{
#'    \item{\code{\link[instancer]{createInstance}}: }{
#'
#'      createInstance(of = "Testclass", with = letters[1:3])
#'    }
#' }
#'
#' @section Disclaimer:
#'
#' \itemize{
#'    \item{
#'    \strong{This package is work in progress}
#'    }
#' }
#'
#' @section Inspiration and aknowledgements:
#' This package was inspired by:
#' \itemize{
#'    \item{TODO: include book of John Chambers where he explains S3}
#'    \item{\url{https://github.com/wch/R6}: } {
#'      R objects with reference semantics.
#'    }
#' }
#'
#' @template authors
#' @template references
#' @docType package
#' @name instancer
#' @seealso \url{https://github.com/rappster/instancer}
NULL
