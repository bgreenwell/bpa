% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trim_ws.R
\name{trim_ws}
\alias{trim_ws}
\title{Remove Leading/Trailing Whitespace}
\usage{
trim_ws(x, which = c("both", "left", "right"))
}
\arguments{
\item{x}{A data frame or vector.}

\item{which}{A character string specifying whether to remove both leading and
trailing whitespace (default), or only leading (\code{"left"}) or trailing
(\code{"right"}). Can be abbreviated.}
}
\description{
Remove leading and/or trailing whitespace from character strings.
}
\examples{
# Toy example
d <- data.frame(x = c(" a ", "b ", "c"),
                y = c("   1 ", "2", " 3"),
                z = c(4, 5, 6))
print(d)  # print data as is
trim_ws(d)  # print data with whitespace trimmed off
sapply(trim_ws(d), class)  # check that column types are preserved
}

