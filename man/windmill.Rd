\name{windmill}
\alias{windmill}
\docType{data}
\title{
Direct current output was measured against wind velocity
}
\description{
Data collect from direct current output and wind velocity.
}
\usage{data(windmill)}
\format{
  A data frame with 25 observations on the following 2 variables.
  \describe{
    \item{\code{Y}}{direct current output}
    \item{\code{x}}{wind velocity}
  }
}
\source{
Hand, D.J., Daly, F., Lunn, A.D., McConway, K.J. and Ostrowski, E. (1993). A Handbook of Small Datasets. Chapman and Hall.	 
}
\references{
Joglekar, G., Schuenemeyer, J.H. and LaRiccia, V. (1989) Lack-of-fit testing when replicates are not available. American Statistician, 43, 135-143.
}
\examples{
data(windmill)
g1<-lm(Y~x,data=windmill)
res<- resid(g1)
x<- windmill[,2]
hctest(x,res)
}
\keyword{datasets}
