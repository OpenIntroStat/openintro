#' A dataset containing the school-level percentage of students scoring proficient or advanced in
#' the 2018 Grade 10 Mathematics test in the Massachusetts Comprehensive Assessment System,
#' along with characteristics of the school.
#'
#' The Massachusetts Comprehensive Assessment System (MCAS, \url{https://www.doe.mass.edu/mcas/})
#' uses state-wide testing to assess whether school districts, schools, and
#' students are meeting expectations. This dataset records the percentage of
#' students scoring proficient or advanced in the 2018 Mathematics test. School-level
#' variables include possible predictors of test performance such as the demographics
#' of the student population and administrative features of the school.
#'
#' @docType data
#' @format A data frame with 356 rows and 21 columns.
#' \describe{
#'    \item{\code{PA_perc}}{Numeric, percentage of students scoring proficient or advanced.}
#'    \item{\code{average_class_size}}{Numeric, average class size in the school, regardless of subject.}
#'    \item{\code{average_math_class_size}}{Numeric, average size of math classes in the school.}
#'    \item{\code{student_teacher_ratio}}{Numeric, average student-teacher ratio in the school.}
#'    \item{\code{attendance_rate}}{Numeric, the number of full-time equivalent student-days
#'        attended by full-time students in grades 1-10 as a percentage of the total
#'        number of possible student-days during the period.}
#'    \item{\code{number_of_students}}{Numeric, the total number of students
#'        including special education beyond grade 12.}
#'    \item{\code{largest_minority}}{Character, largest minority group.}
#'    \item{\code{school_name}}{Character, school name.}
#'    \item{\code{district_name}}{Character, Massachusetts school district.}
#'    \item{\code{english_learner}}{Numeric, percentage of students for whom the first
#'        language is other than English and who cannot perform ordinary classroom
#'        work in English.}
#'    \item{\code{students_disabilities}}{Numeric, percentage of students in the school with an
#'           individual education plan (IEP) identifying special learning needs}
#'    \item{\code{econ_dis}}{Numeric, percentage of students from economically
#'          disadvantaged background.  Determined based on student participation in one
#'          or more of the following state-administered programs: the Supplemental
#'          Nutrition Assistance Program (SNAP); the Transitional Assistance for Families
#'          with Dependent Children (TAFDC); the Department of Children and Families' (DCF)
#'          foster care program; and Medicaid.}
#'    \item{\code{african_american}}{Numeric, percentage of students in the school
#'         having origins in any of the black racial groups of Africa.}
#'    \item{\code{asian}}{Numeric, percentage of students having origins in any of the original peoples
#'         of the Far East, Southeast Asia, or the Indian subcontinent.}
#'    \item{\code{white}}{Numeric, percentage of students having origins in any of the original
#'         peoples of Europe, the Middle East, or North Africa.}
#'    \item{\code{hispanic}}{Numeric, percentage of students of Cuban, Mexican, Puerto Rican,
#'         South or Central American descent, or other Spanish culture or origin, regardless of race.}
#'    \item{\code{native_american}}{Numeric, percentage of students having origins in any of the
#'          original peoples of North and South America (including Central America),
#'          and who maintain tribal affiliation or community attachment.}
#'    \item{\code{native_hawaiian_pacific_islander}}{Numeric, percentage of students having origins
#'          in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific Islands.}
#'    \item{\code{multi_race_non_hispanic}}{Numeric, percentage of students selecting more than one
#'          racial category and non-Hispanic.}
#'    \item{\code{exp_per_pupil}}{Numeric, amount spent by the school district per pupil, in dollars.
#'        Calculated by dividing a district's operating expenditures by its average pupil
#'        membership.}
#'    \item{\code{majority}}{Character, coded \code{white} if \eqn{\ge} 50% of the students in the school are in racial category white, otherwise coded \code{minority}}
#'     }
#' @source \url{https://profiles.doe.mass.edu/statereport/}
#'
"mcas"
