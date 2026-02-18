\name{Vowel}
\alias{Vowel}
\title{Vowel Recognition (Deterding data)}
\usage{
data("Vowel", package = "mlbench")
}
\keyword{datasets}
\format{
    A data frame with 990 observations on 10 independent variables, one
    nominal and the other numerical, and 1 as the target class.}
   
\description{Speaker independent recognition of the eleven steady state
    vowels of British English using a specified training set of lpc
    derived log area ratios. The vowels are indexed by integers
    0-10. For each utterance, there are ten floating-point input values,
    with array indices 0-9. The vowels are the following: hid, hId, hEd,
    hAd, hYd, had, hOd, hod, hUd, hud, hed. 
}
\source{
  \itemize{
    \item Creator: Tony Robinson 
    \item Maintainer: Scott E. Fahlman, CMU
  }
    
  These data have been taken from the UCI Repository Of Machine Learning
  Databases \bibcitep{Blake+Merz:1998} and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Connectionist Bench Vowel Recognition Deterding Data data set is
  available from \doi{10.24432/C58P4S}. 
}

\references{
  \bibshow{Deterding:1990,
    Niranjan+Fallside:1990,
    Renals+Rohwer:1989,
    Blake+Merz:1998}
}
\examples{
data("Vowel", package = "mlbench")
summary(Vowel)
}
