\name{Soybean}
\title{Soybean Database}
\usage{
data("Soybean", package = "mlbench")
}
\alias{Soybean}
\format{A data frame with 683 observations on 36 variables. There are 35
    categorical attributes, all numerical and a nominal denoting the
    class.
    \tabular{cll}{
	[,1] \tab Class \tab the 19 classes\cr
	[,2] \tab date \tab
	apr(0),may(1),june(2),july(3),aug(4),sept(5),oct(6).\cr
	[,3] \tab plant.stand \tab normal(0),lt-normal(1).\cr
    	[,4] \tab precip \tab lt-norm(0),norm(1),gt-norm(2).\cr
    	[,5] \tab temp \tab lt-norm(0),norm(1),gt-norm(2).\cr
    	[,6] \tab hail \tab yes(0),no(1).\cr
    	[,7] \tab crop.hist \tab dif-lst-yr(0),s-l-y(1),s-l-2-y(2),
	s-l-7-y(3).\cr
    	[,8] \tab area.dam \tab
	scatter(0),low-area(1),upper-ar(2),whole-field(3).\cr
    	[,9] \tab sever \tab minor(0),pot-severe(1),severe(2).\cr
    	[,10] \tab seed.tmt \tab none(0),fungicide(1),other(2).\cr
   	[,11] \tab germ \tab 90-100\%(0),80-89\%(1),lt-80\%(2).\cr
   	[,12] \tab plant.growth \tab norm(0),abnorm(1).\cr
   	[,13] \tab leaves \tab norm(0),abnorm(1).\cr
   	[,14] \tab leaf.halo \tab
	absent(0),yellow-halos(1),no-yellow-halos(2).\cr
   	[,15] \tab leaf.marg \tab w-s-marg(0),no-w-s-marg(1),dna(2).\cr
   	[,16] \tab leaf.size \tab lt-1/8(0),gt-1/8(1),dna(2).\cr
   	[,17] \tab leaf.shread \tab absent(0),present(1).\cr
   	[,18] \tab leaf.malf \tab absent(0),present(1).\cr
   	[,19] \tab leaf.mild \tab absent(0),upper-surf(1),lower-surf(2).\cr
   	[,20] \tab stem \tab norm(0),abnorm(1).\cr
   	[,21] \tab lodging \tab	yes(0),no(1).\cr
   	[,22] \tab stem.cankers \tab
	absent(0),below-soil(1),above-s(2),ab-sec-nde(3).\cr
   	[,23] \tab canker.lesion \tab dna(0),brown(1),dk-brown-blk(2),tan(3).\cr
   	[,24] \tab fruiting.bodies \tab absent(0),present(1).\cr
   	[,25] \tab ext.decay \tab absent(0),firm-and-dry(1),watery(2).\cr
   	[,26] \tab mycelium \tab absent(0),present(1).\cr
   	[,27] \tab int.discolor \tab none(0),brown(1),black(2).\cr
   	[,28] \tab sclerotia \tab absent(0),present(1).\cr
   	[,29] \tab fruit.pods \tab norm(0),diseased(1),few-present(2),dna(3).\cr
   	[,30] \tab fruit.spots \tab
	absent(0),col(1),br-w/blk-speck(2),distort(3),dna(4).\cr
   	[,31] \tab seed \tab norm(0),abnorm(1).\cr
   	[,32] \tab mold.growth \tab absent(0),present(1).\cr
   	[,33] \tab seed.discolor \tab absent(0),present(1).\cr
   	[,34] \tab seed.size \tab norm(0),lt-norm(1).\cr
   	[,35] \tab shriveling \tab absent(0),present(1).\cr
   	[,36] \tab roots \tab norm(0),rotted(1),galls-cysts(2).

}
    }

\description{
    There are 19 classes, only the first 15 of which have been used in prior
    work.  The folklore seems to be that the last four classes are
    unjustified by the data since they have so few examples.
    There are 35 categorical attributes, some nominal and some ordered.  The
    value ``dna'' means does not apply.  The values for attributes are
    encoded numerically, with the first value encoded as ``0,'' the second as
    ``1,'' and so forth. 
  }
\source{
  \itemize{
    \item Source: R.S. Michalski and R.L. Chilausky "Learning by
    Being Told and Learning from Examples: An Experimental
    Comparison of the Two Methods of Knowledge Acquisition in the
    Context of Developing an Expert System for Soybean Disease
    Diagnosis", International Journal of Policy Analysis and
    Information Systems, Vol. 4, No. 2, 1980.
    \item Donor: Ming Tan & Jeff Schlimmer (Jeff.Schlimmer\%cs.cmu.edu)
  }

  These data have been taken from the UCI Repository Of Machine Learning
  Databases (Blake & Merz 1998) and were converted to R format by
  Evgenia Dimitriadou in the late 1990s.

  The current version of the UC Irvine Machine Learning Repository
  Soybean (Large) data set is available from \doi{10.24432/C5JG6Z}. 

}
\references{
    Tan, M., & Eshelman, L. (1988). Using weighted networks to represent
    classification knowledge in noisy domains.  Proceedings of the Fifth
    International Conference on Machine Learning (pp. 121-134). Ann Arbor,
    Michigan: Morgan Kaufmann.
    -- IWN recorded a 97.1\% classification accuracy 
    -- 290 training and 340 test instances
	    
    Fisher,D.H. & Schlimmer,J.C. (1988). Concept Simplification and
    Predictive Accuracy. Proceedings of the Fifth
    International Conference on Machine Learning (pp. 22-28). Ann Arbor,
    Michigan: Morgan Kaufmann.
    -- Notes why this database is highly predictable

  Blake, C.L. & Merz, C.J. (1998).
  UCI Repository of Machine Learning Databases. Irvine, CA:
  University of California, Irvine, Department of Information and Computer
  Science.
  Formerly available from \samp{http://www.ics.uci.edu/~mlearn/MLRepository.html}.    
}
\keyword{datasets}
\examples{
data("Soybean", package = "mlbench")
summary(Soybean)
}    
