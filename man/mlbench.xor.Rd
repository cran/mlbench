\name{mlbench.xor}
\alias{mlbench.xor}
\title{Continuous XOR Benchmark Problem}
\usage{
mlbench.xor(n, d=2)
}
\arguments{
\item{n}{number of patterns to create}
\item{d}{dimension of the XOR problem}
}
\value{Returns an object of class \code{"mlbench.xor"} with components
\item{x}{input values}
\item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The inputs of the XOR problem are uniformly distributed on
    the \code{d}-dimensional cube with corners \eqn{\{\pm 1\}}{\{+-1\}}. Each pair of
    opposite corners form one class, hence the total number of classes is
    \eqn{2^(d-1)}
}
\examples{
# 2d example
p<-mlbench.xor(300,2)
plot(p)
#
# 3d example
p<-mlbench.xor(300,3)
plot(p)
}
\keyword{datagen}
