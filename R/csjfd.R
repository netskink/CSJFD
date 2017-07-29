# Use the httr lib to add custom header
# see https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# install.packages("httr")
# remove.packages("httr")
library(httr)

# use the hashmap library
library(hashmap)


#assignInNamespace("myHashMap", HH, "CSJFD")

# This is called once when the package is loaded.
# Use it to create the initial hash map
.onLoad <- function(libname, pkgname) {
  # print("onLoad called\n")
  set.seed(123)
  HH <- hashmap(LETTERS, rnorm(26))
  assign("CSJFD.HH", HH, envir=.GlobalEnv)

}


# To remove warnings during check build, the docs were added to man getData.Rd
#
getData <- function(some_url) {
  cat("getData() called with url ", some_url, "\n")
  cat("Fetching url .....\n")
  url_page_response = httr::GET(some_url)
  return (url_page_response)

}

# see test_myTest1.R for usage
myTest1 <- function(some_url) {

  return(getData(some_url))

}

myTest2 <- function() {

  return(CSJFD.HH[[c("A", "B")]])

}
