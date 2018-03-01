##" @importFrom utils packageDescription stack

bullets <- function(...) {
  message(paste0(" * ", ..., collapse = "\n"))
}

rule <- function(..., pad = "-") {
  if (nargs() == 0) {
    title <- ""
  } else {
    title <- paste0(...)
  }
  width <- getOption("width") - nchar(title) - 1
  message(title, " ", paste(rep(pad, width, collapse = "")))
}

igraph.extensions_packages <- function(include_self = TRUE) {
  raw <- utils::packageDescription("igraph.extensions")$Imports
  imports <- strsplit(raw, ",")[[1]]
  parsed <- gsub("^\\s+|\\s+$", "", imports)

  if (include_self) {
    parsed <- c(parsed, "igraph.extensions")
  }

  parsed
}

invert <- function(x) {
  if (length(x) == 0) return()
  stacked <- utils::stack(x)
  tapply(as.character(stacked$ind), stacked$values, list)
}
