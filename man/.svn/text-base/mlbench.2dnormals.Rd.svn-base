\name{mlbench.2dnormals}
\alias{mlbench.2dnormals}
\title{2-dimensional Gaussian Problem}
\usage{
mlbench.2dnormals(n, cl=2, r=sqrt(cl), sd=1)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{cl}{number of classes}
    \item{r}{radius at which the centers of the classes are located}
    \item{sd}{standard deviation of the Gaussians}
}
\value{Returns an object of class \code{"bayes.2dnormals"} with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    Each of the \code{cl} classes consists of a 2-dimensional
    Gaussian. The centers are equally spaced on a circle around the
    origin with radius \code{r}.
}
\examples{
# 2 classes
p <- mlbench.2dnormals(500,2)
plot(p)
# 6 classes
p <- mlbench.2dnormals(500,6)
plot(p)
}
\keyword{datagen}
