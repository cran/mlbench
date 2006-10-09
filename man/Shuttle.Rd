\name{Shuttle}
\title{Shuttle Dataset (Statlog version)}
\usage{data(Shuttle)}
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
    Databases at
    \itemize{
      \item \url{ftp://ftp.ics.uci.edu/pub/machine-learning-databases}
      \item \url{http://www.ics.uci.edu/~mlearn/MLRepository.html}
    }
    and were converted to R format by Evgenia.Dimitriadou@ci.tuwien.ac.at.
}
\keyword{datasets}
\references{  
  Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of machine learning databases
  [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
  University of California, Department of Information and Computer
  Science.
}
    

