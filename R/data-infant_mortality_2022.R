#' United States 2022 infant mortality and number of physicians by state, including the District of Columbia.
#'
#' Infant mortality data extracted from September 2023 posting of US Centers for
#' Disease Control and Prevention.  Mortality data for 2022 is listed as provisional
#' and is subject to change. Physician data extracted from table 16 of Health United
#' States 2019, National Center for Health Statistics (US) and represents number
#' of physicians in patient care per 100,000 resident population in 2018, by state.
#'
#' @docType data
#' @format A data frame with 51 rows and 3 columns.
#'\describe{
#'    \item{\code{state_name}}{Character vector vector, US State including the District of Columbia}
#'    \item{\code{infant_mortality_rate}}{Numeric vector, number of deaths per 1000 live births between 1 day
#'        and 1 year of age}
#'    \item{\code{doctors}}{Numeric, number of  physicians in patient care per 100,000 population}
#'   }
#' @source \url{https://www.cdc.gov/nchs/pressroom/sosmap/infant_mortality_rates/infant_mortality.htm},
#'           \url{https://www.ncbi.nlm.nih.gov/books/NBK569310/table/ch2.tab16/}
#'
"infant_mortality_2022"
