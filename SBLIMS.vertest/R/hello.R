# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Title
#'
#' @return
#' @export
#'
#' @examples
hello <- function() {
  print("Hello, world!")
}

#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
# split1 <- function(x){
#   stringr::str_split(x, ",")
# }

.onLoad <- function(libname, pkgname){
  library(renv)
  renv::activate()
  renv::restore(system.file("renv.lock", package = "SBLIMS.vertest"), clean = TRUE)
}
