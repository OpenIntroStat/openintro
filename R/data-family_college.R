#' Simulated sample of parent / teen college attendance
#'
#' A simulated data set based on real population summaries.
#'
#'
#' @name family_college
#' @docType data
#' @format A data frame with 792 observations on the following 2 variables.
#' \describe{
#'   \item{teen}{Whether the teen goes to \code{college} or \code{not}.}
#'   \item{parents}{Whether the parent holds a college \code{degree} or \code{not}.}
#' }
#' @source Simulation based off of summary information provided at
#' \url{https://nces.ed.gov/pubs2001/2001126.pdf}
#' @keywords datasets
#' @examples
#'
#' library(dplyr)
#'
#' family_college %>%
#'   count(teen, parents)
#'
"family_college"
