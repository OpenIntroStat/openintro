#' Teacher Salaries in St. Louis, Michigan
#'
#' This data set contains teacher salaries from 2009-2010 for 71 teachers
#' employed by the St. Louis Public School in Michigan, as well as several
#' covariates.
#'
#'
#' @name teacher
#' @docType data
#' @format A data frame with 71 observations on the following 8 variables.
#' \describe{
#' \item{id}{Identification code for each teacher, assigned randomly.}
#' \item{degree}{Highest educational degree attained:
#' \code{BA} (bachelor's degree) or \code{MA} (master's degree).}
#' \item{fte}{Full-time enrollement status: full-time \code{1} or
#' part-time \code{0.5}.}
#' \item{years}{Number of years employed by the school district.}
#' \item{base}{Base annual salary, in dollars.}
#' \item{fica}{Amount paid into Social Security and Medicare per year
#' through the Federal Insurance Contribution Act (FICA), in dollars.}
#' \item{retirement}{Amount paid into the retirement fund of the
#' teacher per year, in dollars.}
#' \item{total}{Total annual salary of the teacher, resulting from the
#' sum of base salary + fica + retirement, in dollars.}
#' }
#' @source Posted on
#' \href{https://opendata.socrata.com/Education/St-Louis-Teachers-Salaries-2009-2010-/nvag-9887}{opendata.socrata.com}
#' by Jeff Kowalski.
#'
#' Original source: \url{http://stlouis.edzone.net}
#' @keywords teacher salary Michigan degree education datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(teacher, aes(x = degree, y = base)) +
#'   geom_boxplot() +
#'   labs(x = "Highest educational degree attained",
#'        y = "Base annual salary, in $",
#'        color = "Degree")
#'
#'
#' ggplot(teacher, aes(x = years, y = base, color = degree)) +
#'   geom_point() +
#'   labs(x = "Number of years employed by the school district",
#'        y = "Base annual salary, in $",
#'        color = "Degree")
#'
"teacher"
