#' SOWC Demographics Data.
#' 
#' Demographic data from UNICEF's State of the World's Children 2019 Statistical Tables. 
#'
#' @format A data frame with 202 rows and 18 variables.
#' \describe{
#'   \item{countries_and_areas}{Country or area name.}
#'   \item{total_pop_2018}{Population in 2018 in thousands.}
#'   \item{under18_pop_2018}{Population under age 18 in 2018 in thousands.}
#'   \item{under5_pop_2018}{Population under age 5 in 2018 in thousands.}
#'   \item{pop_growth_rate_2018}{Rate at which population is growing in 2018.}
#'   \item{pop_growth_rate_2030}{Rate at which population is estimated to grow
#'    in 2030.}
#'   \item{births_2018}{Number of births in 2018 in thousands.}
#'   \item{fertility_2018}{Number of live births per woman in 2018.A total
#'    fertility level of 2.1 is called replacement level and represents a
#'    level at which the population would remain the same size. }
#'   \item{life_expectancy_1970}{Life expectancy at birth in 1970.}
#'   \item{life_expectancy_2000}{Life expectancy at birth in 2000.}
#'   \item{life_expectancy_2018}{Life expectancy at birth in 2018.}
#'   \item{dependency_ratio_total}{The ratio of the not-working-age
#'    population to the working-age population of 15 - 64 years.}
#'   \item{dependency_ratio_child}{The ratio of the under 15 population
#'    to the working-age population of 15 - 64 years.}
#'   \item{dependency_ratio_oldage}{The ratio of the  over 64 population
#'    to the working-age population of 15 - 64 years.}   
#'   \item{percent_urban_2018}{Percent of population living in urban areas.}
#'   \item{pop_urban_growth_rate_2018}{Annual urban population growth rate 
#'    from 2000 to 2018.}
#'   \item{pop_urban_growth_rate_2030}{Estimated annual urban population growth
#'    rate from 2018 to 2030.}
#'   \item{migration_rate}{Net migration rate per 1000 population from 
#'    2015 to 2020.}
#' }
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' 
#' # List countries and areas' life expectancy, ordered by rank of life expectancy in 2018
#' sowc_demographics %>%
#'   mutate(life_expectancy_change = life_expectancy_2018 - life_expectancy_1970) %>%
#'   mutate(rank_life_expectancy = round(rank(-life_expectancy_2018),0)) %>%  
#'   select(countries_and_areas,rank_life_expectancy,life_expectancy_2018,life_expectancy_change) %>%
#'   arrange(rank_life_expectancy)
#'
#' # List countries and areas' migration rate and population, ordered by rank of migration rate
#' sowc_demographics %>%
#'   mutate(rank = round(rank(migration_rate))) %>%
#'   mutate(population_millions = total_pop_2018/1000) %>%
#'   select(countries_and_areas,rank,migration_rate,population_millions) %>%
#'   arrange(rank)
#'   
#' # Scatterplot of life expectancy v population in 2018
#' ggplot(sowc_demographics, aes(life_expectancy_1970, life_expectancy_2018, size = total_pop_2018))+
#'  geom_point(alpha = 0.5)+
#'  labs(title = "Life Expectancy",
#'   subtitle = "1970 v. 2018", 
#'   x = "Life Expectancy in 1970",
#'   y = "Life Expectancy in 2018",
#'   size = "2018 Total Population")
#'
#' @source [United Nations Children's Emergency Fund (UNICEF)](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables/)
#'
"sowc_demographics"
