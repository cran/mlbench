mlbench.xor <- function(n, d=2){

  x <- matrix(runif(n*d,-1,1),ncol=d,nrow=n)
  if((d != as.integer(d)) || (d<2))
    stop("d must be an integer >=2")

  z <- rep(0, length=n)
  for(k in 1:n){
    if(x[k,1]>=0){
      tmp <- (x[k,2:d] >=0)
      z[k] <- 1+sum(tmp*2^(0:(d-2)))
    }
    else {
      tmp <- !(x[k,2:d] >=0)
      z[k] <- 1 + sum(tmp*2^(0:(d-2)))
    }
  }

  retval <- list(x=x, classes=factor(z))
  class(retval) <- c("mlbench.xor", "mlbench")
  retval
}

mlbench.circle <- function(n, d=2){

  x <- matrix(runif(n*d,-1,1),ncol=d,nrow=n)
  if((d != as.integer(d)) || (d<2))
    stop("d must be an integer >=2")

  z <- rep(1, length=n)

  r <- (2^(d-1) * gamma(1+d/2) / (pi^(d/2)))^(1/d)
  z[apply(x, 1, function(x) sum(x^2)) > r^2] <- 2

  retval <- list(x=x, classes=factor(z))
  class(retval) <- c("mlbench.circle", "mlbench")
  retval
}

mlbench.2dnormals <- function(n, cl=2, r=sqrt(cl), sd=1){
  
  e <- sample(0:(cl-1), size=n, replace=TRUE)
  m <- r * cbind(cos(pi/4 + e*2*pi/cl), sin(pi/4 + e*2*pi/cl))
  x <- matrix(rnorm(2*n, sd=sd), ncol=2) + m

  retval <- list(x=x, classes=factor(e+1))
  class(retval) <- c("mlbench.2dnormals", "mlbench")
  retval
}


mlbench.1spiral <- function(n, cycles=1, sd=0)
{
    w <- seq(0, by=cycles/n, length=n)
    x <- matrix(0, nrow=n, ncol=2)

    x[,1] <- (2*w+1)*cos(2*pi*w)/3;
    x[,2] <- (2*w+1)*sin(2*pi*w)/3;

    if(sd>0){
        e <- rnorm(n, sd=sd)

        xs <- cos(2*pi*w)-pi*(2*w+1)*sin(2*pi*w)
        ys <- sin(2*pi*w)+pi*(2*w+1)*cos(2*pi*w)
  
        nrm <- sqrt(xs^2+ys^2)
        x[,1] <- x[,1] + e*ys/nrm
        x[,2] <- x[,2] - e*xs/nrm
    }
    x
}

mlbench.spirals <- function(n, cycles=1, sd=0)
{
    x <-  matrix(0, nrow=n, ncol=2)
    c2 <- sample(1:n, size=n/2, replace=FALSE)
    cl <- factor(rep(1, length=n), levels=as.character(1:2))
    cl[c2] <- 2

    x[-c2,] <- mlbench.1spiral(n=n-length(c2), cycles=cycles, sd=sd)
    x[c2,] <- - mlbench.1spiral(n=length(c2), cycles=cycles, sd=sd)
        
    retval <- list(x=x, classes=cl)
    class(retval) <- c("mlbench.spirals", "mlbench")
    retval
}

mlbench.ringnorm <- function(n, d=20)
{
    x <-  matrix(0, nrow=n, ncol=d)
    c2 <- sample(1:n, size=n/2, replace=FALSE)
    cl <- factor(rep(1, length=n), levels=as.character(1:2))
    cl[c2] <- 2

    a <- 2/sqrt(d)
    x[-c2,] <- matrix(rnorm(n=d*(n-length(c2)), sd=2), ncol=d)
    x[c2,]  <- matrix(rnorm(n=d*length(c2), mean=a), ncol=d)
    
    retval <- list(x=x, classes=cl)
    class(retval) <- c("mlbench.ringnorm", "mlbench")
    retval
}



bayesclass <- function(z) UseMethod("bayesclass")

bayesclass.noerr <- function(z) z$classes

bayesclass.mlbench.xor <- bayesclass.noerr
bayesclass.mlbench.circle <- bayesclass.noerr

    

bayesclass.mlbench.2dnormals <- function(z){

    ncl <- length(levels(z$classes))
    z <- z$x
    for(k in 1:nrow(z)){
        z[k,] <- z[k,] / sqrt(sum(z[k,]^2))
    }        
    winkel <- acos(z[,1] * sign(z[,2])) + pi * (z[,2]<0)
    winkel <- winkel - pi/ncl - pi/4
    winkel[winkel < 0] <- winkel[winkel<0] + 2*pi
    retval <- (winkel)%/%(2 * pi/ncl)
    factor((retval+1)%%ncl+1)
}


as.data.frame.mlbench <- function(z)
{
    data.frame(x=z$x, classes=z$classes)
}


plot.mlbench <- function(z, xlab="", ylab="", ...)
{
    if(ncol(z$x)>2){
        pairs(z$x, col=z$classes, ...)
    }
    else{
        plot(z$x, col=z$classes, xlab=xlab, ylab=ylab, ...)
    }
}        
