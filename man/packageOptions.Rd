% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/packageOptions.R
\name{packageOptions}
\alias{packageOptions}
\title{FUNCTION_TITLE}
\usage{
packageOptions(package = basename(rstudioapi::getActiveProject()))
}
\arguments{
\item{package}{PARAM_DESCRIPTION, Default: basename(rstudioapi::getActiveProject())}
}
\value{
OUTPUT_DESCRIPTION
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
 packageOptions()
 packageOptions("usethis")
 }
}
}
\seealso{
\code{\link[rstudioapi]{getActiveProject}}
\code{\link[utils]{installed.packages}}
}
