## ----echo = FALSE-------------------------------------------------------------
# Sys.setenv(NOT_CRAN = TRUE)
NOT_CRAN <- identical(tolower(Sys.getenv("NOT_CRAN")), "true")
knitr::opts_chunk$set(
  purl = NOT_CRAN,
  eval = NOT_CRAN
)

