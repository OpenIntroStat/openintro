#' Get it Dunn Run, Race Times
#'
#' Get it Dunn is a small regional run that got extra attention when a runner,
#' Nichole Porath, made the Guiness Book of World Records for the fastest time
#' pushing a double stroller in a half marathon. This dataset contains results
#' from the 2017 and 2018 races.
#'
#' @name get_it_dunn_run
#' @docType data
#' @format A data frame with 978 observations on the following 10 variables.
#' \describe{
#'   \item{date}{Date of the run.}
#'   \item{race}{Run distance.}
#'   \item{bib_num}{Bib number of the runner.}
#'   \item{first_name}{First name of the runner.}
#'   \item{last_initial}{Initial of the runner's last name.}
#'   \item{sex}{Sex of the runner.}
#'   \item{age}{Age of the runner.}
#'   \item{city}{City of residence.}
#'   \item{state}{State of residence.}
#'   \item{run_time_minutes}{Run time, in minutes.}
#'   }
#' @source Data were collected from GSE Timing:
#' [2018 data](https://www.gsetiming.com/results/fitness_events/results.asp?event_type=5&event_id=718),
#' [2017 race data](https://www.gsetiming.com/results/fitness_events/results.asp?event_type=5&event_id=640).
#' @keywords datasets
#' @examples
#'
#' d <- subset(get_it_dunn_run,
#'     race == "5k" & date == "2018-05-12" &
#'         !is.na(age) & state %in% c("MN", "WI"))
#' head(d)
#' m <- lm(run_time_minutes ~ sex + age + state, d)
#' summary(m)
#' plot(m$fitted, m$residuals)
#' boxplot(m$residuals ~ d$sex)
#' plot(m$residuals ~ d$age)
#' hist(m$residuals)
#'
"get_it_dunn_run"
