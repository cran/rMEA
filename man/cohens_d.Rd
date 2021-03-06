% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rMEA_util.R
\name{cohens_d}
\alias{cohens_d}
\title{Cohen's d
A simple function to calculate Cohen's d effect size}
\usage{
cohens_d(x, y)
}
\arguments{
\item{x, y}{two numeric vectors containing the scores of the two samples}
}
\description{
Cohen's d
A simple function to calculate Cohen's d effect size
}
\examples{
# Generates two samples with means distance of 1 sd
x = rnorm(1000, mean = 10, sd = 1.5)
y = rnorm(1000, mean = 11.5, sd = 1.5)
# cohen's d should approximate to 1
cohens_d(x,y)
}
