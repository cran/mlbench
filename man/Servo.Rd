\name{Servo}
\title{Servo Data}
\usage{data(Servo)}
\alias{Servo}
\format{A data frame with 167 observations on 5 variables, 4 nominal and
    1 as the target class.}

\description{This data set is from a simulation of a servo system
    involving a servo amplifier, a motor, a lead screw/nut, and a
    sliding carriage of some sort. It may have been on of the
    translational axes of a robot on the 9th floor of the AI lab. In any
    case, the output value is almost certainly a rise time, or the time
    required for the system to respond to a step change in a position
    set point. The variables that describe the data set and their values
    are the following:
    
    \tabular{cll}{
	[,1] \tab Motor \tab A,B,C,D,E\cr
	[,2] \tab Screw \tab A,B,C,D,E\cr
    	[,3] \tab Pgain \tab 3,4,5,6\cr
    	[,4] \tab Vgain \tab 1,2,3,4,5\cr
    	[,5] \tab Class \tab 0.13 to 7.10
    }
}
\source{
    \itemize{
       	\item Creator: Karl Ulrich (MIT) in 1986
	\item Donor: Ross Quinlan 
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
    1. Quinlan, J.R., "Learning with continuous classes", Proc. 5th
    Australian Joint Conference on AI (eds A. Adams and L. Sterling),
    Singapore: World Scientific, 1992 
    2. Quinlan, J.R., "Combining instance-based and model-based
    learning", Proc. ML'93 (ed P.E. Utgoff), San Mateo: Morgan Kaufmann
    1993

    Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).
    UCI Repository of machine learning databases
    [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
    University of California, Department of Information and Computer
    Science.
}
\keyword{datasets}
\examples{
data(Servo)
summary(Servo)
}
