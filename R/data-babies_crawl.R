#' Crawling age
#'
#' Crawling age of babies along with the average outdoor temperature at 6
#' months of age.
#'
#'
#' @name babies_crawl
#' @docType data
#' @format A data frame with 12 observations on the following 5 variables.
#' \describe{
#'   \item{birth_month}{A factor with levels corresponding to months}
#'   \item{avg_crawling_age}{a numeric vector}
#'   \item{sd}{a numeric vector}
#'   \item{n}{a numeric vector}
#'   \item{temperature}{a numeric vector}
#'   }
#' @source J.B. Benson. Season of birth and onset of locomotion: Theoretical
#' and methodological implications. In: Infant behavior and development 16.1
#' (1993), pp. 69-81. issn: 0163-6383.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(babies_crawl, aes(x = temperature, y = avg_crawling_age)) +
#'   geom_point() +
#'   labs(x = "Temperature", y = "Average crawling age")
#'
"babies_crawl"
