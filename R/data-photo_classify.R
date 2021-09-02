#' Photo classifications: fashion or not
#'
#' This is a simulated data set for photo classifications based on a machine
#' learning algorithm versus what the true classification is for those photos.
#' While the data are not real, they resemble performance that would be
#' reasonable to expect in a well-built classifier.
#'
#' The hypothetical ML algorithm has a precision of 90\%, meaning of those
#' photos it claims are fashion, about 90\% of them are actually about fashion.
#' The recall of the ML algorithm is about 64\%, meaning of the photos that are
#' about fashion, it correctly predicts that they are about fashion about 64\%
#' of the time.
#'
#' @name photo_classify
#' @docType data
#' @format A data frame with 1822 observations on the following 2 variables.
#' \describe{
#'   \item{mach_learn}{The prediction by the machine learning system as to whether the photo is about fashion or not.}
#'   \item{truth}{The actual classification of the photo by a team of humans.}
#' }
#' @source The data are simulated / hypothetical.
#' @keywords datasets
#' @examples
#'
#' data(photo_classify)
#' table(photo_classify)
"photo_classify"
