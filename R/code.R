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
#' @example inst/examples/createInstance.R
#' @seealso \code{
#'   	\link[instancer]{TODO}
#' }
#' @template authors
#' @template references
#' @export
createInstance <- function(of, with = NA) {
  structure(with, class = c(of, class(of)))
}
