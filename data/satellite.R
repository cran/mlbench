satellite <-
    scan(system(paste("find", paste(.lib.loc, collapse=" "),
                      "-name satellite.data",sep=" "),
                intern=TRUE)[1])
satellite <- matrix(satellite,ncol=37,byrow=TRUE)
satellite <- data.frame(x=satellite[,1:36], classes=factor(satellite[,37]))
levels(satellite$classes) <- c("red soil",
                               "cotton crop",
                               "grey soil",
                               "damp grey soil",
                               "vegetation stubble",
                               "very damp grey soil")
