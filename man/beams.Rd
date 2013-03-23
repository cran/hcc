\name{beams}
\alias{beams}
\docType{data}
\title{
The strength of ten wood beams are effected by the specific gravity and moisture content
}
\description{
The data was collected on the specific gravity, moisture content and strength of ten wood beams.
}
\usage{data(beams)}
\format{
  A data frame with 10 observations on the following 3 variables.
  \describe{
    \item{\code{y}}{the strength of ten wood beams}
    \item{\code{x1}}{the specific gravity}
    \item{\code{x2}}{the moisture content}
  }
}
\source{
Hand, D.J., Daly, F., Lunn, A.D., McConway, K.J. and Ostrowski, E. (1993). A Handbook of Small Datasets. Chapman and Hall.	 
}
\references{
Draper, N.R. and Stoneman, D.M. (1966) Testing for the inclusion of variables in linear regression by a randomisation technique. Technometrics, 8, 695-699.}
\examples{
data(beams)
mod <-lm(y ~ x1+x2, data=beams)
x <- beams[, 2]
res <- resid(mod)
hctest(x, res)
}
\keyword{datasets}
