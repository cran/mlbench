\name{mlbench.spirals}
\alias{mlbench.spirals}
\alias{mlbench.1spiral}
\title{Two Spirals Benchmark Problem}
\usage{
mlbench.spirals(n, cycles=1, sd=0)
mlbench.1spiral(n, cycles=1, sd=0)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{cycles}{the number of cycles each spiral makes}
    \item{sd}{standard deviation of data points around the spirals}
}
\value{Returns an object of class \code{"mlbench.spirals"} with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the spirals problem are points on two entangled spirals. If
    \code{sd>0}, then Gaussian noise is added to each data
    point. \code{mlbench.1spiral} creates a single spiral.
}
\examples{
# 1 cycle each, no noise
p<-mlbench.spirals(300)
plot(p)
#
# 1.5 cycles each, with noise
p<-mlbench.spirals(300,1.5,0.05)
plot(p)
}
\keyword{datagen}
