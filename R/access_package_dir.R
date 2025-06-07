#' @title Examine the package source directory
#' @description FUNCTION_DESCRIPTION
#' @param package character, package name
#' @param ... additional arguments to pathr::tree
#' @return list, dirname and content of dirname
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  access_package_dir("usethis", out="TEMP_DIR_TREE.TXT")
#'  }
#' }
#' @rdname access_package_dir
#' @importFrom pathr tree
#' @importFrom rstudioapi getActiveProject
#' @export

access_package_dir <- function(package, ...) {
  if (basename(rstudioapi::getActiveProject()) != package) {
    dir <- (system.file(package=package)) #dirname
    cat("Repertoire de la librairie", package, "...\n")
    }
  if (basename(rstudioapi::getActiveProject()) == package) {
    dir <- getwd()
    cat("Repertoire du projet raichepackage ...\n")
    }
  #tree <- fs::dir_tree(path =dir, recurse = TRUE, all=FALSE)

  # https://stackoverflow.com/questions/36094183/how-to-build-a-dendrogram-from-a-directory-tree
   #x <- lapply(strsplit(tree, "/"), function(z) as.data.frame(t(z)))
   #x <- rbind.fill(x)
   #x$pathString <- apply(x, 1, function(x) paste(trimws(na.omit(x)), collapse="/"))
   #mytree <- data.tree::as.Node(x)

  #mytree <- data.tree::as.Node(data.frame(pathString = path))
  mytree <- pathr::tree(path = dir, ...)
  content <- dir(dir)
  results <- list(
    dir = dir,
    content = content,
    tree = mytree
  )
  return(results)
}

# pacman::p_load_gh("trinker/pathr")
