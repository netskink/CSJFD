# Use the httr lib to add custom header
# see https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# install.packages("httr")
# remove.packages("httr")
library(httr)

# use the hashmap library
#library(hashmap)

# from check of package build
#importFrom("stats", "rnorm")


# To remove warnings during check build, the docs were added to man getData.Rd
#
getData <- function(some_url) {
  cat("getData called with url ", some_url, "\n")
  cat("Fetching url .....\n")
  url_page_response = httr::GET(some_url)
  return (url_page_response)

}

myTest1 <- function() {
  getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
}

myTest2 <- function() {

  set.seed(123)
#  (HH <- hashmap(LETTERS, rnorm(26)))
#  print(HH[[c("A", "B")]])
}
