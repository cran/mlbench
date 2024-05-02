\name{Shuttle}
\title{Shuttle Dataset (Statlog version)}
\usage{
data("Shuttle", package = "mlbench")
}
\alias{Shuttle}
\format{A data frame with 58,000 observations on 9 numerical independent
    variables and 1 target class.}

\description{The shuttle dataset contains 9 attributes all of which are
    numerical with the first one being time.  The last column is the class
    with the following 7 levels: Rad.Flow, Fpv.Close, Fpv.Open, High, Bypass,
    Bpv.Close, Bpv.Open.
    
    Approximately 80\% of the data belongs to class 1. Therefore the
    default accuracy is about 80\%. The aim here is to obtain an
    accuracy of 99 - 99.9\%.

}
\source{
  \itemize{
    \item Source: Jason Catlett of Basser Department of Computer
    Science; University of Sydney; N.S.W.; Australia.
  }
  
  These data have been taken from the UCI Repository Of Machine Learning
  Databases (Blake & Merz 1998) and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Statlog Shuttle data set is available from \doi{10.24432/C5WS31}. 

}
\keyword{datasets}
\references{
  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.  
}
\examples{
data("Shuttle", package = "mlbench")
summary(Shuttle)
}
