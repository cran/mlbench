\name{Vehicle}
\alias{Vehicle}
\title{Vehicle Silhouettes}
\usage{
data("Vehicle", package = "mlbench")
}

\keyword{datasets}
\format{
    A data frame with 846 observations on 19 variables, all numerical
    and one nominal defining the class of the objects.
    
    \tabular{cll}{
   [,1] \tab Comp \tab Compactness\cr
   [,2] \tab Circ \tab Circularity\cr
   [,3] \tab D.Circ \tab Distance Circularity\cr
   [,4] \tab Rad.Ra \tab Radius ratio\cr
   [,5] \tab Pr.Axis.Ra \tab pr.axis aspect ratio\cr
   [,6] \tab Max.L.Ra \tab max.length aspect ratio\cr
   [,7] \tab Scat.Ra \tab scatter ratio\cr
   [,8] \tab Elong \tab elongatedness\cr
   [,9] \tab Pr.Axis.Rect \tab pr.axis rectangularity\cr
  [,10] \tab Max.L.Rect \tab max.length rectangularity\cr
  [,11] \tab Sc.Var.Maxis \tab scaled variance along major axis\cr
  [,12] \tab Sc.Var.maxis \tab scaled variance along minor axis\cr
  [,13] \tab Ra.Gyr \tab scaled radius of gyration\cr
  [,14] \tab Skew.Maxis \tab skewness about major axis\cr
  [,15] \tab Skew.maxis \tab skewness about minor axis\cr
  [,16] \tab Kurt.maxis \tab kurtosis about minor axis\cr
  [,17] \tab Kurt.Maxis \tab kurtosis about major axis\cr
  [,18] \tab Holl.Ra \tab hollows ratio\cr
  [,19] \tab Class \tab type
  }
}
\description{
    The purpose is to classify a given silhouette as one of four types
    of vehicle, using a set of features extracted from the
    silhouette. The vehicle may be viewed from one of many different
    angles. The features were extracted from the silhouettes by the HIPS
    (Hierarchical Image Processing System) extension BINATTS, which
    extracts a combination of scale independent features utilising both
    classical moments based measures such as scaled variance, skewness
    and kurtosis about the major/minor axes and heuristic measures such
    as hollows, circularity, rectangularity and compactness. 
    
    Four "Corgie" model vehicles were used for the experiment: a double
    decker bus, Cheverolet van, Saab 9000 and an Opel Manta 400. This
    particular combination of vehicles was chosen with the expectation
    that the bus, van and either one of the cars would be readily
    distinguishable, but it would be more difficult to distinguish
    between the cars. 
}
\source{
  \itemize{
    \item Creator: Drs.\sspace{}Pete Mowforth and Barry Shepherd, Turing
    Institute, Glasgow, Scotland.    
  }

  These data have been taken from the UCI Repository Of Machine Learning
  Databases \bibcitep{Blake+Merz:1998} and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Statlog Vehicle Silhouettes data set is available from
  \doi{10.24432/C5HG6N}. 
}

\references{
  \bibshow{Siebert:1987, Blake+Merz:1998}
}

\examples{
data("Vehicle", package = "mlbench")
summary(Vehicle)
}
