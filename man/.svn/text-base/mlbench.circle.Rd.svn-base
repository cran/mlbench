\name{mlbench.circle}
\alias{mlbench.circle}
\title{Circle in a Square Problem}
\usage{
mlbench.circle(n, d=2)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{d}{dimension of the circle problem}
}
\value{Returns an object of class \code{"mlbench.circle"}  with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the circle problem are uniformly distributed on
    the \code{d}-dimensional cube with corners \eqn{\{\pm 1\}}{\{+-1\}}. 
    This is a 2-class problem: The first class is a \code{d}-dimensional
    ball in the middle of the cube, the remainder forms the second
    class. The size of the ball is chosen such that both classes have equal
    prior probability 0.5.
}
\examples{
# 2d example
p<-mlbench.circle(300,2)
plot(p)
#
# 3d example
p<-mlbench.circle(300,3)
plot(p)
}
\keyword{datagen}
