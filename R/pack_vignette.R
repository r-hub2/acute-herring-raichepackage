#' @title FCreate a vignette template and a vignette directory
#' @description FUNCTION_DESCRIPTION
#' @param copyTo character, Default: 'template_html_Rmd'
#' @param overwrite logical, Default: FALSE
#' @return No return
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[fs]{file_access}}, \code{\link[fs]{create}}, \code{\link[fs]{copy}}
#' @rdname pack_vignette
#' @export
#' @importFrom fs dir_exists dir_create file_copy
pack_vignette <- function(copyTo="introduction", overwrite=FALSE) {
  vignette_dir <- "vignettes"
  if (fs::dir_exists(vignette_dir)) fs::dir_create(vignette_dir)
  dirpack <- dirname(system.file(package="raichepackage"))
  #copyFrom <- paste(dirpack, "/vignettes/", "template_html_Rmd.Rmd", sep="")
  copyFrom <- paste(dirpack, "/templates/", "vignette_template.Rmd", sep="")
  copyTo <- paste("vignettes/", copyTo, ".Rmd", sep="")
  fs::file_copy(copyFrom, copyTo, overwrite = overwrite)
}

#pack_vignette <- function(file, output="html_document" ,preview=FALSE) {
  #author = as.character(options("raichepackage.name"))
  #my_document <- list(
  #  title = file,
  #  author = author,
  #  output = list(
  #    as.character(paste("rmarkdown::",  output, ":", sep="")),
  #   ),
  #  body = txt_body(
  #    "# Intro",
  #    "",
  #    "This is just an example."
  #  )
 # )

  #my_document <- as(my_document, "rmd_doc")

  #write_rmd(my_document, filename = file)

  #render_rmd(input, output_file, delete_rmd = TRUE, ...)

  #if (!preview) return(my_document)
#}

# pack_vignette(file="TEST")

### vigns <- tools::pkgVignettes(dir = ".")$docs
### vings
### rmarkdown::render("E:/PROJETS/PACKAGES/raichepackage/vignettes/template_html_Rmd.Rmd", output_format = "pdf_document")
### rmarkdown::render("E:/PROJETS/PACKAGES/raichepackage/vignettes/template_html_Rmd.Rmd", output_format = "all")
### dirpack <- dirname(system.file(package="raichepackage"))
### dir(dirpack)
### dir(paste(dirpack, "/vignettes", sep=""))





