\name{ozone}
\alias{ozone}
\docType{data}
\title{
Ozone readings in LA
}
\description{
Example Dataset from Practical Regression and Anova
}
\usage{data(ozone)}
\format{
  A data frame with 330 observations on the following 10 variables.
  \describe{
    \item{\code{O3}}{the molecular formula for ozone}
    \item{\code{vh}}{the molecular formula for ozone}
    \item{\code{wind}}{the flow of gases on a large scale}
    \item{\code{humidity}}{the amount of water vapor in the air}
    \item{\code{temp}}{the physical quantity that is a measure of hotness and coldness on a numerical scale}
    \item{\code{ibh}}{the molecular formula for ozone}
    \item{\code{dpg}}{the molecular formula for ozone}
    \item{\code{ibt}}{the molecular formula for ozone}
    \item{\code{vis}}{the molecular formula for ozone}
    \item{\code{doy}}{the molecular formula for ozone}
  }
}

\references{
J. J.Faraway. Extending the linear model with R. Chapman & Hall/CRC Taylor & Francis Group, 2006.
}

\examples{
data(ozone)
alm <- lm(O3 ~ vis+doy+ibt+humidity+temp,data=ozone)
res <- resid(alm)
hctest(ozone[,10], res)
}
\keyword{datasets}
