## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

imports <- c( 
    "devtools",
    "fs",
    "gert",
    "pathr",
    "pkgsearch",
    "rbibutils",
    "renv",
    "rstudioapi",
    "usethis",
    "utils")

suggests <- c(
    "knitr",
    "rmarkdown",
    "R.utils")

other_libraries <- c(
     "devtools",
     "pkgbuild",
     "pkgconfig",
     "pkgdown",
     "pkgload",
     "pkgmaker",
     "registry",
     "tools",
     "usethis",
     "utils"
)

librairies <- c(.packages(), imports, suggests, other_libraries)
knitr::write_bib(librairies, "packages.bib")

## ----setup, eval=FALSE--------------------------------------------------------
# library(raichepackage)

## ----Rstudio, echo=FALSE, fig.cap="Figure 1. Écran New package project in Rstudio", out.width = '75%'----
knitr::include_graphics("Rstudio_package_project.gif")

## ----eval=FALSE---------------------------------------------------------------
# remotes::install_github("trinker/pathr")
# package <- "raichepackage" # Ou autre librairie
# # Sur un repository (CRAN ou Github)
# remotes::install_deps(package, build_vignettes = TRUE)
# # En local
# dirpack <- dir("../")
#  l1 <- grepl(package, dirpack, fixed=TRUE)
#  l2 <- grepl(".tar.gz", dirpack, fixed=TRUE)
#  source_pack <- dirpack[intersect(which(l1), which(l2))]
# #path <- "../raichepackage_1.0.0.tar.gz"
# remotes::install_deps(source_pack, build_vignettes = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# pack_initialisation("vraisemblance")

## ----eval=FALSE---------------------------------------------------------------
# # https://blog.r-hub.io/2019/12/03/readmes/
# #https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes
# # https://search.r-project.org/CRAN/refmans/rcompendium/html/add_readme_rmd.html
# # https://building-r-packages.readthedocs.io/en/latest/vignettes-and-readme.html
# # https://r-pkgs.org/other-markdown.html
# # CRAN todor package
# utils::news(package="malibrairie")
# utils::packageDescription
# 

## ----eval=TRUE, echo=TRUE-----------------------------------------------------
print(file.exists("RAICHE_SCEE_2008.pps"))
dir()

## ----eval=FALSE---------------------------------------------------------------
# path <- find.package("raichepackage")
# path
# dir(paste(path, "/divers", sep=""))

## ----eval=FALSE---------------------------------------------------------------
# # NÉCESSAIRE OU TRÈS UTILE
# devtools::load_all(".") # Charge les fonctions disponibles
# devtools::document() # Transforme le code Roxygen2 en Rmd et crée les fichiers
# devtools::has_devel(debug=TRUE) # Vérifie si l'environnment est OK
# pkgbuild::check_build_tools(debug=TRUE) # Idem
# usethis::use_description() # Crée ou modifie DESCRIPTION
# usethis::use_author() # Add an author to the 'Authors@R' field in DESCRIPTION
# usethis::use_citation() # Create a CITATION template
# usethis::use_addin() # Add minimal RStudio Addin binding
# usethis::use_gpl3_license() # Add to DESCRIPTION
# usethis::use_vignette() # Create a vignette or article (and other dir or files)
# usethis::use_roxygen_md() # Use roxygen2 with markdown (add to DESCRIPTION)

## ----eval=FALSE---------------------------------------------------------------
# # OPTIONNEL
# usethis::use_news_md() # Create a simple NEWS.md
# usethis::use_readme_rmd() # Creates skeleton README files
# devtools::build_readme() # Devrait suivre pour mise à jour
# usethis::use_data() # Create package data
# usethis::use_data_raw() # Similaire
# usethis::use_logo("logo.png") # Use a package logo in man/figures/logo.png (add also markdown to README)
# 
# usethis::use_pipe() # À analyser
# usethis::use_rstudio() # À analyser  rarement utile
# usethis::use_rstudio_preferences() # Très rarement utile
# usethis::use_rmarkdown_template() # Add an RMarkdown Template
# usethis::use_template() # Use a usethis-style template

## ----eval=FALSE---------------------------------------------------------------
# edit_r_profile("project")
# edit_rstudio_snippets() # opens RStudio's snippet config for the given type

## ----eval=FALSE---------------------------------------------------------------
# # devtools::build_vignettes() Crée une vignette dans le répertoire doc/
# devtools::load_all()
# 
# vignette() # Liste de toutes les vignettes pour toutes les librairies
# browseVignettes() # Idem au format HTML (plus utile)
# tools::getVignetteInfo("raicheutils")
# devtools::build_manual() # Dans le répertoire du projet
# utils::data() # Liste de tous les data des librairies
# temp <- system.file(package="raichepackage") # Répertoire de la librairie
# getwd()
# fs::path_home() # Ex. C:/Users/raich #
# path.expand("~") # Ex. "C:/Users/raich/OneDrive/Documents"
# 
# fs::dir_tree() # Arborescence de la librairie
# fs::dir_tree(temp) # Arborescence de la librairie
# file_info = fs::file_info(temp)
# names(file_info)
# c(Path=file_info$path, permissions=file_info$permissions)
# cat("\n\npath=", file_info$path, "\n\nPermissions=", as.character(file_info$permissions))

## ----eval=FALSE---------------------------------------------------------------
# remotes::install_github("jacobbien/litr-project@*release", subdir = "litr")
# litr::render("create-litr/index.Rmd")

## ----eval=FALSE---------------------------------------------------------------
# remove.packages("meteoR")

## ----eval=FALSE---------------------------------------------------------------
# dir("./vignettes/") # Un répertoire plus bas
# dir("../") # Un répertoire plus haut
# R.utils::ProgressBar()
# R.utils::readRdHelp("options", format="text")
# R.utils::setOption()
# R.utils::toUrl(getwd()) # Donne l'url d'un fichier ou d'un répertoire

## ----eval=FALSE---------------------------------------------------------------
# dir("../") # Mon répertoire de packages
# remotes::install_local("../raichepackage_1.0.0.tar.gz")
# library("raichepackage")
# 

