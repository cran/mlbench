\name{Sonar}
\title{Sonar, Mines vs. Rocks}
\usage{
data("Sonar", package = "mlbench")
}
\alias{Sonar}
\format{A data frame with 208 observations on 61 variables, all numerical and one (the Class) nominal.}

\description{This is the data set used by
    \bibcitet{Gorman+Sejnowski:1988} in their 
    study of the classification of sonar signals using a neural network.
    The task is to train a network to discriminate between sonar
    signals bounced off a metal cylinder and those bounced off a roughly
    cylindrical rock.  
    
    Each pattern is a set of 60 numbers in the range 0.0 to 1.0. Each
    number represents the energy within a particular frequency band,
    integrated over a certain period of time. The integration aperture
    for higher frequencies occur later in time, since these frequencies
    are transmitted later during the chirp.
    
    The label associated with each record contains the letter "R" if the
    object is a rock and "M" if it is a mine (metal cylinder). The
    numbers in the labels are in increasing order of aspect angle, but
    they do not encode the angle directly. 
}

\source{
  \itemize{
    \item Contribution: Terry Sejnowski, Salk Institute and
    University of California, San Deigo.
    \item Development: R. Paul Gorman, Allied-Signal Aerospace
    Technology Center. 
    \item Maintainer: Scott E. Fahlman 
  }
  
  These data have been taken from the UCI Repository Of Machine Learning
  Databases \bibcitep{Blake+Merz:1998} and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Connectionist Bench Sonar, Mines vs. Rocks data set is available from
  \doi{10.24432/C5T01Q}.  
}

\references{
  \bibshow{Gorman+Sejnowski:1988, Blake+Merz:1998}
}
\keyword{datasets}
\examples{
data("Sonar", package = "mlbench")
summary(Sonar)
}
    

