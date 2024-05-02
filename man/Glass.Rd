\name{Glass}
\alias{Glass}
\title{Glass Identification Database}
\usage{
data("Glass", package = "mlbench")
}
\keyword{datasets}
\description{A data frame with 214 observation containing examples of
  the chemical analysis of 7 different types of glass. The problem is to
  forecast the type of class on basis of the chemical analysis.  The
  study of classification of types of glass was motivated by
  criminological investigation.  At the scene of the crime, the glass left
  can be used as evidence (if it is correctly identified!).
}
\format{
    A data frame with 214 observations on 10 variables:
    \tabular{cll}{
 [,1] \tab RI \tab refractive index\cr
 [,2] \tab Na \tab Sodium\cr
 [,3] \tab Mg \tab Magnesium\cr
 [,4] \tab Al \tab Aluminum\cr
 [,5] \tab Si \tab Silicon\cr
 [,6] \tab K  \tab Potassium\cr
 [,7] \tab Ca \tab Calcium\cr
 [,8] \tab Ba \tab Barium\cr
 [,9] \tab Fe \tab Iron \cr
[,10] \tab Type \tab Type of glass (class attribute) \cr 
}
}   
\source{
    \itemize{
       	\item Creator: B. German, Central Research Establishment, Home
	Office Forensic Science Service, Aldermaston, Reading, Berkshire
	RG7 4PN 
   	\item Donor: Vina Spiehler, Ph.D., DABFT, Diagnostic Products
	Corporation
    }
    
    These data have been taken from the UCI Repository Of Machine
    Learning Databases (Blake & Merz 1998) and were converted to R
    format by Friedrich Leisch in the late 1990s.

    The current version of the UC Irvine Machine Learning Repository
    Glass Identification data set is available from
    \doi{10.24432/C5WW2P}.
}
\references{
  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.
}
\examples{
data("Glass", package = "mlbench")
summary(Glass)
}
