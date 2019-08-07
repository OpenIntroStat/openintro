
#' Male and female births in London
#'
#' Arbuthnot's data describes male and female christenings (births) for
#' London from 1629-1710.
#'
#' John Arbuthnot (1710) used these time series data to carry out the first
#' known significance test. During every one of the 82 years, there were more
#' male christenings than female christenings. As Arbuthnot wondered,
#' we might also wonder if this could be due to chance, or whether it meant
#' the birth ratio was not actually 1:1.
#'
#' @format A tbl_df with with 82 rows and 3 variables:
#' \describe{
#'   \item{year}{year, ranging from 1629 to 1710}
#'   \item{boys}{number of male christenings (births)}
#'   \item{girls}{number of female christenings (births)}
#' }
#' @source These data are excerpted from the [HistData::Arbuthnot]
#' data set in the HistData package.
#' @examples
#' data(arbuthnot)
"arbuthnot"
