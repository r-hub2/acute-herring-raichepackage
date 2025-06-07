## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

suggests <- c(
    "BiocStyle",
    "bookdown",
    "knitr",
    "rmarkdown",
    "R.utils")

librairies <- c(.packages(), suggests)
knitr::write_bib(librairies, "packages.bib")

## ----setup, eval=FALSE--------------------------------------------------------
# library(raichepackage)
# 
# if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
# BiocManager::install("BiocStyle")

## ----tab1, tab.cap="Exemple de tableau"---------------------------------------
 knitr::kable(
  head(mtcars[, 1:8], 10), caption = 'A table of the first 10 rows of `mtcars`.'
)

## ----plot1, fig.cap="Exemple de figure", fig.wide=TRUE------------------------
 x <- rnorm(10)
 density <- dnorm(x)
 plot(x, density)

## ----tab2, tab.cap="Environnement des théorèmes"------------------------------
# http://adv-r.had.co.nz/Environments.html#env-basics
#bookdown:::label_names_math$thm <<- "THEOREME"
#ls(getNamespace("bookdown"), all.names=FALSE)

knitr::kable(data.frame(
  Environment = names(bookdown:::theorem_abbr),
  `Printed Name` = unname(unlist(bookdown:::label_names_math)),
  `Label Prefix` = unname(bookdown:::theorem_abbr),
  stringsAsFactors = FALSE, check.names = FALSE
),booktabs = TRUE)

## -----------------------------------------------------------------------------
 print(sessionInfo())

