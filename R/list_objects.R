#' @title Liste des objects disponibles dans une librairie
#' @description Liste des objects disponibles dans une librairie
#' @param package character, package name
#' @param pattern character, Default: ''
#' @return liste, Liste des objects disponibles, sinon NULL
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  list_objects("raichepackage")
#'  }
#' }
#' @seealso
#'  \code{\link[utils]{ls.str}}
#' @rdname list_objects
#' @export
#' @importFrom utils ls.str
list_objects <- function(package, pattern="") {
  envir <- ls()
  cat("Environnements:", envir, "\n")
  cat("Librairie etudiee:", package, "\n")
  tmp <- installed.packages()
  tmp <- row.names(tmp)
  if (!package %in% tmp) {
    # pacman::p_exists(package)
    # pacman::p_isinstalled(package)
    message("La librairie ", package, " n'est pas installee.\n")
    return()
  }

  if (requireNamespace(package)) invisible(lapply(package, library, character.only = TRUE))
  if (is.element(package, loadedNamespaces())) {
    cat("... Les objects disponibles dans la librairie", package, "sont les suivants: ...\n")
    res <- utils::ls.str(pattern=pattern, pos=paste("package:", package, sep=""))
    res <- unlist(res)
    #res
    return(res)
  } else {
    message("La librairie ", package, " n'est pas chargee.\n")
  }
}


