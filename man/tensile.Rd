\name{tensile}
\alias{tensile}
\docType{data}
\title{
The tensile strength of Kraft paper measure against the percentage of hardwood
}
\description{
The tensile strength of Kraft paper was measured against the percentage of hardwood in the batch of pulp from which the paper was produce. 
}
\usage{data(tensile)}
\format{
  A data frame with 19 observations on the following 2 variables.
  \describe{
    \item{\code{Y}}{the tensile strength of Kraft paper}
    \item{\code{x}}{hardwood in the batch of pulp}
  }
}
\source{
Hand, D.J., Daly, F., Lunn, A.D., McConway, K.J. and Ostrowski, E. (1993). A Handbook of Small Datasets. Chapman and Hall.	 
}
\references{
Joglekar, G., Schuenemeyer, J.H. and LaRiccia, V. (1989) Lack-of-fit testing when replicates are not available. American Statistician, 43, 135-143.
}
\examples{
data(tensile)
tmod1 <- lm(Y~x+I(x^2), tensile)
x<-tensile[,2]
res <- resid(tmod1)
hctest(x, res)
}
\keyword{datasets}
