#' @title Addin: add an equation to a Rd help file
#' @description Two functions
#' - addRdEquation() Gives \\eqn{}
#' - addRdEquation_withLine() Gives \\deqn{}
#' @return Null
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  addRdEquation()
#'  addRdEquation_withLine()
#'  }
#' }
#' @seealso
#'  \code{\link[rstudioapi]{rstudio-documents}}
#' @rdname addRdEquation
#' @export
#' @importFrom rstudioapi insertText
addRdEquation <- function(){
  rstudioapi::insertText("\\eqn{}")
}

#' @export
#' @rdname addRdEquation
addRdEquation_withLine <- function(){
  rstudioapi::insertText("\\deqn{}")
}


