% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/access_package_dir.R
\name{access_package_dir}
\alias{access_package_dir}
\title{Examine the package source directory}
\usage{
access_package_dir(package, ...)
}
\arguments{
\item{package}{character, package name}

\item{...}{additional arguments to pathr::tree}
}
\value{
list, dirname and content of dirname
}
\description{
FUNCTION_DESCRIPTION
}
\details{
DETAILS
}
\examples{
\dontrun{
if(interactive()){
 access_package_dir("usethis", out="TEMP_DIR_TREE.TXT")
 }
}
}
