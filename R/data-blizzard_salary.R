#' Blizzard Employee Voluntary Salary Info.
#'
#' Employee generated anonymous survey of salary information.
#'
#' @format A data frame with 466 rows and 9 variables.
#' \describe{
#'   \item{timestamp}{Time data was entered}
#'   \item{status}{Specifies employment status.}
#'   \item{current_title}{Current job title.}
#'   \item{current_salary}{Current salary (in USD).}
#'   \item{salary_type}{Frequency with levels year, hour, week.}
#'   \item{percent_incr}{Raise given July 2020.}
#'   \item{other_info}{Other information submitted by employee.}
#'   \item{location}{Current office of employment.}
#'   \item{performance_rating}{Most recent review performance rating.}
#' }
#' @examples 
#' library(ggplot2)
#' library(dplyr)
#'
#'plot_data <- blizzard_salary %>% 
#'mutate(annual_salary = case_when(
#'salary_type == "week" ~ current_salary*52,
#'salary_type == "hour" ~ current_salary*40*52,
#'TRUE ~ current_salary
#'))
#'
#'ggplot(plot_data, aes(annual_salary))+
#'geom_histogram(binwidth = 25000, color = "white")+
#'labs(title = "Current Salary of Blizzard Employees",
#'     x = "Salary",
#'          y = "Number of Employees")
#' 
#' @source
#'   [Bloomberg](https://www.bloomberg.com/news/articles/2020-08-03/blizzard-workers-share-salaries-in-revolt-over-wage-disparities)
#'
"blizzard_salary"
