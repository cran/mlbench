## This file keeps record of transformations that have been applied to
## some data sets. All transformations are indicated in the respective
## help pages.



### PimaIndiansDiabetes2

load("data/PimaIndiansDiabetes.rda")
PimaIndiansDiabetes2 = PimaIndiansDiabetes

for(n in c("glucose", "pressure","triceps", "insulin",  "mass")){
    PimaIndiansDiabetes2[[n]][PimaIndiansDiabetes[[n]]==0] <- NA
}

save(PimaIndiansDiabetes2, file="data/PimaIndiansDiabetes2.rda")
