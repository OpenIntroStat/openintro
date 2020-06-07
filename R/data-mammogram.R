#' Experiment with Mammogram Randomized
#' 
#' An experiment where 89,835 women were randomized to either get a mammogram
#' or a non-mammogram breast screening. The response measured was whether they
#' had died from breast cancer within 25 years.
#' 
#' 
#' @name mammogram
#' @docType data
#' @format A data frame with 89835 observations on the following 2 variables.
#' \describe{\item{treatment}{a factor with levels \code{control}
#' \code{mammogram}} \item{breast_cancer_death}{a factor with levels \code{no}
#' \code{yes}} }
#' @source Miller AB. 2014. Twenty five year follow-up for breast cancer
#' incidence and mortality of the Canadian National Breast Screening Study:
#' randomised screening trial. BMJ 2014;348:g366.
#' @keywords datasets
#' @examples
#' 
#' 
#' table(mammogram)
#' chisq.test(table(mammogram))
#' 
#' 
"mammogram"
