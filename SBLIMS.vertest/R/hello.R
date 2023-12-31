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
#' @return
#' @export
#'
#' @examples
start1 <- function(path1="C:/SBLIMS/lib"){
  library(renv)
  # renv::activate()
  renv::restore(lockfile = system.file("lock/renv.lock", package = "SBLIMS.vertest"), library = path1, clean = TRUE)
  .libPaths(path1)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
.onLoad <- function(libname, pkgname){
  library(renv)
  # renv::activate()
  renv::restore(lockfile = system.file("lock/renv.lock", package = "SBLIMS.vertest"), library = "C:/SBLIMS/lib", clean = TRUE)
  .libPaths("C:/SBLIMS/lib")
}
