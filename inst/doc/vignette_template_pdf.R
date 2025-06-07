## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

knitr::opts_chunk$set(echo = TRUE, warning = FALSE, message = FALSE)

suggests <- c(
    "knitr",
    "rmarkdown",
    "R.utils")

librairies <- c(.packages(), suggests)
knitr::write_bib(librairies, "packages.bib")

## ----setup, eval=FALSE--------------------------------------------------------
# library(raichepackage)

## ----plot1, opts.label="Exemple de figure"------------------------------------
 x <- rnorm(10)
 density <- dnorm(x)
 plot(x, density)

