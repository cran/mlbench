\name{Satellite}
\alias{Satellite}
\title{Landsat Multi-Spectral Scanner Image Data}
\description{
  The database consists of the multi-spectral values of pixels in 3x3
  neighbourhoods in a satellite image, and the classification associated
  with the central pixel in each neighbourhood.  The aim is to predict
  this classification, given the multi-spectral values.
}
\usage{
data("Satellite", package = "mlbench")
}
\format{
  A data frame with 36 inputs (\code{x.1 \ldots x.36}) and one target
  (\code{classes}).
}
\details{
  One frame of Landsat MSS imagery consists of four digital images of
  the same scene in different spectral bands.  Two of these are in the
  visible region (corresponding approximately to green and red regions
  of the visible spectrum) and two are in the (near) infra-red.  Each
  pixel is a 8-bit binary word, with 0 corresponding to black and 255 to
  white. The spatial resolution of a pixel is about 80m x 80m.  Each
  image contains 2340 x 3380 such pixels.
    
  The database is a (tiny) sub-area of a scene, consisting of 82 x 100
  pixels. Each line of data corresponds to a 3x3 square neighbourhood of
  pixels completely contained within the 82x100 sub-area.  Each line
  contains the pixel values in the four spectral bands (converted to
  ASCII) of each of the 9 pixels in the 3x3 neighbourhood and a number
  indicating the classification label of the central pixel.

  The classes are
  \tabular{l}{
    red soil\cr
    cotton crop\cr
    grey soil\cr
    damp grey soil\cr
    soil with vegetation stubble\cr
    very damp grey soil\cr
  }

  The data is given in random order and certain lines of data have been
  removed so you cannot reconstruct the original image from this
  dataset.
	
  In each line of data the four spectral values for the top-left pixel
  are given first followed by the four spectral values for the
  top-middle pixel and then those for the top-right pixel, and so on
  with the pixels read out in sequence left-to-right and top-to-bottom.
  Thus, the four spectral values for the central pixel are given by
  attributes 17,18,19 and 20.  If you like you can use only these four
  attributes, while ignoring the others.  This avoids the problem which
  arises when a 3x3 neighbourhood straddles a boundary.
}
\section{Origin}{
  The original Landsat data for this database was generated from data
  purchased from NASA by the Australian Centre for Remote Sensing, and
  used for research at: The Centre for Remote Sensing, University of New
  South Wales, Kensington, PO Box 1, NSW 2033, Australia.

  The sample database was generated taking a small section (82 rows and
  100 columns) from the original data.  The binary values were converted
  to their present ASCII form by Ashwin Srinivasan.  The classification
  for each pixel was performed on the basis of an actual site visit by
  Ms. Karen Hall, when working for Professor John A. Richards, at the
  Centre for Remote Sensing at the University of New South Wales,
  Australia. Conversion to 3x3 neighbourhoods and splitting into test
  and training sets was done by Alistair Sutherland.
}
\section{History}{
  The Landsat satellite data is one of the many sources of information
  available for a scene. The interpretation of a scene by integrating
  spatial data of diverse types and resolutions including multispectral
  and radar data, maps indicating topography, land use etc. is expected
  to assume significant importance with the onset of an era characterised
  by integrative approaches to remote sensing (for example, NASA's Earth
  Observing System commencing this decade). Existing statistical methods 
  are ill-equipped for handling such diverse data types. Note that this
  is not true for Landsat MSS data considered in isolation (as in
  this sample database). This data satisfies the important requirements
  of being numerical and at a single resolution, and standard
  maximum-likelihood classification performs very well. Consequently,
  for this data, it should be interesting to compare the performance
  of other methods against the statistical approach.
}
\source{
  Ashwin Srinivasan,
  Department of Statistics and Data Modeling,
  University of Strathclyde,
  Glasgow,
  Scotland,
  UK,
  \email{ross@uk.ac.turing}

  These data have been taken from the UCI Repository Of Machine Learning
  Databases (Blake & Merz 1998) and were converted to R format by
  Friedrich Leisch in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Statlog Landsat Satellite data set is available from
  \doi{10.24432/C55887}. 
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
data("Satellite", package = "mlbench")
summary(Satellite)
}
