\name{rdplot}
\alias{rdplot}
\title{Residual dependency plot}
\description{
Plots the residuals vs an input variable.
The loess smoother is shown.
}
\usage{
rdplot(x, res, f = 0.8)
}
\arguments{
  \item{x}{
input variable
}
  \item{res}{
residuals
}
  \item{f}{
smoothing parameter for loess
}
}

\value{plot produced as a side-effect}

\references{
W.S. Cleveland, Visualizing Data.
}
\author{
A.I. McLeod
}


\examples{
x <- runif(50, 0, 50)
res <- rnorm(50)
rdplot(x, res)
}
\keyword{ hplot }
