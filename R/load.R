#' @import devtools
#' @import igraph
#' @importFrom utils install.packages
.onAttach <- function(...) {

  options(warn = -1)

  github_packages <- c("plot.igraph", "info.centrality", "pathway.structure.permutation", "graphsim")

  for(package in github_packages){
    if(!require(package = paste(package), quietly = TRUE)){
      devtools::install_github(paste0("TomKellyGenetics/", package), quiet = TRUE)
    }
  }

  packageStartupMessage(paste0(c("Loading igraph", paste0("Loading igraph.extensions: ", github_packages, collapse = "\n")), collapse = "\n"))

  options(warn = 0)

  # needed <- load[!is_attached(load)]

  # if (length(needed) == 0)
    # return()

  # lapply(needed, library, character.only = TRUE, warn.conflicts = FALSE)

  #igraph.extensions_conflicts()
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}
