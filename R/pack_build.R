#' @title Creation des versions source et binaire d'une librairie
#' @description FUNCTION_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[devtools]{build}}
#' @rdname pack_build
#' @export
#' @importFrom devtools build
pack_build <- function() {
  devtools::build(binary=TRUE, manual=TRUE)
  devtools::build(binary=FALSE, manual=TRUE)
}
