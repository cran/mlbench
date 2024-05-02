\name{LetterRecognition}
\title{Letter Image Recognition Data}
\usage{
data("LetterRecognition", package = "mlbench")
}
\alias{LetterRecognition}
\format{A data frame with 20,000 observations on 17 variables, the first
    is a factor with levels A-Z, the remaining 16 are numeric.

    \tabular{rll}{
 [,1] \tab lettr \tab  capital letter\cr
 [,2] \tab x.box \tab  horizontal position of box\cr
 [,3] \tab y.box \tab  vertical position of box\cr
 [,4] \tab width \tab  width of box\cr
 [,5] \tab high  \tab  height of box\cr
 [,6] \tab onpix \tab  total number of on pixels\cr
 [,7] \tab x.bar \tab  mean x of on pixels in box\cr
 [,8] \tab y.bar \tab  mean y of on pixels in box\cr
 [,9] \tab x2bar \tab  mean x variance\cr
[,10] \tab y2bar \tab  mean y variance\cr
[,11] \tab xybar \tab  mean x y correlation\cr
[,12] \tab x2ybr \tab  mean of \eqn{x^2 y} \cr
[,13] \tab xy2br \tab  mean of \eqn{x y^2} \cr
[,14] \tab x.ege \tab  mean edge count left to right\cr
[,15] \tab xegvy \tab  correlation of x.ege with y\cr
[,16] \tab y.ege \tab  mean edge count bottom to top\cr
[,17] \tab yegvx \tab  correlation of y.ege with x\cr
    }
}
\description{
   The objective is to identify each of a large number of black-and-white
   rectangular pixel displays as one of the 26 capital letters in the English
   alphabet.  The character images were based on 20 different fonts and each
   letter within these 20 fonts was randomly distorted to produce a file of
   20,000 unique stimuli.  Each stimulus was converted into 16 primitive
   numerical attributes (statistical moments and edge counts) which were then
   scaled to fit into a range of integer values from 0 through 15.  We
   typically train on the first 16000 items and then use the resulting model
   to predict the letter category for the remaining 4000.  See the article
   cited below for more details.
}
\source{
    \itemize{
       	\item Creator: David J. Slate
     	\item Odesta Corporation; 1890 Maple Ave; Suite 115; Evanston, IL 60201
   	\item Donor: David J. Slate (dave@math.nwu.edu) (708) 491-3867   
    }
    These data have been taken from the UCI Repository Of Machine
    Learning Databases (Blake & Merz 1998) and were converted to R
    format by Friedrich Leisch in the late 1990s.

    The current version of the UC Irvine Machine Learning Repository
    Letter Recognition data set is available from \doi{10.24432/C5ZP40}.
}
\references{
    P. W. Frey and D. J. Slate (Machine Learning Vol 6/2 March 91):
    "Letter Recognition Using Holland-style Adaptive Classifiers".

    The research for this article investigated the ability of several
    variations of Holland-style adaptive classifier systems to learn to
    correctly guess the letter categories associated with vectors of 16
    integer attributes extracted from raster scan images of the letters.
    The best accuracy obtained was a little over 80\%.  It would be
    interesting to see how well other methods do with the same data.

  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.
}
\keyword{datasets}
\examples{
data("LetterRecognition", package = "mlbench")
summary(LetterRecognition)
}
    
