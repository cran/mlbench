## This file keeps record of reading the data into R and
## transformations (if any) that have been applied. All
## transformations are indicated in the respective help pages.


###**********************************************************

### PimaIndiansDiabetes2

load("data/PimaIndiansDiabetes.rda")
PimaIndiansDiabetes2 = PimaIndiansDiabetes

for(n in c("glucose", "pressure","triceps", "insulin",  "mass")){
    PimaIndiansDiabetes2[[n]][PimaIndiansDiabetes[[n]]==0] <- NA
}

save(PimaIndiansDiabetes2, file="data/PimaIndiansDiabetes2.rda")

###**********************************************************

### Zoo

## download zoo.data from UCI repository (2007-02-02)
## edit zoo.data from UCI repository: two rows have name "frog"
## -> frog.1 and frog.2

Zoo <- read.csv("zoo.data", header=FALSE, row.names=1)

colnames(Zoo) <- c("hair",
                   "feathers",	
                   "eggs",		
                   "milk",		
                   "airborne",	
                   "aquatic",	
                   "predator",	
                   "toothed",	
                   "backbone",	
                   "breathes",	
                   "venomous",	
                   "fins",		
                   "legs",		
                   "tail",		
                   "domestic",	
                   "catsize",	
                   "type")

Zoo[,1:12] <- lapply(Zoo[,1:12], as.logical)
Zoo[,14:16] <- lapply(Zoo[,14:16], as.logical)
Zoo[,17] <- factor(Zoo[,17],
                   labels=c("mammal","bird","reptile","fish",
                   "amphibian","insect","mollusc.et.al"))

save(Zoo, file="Zoo.rda")

