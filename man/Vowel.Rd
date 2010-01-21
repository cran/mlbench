\name{Vowel}
\alias{Vowel}
\title{Vowel Recognition (Deterding data)}
\usage{data(Vowel)}
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
    Databases at
    \itemize{
      \item \url{ftp://ftp.ics.uci.edu/pub/machine-learning-databases}
      \item \url{http://www.ics.uci.edu/~mlearn/MLRepository.html}
    }
    and were converted to R format by Evgenia Dimitriadou.
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

    Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).
    UCI Repository of machine learning databases
    [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
    University of California, Department of Information and Computer
    Science.
}
\examples{
data(Vowel)
summary(Vowel)
}
