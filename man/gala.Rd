\name{gala}
\alias{gala}
\docType{data}
\title{
Species diversity on the Galapagos Islands
}
\description{
There are 30 Galapagos islands and 7 variables in the dataset. The relationship between the number of plant species and several geographic variables is of interest. The original dataset contained several missing values which have been filled for convenience.
}
\usage{data(gala)}
\format{
  A data frame with 30 observations on the following 7 variables.
  \describe{
    \item{\code{Species}}{the number of plant species found on the island}
    \item{\code{Endemics}}{the number of endemic species}
    \item{\code{Area}}{the area of the island (km^2)}
    \item{\code{Elevation}}{the highest elevation of the island (m)}
    \item{\code{Nearest}}{the distance from the nearest island (km)}
    \item{\code{Scruz}}{the distance from Santa Cruz island (km)}
    \item{\code{Adjacent}}{the area of the adjacent island (square km)}
  }
}

\source{
M. P. Johnson and P. H. Raven (1973) "Species number and endemism: The Galapagos Archipelago revisited" Science, 179, 893-895
}
\references{
J. J. Faraway. Linear Models with R. Chapman & Hall/CRC, 2005 and J. J.Faraway. Extending the linear model with R. Chapman & Hall/CRC Taylor & Francis Group, 2006.
}

\examples{
data(gala)
gala <- gala[,-2]
modt <- lm(sqrt(Species) ~ . , gala)
res <- resid(modt)
hctest(gala[,3], residuals(modt))
}
\keyword{datasets}
