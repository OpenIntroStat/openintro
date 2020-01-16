#' Birth counts
#'
#' An updated version of the historical Arbuthnot dataset. Numbers of boys and
#' girls born in the United States between 1940 and 2002.
#'
#'
#' @name present
#' @docType data
#' @format A tibble with 63 observations on the following 3 variables.
#' \describe{
#'   \item{year}{Year.}
#'   \item{boys}{Number of boys born.}
#'   \item{girls}{Number of girls born.}
#'   }
#' @source \url{https://www.ncbi.nlm.nih.gov/pubmed/15974501}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(present, mapping = aes(x = year, y = boys / girls)) +
#'   geom_line()
#'
"present"
