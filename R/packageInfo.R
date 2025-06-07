#' @title Informations sur une librairie disponible sur CRAN ou Github
#' @description FUNCTION_DESCRIPTION
#' @param pkg character: package name
#' @return Path to the package: character
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  repos = getOption("repos")
#'  packageInfo("ggplot2")
#'  }
#' }
#' @seealso
#'  \code{\link[pkgsearch]{cran_package}}
#'  \code{\link[utils]{packageDescription}}
#' @rdname packageInfo
#' @export
#' @importFrom utils citation
#' @importFrom pkgsearch cran_package
#' @importFrom utils packageVersion packageDate packageDescription
packageInfo <- function(pkg) {
  #utils::packageName(pkg)
  info <- pkgsearch::cran_package(pkg)
  cat(info$Package, ": ", info$Version, "\n", sep="")
  cat("Package version:", as.character(utils::packageVersion(pkg)), "\n")
  cat("Date of creation:", as.character(utils::packageDate(pkg)), "\n\n")
  print(utils::packageDescription(pkg))
  cat("\n\n")
  utils::citation(pkg)
  packPath <- .libPaths()[1]
  invisible(packPath)
  # readLines("C:/Users/raich/AppData/Local/R/cache/R/renv/library/raichepackage-147b9985/windows/R-4.4/x86_64-w64-mingw32/usethis/templates/vignette.Rmd")
}


