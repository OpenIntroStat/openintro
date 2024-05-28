#' ucb_admit
#'
#' Data from a study carried out by the graduate Division of the University of California, Berkeley in the early 1970's to evaluate whether there was a sex bias in graduate admissions.
#'
#' @name usb_admit
#' @docType data
#' @format A data frame with 4526 observations on the following 3 variables.
#' \describe{
#'   \item{admit}{Was the applicant admitted to the university?}
#'   \item{gender}{Whether the applicant identified as male or female.}
#'   \item{department}{What department did the applicant apply to, noted as A through F for confidentiality.}
#' }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' plot_data <- ucb_admit |>
#'   count(dept, gender, admit)
#'
#' ggplot(plot_data, aes(dept, n, fill = gender)) +
#'   geom_col(position = "dodge") +
#'   facet_wrap(~admit) +
#'   theme_minimal() +
#'   labs(
#'     title = "Does gender discrimination play a role in college admittance?",
#'     x = "Department",
#'     y = "Number of Students",
#'     fill = "Gender",
#'     caption = "Source: UC Berkeley, 1970's"
#'   )
#'
"ucb_admit"
