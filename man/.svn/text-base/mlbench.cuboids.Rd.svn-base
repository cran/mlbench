\name{mlbench.cuboids}
\alias{mlbench.cuboids}
\title{Cuboids: A 3 Dimensional Problem}
\usage{
mlbench.cuboids(n, relsize=c(2,2,2,1))
}
\arguments{
    \item{n}{number of patterns to create}
    \item{relsize}{relative size of the classes (vector of length 4)}
}
\value{Returns an object of class \code{"mlbench.cuboids"}  with components
    \item{x}{input values}
    \item{classes}{vector of length \code{n} with target classes} 
}
\description{
    The inputs of the cuboids problem are uniformly distributed on
    a \code{3}-dimensional space within 3 cuboids and a small
    cube in the middle of them. 
}

\author{Evgenia Dimitriadou, and Andreas Weingessel}

\examples{
p <- mlbench.cuboids(7000)
plot(p)
\dontrun{
library(Rggobi)
g <- ggobi(p$x)
g$setColors(p$class)
g$setMode("2D Tour")
}}
\keyword{datagen}
