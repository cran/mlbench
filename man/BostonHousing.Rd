\name{BostonHousing}
\alias{BostonHousing}
\alias{BostonHousing2}
\title{Boston Housing Data}
\usage{
data("BostonHousing", package = "mlbench")
data("BostonHousing2", package = "mlbench")
}
\description{Housing data for 506 census tracts of Boston from the 1970
  census. The dataframe
  \code{BostonHousing} contains the original data by Harrison and
  Rubinfeld (1979), the dataframe \code{BostonHousing2} the corrected
  version with additional spatial information (see references below).
}
\format{The original data are 506 observations on 14 variables,
    \code{medv} being the target variable:
    \tabular{ll}{
      crim \tab per capita crime rate by town \cr
      zn \tab proportion of residential land zoned for lots over 25,000 sq.ft \cr
      indus \tab proportion of non-retail business acres per town \cr
      chas \tab Charles River dummy variable (= 1 if tract bounds river; 0 otherwise) \cr
      nox \tab nitric oxides concentration (parts per 10 million) \cr
      rm \tab average number of rooms per dwelling \cr
      age \tab proportion of owner-occupied units built prior to 1940 \cr
      dis \tab weighted distances to five Boston employment centres \cr
      rad \tab index of accessibility to radial highways \cr
      tax \tab full-value property-tax rate per USD 10,000 \cr
      ptratio \tab pupil-teacher ratio by town \cr
      b \tab \eqn{1000(B - 0.63)^2} where \eqn{B} is the proportion of blacks by town\cr
      lstat \tab percentage of lower status of the population \cr
      medv \tab median value of owner-occupied homes in USD 1000's
    }
    The corrected data set has the following additional columns:
    \tabular{ll}{
      cmedv \tab corrected median value of owner-occupied homes in USD 1000's \cr
      town \tab name of town \cr
      tract \tab census tract \cr
      lon \tab longitude of census tract \cr
      lat \tab latitude of census tract \cr
    }
}
\references{  
  Harrison, D. and Rubinfeld, D.L. (1978).
  Hedonic prices and the demand for clean air.
  \emph{Journal of Environmental Economics and Management}, \bold{5},
  81--102.

  Gilley, O.W., and R. Kelley Pace (1996). On the Harrison and Rubinfeld  
  Data. \emph{Journal of Environmental Economics and Management}, \bold{31},  
  403--405. [Provided corrections and examined censoring.]

  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.

  Pace, R. Kelley, and O.W. Gilley (1997). Using the Spatial Configuration of  
  the Data to Improve Estimation. \emph{Journal of the Real Estate Finance  
  and Economics}, \bold{14}, 333--340. [Added georeferencing and spatial
  estimation.]
}  
\source{
  The original data were taken from the UCI Repository Of Machine
  Learning Databases (Blake & Merz 1998) and no longer seem to be
  available from the UC Irvine Machine Learning Repository (now at
  \url{https://archive.ics.uci.edu/}). 
  The corrected data were taken from Statlib at
  \url{https://lib.stat.cmu.edu/datasets/}.
  See Statlib and references there for details on the corrections.
  Both were converted to R format by Friedrich Leisch.
}
\keyword{datasets}
\examples{
data("BostonHousing", package = "mlbench")
summary(BostonHousing)

data("BostonHousing2", package = "mlbench")
summary(BostonHousing2)
}
