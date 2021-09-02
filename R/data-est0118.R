#' Survey on Statistics freshmen students
#'
#' The data was collected in a survey applied to the freshmen from a course
#' called Introduction to Statistics and Probability, from years 2015 to 2018,
#' at the Federal University of Rio Grande do Norte, Natal, Brazil. This
#' course is part of the B.Sc. in Statistics offered by the university.
#'
#' @name est0118
#' @docType data
#' @format A data frame with 121 observations on the following 15 variables.
#' \describe{
#'   \item{year}{The year the survey was applied.}
#'   \item{gender}{Student gender.}
#'   \item{age}{Student age (years).}
#'   \item{height}{Student height (cm).}
#'   \item{weight}{Student weight (kg).}
#'   \item{shoe}{Shoe size (brazilian standard).}
#'   \item{siblings}{Number of siblings the student have.}
#'   \item{sig_other}{Does the student has a significant other?}
#'   \item{smoking}{Does the student smoke tobacco?}
#'   \item{alcohol}{Number of weekly alcohol units drank in a week.}
#'   \item{pet}{The type of pet the student owns.}
#'   \item{sleep}{Average hours of sleep per day per student.}
#'   \item{exercise}{Average hours of exercise per week per student.}
#'   \item{std_test}{Student score on Exame Nacional do Ensino Médio (High School National Examination), a standardized test similar to SAT.}
#'   \item{infrastructure}{Student opinion about the Federal University of Rio Grande do Norte general infrastructure.}
#' }
#' @source Online survey designed and collected by Marcus Nunes - \url{https://marcusnunes.me}
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(est0118, aes(x = height, y = weight)) +
#'   geom_point()
"est0118"
