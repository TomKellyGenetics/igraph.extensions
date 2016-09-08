.onAttach <- function(...) {

  if(!require(package = "igraph", quietly = TRUE)){
    if(!require("igraph")){
      install.packages("igraph")
    }
    library("igraph")
  }

  github_packages <- c("plot.igraph", "info.centrality", "pathway.structure.permutation", "graphsim")

  for(package in github_packages){
    if(!require(package = paste(package), quietly = TRUE)){
      if(!require("devtools")){
        install.packages("devtools")
      }
      library("devtools")
      devtools::install_github(paste0("TomKellyGenetics/", package), quiet = TRUE)
    }
    library(package = as.character(package), quietly = TRUE, character.only = T)
  }

  packageStartupMessage(paste0(c("Loading igraph", paste0("Loading igraph.extensions: ", github_packages, collapse = "\n")), collapse = "\n"))


  # needed <- load[!is_attached(load)]

  # if (length(needed) == 0)
    # return()

  # lapply(needed, library, character.only = TRUE, warn.conflicts = FALSE)

  #igraph.extensions_conflicts()
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}
