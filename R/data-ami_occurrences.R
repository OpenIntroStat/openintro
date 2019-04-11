#' Acute Myocardial Infarction (Heart Attack) Events
#'
#' This data set is simulated but contains realistic occurrences of AMI in NY
#' City.
#'
#'
#' @name ami_occurrences
#' @docType data
#' @format A tibble with 365 observations on the following variable.
#' \describe{
#'   \item{ami}{Number of daily occurences of heart attacks in NY City.}
#' }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(ami_occurrences, mapping = aes(x = ami)) +
#'   geom_bar() +
#'   labs(x = "Acute Myocardial Infarction events",
#'        y = "Count",
#'        title = "Acute Myocardial Infarction events in NYC")
#'
"ami_occurrences"
