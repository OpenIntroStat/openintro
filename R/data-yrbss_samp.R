#' Sample of Youth Risk Behavior Surveillance System (YRBSS)
#'
#' A sample of the \code{\link{yrbss}} data set.
#'
#'
#' @name yrbss_samp
#' @docType data
#' @format A data frame with 100 observations on the following 13 variables.
#' \describe{
#'   \item{age}{Age, in years.}
#'   \item{gender}{Gender.}
#'   \item{grade}{School grade.}
#'   \item{hispanic}{Hispanic or not.}
#'   \item{race}{Race / ethnicity.}
#'   \item{height}{Height, in meters (3.28 feet per meter).}
#'   \item{weight}{Weight, in kilograms (2.2 pounds per kilogram).}
#'   \item{helmet_12m}{How often did you wear a helmet when biking in the last
#'   12 months?}
#'   \item{text_while_driving_30d}{How many days did you text while driving in
#'   the last 30 days?}
#'   \item{physically_active_7d}{How many days were you physically active for
#'   60+ minutes in the last 7 days?}
#'   \item{hours_tv_per_school_day}{How many hours of TV do you typically watch
#'   on a school night?}
#'   \item{strength_training_7d}{How many days did you do strength training
#'   (e.g. lift weights) in the last 7 days?}
#'   \item{school_night_hours_sleep}{How many hours of sleep do you typically
#'   get on a school night?}
#'   }
#' @source [CDC's Youth Risk Behavior Surveillance System (YRBSS)](https://www.cdc.gov/healthyyouth/data/yrbs/data.htm)
#' @keywords datasets
#' @examples
#'
#' table(yrbss_samp$physically_active_7d)
"yrbss_samp"
