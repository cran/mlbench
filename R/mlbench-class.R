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

    a <- 1/sqrt(d)
    x[-c2,] <- matrix(rnorm(n=d*(n-length(c2)), sd=2), ncol=d)
    x[c2,]  <- matrix(rnorm(n=d*length(c2), mean=a), ncol=d)
    
    retval <- list(x=x, classes=cl)
    class(retval) <- c("mlbench.ringnorm", "mlbench")
    retval
}

mlbench.twonorm <- function (n, d = 20) 
{
    x <- matrix(0, nrow = n, ncol = d)
    c2 <- sample(1:n, size = n/2, replace = FALSE)
    cl <- factor(rep(1, length = n), levels = as.character(1:2))
    cl[c2] <- 2
    a <- 2/sqrt(d)
    x[-c2, ] <- matrix(rnorm(n = d * (n - length(c2)), mean = a, sd = 1), 
        ncol = d)
    x[c2, ] <- matrix(rnorm(n = d * length(c2), mean = -a), ncol = d)
    retval <- list(x = x, classes = cl)
    class(retval) <- c("mlbench.twonorm", "mlbench")
    retval
}

mlbench.threenorm <- function (n, d = 20) 
{
    x <- matrix(0, nrow = n, ncol = d)
    c2 <- sample(1:n, size = n/2, replace = FALSE)
    cl <- factor(rep(1, length = n), levels = as.character(1:2))
    cl[c2] <- 2
    c1 <- (1:n)[-c2]
    a <- 2/sqrt(d)
    for (i in c1)
      {
        distr <- as.logical(round(runif(1,0,1)))
        if ( distr )
          x[i, ] <- rnorm(n = d, mean = a) 
        else
          x[i, ] <- rnorm(n = d, mean = -a) 
      }
    m <- rep(c(a, -a), d/2)
    if ((d %% 2)==1)
      m <- c(m, a)
    x[c2, ] <- matrix(rnorm(n = d * length(c2), mean = m),
                      ncol = d, byrow=TRUE)
    retval <- list(x = x, classes = cl)
    class(retval) <- c("mlbench.threenorm", "mlbench")
    retval
}

mlbench.waveform <- function (n)
  {
    Rnuminstances <- n
    retval <- .C("waveform", Rnuminstances = as.integer(Rnuminstances),
                 x= double(21*n), type = integer (n))  
    x <- matrix (retval$x, ncol=21, byrow = TRUE)
    retval <- list (x=x, classes=as.factor(retval$type+1))
    class(retval) <- c("mlbench.waveform","mlbench")
    return(retval)
  }

mlbench.cassini <- function(n,relsize=c(2,2,1))
  {
      cassinib <- function(x, a, c)
      {
          y <- numeric(2)
          y[1] <- -sqrt(-c^2  - x^2  + sqrt(a^4  + 4*c^2*x^2))
          y[2] <- sqrt(-c^2  - x^2  + sqrt(a^4  + 4*c^2*x^2))
          y
      }
      
      circle <- function(x, r)
          sqrt(r^2-x^2)
      

    big1_relsize[1]
    big2_relsize[2]
    small_relsize[3]
    parts<-big1+big2+small
    npiece<-n/parts
    n1<-round(big1*npiece)
    n2<-round(big2*npiece)
    n3<-round(small*npiece)
    if ((n1+n2+n3)!=n) n3<-n3+1
    a<-1
    C<-0.97
    Cell<-sqrt((1+C^2)/3)
    aell <- Cell*sqrt(2)
    transl <- 1.1
    r <- 0.6
    tmima1<-matrix(0,ncol=2,nrow=n1)
    tmima2<-matrix(0,ncol=2,nrow=n2)
    tmima3<-matrix(0,ncol=2,nrow=n3)
    n1found <- 0
    while(n1found < n1)
      {
        x1 <- runif(1,min=-sqrt(a^2+C^2),max=sqrt(a^2+C^2))
        y1 <- runif(1,min=-transl-1,max=-transl+0.6)
        if ((y1 < cassinib(x1,a,C)[2]-transl) &&
            (y1 > cassinib(x1,aell,Cell)[1]-transl))
          {
            n1found <- n1found +1
            tmima1[n1found,]<-c(x1,y1)
          }
      }

    n2found <- 0
    while(n2found < n2)
      {
        x2 <- runif(1,min=-sqrt(a^2+C^2),max=sqrt(a^2+C^2))
        y2 <- runif(1,max= transl+1,min=transl-0.6)
        if ((y2 > cassinib(x2,a,C)[1]+transl) &&
            (y2 < cassinib(x2,aell,Cell)[2]+transl))
          {
            n2found <- n2found +1
            tmima2[n2found,]<-c(x2,y2)
          }
      }
    
    n3found <- 0
    while(n3found < n3)
      {
        x3<-runif(1,min=-r,max=r)
        y3<-runif(1,min=-r,max=r)
        if ((y3 > -circle(x3,r)) &&
            (y3 < circle(x3,r)))
          {
            n3found <- n3found +1
            tmima3[n3found,]<-c(x3,y3) 
          }
      }
    teliko <- rbind(tmima1,tmima2,tmima3)
    cl <- c(rep(1,n1),rep(2,n2),rep(3,n3))
    retval<-list(x=teliko,classes=cl)
    class(retval) <- c("mlbench.cassini","mlbench")
    retval
  }
    

mlbench.cuboids <- function (n, relsize=c(2,2,2,1))
  {
    big1 <- relsize[1]
    big2 <- relsize[2]
    big3 <- relsize[3]
    small <- relsize[4]
    parts<-big1+big2++big3+small
    npiece<-n/parts
    n1<-round(big1*npiece)
    n2<-round(big2*npiece)
    n3<-round(big3*npiece)
    n4<-round(small*npiece)
    if ((n1+n2+n3+n4)!=n) n4<-n4+1
    
    x1 <- cbind(runif(n1,min=0,max=1),runif(n1,min=0.75,max=1.0),runif(n1,min=0.75,max=1))
    
    x2 <- cbind(runif(n2,min=0.75,max=1.0),runif(n2,min=0,max=0.25),runif(n2,min=0,max=1))
    
    x3 <- cbind(runif(n3,min=0.0,max=0.25),runif(n3,min=0.0,max=1),runif(n3,min=0,max=0.25))
    
    x4 <- cbind(runif(n4,min=0.4,max=0.6),runif(n4,min=0.4,max=0.6),runif(n4,min=0.4,max=0.6))
    
    x<-rbind(x1,x2,x3,x4)
    retval <-list(x=x,classes=c(rep(1,n1),rep(2,n2),rep(3,n3),rep(4,n4)))
    class(retval) <- c("mlbench.cuboids","mlbench")
    return(retval)
  }

   


bayesclass <- function(z) UseMethod("bayesclass")

bayesclass.noerr <- function(z) z$classes

bayesclass.mlbench.xor <- bayesclass.noerr
bayesclass.mlbench.circle <- bayesclass.noerr
bayesclass.mlbench.cassini <- bayesclass.noerr
bayesclass.mlbench.cuboids <- bayesclass.noerr

    
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

bayesclass.mlbench.ringnorm <- function (z)
  {
    z <- z$x
    ndata <- dim(z)[1]
    ndim <- dim(z)[2]
    a <- 1/sqrt(ndim)
    center1 <- rep(0,ndim)
    center2 <- rep(a,ndim)
    m1 <- mahalanobis(z, center1, (4*diag(ndim)), inverted=FALSE)
    m2 <- mahalanobis(z, center2, diag(ndim), inverted=FALSE)
    as.factor ((m1 > m2) +1)
  }

bayesclass.mlbench.twonorm <- function (z)
  {
    z <- z$x
    ndata <- dim(z)[1]
    bayesclass <- integer(ndata)
    ndim <- dim(z)[2]
    a <- 2/sqrt(ndim)
    center1 <- rep(a,ndim)
    center2 <- rep(-a,ndim)
    for (i in 1:ndata)
      {
        dist1 <- sum((z[i, ] - center1) ^2)
        dist2 <- sum((z[i, ] - center2) ^2)
        bayesclass[i] <- (dist1 > dist2) +1
      }
    as.factor(bayesclass)
  }


bayesclass.mlbench.threenorm <- function (z)
  {
    z <- z$x
    ndata <- dim(z)[1]
    bayesclass <- integer(ndata)
    ndim <- dim(z)[2]
    a <- 2/sqrt(ndim)
    center1a <- rep(a,ndim)
    center1b <- rep(-a,ndim)
    center2 <- rep(c(a, -a), ndim/2)
    if ((ndim %% 2)==1)
      center2 <- c(center2, a)
    for (i in 1:ndata)
      {
        dist1a <- sum((z[i, ] - center1a) ^2)
        dist1b <- sum((z[i, ] - center1b) ^2)
        dist2 <- sum((z[i, ] - center2) ^2)
        bayesclass[i] <- ((dist1a > dist2) && (dist1b > dist2)) +1
      }
    as.factor(bayesclass)
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



