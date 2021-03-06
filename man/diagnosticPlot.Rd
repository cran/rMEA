% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rMEA_graphics.R
\name{diagnosticPlot}
\alias{diagnosticPlot}
\title{Plots the initial, middle and ending part of a MEA object}
\usage{
diagnosticPlot(mea, width = 60, ...)
}
\arguments{
\item{mea}{an object of class \code{MEA} (see function \code{\link{readMEA}}).}

\item{width}{integer. The number of seconds to be plotted for each panel}

\item{...}{further arguments passed to \code{plot}}
}
\description{
This is typically useful to check if the motion energy time-series are good.
The middle section is chosen randomly among possible middle sections.
}
\details{
Motion energy time-series should always be visually inspected for possible artifacts. Periodic peaks or drops in time-series are indicators of e.g. key-frames or duplicated video-frames.
For further information regarding the program MEA, please refer to the documentation available at \code{http://www.psync.ch}.
}
\examples{
## read a single file
path_normal <- system.file("extdata/normal/200_01.txt", package = "rMEA")
mea_normal <- readMEA(path_normal, sampRate = 25, s1Col = 1, s2Col = 2,
                     s1Name = "Patient", s2Name = "Therapist", skip=1,
                     idOrder = c("id","session"), idSep="_")
## Visual inspection of the data
diagnosticPlot(mea_normal[[1]])

}
