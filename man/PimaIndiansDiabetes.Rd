\name{PimaIndiansDiabetes}
\alias{PimaIndiansDiabetes}
\alias{PimaIndiansDiabetes2}
\title{Pima Indians Diabetes Database}
\usage{
  data(PimaIndiansDiabetes)
  data(PimaIndiansDiabetes2)
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
      mass \tab Body mass index (weight in kg/(height in m)\^2)\cr
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
  \code{mass} have been set to \code{NA}, see also Wahba et al (1995)
  and Ripley (1996).
}
\source{
  \itemize{
    \item Original owners: National Institute of Diabetes and Digestive and
    Kidney Diseases
    \item Donor of database: Vincent Sigillito
    (vgs@aplcen.apl.jhu.edu)
  }
    
  These data have been taken from the UCI Repository Of Machine Learning
  Databases at
  \itemize{
    \item \url{ftp://ftp.ics.uci.edu/pub/machine-learning-databases}
    \item \url{http://www.ics.uci.edu/~mlearn/MLRepository.html}
  }
  and were converted to R format by Friedrich Leisch.
}
\references{
  Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of machine learning databases
  [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
  University of California, Department of Information and Computer
  Science.

  Brian D. Ripley (1996), Pattern Recognition and Neural Networks,
  Cambridge University Press, Cambridge.
    
  Grace Whaba, Chong Gu, Yuedong Wang, and Richard Chappell (1995),
  Soft Classification a.k.a. Risk Estimation via Penalized Log
  Likelihood and Smoothing Spline Analysis of Variance, in D. H.
  Wolpert (1995), The Mathematics of Generalization, 331-359,
  Addison-Wesley, Reading, MA.
}

    
