\name{hcc-package}
\alias{hcc-package}
\docType{package}
\title{
Hidden correlation check 
}
\description{
A new diagnostic check for model adequacy in regression and generalized linear models is implemented.
}
\details{
\tabular{ll}{
Package: \tab hcc\cr
Type: \tab Package\cr
Version: \tab 0.54\cr
Date: \tab 2013-03-23\cr
License: \tab GPL (>=2)\cr
}
This package provides a new diagnostic test that will be discussed in a future paper.
}
\author{
Yun Shi and A.I. McLeod
Maintainer:  A. I. McLeod <aimcleod@uwo.ca>
}

\keyword{ package }

\examples{
#Example 1
#an example with hidden correlation
set.seed(313477)
data <- simer(50, 5)
ans <- lm(y~x, data=data)
summary(ans)
#the usual regression plots
par(mfrow=c(2,2))
plot(ans)
par(mfrow=c(1,1))
#hidden correlation signficance test
res <- resid(ans)
hctest(data$x, res)
#Poincare plot
PoincarePlot(data$x, res)
#residual dependency test
rdplot(data$x, res)

#Example 2
data(birthwt)
ans<-glm(low~., data=birthwt[,-10], family="binomial")
ans2<-step(ans)
#only lwt (mother's weight) is a numeric variable
res <- resid(ans2)
hctest(birthwt$lwt, res)
#the test for hidden correlation is signficant
PoincarePlot(birthwt$lwt, res)
#the Poincare plot confirms the lack of fit
rdplot(birthwt$lwt, res)
#the residual-dependency plot does not give a clear signal
}
