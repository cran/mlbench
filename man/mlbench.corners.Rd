\name{mlbench.corners}
\alias{mlbench.corners}
\title{Corners of Hypercube}
\usage{
mlbench.corners(n=800, d=3, sides=rep(1,d), sd=0.1)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimensionality of hypercube, default is 3}
    \item{sides}{lengths of the sides of the hypercube, default is to
      create a unit hypercube}
    \item{sd}{standard deviation}
}
\value{Returns an object of class \code{"mlbench.corners"}  with components
    \item{x}{input values}
    \item{classes}{factor of length \code{n} with target classes} }
\description{
    The created data are \code{d}-dimensional spherical Gaussians with standard
    deviation \code{sd} and means at the corners of a
    \code{d}-dimensional hypercube. The number of classes is \eqn{2^d}.
    
}
\examples{
p<-mlbench.corners()
plot(p)

library("scatterplot3d")
scatterplot3d(p$x, color=as.numeric(p$classes))
}
\keyword{datagen}
