\name{Zoo}
\alias{Zoo}
\title{Zoo Data}
\usage{
data(Zoo)
}
\description{A simple dataset containing 17 (mostly logical) variables
  on 101 animals.}
\format{A data frame with 17 columns: hair, feathers, eggs, milk,
  airborne, aquatic, predator, toothed, backbone, breathes, venomous,
  fins, legs, tail, domestic, catsize, type.

  Most variables are logical and indicate whether the corresponding
  animal has the corresponsing characteristic or not. The only 2
  exceptions are: \code{legs} takes
  values 0, 2, 4, 5, 6, and 8. \code{type} is a grouping of the animals
  into 7 groups, see the example section for the detailed list.
}
\details{
  Ask the original donor of the data why \emph{girl} is an animal.
}
\references{
  Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of machine learning databases
  [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
  University of California, Department of Information and Computer
  Science.
}  
\source{
  The original data have been donated by Richard S. Forsyth to the UCI
  Repository Of Machine Learning
  Databases at
  \itemize{
    \item \url{http://www.ics.uci.edu/~mlearn/MLRepository.html}.
  }
  and were converted to R format by Friedrich Leisch.
}
\keyword{datasets}
\examples{
data(Zoo)
summary(Zoo)

## see the annimals grouped by type
tapply(rownames(Zoo), Zoo$type, function(x) x)

## which animals have fins?
rownames(Zoo)[Zoo$fins]
}
