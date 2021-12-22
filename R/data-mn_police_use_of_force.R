#' Minneapolis police use of force data.
#' 
#' From Minneapolis, data from 2016 through August 2021
#'
#' @name mn_police_use_of_force
#' @docType data
#' @format A data frame with 12925 rows and 13 variables.
#' \describe{
#'   \item{response_datetime}{DateTime of police response.}
#'   \item{problem}{Problem that required police response.}
#'   \item{is_911_call}{Whether response was iniated by call to 911.}
#'   \item{primary_offense}{Offense of subject.}
#'   \item{subject_injury}{Whether subject was injured Yes/No/null.}
#'   \item{force_type}{Type of police force used.}
#'   \item{force_type_action}{Detail of police force used.}   
#'   \item{race}{Race of subject.}
#'   \item{sex}{Gender of subject.}   
#'   \item{age}{Age of subject.}
#'   \item{type_resistance}{Resistance to police by subject.}
#'   \item{precinct}{Precinct where response occurred.}
#'   \item{neighborhood}{Neighborhood where response occurred.}
#' }
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' 
#' # List percent of total for each race
#' mn_police_use_of_force %>%
#'   count (race) %>% 
#'   mutate (percent= round(n/sum(n)*100,2)) %>%
#'   arrange(desc(percent)) 
#'
#' # Display use of force count by three races
#' race_sub = c("Asian","White","Black")
#' ggplot(mn_police_use_of_force %>% filter(race %in% race_sub),
#'   aes(force_type, ..count.. ) ) +
#'   geom_point(stat = "count", size = 4) + 
#'   coord_flip()+
#'   facet_grid( race ~ . )+
#'   labs(x = "Force Type",
#'   y = "Number of Incidents")
#' @source [Minneapolis](https://opendata.minneapolismn.gov/search?groupIds=79606f50581f4a33b14a19e61c4891f7)
"mn_police_use_of_force"
