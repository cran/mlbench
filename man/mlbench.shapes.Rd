\name{mlbench.shapes}
\alias{mlbench.shapes}
\title{Shapes in 2d}
\usage{
mlbench.shapes(n=500)
}
\arguments{
  \item{n}{number of patterns to create}
}
\value{Returns an object of class \code{"mlbench.shapes"}  with components
  \item{x}{input values}
  \item{classes}{factor of length \code{n} with target classes} 
}
\description{A Gaussian, square, triangle and wave in 2 dimensions.}
\examples{
p<-mlbench.shapes()
plot(p)
}
\keyword{datagen}
