#' A dataset on disbursements from the California Department of Developmental Services (DDS)
#'
#' The dataset represents a sample of 1,000 DDS consumers (out of a total
#' population of approximately 250,000),and includes information about age,
#' gender, ethnicity, and the amount of financial support per consumer provided
#' by the DDS.The dataset is based on recorded attributes of consumers, but has
#' been altered to maintain consumer privacy.  From the Taylor and Mickel paper:
#' "The data set originated from DDS’s Client Master File. In order to remain in
#' compliance with California State Legislation, the data have been altered to
#' protect the rights and privacy of specific individual consumers. The provided
#' data set is based on actual attributes of consumers."
#'
#' @name dds.dscr
#' @docType data
#' @format A dataframe with 1000 rows and 6 variables:
#'    \describe{
#'    \item{\code{id}}{Numeric, Unique identification code for each resident}
#'    \item{\code{age.cohort}}{A factor, \code{0-5} years,
#'      \code{6-12} years, \code{13-17} years, \code{18-21} years, \code{22-50} years,
#'      and \code{51+} years}
#'    \item{\code{age}}{Numeric, Age measured in years}
#'    \item{\code{gender}}{A factor, with levels  \code{Female} or \code{Male}}
#'    \item{\code{expenditures}}{Numeric, Amount of expenditures spent by the
#'       State on an individual annually, measured in USD}
#'   \item{\code{ethnicity}}{Factor, Ethnic group, recorded as
#'       \code{American Indian},  \code{Asian}, \code{Black}, \code{Hispanic},
#'       \code{Multi Race}, \code{Native Hawaiian}, \code{Other},
#'       \code{White not Hispanic}}
#'   }
#'   #' @references www.amstat.org/publications/jse/v22n1/mickel.pdf Taylor, Stanley A.,
#'   and Amy E. Mickel. Simpson's paradox: A data set and discrimination case study
#'   exercise. Journal of Statistics Education 22.1 (2014).
#'   Data contained in supplement B of Taylor and Mickel.
#'
"dds.discr"

