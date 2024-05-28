#' Exam and course grades for statistics students
#'
#' Grades on three exams and overall course grade for 233 students during
#' several years for a statistics course at a university.
#'
#'
#' @name exam_grades
#' @docType data
#' @format A data frame with 233 observations, each representing a student.
#' \describe{
#'   \item{semester}{Semester when grades were recorded.}
#'   \item{sex}{Sex of the student as recorded on the university registration system: Man or Woman.}
#'   \item{exam1}{Exam 1 grade.}
#'   \item{exam2}{Exam 2 grade.}
#'   \item{exam3}{Exam 3 grade.}
#'   \item{course_grade}{Overall course grade.}
#'   }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' # Course grade vs. each exam
#' ggplot(exam_grades, aes(x = exam1, y = course_grade)) +
#'   geom_point()
#'
#' ggplot(exam_grades, aes(x = exam2, y = course_grade)) +
#'   geom_point()
#'
#' ggplot(exam_grades, aes(x = exam2, y = course_grade)) +
#'   geom_point()
#'
#' # Semester averages
#' exam_grades |>
#'   group_by(semester) |>
#'   summarise(across(exam1:course_grade, mean, na.rm = TRUE))
"exam_grades"
