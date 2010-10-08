\name{mlbench.twonorm}
\alias{mlbench.twonorm}
\title{Twonorm Benchmark Problem}
\usage{
mlbench.twonorm(n, d=20)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimension of the twonorm problem}
}
\value{Returns an object of class \code{"mlbench.twonorm"} with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the twonorm problem are points from two Gaussian
    distributions with unit covariance matrix. Class 1 is multivariate
    normal with mean \eqn{(a,a,\ldots,a)} and class 2 with mean
    \eqn{(-a,-a,\ldots,-a)}, \eqn{a=2/d^{0.5}}. 

}
\references{
    Breiman, L. (1996). Bias, variance, and arcing classifiers.
    Tech. Rep. 460, Statistics Department, University of California,
    Berkeley, CA, USA.
}
\examples{
p<-mlbench.twonorm(1000, d=2)
plot(p)
}
\keyword{datagen}
