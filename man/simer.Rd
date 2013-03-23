\name{simer}
\alias{simer}

\title{Simulation of simple linear regression with hidden correlation}

\description{
Simulates n observations, (y, x) from  a simple linear regression, y = a+b*x+e, where x is uniformly distributed on (0, n), e are normally distributed with mean 0 and variance 1. The parameeters a and b are zero. The error term is not independent but has an exponential correlation with parameter r so that observations close together in the x-space are positively correlated. When r=0, the correlation is zero but as r increases the correlation gets stronger. 
}

\usage{
simer(n, r)
}

\arguments{
  \item{n}{number of observations}
  \item{r}{correlation parameter}
}


\value{
A data frame with components:
 \item{x }{input variable}
 \item{y }{output variable}
}

\author{
A. I. McLeod and Yun Shi
}

\examples{
data <- simer(50, 5)
}

\keyword{ datagen }
