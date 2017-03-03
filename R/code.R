#' @title
#' Create instance object
#'
#' @description
#' Convenience wrapper around `structure()`.
#'
#' @details
#' None yet.
#'
#' @param of \code{\link{character}}.
#' Name of the class for which an instance should be created.
#' @param with \code{\link{ANY}}.
#' Any object that should act as the actual data of the instance.
#' @param inherits \code{\link{logical}}.
#' \code{TRUE}: resulting object inherits from class(es) of \code{with}.
#' \code{FALSE} (default): resulting object only has class \code{of}.
#' @example inst/examples/createInstance.R
#' @seealso \code{
#'   	\link[instancer]{TODO}
#' }
#' @template authors
#' @template references
#' @export
createInstance <- function(of, with = NA, inherits = FALSE) {
  structure(with, class = if (inherits) c(of, class(of)) else of)
}
