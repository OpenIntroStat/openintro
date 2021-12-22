#' Climber Drugs Data.
#'
#' Anonymous data was collected from urine samples at huts along the climb of Mont Blanc. Several types of drugs were tested, and proportions were reported.
#'
#' @name climber_drugs
#' @docType data
#' @format A data frame with 211 rows and 6 variables.
#' \describe{
#'   \item{positive_sample}{Idendification number of a specific urine sample.}
#'   \item{hut}{Location where the sample was taken.}
#'   \item{substance}{Substance detected to be present in the urine sample.}
#'   \item{concentration}{Amount of substance found measured in ng/ml.}
#'   \item{screening_analysis}{Indicates that the concentration was determined by screening analysis.}
#'   \item{concomitant}{Indicates that this substance was always detected concomitantly with the previous one, within the same urine sample.}
#' }
#' @source [PLOS One - Drug Use on Mont Blanc: A Study Using Automated Urine Collection](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0156786#sec012)
#' @keywords datasets
#' @examples
#' library(dplyr)
#'
#' # Calculate the average concentration of each substance and number of occurrences.
#' climber_drugs %>%
#'   group_by(substance) %>%
#'   summarize(count = n(), mean_con = mean(concentration))
#'
#' # Proportion samples in which each substance was detected.
#' climber_drugs %>%
#'   group_by(substance) %>%
#'   summarize(prop = n() / 154)
#'
"climber_drugs"
