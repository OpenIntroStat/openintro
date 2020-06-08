#' UCLA courses in Fall 2018
#'
#' List of all courses at UCLA during Fall 2018.
#'
#' @name ucla_f18
#' @docType data
#' @format A data frame with 3950 observations on the following 14 variables.
#' \describe{
#'   \item{year}{Year the course was offered}
#'   \item{term}{Term the course was offered}
#'   \item{subject}{Subject}
#'   \item{subject_abbr}{Subject abbreviation, if any}
#'   \item{course}{Course name}
#'   \item{course_num}{Course number, complete}
#'   \item{course_numeric}{Course number, numeric only}
#'   \item{seminar}{Boolean for if this is a seminar course}
#'   \item{ind_study}{Boolean for if this is some form of independent  study}
#'   \item{apprenticeship}{Boolean for if this is an apprenticeship}
#'   \item{internship}{Boolean for if this is an internship}
#'   \item{honors_contracts}{Boolean for if this is an honors contracts course}
#'   \item{laboratory}{Boolean for if this is a lab}
#'   \item{special_topic}{Boolean for if this is any of the special types of courses listed}
#' }
#' @source \url{https://sa.ucla.edu/ro/public/soc}, retrieved 2018-11-22.
#' @keywords datasets
#' @examples
#'
#' nrow(ucla_f18)
#' table(ucla_f18$special_topic)
#' subset(ucla_f18, is.na(course_numeric))
#' table(subset(ucla_f18, !special_topic)$course_numeric < 100)
#' elig_courses <-
#'     subset(ucla_f18, !special_topic & course_numeric < 100)
#' set.seed(1)
#' ucla_textbooks_f18 <-
#'     elig_courses[sample(nrow(elig_courses), 100), ]
#' tmp <- order(ucla_textbooks_f18$subject,
#'     ucla_textbooks_f18$course_numeric)
#' ucla_textbooks_f18 <- ucla_textbooks_f18[tmp, ]
#' rownames(ucla_textbooks_f18) <- NULL
#' head(ucla_textbooks_f18)
"ucla_f18"
