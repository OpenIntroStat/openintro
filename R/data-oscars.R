#' Oscar winners, 1929 to 2018
#'
#' Best actor and actress Oscar winners from 1929 to 2018
#'
#' Although there have been only 84 Oscar ceremonies until 2012, there are 85
#' male winners and 85 female winners because ties happened on two occasions
#' (1933 for the best actor and 1969 for the best actress).
#'
#' @name oscars
#' @docType data
#' @format A data frame with 182 observations on the following 10 variables.
#' \describe{
#'   \item{oscar_no}{Oscar ceremony number.}
#'   \item{oscar_yr}{Year the Oscar ceremony was held.}
#'   \item{award}{\code{Best actress} or \code{Best actor}.}
#'   \item{name}{Name of winning actor or actress.}
#'   \item{movie}{Name of movie actor or actress got the Oscar for.}
#'   \item{age}{Age at which the actor or actress won the Oscar.}
#'   \item{birth_pl}{US State where the actor or actress was born, country if foreign.}
#'   \item{birth_date}{Birth date of actor or actress.}
#'   \item{birth_mo}{Birth month of actor or actress.}
#'   \item{birth_d}{Birth day of actor or actress.}
#'   \item{birth_y}{Birth year of actor or actress.}
#' }
#' @source Journal of Statistical Education,
#' \url{http://jse.amstat.org/datasets/oscars.dat.txt}, updated through 2019 using
#' information from Oscars.org and Wikipedia.org.
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' ggplot(oscars, aes(x = award, y = age)) +
#'   geom_boxplot()
#'
#' ggplot(oscars, aes(x = factor(birth_mo))) +
#'   geom_bar()
#'
#' oscars %>%
#'   count(birth_pl, sort = TRUE)
#'
"oscars"
