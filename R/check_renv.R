#' @title Check if renv is ok or do a restore and snapshot
#' @description FUNCTION_DESCRIPTION
#' @param synchronized PARAM_DESCRIPTION, Default: FALSE
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[renv]{status}}, \code{\link[renv]{restore}}, \code{\link[renv]{snapshot}}
#' @rdname check_renv
#' @export
#' @importFrom renv status restore snapshot
#' @importFrom stringr str_extract
check_renv <- function(synchronized=FALSE) {
  no_issues <- "No issues found -- the project is in a consistent state."
  info <- capture.output(renv::status())
  info <- as.logical(stringr::str_extract(info, "No issues", group = NULL) == "No issues")
  if (info) synchronized <- TRUE
  if (!info) {
    renv::restore()
    renv::snapshot()
    cat("\n \nLibrary synchronized and lockfile up to date \n")
    synchronized <- TRUE
    }
  return(synchronized)
}

