Satellite <- scan("Satellite.data",quiet=TRUE)
Satellite <- matrix(Satellite,ncol=37,byrow=TRUE)
Satellite <- data.frame(x=Satellite[,1:36], classes=factor(Satellite[,37]))
levels(Satellite$classes) <- c("red soil",
                               "cotton crop",
                               "grey soil",
                               "damp grey soil",
                               "vegetation stubble",
                               "very damp grey soil")
