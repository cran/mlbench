\name{as.data.frame.mlbench}
\alias{as.data.frame.mlbench}
\title{Convert an mlbench object to a dataframe}
\description{
  Converts \code{x} (which is basically a list) to a dataframe.
}
\usage{
\method{as.data.frame}{mlbench}(x, row.names=NULL, optional=FALSE, \dots)
}
\arguments{
  \item{x}{Object of class \code{"mlbench"}.}
  \item{row.names,optional,\dots}{currently ignored.}
}
\examples{
p <- mlbench.xor(5)
p
as.data.frame(p)
}
\keyword{manip}
