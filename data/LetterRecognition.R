LetterRecognition <- scan(con <- gzfile("LetterRecognition.data.gz"),
                          quiet=TRUE)
close(con); rm(con)
LetterRecognition <- matrix(LetterRecognition,ncol=17,byrow=TRUE)
LetterRecognition <- as.data.frame(LetterRecognition)
colnames(LetterRecognition) <-
    c("lettr", "x.box", "y.box", "width", "high", "onpix", "x.bar",
      "y.bar", "x2bar", "y2bar", "xybar", "x2ybr", "xy2br", "x.ege",
      "xegvy", "y.ege", "yegvx")
LetterRecognition$lettr <- factor(LetterRecognition$lettr,
                                  labels=LETTERS)
