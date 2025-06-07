## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

## ----echo=FALSE, eval=FALSE---------------------------------------------------
# suggests <- c(
#     "BiocStyle",
#     "bookdown",
#     "knitr",
#     "rmarkdown",
#     "R.utils")
# 
# librairies <- c(.packages(), suggests)
# knitr::write_bib(librairies, "packages.bib")
# if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
# BiocManager::install("BiocStyle")

## ----setup, echo=FALSE, eval=FALSE--------------------------------------------
# library(raichepackage)

## ----style, echo = FALSE, eval=FALSE, results = 'asis'------------------------
# # https://bioconductor.org/packages/devel/bioc/vignettes/BiocStyle/inst/doc/AuthoringRmdVignettes.html
# tinytex::tlmgr_install('pdfcrop') # Pour traiter les références croisées des équations
# # https://www.ctan.org/pkg/pdfcrop
# # extra_dependencies: ["Bioconductor", "bibextract", "pdfcrop"]
# BiocStyle::markdown()
# system('pdflatex --version')
# BiocStyle::pkg_ver("BiocStyle")
# BiocStyle::doc_date()

## ----tab1, tab.cap="Exemple de tableau"---------------------------------------
 knitr::kable(
  head(mtcars[, 1:8], 10)
  )

## ----plot1, fig.cap="Exemple de figure", fig.wide=TRUE------------------------
 x <- rnorm(10)
 density <- dnorm(x)
 plot(x, density)

## ----tab2, tab.cap="Division des théorèmes dans bookdown"---------------------
 kableExtra::kbl(
  raicheutils::extract_theorem_labels()
  )

## -----------------------------------------------------------------------------
 print(sessionInfo())

