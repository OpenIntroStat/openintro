\name{yrbss}
\alias{yrbss}
\docType{data}
\title{Youth Risk Behavior Surveillance System (YRBSS)}
\description{Select variables from YRBSS.}
\usage{data("yrbss")}
\format{
  A data frame with 13583 observations on the following 13 variables.
  \describe{
    \item{\code{age}}{Age, in years.}
    \item{\code{gender}}{Gender.}
    \item{\code{grade}}{School grade.}
    \item{\code{hispanic}}{Hispanic or not.}
    \item{\code{race}}{Race / ethnicity.}
    \item{\code{height}}{Height, in meters (3.28 feet per meter).}
    \item{\code{weight}}{Weight, in kilograms
        (2.2 pounds per kilogram).}
    \item{\code{helmet_12m}}{How often did you wear a helmet when
        biking in the last 12 months?}
    \item{\code{text_while_driving_30d}}{How many days did you text
        while driving in the last 30 days?}
    \item{\code{physically_active_7d}}{How many days were you
        physically active for 60+ minutes in the last 7 days?}
    \item{\code{hours_tv_per_school_day}}{How many hours of TV do you
        typically watch on a school night?}
    \item{\code{strength_training_7d}}{How many days did you do
        strength training (e.g. lift weights) in the last 7 days?}
    \item{\code{school_night_hours_sleep}}{How many hours of sleep
        do you typically get on a school night?}
  }
}
\source{
\href{http://www.openintro.org/r?go=cdc_yrbss_2013&r=r_package_man_file}{CDC's Youth Risk Behavior Surveillance System (YRBSS)}
}
\examples{
data(yrbss)
table(yrbss$physically_active_7d)
}
\keyword{datasets}
