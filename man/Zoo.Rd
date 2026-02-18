\name{Zoo}
\alias{Zoo}
\title{Zoo Data}
\usage{
data("Zoo", package = "mlbench")
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
\source{
  The original data have been donated by Richard S. Forsyth to the UCI
  Repository of Machine Learning Databases \bibcitep{Blake+Merz:1998}
  and were converted to R format by Friedrich Leisch and Evgenia
  Dimitriadou in the late 1990s. 

  The current version of the UC Irvine Machine Learning Repository Zoo
  data set is available from \doi{10.24432/C5R59V}. 
}
\references{
  \bibshow{Blake+Merz:1998}
}  
\keyword{datasets}
\examples{
data("Zoo", package = "mlbench")
summary(Zoo)

## see the annimals grouped by type
split(rownames(Zoo), Zoo$type)

## which animals have fins?
rownames(Zoo)[Zoo$fins]
}
