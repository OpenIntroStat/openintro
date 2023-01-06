#' Young fish in the North Sea.
#'
#' Samples of 50 Tobis fish, or Sand Eels, were collected at three different locations in the North Sea and the number of one-year-old fish were counted.
#'
#' @name fish_age
#' @docType data
#' @format A data frame with 300 rows and 3 variables: 
#' \describe{
#'   \item{year}{Year the fish was caught with levels 1997 and 1998.}
#'   \item{location}{Site the fish was caught with levels A, B and C.}
#'   \item{one_year_old}{Is the fish one-year-old, yes or no?}
#' }
#' @source 
#' Henrik Madsen, Paul Thyregod.
#' 2011.
#' Introduction to General and Generalized Linear Models
#' CRC Press.
#' Boca Raton, FL.
#' ISBN: 978-1-4200-9155-7
#' [Website](http://www.imm.dtu.dk/~hmad/GLM/)
#' 
#' @keywords datasets
#'
#' @examples 
#' library(dplyr)
#' library(tidyr)
#' 
#' # Count the number of one-year-old fish at each location.
#' 
#' fish_age %>% count(year, location, one_year_old) %>% 
#'   filter(one_year_old == "yes") %>% 
#'   pivot_wider(names_from = location, values_from = n) %>% 
#'   select(-one_year_old)
#'   
"fish_age"