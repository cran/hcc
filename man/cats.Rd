\name{cats}
\alias{cats}
\docType{data}
\title{
Anatomical data from domestic cats
}
\description{
The heart and body weights of samples of male and female cats used for digitalis experiments. The cats were all adult, over 2 kg body weight.
}
\usage{data(cats)}
\format{
  A data frame with 144 observations on the following 3 variables.
  \describe{
    \item{\code{Sex}}{sex:Factor with evels "F" and "M".}
    \item{\code{Bwt}}{body weight in kg.}
    \item{\code{Hwt}}{heart weight in g.}
  }
}

\references{
R. A. Fisher (1947) The analysis of covariance method for the relation between a part and the whole, Biometrics 3, 65-68.
}

\examples{
data(cats)
attach(cats)
mod<-lm(Hwt~Sex+Bwt+Sex:Bwt,data=cats)
res <- resid(mod)
hctest(Bwt, res)
}
\keyword{datasets}
