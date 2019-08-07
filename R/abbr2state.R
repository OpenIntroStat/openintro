#' Convert state abbreviations to names
#'
#' Two utility functions. One converts state names to the state abbreviations,
#' and the second does the opposite.
#'
#'
#' @param abbr A vector of state abbreviation.
#' @return Returns a vector of the same length with the corresponding state
#' names or abbreviations.
#' @author David Diez
#' @seealso \code{\link{state2abbr}}, \code{\link{county}}, \code{\link{county_complete}}
#' @keywords State Abbreviation
#' @export
#' @examples
#'
#' abbr2state("MN")
#'
abbr2state <- function(abbr){
  ab    <- tolower(c("AL",
             "AK", "AZ", "KS", "UT", "CO", "CT",
             "DE", "FL", "GA", "HI", "ID", "IL",
             "IN", "IA", "AR", "KY", "LA", "ME",
             "MD", "MA", "MI", "MN", "MS", "MO",
             "MT", "NE", "NV", "NH", "NJ", "NM",
             "NY", "NC", "ND", "OH", "OK", "OR",
             "PA", "RI", "SC", "SD", "TN", "TX",
             "CA", "VT", "VA", "WA", "WV", "WI",
             "WY", "DC"))
  st    <- c("Alabama",
             "Alaska", "Arizona", "Kansas",
             "Utah", "Colorado", "Connecticut",
             "Delaware", "Florida", "Georgia",
             "Hawaii", "Idaho", "Illinois",
             "Indiana", "Iowa", "Arkansas",
             "Kentucky", "Louisiana", "Maine",
             "Maryland", "Massachusetts", "Michigan",
             "Minnesota", "Mississippi", "Missouri",
             "Montana", "Nebraska", "Nevada",
             "New Hampshire", "New Jersey", "New Mexico",
             "New York", "North Carolina", "North Dakota",
             "Ohio", "Oklahoma", "Oregon",
             "Pennsylvania", "Rhode Island", "South Carolina",
             "South Dakota", "Tennessee", "Texas",
             "California", "Vermont", "Virginia",
             "Washington", "West Virginia", "Wisconsin",
             "Wyoming", "District of Columbia")
  st[match(tolower(abbr), ab)]
}
