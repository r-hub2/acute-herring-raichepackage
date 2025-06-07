
path_type <- function(path) {
  if (fs::file_exists(path)) type <- "file"
  if (fs::dir_exists(path)) type <- "dir"
  if (!fs::dir_exists(path) && !fs::file_exists(path)) type <- "none"
  return(type)
}

path_type_create <- function(path) {
  type <- path_type(path)
  if (type == "dir") fs::dir_create(path)
  if (type == "file") fs::file_create(path)
  if (type == "none") cat(path, ": is nor a file, nor a directory\n")
  return(type)
}


Rprofiler <- function(variables) {
  candidates <- c( Sys.getenv("R_PROFILE"),
                 file.path(Sys.getenv("R_HOME"), "etc", "Rprofile.site"),
                 Sys.getenv("R_PROFILE_USER"),
                 file.path(getwd(), ".Rprofile"),
                 file.path(Sys.getenv("HOME"), ".Rprofile"))
  results <- Filter(file.exists, candidates)
  return(results)
}
