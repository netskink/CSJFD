# Use the httr lib to add custom header
# see https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# install.packages("httr")
# remove.packages("httr")
library(httr)

# use the hashmap library
library(hashmap)

hello <- function() {
  print("Hello, world!")
}

getData <- function(some_url) {
  cat("getData called with url ", some_url, "\n")
  cat("Fetching url .....\n")
  url_page_response = GET(some_url)
  return (url_page_response)

}

myTest1 <- function() {
  getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
}

myTest2 <- function() {

  set.seed(123)
  (HH <- hashmap(LETTERS, rnorm(26)))
  print(HH[[c("A", "B")]])
}
