\name{mlbench.smiley}
\alias{mlbench.smiley}
\title{The Smiley}
\usage{
mlbench.smiley(n=500, sd1 = 0.1, sd2 = 0.05)
}
\arguments{
    \item{n}{number of patterns to create}
    \item{sd1}{standard deviation for eyes}
    \item{sd2}{standard deviation for mouth}
}
\value{Returns an object of class \code{"mlbench.smiley"}  with components
    \item{x}{input values}
    \item{classes}{factor vector of length \code{n} with target classes} 
}
\description{
    The smiley consists of 2 Gaussian eyes, a trapezoid nose and a
    parabula mouth (with vertical Gaussian noise).
}
\examples{
p<-mlbench.smiley()
plot(p)
}
\keyword{datagen}
