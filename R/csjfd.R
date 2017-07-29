# Use the httr lib to add custom header
# see https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# install.packages("httr")
# remove.packages("httr")
library(httr)




# This is called once when the package is loaded.
# Use it to create the initial hash map
.onLoad <- function(libname, pkgname) {
  # print("onLoad called\n")
  set.seed(123)


  # instead use the env capability
  EE = new.env(hash=TRUE)
  assign("CSJFD.EE", EE, envir=.GlobalEnv)

}


# To remove warnings during check build, the docs were added to man getData.Rd
#
# refresh_cache was not specified, but its helpful to rewrite cache
# when testing.  If not specified, the cache is not refreshed.
# If specified as TRUE, it will refresh the cache
getData <- function(some_url,refresh_cache) {
  cat("...getData() called with url ", some_url, "\n")

  if (missing(refresh_cache)) {
    refresh_cache=FALSE
  }

  cat("...checking for cached result\n")

  if ( FALSE == refresh_cache && exists(some_url,envir=CSJFD.EE) ) {

    cat("...returning cached result\n")
    return( get(envir=CSJFD.EE, some_url) )

  } else {


    cat("...Fetching url .....\n")
    url_page_response = httr::GET(some_url, add_headers(customheader="CS"))
    cat("...adding key value pair for url and response\n")
    assign(some_url, url_page_response, envir=CSJFD.EE)
  }

  return (url_page_response)

}

