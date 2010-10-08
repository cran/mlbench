\name{plot.mlbench}
\alias{plot.mlbench}
\title{Plot mlbench objects}
\usage{
\S3method{plot}{mlbench}(x, xlab="", ylab="", ...)
}
\arguments{
 \item{x}{Object of class \code{"mlbench"}.}
 \item{xlab}{Label for x-axis.}
 \item{ylab}{Label for y-axis.}
 \item{\dots}{Further plotting options.}
}
\description{
    Plots the data of an mlbench object using different colors for each
    class. If the dimension of the input space is larger that 2, a
    scatter plot matrix is used.
}
\examples{
# 6 normal classes
p <- mlbench.2dnormals(500,6)
plot(p)

# 4-dimensiona XOR
p <- mlbench.xor(500,4)
plot(p)
}

\keyword{hplot}
