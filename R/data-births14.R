#' US births
#'
#' Every year, the US releases to the public a large dataset containing
#' information on births recorded in the country. This dataset has been of
#' interest to medical researchers who are studying the relation between habits
#' and practices of expectant mothers and the birth of their children. This is a
#' random sample of 1,000 cases from the dataset released in 2014.
#'
#' @source United States Department of Health and Human Services.
#' Centers for Disease Control and Prevention.
#' National Center for Health Statistics.
#' Natality Detail File, 2014 United States.
#' Inter-university Consortium for Political and Social Research, 2016-10-07.
#' \doi{10.3886/ICPSR36461.v1}.
#'
#' @name births14
#' @docType data
#' @format A data frame with 1,000 observations on the following 13 variables.
#' \describe{
#'   \item{fage}{Father's age in years.}
#'   \item{mage}{Mother's age in years.}
#'   \item{mature}{Maturity status of mother.}
#'   \item{weeks}{Length of pregnancy in weeks.}
#'   \item{premie}{Whether the birth was classified as premature (premie) or full-term.}
#'   \item{visits}{Number of hospital visits during pregnancy.}
#'   \item{gained}{Weight gained by mother during pregnancy in pounds.}
#'   \item{weight}{Weight of the baby at birth in pounds.}
#'   \item{lowbirthweight}{Whether baby was classified as low birthweight (`low`) or not (`not low`).}
#'   \item{sex}{Sex of the baby, `female` or `male`.}
#'   \item{habit}{Status of the mother as a `nonsmoker` or a `smoker`.}
#'   \item{marital}{Whether mother is `married` or `not married` at birth.}
#'   \item{whitemom}{Whether mom is `white` or `not white`.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(births14, aes(x = habit, y = weight)) +
#'   geom_boxplot() +
#'   labs(x = "Smoking status of mother", y = "Birth weight of baby (in lbs)")
#'
#' ggplot(births14, aes(x = whitemom, y = visits)) +
#'   geom_boxplot() +
#'   labs(x = "Mother's race", y = "Number of doctor visits during pregnancy")
#'
#' ggplot(births14, aes(x = mature, y = gained)) +
#'   geom_boxplot() +
#'   labs(x = "Mother's age category", y = "Weight gained during pregnancy")
"births14"
