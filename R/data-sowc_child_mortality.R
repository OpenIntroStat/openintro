#' SOWC Child Mortality Data.
#' 
#' Child mortality data from UNICEF's State of the World's Children 2019 Statistical Tables. 
#'
#' @format A data frame with 195 rows and 19 variables.
#' \describe{
#'   \item{countries_and_areas}{Country or area name.}
#'   \item{under5_mortality_1990}{Under-5 mortality rate (deaths per 1,000 live births) in 1990.}
#'   \item{under5_mortality_2000}{Under-5 mortality rate (deaths per 1,000 live births) in 2000.}
#'   \item{under5_mortality_2018}{Under-5 mortality rate (deaths per 1,000 live births) in 2018.}   
#'   \item{under5_reduction}{Annual rate of reduction in under-5 mortality rate (%)2000–2018.}
#'   \item{under5_mortality_2018_male}{Under-5 mortality rate male (deaths per 1,000 live births) 2018.}   
#'   \item{under5_mortality_2018_female}{Under-5 mortality rate female (deaths per 1,000 live births) 2018.}
#'   \item{infant_mortality_1990}{Infant mortality rate (deaths per 1,000 live births) 1990}   
#'   \item{infant_mortality_2018}{Infant mortality rate (deaths per 1,000 live births) 2018}
#'   \item{neonatal_mortality_1990}{Neonatal mortality rate (deaths per 1,000 live births) 1990.}   
#'   \item{neonatal_mortality_2000}{Neonatal mortality rate (deaths per 1,000 live births) 2000.}
#'   \item{neonatal_mortality_2018}{Neonatal mortality rate (deaths per 1,000 live births) 2018.}   
#'   \item{prob_dying_age5to14_1990}{Probability of dying among children aged 5–14 (deaths per 
#'    1,000 children aged 5) 1990.}
#'   \item{prob_dying_age5to14_2018}{Probability of dying among children aged 5–14 (deaths per
#'    1,000 children aged 5) 2018.}   
#'   \item{under5_deaths_2018}{Annual number of under-5 deaths (thousands) 2018.}
#'   \item{neonatal_deaths_2018}{Annual number of neonatal deaths (thousands) 2018.}   
#'   \item{neonatal_deaths_percent_under5}{Neonatal deaths as proportion of all under-5
#'    deaths (%) 2018.}
#'   \item{age5to14_deaths_2018}{Number of deaths among children aged 5–14 (thousands) 2018.}   
#' }
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' 
#' #List countries and areas whose children aged 5 and under have a higher probability of dying in
#' # 2018 than they did in 1990
#'  sowc_child_mortality %>%
#'  mutate(decrease_prob_dying = prob_dying_age5to14_1990 - prob_dying_age5to14_2018) %>%
#'    select(countries_and_areas,decrease_prob_dying) %>%
#'    filter(decrease_prob_dying < 0) %>%
#'    arrange(decrease_prob_dying)
#'
#' #List countries and areas and their relative rank for neonatal mortality in 2018
#'  sowc_child_mortality %>%
#'  mutate(rank = round(rank(-neonatal_mortality_2018))) %>%
#'    select(countries_and_areas,rank,neonatal_mortality_2018) %>%
#'    arrange(rank)
#'    

#' @source [United Nations Children's Emergency Fund (UNICEF)](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables/)
#'
"sowc_child_mortality"
