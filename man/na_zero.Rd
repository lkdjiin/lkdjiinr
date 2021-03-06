% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/na.r
\name{na_zero}
\alias{na_zero}
\title{Replace NAs with zeros.}
\usage{
na_zero(x)
}
\arguments{
\item{x}{A vector, data frame, or matrix.}
}
\value{
The object x with all NAs replaced by zeros.
}
\description{
Replace NAs with zeros.
}
\examples{
na_zero(c(1, NA, 2))
#=> 1 0 2
}

