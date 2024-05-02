\name{mlbench.waveform}
\alias{mlbench.waveform}
\title{Waveform Database Generator}
\usage{
  mlbench.waveform(n)
}
\arguments{
  \item{n}{number of patterns to create}
}

\value{
  Returns an object of class \code{"mlbench.waveform"} with components
  \item{x}{input values}
  \item{classes}{factor vector of length \code{n} with target classes}
}

\description{
  The generated data set consists of 21 attributes with continuous
  values and a variable showing the 3 classes (33\% for each of 3
  classes). Each class is generated from a combination of 2 of 3
  "base" waves. 
}

\source{
  The original C code for the waveform generator was taken from the UCI
  Repository of Machine Learning Databases (Blake & Merz 1998).
  The C code was modified to use R's random number generator by
  Friedrich Leisch, who also wrote the R interface.
}
  
\references{
  Breiman, L. (1996). Bias, variance, and arcing
  classifiers. Tech. Rep. 460, Statistics Department, University of
  California, Berkeley, CA, USA.

  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.  
}

\examples{
p <- mlbench.waveform(100)
plot(p)
}

\keyword{datagen}
