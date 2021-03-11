#' COVID-19 Cases, Positive Testing Rate, and Deaths
#'
#' During the COVID-19 pandemic, great attention was paid to the
#' number of new daily cases. Somewhat less attention was paid to
#' the positive testing rate, which is the fraction of tests that
#' were conducted that came back positive (meaning the person had
#' COVID-19). When this rate is low, it is frequently interpreted
#' as there being sufficient testing to capture nearly all COVID-19
#' cases. However, when the rate was higher, often above 10%, it
#' was otherwise interpreted that the amount of ongoing testing was
#' likely insufficient to identify all (or very nearly all) cases.
#' In this data set, we consider one more variable, the death rate,
#' and seek to understand its relationship with the measured case
#' rate and the positive testing rate. The context is state-level
#' data in the United States, and we consider just a single snapshot
#' in time.
#'
#' @name covid_pos_rate
#' @docType data
#' @format A data frame with 51 observations on the following 9 variables.
#' \describe{
#'   \item{state}{State.}
#'   \item{test_pos_rate_t1}{Fraction of tests that came back positive
#'     during January 17-23, 2021.}
#'   \item{new_cases_per_100k_t1}{New cases per 100,000 residents
#'     during January 17-23, 2021.}
#'   \item{deaths_per_100k_t1}{Total deaths per 100,000 residents
#'     up through 2021-01-23.}
#'   \item{new_deaths_per_100k_t1}{New deaths per 100,000 residents
#'     during January 17-23, 2021.}
#'   \item{test_pos_rate_t2}{Fraction of tests that came back positive
#'     during February 8-14, 2021.}
#'   \item{new_cases_per_100k_t2}{New cases per 100,000 residents
#'     during February 8-14, 2021.}
#'   \item{deaths_per_100k_t2}{Total deaths per 100,000 residents
#'     up through 2021-02-14.}
#'   \item{new_deaths_per_100k_t2}{New deaths per 100,000 residents
#'     during February 8-14, 2021.}
#' }
#' @details
#'
#' In general, deaths follow the rise and decline of cases, but deaths are
#' often delayed by a few weeks. For the data in this data set, we consider
#' data over a first week and then over a second week that is 23 days delayed.
#' (Why 23 days? Because that's when we remembered to collect the second
#  batch of data!)
#'
#' As you'll find when reviewing the data, there is one outlier: Ohio. The
#' number of deaths in Ohio during the second time period (Feb 8-14) is not
#' reliable because
#' \href{https://www.nytimes.com/2021/02/12/world/Ohio-Covid-deaths.html}{Ohio
#'   began reporting a backlog of cases during this time}. That is, there is
#' a very legitimate reason to remove this outlier from the analysis.
#'
#' @source Wikipedia, retrieved 2018-11-18.
#' \url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' qplot(
#'   test_pos_rate_t1,
#'   new_deaths_per_100k_t2,
#'   # data = covid_pos_rate
#'   data = subset(covid_pos_rate, state != "Ohio")
#' )
#'
#' # Remove the Ohio outlier (see details for why this is appropriate).
#' qplot(
#'   test_pos_rate_t1,
#'   new_deaths_per_100k_t2,
#'   # data = covid_pos_rate
#'   data = subset(covid_pos_rate, state != "Ohio")
#' )
#'
#' # In this first model, we use the test positivity and number of cases
#' # variables from the first time period to predict the number of deaths
#' # in the second time period.
#' m0 <- lm(
#'   new_deaths_per_100k_t2 ~
#'     test_pos_rate_t1 + new_cases_per_100k_t1,
#'   data = subset(covid_pos_rate, state != "Ohio")
#' )
#' summary(m0)
#' plot(m0)
#'
#' # Arguably, we should also include the number of deaths in the first
#' # time period as a predictor. For instance, maybe this would better
#' # capture some confounding variables, such as the frailness of a community.
#' m1 <- lm(
#'   new_deaths_per_100k_t2 ~
#'     test_pos_rate_t1 + new_cases_per_100k_t1 + new_deaths_per_100k_t1,
#'   data = subset(covid_pos_rate, state != "Ohio")
#' )
#' summary(m1)
#' plot(m1)
#'
"covid_pos_rate"
