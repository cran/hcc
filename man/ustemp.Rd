\name{ustemp}
\alias{ustemp}
\docType{data}
\title{
U.S. winter temperatures for various latitudes and longitudes
}
\description{
The data collect from 56 U.S. cities winter temperatures for various latitudes and longitudes from 1931 to 1960.
}

\usage{data(ustemp)}
\format{
  A data frame with 56 observations on the following 3 variables.
  \describe{
    \item{\code{y}}{winter temperature (deg F)}
    \item{\code{x1}}{latitude}
    \item{\code{x2}}{longitude}
  }
}
\source{
Hand, D.J., Daly, F., Lunn, A.D., McConway, K.J. and Ostrowski, E. (1993). A Handbook of Small Datasets. Chapman and Hall.	 
}

\references{
J. L. Peixoto. A property of well-formulated polynomial regression models. The American Statistician, 44:26, 1990.
}

\examples{
data(ustemp)
lmod<-lm(y~x1+x2, data=ustemp)
x1<-ustemp[,"x1"]
x2<-ustemp[,"x2"]
res<-resid(lmod)
hctest(x1, res)
}
\keyword{datasets}
