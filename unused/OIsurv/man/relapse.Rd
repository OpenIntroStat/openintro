\name{relapse}
\alias{relapse}
\docType{data}
\title{
Drug-relapse of patients with time-varying covariates
}
\description{
Drug-relapse of patients with time-varying covariates. This data set is simulated.
}
\usage{data(relapse)}
\format{
  A data frame with 300 observations on the following 4 variables.
  \describe{
    \item{\code{event}}{a numeric vector}
    \item{\code{delta}}{a logical vector}
    \item{\code{gender}}{a numeric vector}
    \item{\code{inter}}{a numeric vector}
  }
}
\details{
This data is simulated under the following pretense. Patient records were obtained for 150 days after they joined a rehabilitation program. The event of interest was drug-relapse and two covariates were recorded. The \code{event} variable describes the observed or censored time; the \code{delta} variable describes whether the time denotes an observed relapse (\code{TRUE}) or a censored time; the \code{gender} variable is a time-independent covariate; and \code{inter} is a time-dependent covariate indicating whether the patient had was (randomly) assigned a second intervention: working 10 hours a week for a nonprofit. Each of these special interventions were assigned \emph{after} the patients entered the clinic, meaning the intervention covariate changes for those patients who had an intervention before relapse.
}
\source{
Simulated (David M Diez)
}
\references{
Fox J (2002). "Cox Proportional-Hazards Regression for Survival Data. Appendix to An R and S-PLUS Companion to Applied Regression." Comprehensive R Archive Network.
http://cran.r-project.org/doc/contrib/Fox-Companion/appendix-cox-regression.pdf
}
\examples{
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
}
\keyword{datasets}
