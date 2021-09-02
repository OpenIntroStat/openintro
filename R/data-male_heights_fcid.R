#' Random sample of adult male heights
#'
#' This sample is based on data from the USDA Food Commodity Intake Database.
#'
#'
#' @name male_heights_fcid
#' @docType data
#' @format A data frame with 100 observations on the following variable.
#' \describe{
#'   \item{height_inch}{Height, in inches.}
#'   }
#' @source Simulated based on data from USDA.
#' @keywords datasets
#' @examples
#'
#' data(male_heights_fcid)
#' histPlot(male_heights_fcid$height_inch)
"male_heights_fcid"
