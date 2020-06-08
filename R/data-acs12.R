#' American Community Survey, 2012
#'
#' Results from the US Census American Community Survey, 2012.
#'
#'
#' @name acs12
#' @docType data
#' @format A data frame with 2000 observations on the following 13 variables.
#' \describe{
#'   \item{income}{Annual income.}
#'   \item{employment}{Employment status.}
#'   \item{hrs_work}{Hours worked per week.}
#'   \item{race}{Race.}
#'   \item{age}{Age, in years.}
#'   \item{gender}{Gender.}
#'   \item{citizen}{Whether the person is a U.S. citizen.}
#'   \item{time_to_work}{Travel time to work, in minutes.}
#'   \item{lang}{Language spoken at home.}
#'   \item{married}{Whether the person is married.}
#'   \item{edu}{Education level.}
#'   \item{disability}{Whether the person is disabled.}
#'   \item{birth_qrtr}{The quarter of the year that the person was born,
#'   e.g. `Jan thru Mar`.}
#'   }
#' @source \url{https://www.census.gov/programs-surveys/acs}
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#' library(broom)
#'
#' # employed only
#' acs12_emp <- acs12 %>%
#'   filter(
#'     age >= 30, age <= 60,
#'     employment == "employed",
#'     income > 0
#'   )
#'
#' # linear model
#' ggplot(acs12_emp, mapping = aes(x = age, y = income)) +
#'   geom_point() +
#'   geom_smooth(method = "lm")
#'
#' lm(income ~ age, data = acs12_emp) %>%
#'   tidy()
#'
#' # log-transormed model
#' ggplot(acs12_emp, mapping = aes(x = age, y = log(income))) +
#'   geom_point() +
#'   geom_smooth(method = "lm")
#'
#' lm(log(income) ~ age, data = acs12_emp) %>%
#'   tidy()
#'
"acs12"
