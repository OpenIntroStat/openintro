\name{get_it_dunn_run}
\alias{get_it_dunn_run}
\docType{data}
\title{Get it Dunn Run, Race Times}
\description{
  Get it Dunn is a small regional run that got extra attention
  when a runner, Nichole Porath, made the Guiness Book of World Records
  for the fastest time pushing a double stroller in a half marathon.
}
\usage{data("get_it_dunn_run")}
\format{
  A data frame with 978 observations on the following 10 variables.
  \describe{
    \item{\code{date}}{Date of the run.}
    \item{\code{race}}{Run distance.}
    \item{\code{bib_num}}{Bib number of the runner.}
    \item{\code{first_name}}{First name of the runner.}
    \item{\code{last_initial}}{Initial of the runner's last name.}
    \item{\code{sex}}{Sex of the runner.}
    \item{\code{age}}{Age of the runner.}
    \item{\code{city}}{City of residence.}
    \item{\code{state}}{State of residence.}
    \item{\code{run_time_minutes}}{Run time, in minutes.}
  }
}
\source{
  \url{http://www.getitdunnrun.com/}

  \url{https://www.gopherstateevents.com}
}
\examples{
d <- subset(get_it_dunn_run,
    race == "5k" & date == "2018-05-12" &
        !is.na(age) & state \%in\% c("MN", "WI"))
head(d)
m <- lm(run_time_minutes ~ sex + age + state, d)
summary(m)
plot(m$fitted, m$residuals)
boxplot(m$residuals ~ d$sex)
plot(m$residuals ~ d$age)
hist(m$residuals)
}
\keyword{datasets}
