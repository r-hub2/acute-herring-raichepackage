# https://www.geeksforgeeks.org/the-ultimate-guide-to-git-configurations/?ref=ml_lbp
# https://vickysteeves.gitlab.io/repro-papers/
# Voir aussi la librairie gitlabr
gitInitUser <- function(name="Gilles Raiche", email="raiche.gilles@uqam.ca", details=FALSE) {
  gert::git_config_global_set("user.name", "Gilles Raiche")
  gert::git_config_global_set("user.email", "raiche.gilles@uqam.ca")
  if (details) {
    temp <- system("git config --list --show-origin --show-scope", intern=TRUE)
    cat("... git config --list --show-origin --show-scope ... \n")
    for (i in 1:length(temp)) {
      cat(temp[i], "\n")
    }
    cat("\n ... gert::git_config_global() ... \n")
    results <- gert::git_config_global()
    return(results)
  }
}

