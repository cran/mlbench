\name{mlbench.ringnorm}
\alias{mlbench.ringnorm}
\title{Ringnorm Benchmark Problem}
\usage{
mlbench.ringnorm(n, d=20)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimension of the ringnorm problem}
}
\value{Returns an object of class \code{"mlbench.ringnorm"} with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the ringnorm problem are points from two Gaussian
    distributions. Class 1 is multivariate normal with mean 0 and
    covariance 4 times the identity matrix. Class 2 has unit covariance
    and mean \eqn{(a,a,\ldots,a)}, \eqn{a=d^{-0.5}}.

}
\references{
    Breiman, L. (1996). Bias, variance, and arcing classifiers.
    Tech. Rep. 460, Statistics Department, University of California,
    Berkeley, CA, USA.
}
\examples{
p<-mlbench.ringnorm(1000, d=2)
plot(p)
}
\keyword{datagen}
