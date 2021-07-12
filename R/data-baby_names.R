#' Baby Names Data.
#' 
#' From USA Social Security Administration, baby names from 1880 to 2020, 
#' the top 20 for each year
#'
#' @format A data frame with 2820 rows and 4 variables.
#' \describe{
#'   \item{rank}{Rank of name in year.}
#'   \item{male}{Boy's name.}
#'   \item{female}{Girl's name.}
#'   \item{year}{Year of name rank.}
#' }
#' @examples
#' library(dplyr)
#' 
#' # List the 10 most frequent male names
#' baby_names %>% 
#'   group_by(male) %>%
#'   summarise(freq=n()) %>%
#'   arrange(desc(freq)) %>% 
#'   top_n(n = 10)
#'
#' # List Female names in top 20 in both 1880 and 1980
#'baby_names %>% 
#' select(female,year) %>%  
#'   group_by(female) %>%
#'   filter(year==1880 | year == 1980) %>%
#'   filter(n() > 1) %>%
#'   select(female) %>%
#'   distinct()
#'
#' @source [Social Security Administration](https://www.ssa.gov/OACT/babynames/background.html)
#'
"baby_names"
