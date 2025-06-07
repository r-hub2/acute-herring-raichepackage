#' @title Initialisation des fichiers et repertoires d'une librarie
#' @description FUNCTION_DESCRIPTION
#' @param package PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[devtools]{reexports}}
#'  \code{\link[usethis]{use_description}}, \code{\link[usethis]{use_author}}, \code{\link[usethis]{licenses}}, \code{\link[usethis]{use_roxygen_md}}, \code{\link[usethis]{use_citation}}, \code{\link[usethis]{use_addin}}, \code{\link[usethis]{use_vignette}}, \code{\link[usethis]{use_news_md}}, \code{\link[usethis]{use_readme_rmd}}, \code{\link[usethis]{use_logo}}
#' @rdname pack_initialisation
#' @export
#' @importFrom devtools has_devel
#' @importFrom fs dir_create dir_exists file_copy file_exists
#' @importFrom rstudioapi getActiveProject
#' @importFrom usethis use_description use_author use_gpl3_license use_roxygen_md use_citation use_addin use_vignette use_news_md use_readme_rmd use_logo
pack_initialisation <- function(package) {
  if (package=="raichepackage") stop("Package must be another one than 'raichepackage'")
  if (is.null(package)) package <- basename(rstudioapi::getActiveProject())
  test <- devtools::has_devel(debug=TRUE) # Verifie si l'environnement est OK
  if (!test) stop("Utilitaires de developpement non installes")

  usethis::use_description()
  # Add an author to the 'Authors@R' field in DESCRIPTION
  #usethis::use_author("Gilles", "Raiche", "aut", "raiche.gilles@uqam.ca")
  #usethis::use_gpl3_license() # Add to DESCRIPTION
  usethis::use_roxygen_md() # Use roxygen2 with markdown (add to DESCRIPTION)

  #usethis::use_citation() # Create a CITATION template
  citation_template(preview=FALSE)
  if (!fs::dir_exists("templates")) fs::dir_create("templates")
  # Voir aussi la fonction use_template() pour utiliser differents templates (dont pour les options ou les yaml)
  # fs::path_package(package = "usethis", "templates", "citation-template.R")
  # if (!fs::dir_exists("templates")) fs::dir_create("templates")
  # EXemple
  # temp <- readLines(fs::path_package(package = "usethis", "templates", "citation-template.R"))
  # writeLines(temp, "templates/citation_template.txt")
  if (!fs::file_exists("inst/rstudio/addins.dcf")) usethis::use_addin() # Add minimal RStudio Addin binding

  vignette_name <- paste(package,".Rmd", sep="")
  # Create a vignette or article (and other dir or files)
  usethis::use_vignette(vignette_name)

  usethis::use_news_md() # Create a simple NEWS.md
  usethis::use_readme_rmd() # Creates skeleton README files



  # Placer prealablement une figure .png dans man/figures
  # Permet aussi de creer .Rprofile
  if (package!="raichepackage"){
    path <- find.package("raichepackage")

    # Valide seulement pour les projets avec renv,
    # Rprofile <- (paste(path, "/inst/templates/Rprofile_template", sep=""))
    # if (fs::file_exists("renv/activate.R")){
    #   clipboard <- readLines(Rprofile)
    #   utils::writeClipboard(clipboard)
    #   cat("Effectuer manuellement une copie ecran du presse-papier ...\n")
    #   cat("Si les modifications conviennent, sauvegarder ...\n")
    #   usethis::edit_file(".Rprofile")
    #   if (!fs::file_exists(".Rprofile")) fs::file_copy(Rprofile, ".Rprofile")
    # }
    # # sinon placer dans l'environnement global
    # if (!fs::file_exists("renv/activate.R")){
    #   HOME_Rprofile_path <- file.path(Sys.getenv("HOME"), ".Rprofile")
    #   clipboard <- readLines(Rprofile)
    #   utils::writeClipboard(clipboard)
    #   cat("Effectuer manuellement une copie ecran du presse-papier ...\n")
    #   cat("Si les modifications conviennent, sauvegarder ...\n")
    #   usethis::edit_file(HOME_Rprofile_path)
    #   #if (!fs::file_exists(HOME_Rprofile_path)) fs::file_copy(Rprofile, HOME_Rprofile_path)
    # }
    #
    # file.path(Sys.getenv("HOME"), ".Rprofile")

    logo <- (paste(path, "/divers/Readme_logo.png", sep=""))
    if (!fs::dir_exists("man/figures")) fs::dir_create("man/figures")
    if (!fs::file_exists("man/figures/logo.png")) fs::file_copy(logo, "man/figures/logo.png")
    # Use a package logo in man/figures/Readme_logo.png (add also Rmarkdown to README)
    usethis::use_logo(logo)
  }

}


