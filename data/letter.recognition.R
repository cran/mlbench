letter.recognition <-
    scan(system(paste("find", paste(.lib.loc, collapse=" "),
                      "-name letter.recognition.data", sep=" "),
                intern=TRUE)[1])
letter.recognition <- matrix(letter.recognition,ncol=17,byrow=TRUE)
letter.recognition <- as.data.frame(letter.recognition)
colnames(letter.recognition) <- c("lettr",
                                  "x.box",
                                  "y.box",
                                  "width",
                                  "high ",
                                  "onpix",
                                  "x.bar",
                                  "y.bar",
                                  "x2bar",
                                  "y2bar",
                                  "xybar",
                                  "x2ybr",
                                  "xy2br",
                                  "x.ege",
                                  "xegvy",
                                  "y.ege",
                                  "yegvx")
                                    
levels(letter.recognition$lettr) <- LETTERS
