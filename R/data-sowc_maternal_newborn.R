#' SOWC Maternal and Newborn Health Data.
#' 
#' Data from UNICEF's State of the World's Children 2019 Statistical Tables. 
#'
#' @format A data frame with 202 rows and 18 variables.
#' \describe{
#'   \item{countries_and_areas}{Country or area name.}
#'   \item{life_expectancy_female}{Life expectancy: female in 2018.}
#'   \item{family_planning_1549}{Demand for family planning satisfied with 
#'   modern methods (%) 2013–2018 Women aged 15 to 49.}
#'   \item{family_planning_1519}{Demand for family planning satisfied with 
#'   modern methods (%) 2013–2018 Women aged 15 to 19.}
#'   \item{adolescent_birth_rate}{Adolescent birth rate 2013 to 2018.}
#'   \item{births_age_18}{Births by age 18 (%) 2013 to 2018.}
#'   \item{antenatal_care_1}{Antenatal care (%) 2013 to 2018 At least
#'    one visit.}
#'   \item{antenatal_care_4_1549}{Antenatal care (%) 2013 to 2018 At least
#'    four visits Women aged 15 to 49.}
#'   \item{antenatal_care_4_1519}{Antenatal care (%) 2013 to 2018 At least
#'    four visits Women aged 15 to 19.}
#'   \item{delivery_care_attendant_1549}{Delivery care (%) 2013 to 2018
#'    Skilled birth attendant Women aged 15 to 49.}
#'   \item{delivery_care_attendant_1519}{Delivery care (%) 2013 to 2018 
#'   Skilled birth attendant Women aged 15 to 19.}
#'   \item{delivery_care_institutional}{Delivery care (%) 2013 to 2018 
#'   Institutional delivery.}
#'   \item{c_section}{Delivery care (%) 2013–2018 C-section.}
#'   \item{postnatal_health_newborns}{Postnatal health check(%) 2013 to 2018
#'   For newborns.}
#'   \item{postnatal_health_mothers}{Postnatal health check(%) 2013 to 2018
#'   For mothers.}
#'   \item{maternal_deaths_2017}{Maternal mortality 2017 Number of maternal
#'    deaths.}
#'   \item{maternal_mortality_ratio_2017}{Maternal mortality 2017 Maternal
#'    Mortality Ratio.}  
#'   \item{risk_maternal_death_2017}{Maternal mortality 2017
#'   Lifetime risk of maternal death (1 in X).}    
#' }
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' 
#' # List countries and lifetime risk of maternal death (1 in X), ranked
#' sowc_maternal_newborn %>%
#'   mutate(rank = round(rank(risk_maternal_death_2017),0)) %>%
#'   select(countries_and_areas,rank,risk_maternal_death_2017) %>%
#'   arrange(rank)
#'    
#'# Graph scatterplot of Maternal Mortality Ratio 2017 and Antenatal Care 4+ Visits %
#' sowc_maternal_newborn %>%
#'   select(antenatal_care_4_1549,maternal_mortality_ratio_2017) %>%
#'   remove_missing(na.rm=TRUE) %>%
#'   ggplot(aes(antenatal_care_4_1549,maternal_mortality_ratio_2017))+
#'   geom_point(alpha = 0.5)+
#'   labs(title = "Antenatal Care and Mortality",
#'   x = "Antenatal Care 4+ visits %",
#'   y = "Maternal Mortality Ratio")

#' @source [United Nations Children's Emergency Fund (UNICEF)](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables/)
#'
"sowc_maternal_newborn"
