#' Aircraft-Wildlife Collisions
#'
#' A collection of all collisions between aircraft in wildlife that were
#' reported to the US Federal Aviation Administration between 1990 and 1997,
#' with details on the circumstances of the collision.
#'
#' The FAA National Wildlife Strike Database contains strike reports that are
#' voluntarily reported to the FAA by pilots, airlines, airports and others.
#' Current research indicates that only about 20\% of strikes are reported.
#' Wildlife strike reporting is not uniform as some organizations have more
#' robust voluntary reporting procedures. Because of variations in reporting,
#' users are cautioned that the comparisons between individual airports or
#' airlines may be misleading.
#'
#' @name birds
#' @docType data
#' @format A data frame with 19302 observations on the following 17 variables.
#' \describe{
#'   \item{opid}{Three letter identification code for the operator (carrier) of the aircraft.}
#'   \item{operator}{Name of the aircraft operator.}
#'   \item{atype}{Make and model of aircraft.}
#'   \item{remarks}{Verbal remarks regarding the collision.}
#'   \item{phase_of_flt}{Phase of the flight during which the collision occurred: \code{Approach}, \code{Climb}, \code{Descent}, \code{En Route}, \code{Landing Roll}, \code{Parked}, \code{Take-off run}, \code{Taxi}.}
#'   \item{ac_mass}{Mass of the aircraft classified as 2250 kg or less (1), 2251-5700 kg (2), 5701-27000 kg (3), 27001-272000 kg (4), above 272000 kg (5).}
#'   \item{num_engs}{Number of engines on the aircraft.}
#'   \item{date}{Date of the collision (MM/DD/YYYY).}
#'   \item{time_of_day}{Light conditions: \code{Dawn}, \code{Day}, \code{Dusk}, \code{Night}.}
#'   \item{state}{Two letter abbreviation of the US state in which the collision occurred.}
#'   \item{height}{Feet above ground level.}
#'   \item{speed}{Knots (indicated air speed).}
#'   \item{effect}{Effect on flight: \code{Aborted Take-off}, \code{Engine Shut Down}, \code{None}, \code{Other}, \code{Precautionary Landing}.}
#'   \item{sky}{Type of cloud cover, if any: \code{No Cloud}, \code{Overcast}, \code{Some Cloud}.}
#'   \item{species}{Common name for bird or other wildlife.}
#'   \item{birds_seen}{Number of birds/wildlife seen by pilot: \code{1}, \code{2-10}, \code{11-100}, \code{Over 100}.}
#'   \item{birds_struck}{Number of birds/wildlife struck: \code{0}, \code{1}, \code{2-10}, \code{11-100}, \code{Over 100}.}
#' }
#' @source Aircraft Wildlife Strike Data: Search Tool - FAA Wildlife Strike Database.
#' Available at \url{https://dev.socrata.com/foundry/datahub.transportation.gov/jhay-dgxy}.
#' Retrieval date: Feb 4, 2012.
#' @keywords datasets bird airplane flight wildlife
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#' library(forcats)
#' library(tidyr)
#'
#' # Phase of the flight during which the collision occurred, tabular
#' birds %>%
#'   count(phase_of_flt, sort = TRUE)
#'
#' # Phase of the flight during which the collision occurred, barplot
#' ggplot(birds, aes(y = fct_infreq(phase_of_flt))) +
#'   geom_bar() +
#'   labs(x = "Phase of flight")
#'
#' # Height summary statistics
#' summary(birds$height)
#'
#' # Phase of flight vs. effect of crash
#' birds %>%
#'   drop_na(phase_of_flt, effect) %>%
#'   ggplot(aes(y = phase_of_flt, fill = effect)) +
#'   geom_bar(position = "fill") +
#'   labs(x = "Proportion", y = "Phase of flight", fill = "Effect")
#'
"birds"
