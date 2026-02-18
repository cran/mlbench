\name{PimaIndiansDiabetes}
\alias{PimaIndiansDiabetes}
\alias{PimaIndiansDiabetes2}
\title{Pima Indians Diabetes Database}
\usage{
data("PimaIndiansDiabetes", package = "mlbench")
data("PimaIndiansDiabetes2", package = "mlbench")
}
\keyword{datasets}
\description{
    A data frame with 768 observations on 9 variables.}
\format{
    \tabular{rl}{
      pregnant \tab Number of times pregnant\cr
      glucose \tab Plasma glucose concentration (glucose tolerance test)\cr
      pressure \tab Diastolic blood pressure (mm Hg)\cr
      triceps \tab Triceps skin fold thickness (mm)\cr
      insulin \tab 2-Hour serum insulin (mu U/ml)\cr
      mass \tab Body mass index\cr
      pedigree \tab Diabetes pedigree function\cr
      age \tab Age (years)\cr
      diabetes \tab Class variable (test for diabetes)\cr
  }
}
\details{The data set \code{PimaIndiansDiabetes2} contains a corrected
  version of the original data set. While the UCI repository index
  claims that there are no missing values, closer inspection of the data
  shows several physical impossibilities, e.g., blood pressure or body
  mass index of 0. In \code{PimaIndiansDiabetes2}, all zero values of
  \code{glucose}, \code{pressure}, \code{triceps}, \code{insulin} and
  \code{mass} have been set to \code{NA}, see also
  \bibcitet{Wahba+Gu+Wang:1995} and \bibcitet{Ripley:1996}. 
}
\source{
  \itemize{
    \item Original owners: National Institute of Diabetes and Digestive and
    Kidney Diseases
    \item Donor of database: Vincent Sigillito
    (vgs@aplcen.apl.jhu.edu)
  }
    
  These data have been taken from the UCI Repository Of Machine Learning
  Databases \bibcitep{Blake+Merz:1998} and were converted to R format by
  Friedrich Leisch in the late 1990s.

  The data no longer seems to be available from the UC Irvine Machine
  Learning Repository (now at \url{https://archive.ics.uci.edu/}).
}
\references{
  \bibshow{Blake+Merz:1998, Ripley:1996, Wahba+Gu+Wang:1995}
}
\examples{
data("PimaIndiansDiabetes", package = "mlbench")
summary(PimaIndiansDiabetes)

data("PimaIndiansDiabetes2", package = "mlbench")
summary(PimaIndiansDiabetes2)
}

    
