\name{mlbench.hypercube}
\alias{mlbench.corners}
\alias{mlbench.hypercube}
\alias{hypercube}
\title{Corners of Hypercube}
\usage{
mlbench.hypercube(n=800, d=3, sides=rep(1,d), sd=0.1)
hypercube(d)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimensionality of hypercube, default is 3}
    \item{sides}{lengths of the sides of the hypercube, default is to
      create a unit hypercube}
    \item{sd}{standard deviation}
}
\value{Returns an object of class \code{"mlbench.hypercube"}  with components
    \item{x}{input values}
    \item{classes}{factor of length \code{n} with target classes} }
\description{
    The created data are \code{d}-dimensional spherical Gaussians with standard
    deviation \code{sd} and means at the corners of a
    \code{d}-dimensional hypercube. The number of classes is \eqn{2^d}.
    
}
\examples{
p <- mlbench.hypercube()
plot(p)

library("lattice")
cloud(x.3~x.1+x.2, groups=classes, data=as.data.frame(p))
}
\keyword{datagen}
