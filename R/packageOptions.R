#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param package PARAM_DESCRIPTION, Default: basename(rstudioapi::getActiveProject())
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  packageOptions()
#'  packageOptions("usethis")
#'  }
#' }
#' @seealso
#'  \code{\link[rstudioapi]{getActiveProject}}
#'  \code{\link[utils]{installed.packages}}
#' @rdname packageOptions
#' @export
#' @importFrom rstudioapi getActiveProject
#' @importFrom utils installed.packages
packageOptions <- function(package = basename(rstudioapi::getActiveProject())) {
  if (!package %in% utils::installed.packages()[,1]) stop("Argument package not correct")
  .Options[grep(package, names(.Options))]
}



