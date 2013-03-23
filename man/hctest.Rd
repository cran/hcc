\name{hctest}
\alias{hctest}
\title{
Test for hidden correlation with one input
}
\description{
Statistical signficance test for hidden correlation given an input x and residuals.
}
\usage{
hctest(x, res)
}
\arguments{
  \item{x}{
the predictor variable 
}
  \item{res}{
residuals, the same length as x
}
}

\value{
p-value
}

\author{
Yun Shi and A.I. McLeod
}


\examples{
#Example 1
#in this example, there is no hidden correlation
set.seed(313477)
n <- 50
err <- rnorm(n)
x <- rnorm(n)
y <- 1+2*x+err
res <- resid(lm(y~x))
hctest(x, res)
}

\keyword{ models}
\keyword{ htest}

