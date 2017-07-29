# Use the httr lib to add custom header
# see https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# install.packages("httr")
# remove.packages("httr")
library(httr)

hello <- function() {
  print("Hello, world!")
}

getData <- function(some_url) {
  cat("getData called with parameter ", some_url, "\n")
  url_page_response = GET(some_url)
  return (url_page_response)

}

myTest <- function() {
  getData("http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test")
}

