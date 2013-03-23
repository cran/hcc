\name{PoincarePlot}
\alias{PoincarePlot}
\title{
Poincare plot
}
\description{
Scatter plot check for hidden correlation given an input x and residuals.
}
\usage{
PoincarePlot(x, res)
}
\arguments{
  \item{x}{
an input variable in the regression
}
  \item{res}{
residuals, the same length as x
}
}
\details{
Plot the ordered lagged one residuals along with a loess smooth to help visualize whether there is a correlation in the residuals.
}
\value{
plot produced
}

\author{
Yun Shi and A. I. McLeod
}


\seealso{
\code{\link{hctest}}
}

\examples{
data(trees)
ans<-lm(Volume~Girth+Height, data=trees)
x <- trees$Girth
res <- resid(ans)
PoincarePlot(x, res)
}

\keyword{ htest }
\keyword{ models}

