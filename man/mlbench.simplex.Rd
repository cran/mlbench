\name{mlbench.simplex}
\alias{mlbench.simplex}
\alias{simplex}
\title{Corners of d-dimensional Simplex}
\usage{
mlbench.simplex(n = 800, d = 3, sides = 1, sd = 0.1, center=TRUE)
simplex(d, sides, center=TRUE)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimensionality of simplex, default is 3}
    \item{sides}{lengths of the sides of the simplex, default is to
      create a unit simplex}
    \item{sd}{standard deviation}
    \item{center}{If \code{TRUE}, the origin is the center of gravity of
      the simplex. If \code{FALSE}, the origin is a corner of the
      simplex and all coordinates of the simplex are positive.}
}
\value{Returns an object of class \code{"mlbench.simplex"}  with components
    \item{x}{input values}
    \item{classes}{factor of length \code{n} with target classes} }
\description{
    The created data are \code{d}-dimensional spherical Gaussians with standard
    deviation \code{sd} and means at the corners of a
    \code{d}-dimensional simplex. The number of classes is \code{d+1}.
}    
\author{
  Manuel Eugster and Sebastian Kaiser 
  }
\examples{
p <- mlbench.simplex()
plot(p)

library("lattice")
cloud(x.3~x.1+x.2, groups=classes, data=as.data.frame(p))
}
\keyword{datagen}
