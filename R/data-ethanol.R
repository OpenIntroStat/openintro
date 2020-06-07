#' Ethanol Treatment for Tumors Experiment
#'
#' Experiment where 3 different treatments of ethanol were tested on the
#' treatment of oral cancer tumors in hamsters.
#'
#' The \code{ethyl_cellulose} and \code{pure_ethanol} treatments consisted of
#' about a quarter of the volume of the tumors, while the
#' \code{pure_ethanol_16x} treatment was 16x that, so about 4 times the size of
#' the tumors.
#'
#' @name ethanol
#' @docType data
#' @format A data frame with 24 observations, each representing one hamster, on
#' the following 2 variables. \describe{\item{treatment}{Treatment
#' the hamster received.} \item{regress}{a factor with levels \code{no}
#' \code{yes}} }
#' @source Morhard R, et al. 2017. Development of enhanced ethanol ablation as
#' an alternative to surgery in treatment of superficial solid tumors.
#' Scientific Reports 7:8750.
#' @keywords datasets
#' @examples
#'
#' table(ethanol)
#' fisher.test(table(ethanol))
#'
"ethanol"
