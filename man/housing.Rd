\name{housing}
\alias{housing}
\title{Boston Housing Data}
\usage{data(housing)}
}
\description{Concerns housing values in suburbs of Boston.
}
\format{A data frame with 506 observations on 14 variables,
    the last one \code{medv} being the target variable:
    \tabular{cll}{
 [,1] \tab crim \tab per capita crime rate by town \cr
 [,2] \tab zn \tab proportion of residential land zoned for lots over 25,000 sq.ft \cr
 [,3] \tab indus \tab proportion of non-retail business acres per town \cr      
 [,4] \tab chas \tab Charles River dummy variable (= 1 if tract bounds river; 0 otherwise) \cr             
 [,5] \tab nox \tab nitric oxides concentration (parts per 10 million) \cr              
 [,6] \tab rm \tab average number of rooms per dwelling \cr            
 [,7] \tab age \tab proportion of owner-occupied units built prior to 1940 \cr   
 [,8] \tab dis \tab weighted distances to five Boston employment centres \cr    
 [,9] \tab rad \tab index of accessibility to radial highways \cr            
[,10] \tab tax \tab full-value property-tax rate per $10,000 \cr              
[,11] \tab ptratio \tab pupil-teacher ratio by town \cr         
[,12] \tab b \tab 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town\cr            
[,13] \tab lstat \tab lower status of the population \cr            
[,14] \tab medv \tab median value of owner-occupied homes in $1000's \cr 
    }
}
\source{
    Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and the 
    demand for clean air', J. Environ. Economics & Management,
    vol.5, 81-102, 1978.
    
    These data have been taken from the UCI Repository Of Machine Learning
    Databases at
    \itemize{
    	\item ftp.ics.uci.edu://pub/machine-learning-databases
    	\item http://www.ics.uci.edu/mlearn/MLRepository.html
    }
    and were converted to R format by Friedrich.Leisch@ci.tuwien.ac.at.
}
\keyword{datasets}

