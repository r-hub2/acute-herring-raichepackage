
# EXemple
#
# writeLines(temp, "templates/citation_template.txt")

#' @title Preview or create a citation template
#' @description Inspire de usethis::use_citation(). Voir aussi la fonction use_template() pour utiliser
#' differents templates (dont pour les options ou les yaml). Pour obtenir le chemin au fichier de
#' citation d'une librairie: fs::path_package(package = "usethis", "templates", "citation-template.R"). Et
#' pour lire ce fichier: temp <- readLines(fs::path_package(package = "usethis", "templates", "citation-template.R"))
#' @param file character, Default: 'citation_template.tmp'
#' @param preview logical, Default: TRUE
#' @return Formatted citation: character
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  citation_template()
#'  citation_template(preview=FALSE)
#'  }
#' }
#' @seealso
#'  \code{\link[fs]{file_access}}, \code{\link[fs]{create}}
#'  \code{\link[rstudioapi]{getActiveProject}}
#' @rdname citation_template
#' @export
#' @importFrom utils capture.output as.person
#' @importFrom fs dir_exists dir_create
#' @importFrom rbibutils readBibentry
#' @importFrom rstudioapi getActiveProject
citation_template <- function(file="citation_template.tmp", preview=TRUE) {
  directory <- "inst/templates"
  if (!fs::dir_exists(directory)) {
    fs::dir_create(directory)
    cat("Created directory: ", directory, "\n", sep="")
  }

  package <- basename(rstudioapi::getActiveProject())
  bibtype = options("raichepackage.bibtype")
  name=as.person(options("raichepackage.name"))
  email=options("raichepackage.email")
  institution=options("raichepackage.institution")
  adress=options("raichepackage.address")
  url=options("raichepackage.url")
  title <- paste('  title    = "', package, ': Courte description"', ",", sep="")

  bibentry <- c(
    'bibentry(',
    paste('  bibtype  = "', bibtype, '",', sep=""),
    paste('  title    = "', package, ': Courte description"', ",", sep=""),
    paste('  author  = "', name, '",', sep=""),
    paste('  institution  = "', institution, '",', sep=""),
    paste('  adress  = "', adress, '",', sep=""),
    paste('  year     = "',format(Sys.time(), "%Y"), '",', sep=""),
    paste('  url  = "', url, '",', sep=""),
    ')'
  )

 file <- paste("inst/templates/", file, sep="")

 if (preview) {
   cat("\nTemplate directory: ", directory, "\n\n", sep="")
   return(noquote(as.character(bibentry)))
 }

 if (!preview) {
   cat("Saved file: ", file, "\n", sep="")
   writeLines(bibentry, file)
   cat("Saved used CITATION file: ", "ins/CITATION \n", sep="")
   writeLines(bibentry, fs::path("inst", "CITATION"))
   cat("\n\n")
   print(rbibutils::readBibentry(file="inst/templates/citation_template.tmp"))
 }

}



