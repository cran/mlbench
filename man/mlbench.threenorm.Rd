\name{mlbench.threenorm}
\alias{mlbench.threenorm}
\title{Threenorm Benchmark Problem}
\usage{
mlbench.threenorm(n, d=20)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimension of the threenorm problem}
}
\value{Returns an object of class \code{"mlbench.threenorm"} with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the threenorm problem are points from two Gaussian
    distributions with unit covariance matrix. Class 1 is drawn with
    equal probability from a unit multivariate normal with mean
    \eqn{(a,a,\ldots,a)} and from a unit multivariate normal with mean 
    \eqn{(-a,-a,\ldots,-a)}. Class 2 is drawn from a multivariate normal
    with mean at \eqn{(a,-a,a, \ldots,-a)}, \eqn{a=2/d^{0.5}}. 

}
\references{
    Breiman, L. (1996). Bias, variance, and arcing classifiers.
    Tech. Rep. 460, Statistics Department, University of California,
    Berkeley, CA, USA.
}
\examples{
p<-mlbench.threenorm(1000, d=2)
plot(p)
}
\keyword{datagen}
