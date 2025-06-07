.onLoad <- function(libname, pkgname) {
  pack <- packageVersion(pkgname)
  given <- "Gilles"
  family <- "Raiche,"
  email <-  "raiche.gilles@uqam.ca"
  name <- paste(given, family)

  gitVersion <- system("git --version", intern=TRUE)
  options(
    raichepackage.bibtype = "techreport",
    raichepackage.gitversion = gitVersion,
    raichepackage.name = name,
    raichepackage.email = email,
    raichepackage.address = "Montreal, Canada",
    raichepackage.institution = "Universite du Quebec a Montreal, Departement d'education et pedagogie",
    raichepackage.url = "https://www.cdame2.uqam.ca/RECHERCHE/COMMUNICATIONS/2008/SCEE/",
    usethis.description = list(
      "Authors@R" = utils::person(
        given, family,
        email = email,
        role = c("aut", "cre"),
        comment = c(ORCID = "YOUR-ORCID-ID")
      ),
      License = "GPL-3"
    ),
    usethis.destdir = "/path/to/folder/", # for use_course(), create_from_github()
    usethis.protocol = "ssh", # Use ssh git protocol
    usethis.overwrite = TRUE # overwrite files in Git repos without confirmation
  )
  gert::git_config_global_set("user.name", name)
  gert::git_config_global_set("user.email", email)
  packageStartupMessage("This is version ", pack,
                        " of ", pkgname)
  packageStartupMessage("This is ", gitVersion, " installed")
}

# getOption("usethis.description")
# https://stackoverflow.com/questions/35125756/find-all-options-defined-by-a-given-package

# fritools2::get_options(package_name="usethis")
# tibble:::op.tibble
# https://cran.r-project.org/doc/manuals/R-exts.html
# https://cran.r-project.org/manuals.html
# https://bookdown.dongzhuoer.com/hadley/r-pkgs/r.html
# https://rlang.r-lib.org/reference/on_load.html
