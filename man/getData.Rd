\name{getData}
\alias{getData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
getData wrapper for httr::GET(some_url)
}
\description{
Wrapper around httr::GET(some_url)
}
\usage{
getData(some_url,refresh_cache)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{some_url}{
  %%     ~~Describe \code{some_url} here~~
  A url to fetch
  }
  \item{refresh_cache}{
  %%     ~~Describe \code{some_url} here~~
  if true it will always fetch the url.  If false it will use cached results if they exist
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (some_url)
{
    cat("getData called with url ", some_url, "\n")
    cat("Fetching url .....\n")
    url_page_response = httr::GET(some_url)
    return(url_page_response)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
