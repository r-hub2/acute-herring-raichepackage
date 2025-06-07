#' @title Copy Rprofile_template to clipboard and open .Rprofile to edit
#' @description FUNCTION_DESCRIPTION

#' @return No return
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[fs]{file_access}}
#'  \code{\link[utils]{clipboard}}
#'  \code{\link[usethis]{edit_file}}
#' @rdname clipToRprofile
#' @export
#' @importFrom fs file_exists
#' @importFrom utils writeClipboard
#' @importFrom usethis edit_file
clipToRprofile <- function() {

  path <- find.package("raichepackage")

  # pour les projets avec renv,
  Rprofile <- (paste(path, "/templates/Rprofile_template", sep=""))
  if (fs::file_exists("renv/activate.R")){
    clipboard <- readLines(Rprofile)
    utils::writeClipboard(clipboard)
    cat("Effectuer manuellement une copie ecran du presse-papier ...\n")
    cat("Si les modifications conviennent, sauvegarder ...\n")
    usethis::edit_file(".Rprofile")
    #if (!fs::file_exists(".Rprofile")) fs::file_copy(Rprofile, ".Rprofile")
  }
  # Pour les projets ou Rprofile est dans l'environnement global
  if (!fs::file_exists("renv/activate.R")){
    HOME_Rprofile_path <- file.path(Sys.getenv("HOME"), ".Rprofile")
    clipboard <- readLines(Rprofile)
    utils::writeClipboard(clipboard)
    cat("Effectuer manuellement une copie ecran du presse-papier ...\n")
    cat("Si les modifications conviennent, sauvegarder ...\n")
    usethis::edit_file(HOME_Rprofile_path)
    #if (!fs::file_exists(HOME_Rprofile_path)) fs::file_copy(Rprofile, HOME_Rprofile_path)
  }

}
