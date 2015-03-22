\name{OIsurv-package}
\alias{OIsurv-package}
\alias{OIsurv}
\docType{package}
\title{Survival analysis tutorial, a supplement to the OpenIntro guide}
\description{
This package supplements the \emph{Survival Analysis in R: A Tutorial} paper. The tutorial describes how to apply several basic survival analysis techniques in R using the \code{survival} package. Data sets from the \code{KMsurv} package are used in most examples; this package is a supplement to Klein and Moeschberger's textbook (see References).

All code used in the tutorial are included in the examples below.
}
\details{
\tabular{ll}{
Package: \tab OIsurv\cr
Type: \tab Package\cr
Version: \tab 0.2\cr
Date: \tab 2013-10-16\cr
License: \tab GPL (>= 2)\cr
URL: \tab http://www.openintro.org/stat/surv.php\cr
LazyLoad: \tab yes\cr
}
}
\author{
David M Diez

Maintainer: David M Diez <david.m.diez@gmail.com>
}
\references{
Fox J (2002). "Cox Proportional-Hazards Regression for Survival Data. Appendix to An R and S-PLUS Companion to Applied Regression." Comprehensive R Archive Network.
http://cran.r-project.org/doc/contrib/Fox-Companion/appendix-cox-regression.pdf

Klein JP, Moeschberger ML (2003). Survival Analysis: Techniques for Censored and Truncated Data. Springer Verlag, New York.

ReliaSoft Corporation website (2006). "Data Classification."
http://www.weibull.com/LifeDataWeb/data_classification.htm
}
\seealso{\code{\link{confBands}}}
\examples{
#=====> 2. Three packages: survival, OIsurv, and KMsurv <=====#
# install.packages("OIsurv")
# library(OIsurv)
data(aids)
aids
attach(aids)
infect
detach(aids)


#=====> 3. Survival objects <=====#
data(tongue)
attach(tongue)
mySurvObject <- Surv(time, delta)
mySurvObject
detach(tongue)

# Surv(time, event, type="left")

# Surv(t1, t2, event)


#=====> 4. Kaplan-Meier estimate and pointwise bounds <=====#
data(tongue)
attach(tongue)
mySurv <- Surv(time[type==1], delta[type==1])
(myFit <- survfit(mySurv ~ 1))
summary(myFit)

myFit$surv     # outputs the Kaplan-Meier estimate at each t_i
myFit$time     # t_i
myFit$n.risk   # Y_i
myFit$n.event  # d_i
myFit$std.err  # standard error of the K-M estimate at t_i
myFit$lower    # lower pointwise estimates (alternatively, $upper)

#pdf("kmPlot.pdf", 7, 4.5)
#par(mar=c(3.9, 3.9, 2.5, 1), mgp=c(2.6, 0.7, 0))
plot(myFit, main="Kaplan-Meier estimate with 95\% confidence bounds",
     xlab="time", ylab="survival function")
#dev.off()

myFit1 <- survfit(Surv(time, delta) ~ type)  # 'type' specifies the grouping
detach(tongue)


#=====> 5. Kaplan-Meier confidence bands <=====#
data(tongue)
attach(tongue)
mySurv <- Surv(time[type==1], delta[type==1])
#pdf("confBand.pdf", 7, 4.5)
#par(mar=c(3.9, 3.9, 2.5, 1), mgp=c(2.6, 0.7, 0))
plot(survfit(mySurv ~ 1), xlab='time',
     ylab='Estimated Survival Function',
     main='Confidence intervals versus confidence bands')
myCB <- confBands(mySurv)
lines(myCB, lty=3)
legend('topright', legend=c('K-M survival estimate',
     'pointwise intervals','EP confidence bands'), lty=1:3)
#dev.off()
detach(tongue)


#=====> 6. Cumulative hazard <=====#
data(baboon)
attach(baboon)
mySurv  <- Surv(time, observed)
myFit   <- summary(survfit(mySurv ~ 1))
Hhat    <- -log(c(myFit$surv, tail(myFit$surv, 1)))
hSortOf <- myFit$n.event / myFit$n.risk
Htilde  <- c(cumsum(hSortOf), sum(hSortOf))

#pdf("cumHazard.pdf", 7, 4)
#par(mar=c(3.9, 3.9, 2.5, 1), mgp=c(2.6, 0.7, 0))
plot(c(myFit$time, 1200), Hhat, xlab='time', ylab='cumulative hazard',
     main='Comparing cumulative hazards', type='s')
lines(c(myFit$time, 1200), Htilde, lty=2, type='s')
legend('topleft', legend=c('MLE', 'Nelson-Aalen'), lty=1:2)
#dev.off()

detach(baboon)


#=====> 7. Mean and median estimates with bounds <=====#
data(drug6mp)
attach(drug6mp)
mySurv <- Surv(t1, rep(1, 21))   # all placebo patients observed
survfit(mySurv ~ 1)
print(survfit(mySurv ~ 1), print.rmean=TRUE)
detach(drug6mp)


#=====> 8. Tests for two or more samples <=====#
data(btrial)
attach(btrial)
survdiff(Surv(time, death) ~ im)   # output omitted
survdiff(Surv(time, death) ~ im, rho=1)   # some output omitted
detach(btrial)


#=====> 9. Cox proportional hazards model, constant covariates <=====#
data(burn)
attach(burn)
mySurv    <- Surv(T1, D1)
(coxphFit <- coxph(mySurv ~ Z1 + as.factor(Z11)))

coxphFit$coefficients  # may use coxphFit$coeff instead
coxphFit$var           # I^(-1), estimated cov matrix of the beta-hats
coxphFit$loglik                   # log-likelihood for alt and null MLEs, resp.

mySurvfit <- survfit(coxphFit)

betaHat <- coxphFit$coef
betaCov <- coxphFit$var
anova(coxphFit)

detach(burn)


#=====> 10. Cox PH model, time-dependent covariates <=====#
data(relapse)
relapse

attach(relapse)
N  <- dim(relapse)[1]
t1 <- rep(0, N+sum(!is.na(inter)))  # Initialize start times at 0
t2 <- rep(NA, length(t1))           # The end times for each record
e  <- rep(NA, length(t1))           # Was the event censored?
g  <- rep(NA, length(t1))           # Gender
PI <- rep(FALSE, length(t1))        # Initialize intervention at FALSE

R  <- 1                         # Row of new record
for(ii in 1:dim(relapse)[1]){
  if(is.na(inter[ii])){         # no intervention, copy survival record
    t2[R] <- event[ii]
    e[R]  <- delta[ii]
    g[R]  <- gender[ii]
    R <- R+1
  } else {                  # intervention, split records
    g[R+0:1] <- gender[ii]  # gender is same for each time
    e[R]     <- 0           # no relapse observed pre-intervention
    e[R+1]   <- delta[ii]   # relapse occur post-intervention?
    PI[R+1]  <- TRUE        # Intervention covariate, post-intervention
    t2[R]    <- inter[ii]-1 # End of pre-intervention
    t1[R+1]  <- inter[ii]-1 # Start of post-intervention
    t2[R+1]  <- event[ii]   # End of post-intervention
    R <- R+2                # Two records added
  }
}

mySurv   <- Surv(t1, t2, e)
coxphFit <- coxph(mySurv ~ g + PI)

detach(relapse)


#=====> 11. Accelerated failure-time models <=====#
data(larynx)
attach(larynx)
srFit <- survreg(Surv(time, delta) ~ as.factor(stage) + age, dist='weibull')
summary(srFit)

srFitExp <- survreg(Surv(time, delta) ~ as.factor(stage) + age, dist='exponential')
summary(srFitExp)

#===> Output is omitted from the commands below
srFitExp$coeff    # covariate coefficients
srFitExp$icoef    # intercept and scale coefficients
srFitExp$var      # variance-covariance matrix
srFitExp$loglik   # log-likelihood
srFit$scale       # not using srFitExp (defaulted to 1)
detach(larynx)
}
