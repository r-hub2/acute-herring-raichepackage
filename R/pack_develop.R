#' @title Developpement d'une librairie
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
#'  \code{\link[devtools]{load_all}}, \code{\link[devtools]{document}}, \code{\link[devtools]{build_rmd}}
#' @rdname pack_develop
#' @export
#' @importFrom devtools load_all document build_readme
pack_develop <- function() {
  devtools::load_all(".") # Charge les fonctions disponibles (necessaire pour Roxygener)
  # Utiliser un utilitaire pour Roxygener les fonctions
  devtools::document() # Transforme le code Roxygen2 en Rd et cree les fichiers
  # renv::upgrade(version = "main") peut etre necessaire si un avis est emis
  devtools::build_readme() # Pour mettre a jour README.Rmd
  # devtools::check()
}
