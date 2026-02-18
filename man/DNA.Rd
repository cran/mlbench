\name{DNA}
\title{Primate splice-junction gene sequences (DNA)} 
\usage{
data("DNA", package = "mlbench")
}
\alias{DNA}
\format{A data frame with 3,186 observations on 180 variables, all
nominal and a target class.}

\description{It consists of 3,186 data points (splice junctions). The
    data points are described by 180 indicator binary
    variables and the problem is to recognize the 3 classes (ei, ie,
    neither), i.e., the boundaries between exons (the parts of the DNA
    sequence retained after splicing) and introns (the parts of the DNA
    sequence that are spliced out).
    
    The StaLog dna dataset is a processed version of the Irvine 
    database described below. The main difference is that the 
    symbolic variables representing the nucleotides (only A,G,T,C) 
    were replaced by 3 binary indicator variables. Thus the original 
    60 symbolic attributes were changed into 180 binary attributes.  
    The names of the examples were removed. The examples with 
    ambiguities were removed (there was very few of them, 4).   
    The StatLog version of this dataset was produced by Ross King
    at Strathclyde University. For original details see the Irvine 
    database documentation.

    The nucleotides A,C,G,T were given indicator values as follows:
    \tabular{cl}{
    	\tab A -> 1 0 0\cr
    	\tab C -> 0 1 0\cr
    	\tab G -> 0 0 1\cr
    	\tab T -> 0 0 0\cr
    }
    Hint. Much better performance is generally observed if attributes
    closest to the junction are used. In the StatLog version, this
    means using attributes A61 to A120 only.   
}
\source{
    \itemize{
       	\item Source:\cr
  	- all examples taken from Genbank 64.1 (ftp site:
	genbank.bio.net)\cr
       	- categories "ei" and "ie" include every "split-gene" 
        for primates in Genbank 64.1\cr
       	- non-splice examples taken from sequences known not to include
        a splicing site\cr
   	\item Donor: G. Towell, M. Noordewier, and J. Shavlik, 
        {towell,shavlik}@cs.wisc.edu, noordewi@cs.rutgers.edu
    }
    These data have been taken from: 
    \itemize{
    	\item ftp.stams.strath.ac.uk/pub/Statlog
    	    }
    and were converted to R format by Evgenia Dimitriadou.
}
\references{
  \bibshow{Noordewier+Towell+Shavlik:1990,
    Towell:1991,
    Towell+Craven+Shavlik:1991,
    Towell+Shavlik:1991}
}
\keyword{datasets}
\examples{
data("DNA", package = "mlbench")
summary(DNA)
}
