\name{as.data.frame.mlbench}
\alias{as.data.frame.mlbench}
\title{Convert an mlbench object to a dataframe}
\usage{
as.data.frame.mlbench(z)
}
\arguments{
 \item{z}{Object of class \code{"mlbench"}.}
}
\description{
    Converts \code{z} (which is basically a list) to a dataframe.  }
\examples{
p <- mlbench.xor(5)
p
as.data.frame(p) }


