#' American Adults on Regulation and Renewable Energy
#'
#' Pew Research conducted a poll to find whether American adults support
#' regulation or believe the private market will move the American economy
#' towards renewable energy.
#'
#' The exact statements being selected were: (1) Government
#' regulations are necessary to encourage businesses and consumers to rely more
#' on renewable energy sources. (2) The private marketplace will ensure that
#' businesses and consumers rely more on renewable energy sources, even without
#' government regulations.
#'
#' The actual sample size was 1012. However, the original data were not from a
#' simple random sample; after accounting for the design, the equivalent sample
#' size was about 705, which was what was used for the data set here to keep
#' things simpler for intro stat analyses.
#'
#' @name env_regulation
#' @docType data
#' @format A data frame with 705 observations on the following variable.
#' \describe{
#'   \item{statement}{There were three possible outcomes for each person:
#'   \code{"Regulations necessary"}, \code{"Private marketplace will ensure"},
#'   and \code{"Don't know"}.}
#'   }
#' @source
#' \url{http://www.pewinternet.org/2017/05/16/public-divides-over-environmental-regulation-and-energy-policy}
#' @keywords datasets
#' @examples
#'
#' table(env_regulation)
#'
"env_regulation"
