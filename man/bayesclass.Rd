\name{bayesclass}
\alias{bayesclass}
\alias{bayesclass.noerr}
\alias{bayesclass.mlbench.2dnormals}
\alias{bayesclass.mlbench.circle}
\alias{bayesclass.mlbench.xor}
\alias{bayesclass.mlbench.cassini}
\alias{bayesclass.mlbench.cuboids}
\alias{bayesclass.mlbench.twonorm}
\alias{bayesclass.mlbench.threenorm}
\alias{bayesclass.mlbench.ringnorm}

\title{Bayes classifier}
\usage{
bayesclass(z)
}
\arguments{
 \item{z}{An object of class \code{"mlbench"}.}
}
\description{
    Returns the decision of the (optimal) Bayes classifier for a given
    data set. This is a generic function, i.e., there are different
    methods for the various mlbench problems.

    If the classes of the problem do not overlap, then the Bayes
    decision is identical to the true classification, which is
    implemented as the dummy function \code{bayesclass.noerr} (which
    simply returns \code{z$classes} and is used for all problems with
    disjunct classes).
}
\examples{
# 6 overlapping classes
p <- mlbench.2dnormals(500,6)
plot(p)

plot(p$x, col=as.numeric(bayesclass(p)))
}

\keyword{classif}
