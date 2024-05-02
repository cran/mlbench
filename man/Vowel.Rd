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
  Databases (Blake & Merz 1998) and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Connectionist Bench Vowel Recognition Deterding Data data set is
  available from \doi{10.24432/C58P4S}. 
}

\references{
    D. H. Deterding, 1989, University of Cambridge, "Speaker
    Normalisation for Automatic Speech Recognition", submitted for PhD.
    
    M. Niranjan and F. Fallside, 1988, Cambridge University Engineering
    Department, "Neural Networks and Radial Basis Functions in
    Classifying Static Speech Patterns", CUED/F-INFENG/TR.22.
    
    Steve Renals and Richard Rohwer, "Phoneme Classification Experiments
    Using Radial Basis Functions", Submitted to the International Joint
    Conference on Neural Networks, Washington, 1989.

  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.
}
\examples{
data("Vowel", package = "mlbench")
summary(Vowel)
}
