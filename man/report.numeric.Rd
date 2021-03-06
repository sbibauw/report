% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.data.frame.R
\name{report.numeric}
\alias{report.numeric}
\title{Numeric Vector Report}
\usage{
\method{report}{numeric}(model, median = FALSE, dispersion = TRUE,
  range = TRUE, missing_percentage = FALSE, ...)
}
\arguments{
\item{model}{Numeric vector.}

\item{median}{Show \link{mean} and \link{sd} (default) or \link{median} and \link{mad}.}

\item{dispersion}{Show dispersion (\link{sd} or \link{mad}).}

\item{range}{Show range.}

\item{missing_percentage}{Show missings by number (default) or percentage}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Create a report of a numeric vector.
}
\examples{
x <- rnorm(1000)
report(x)
report(x, median = TRUE, dispersion = TRUE, range = TRUE, missing_percentage = TRUE)
to_fulltext(report(x))
to_table(report(x))
to_fulltable(report(x))
}
\seealso{
report
}
