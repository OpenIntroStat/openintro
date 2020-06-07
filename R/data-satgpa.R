#' SAT and GPA data
#'
#' SAT and GPA data for 1000 students at an unnamed college.
#'
#'
#' @name satgpa
#' @docType data
#' @format A data frame with 1000 observations on the following 6 variables.
#' \describe{
#'   \item{sex}{Gender of the student.}
#'   \item{sat_v}{Verbal SAT percentile.}
#'   \item{sat_m}{Math SAT percentile.}
#'   \item{sat_sum}{Total of verbal and math SAT percentiles.}
#'   \item{hs_gpa}{High school grade point average.}
#'   \item{fy_gpa}{First year (college) grade point average.}
#'   }
#' @references Data retrieved from
#' \url{https://www.dartmouth.edu/~chance/course/Syllabi/Princeton96/Class12.html}
#' @source Educational Testing Service originally collected the data.
#' @keywords datasets
#' @examples
#'
#' par(mfrow=2:1)
#'
#' plot(satgpa$sat_sum/2, satgpa$fy_gpa)
#' g <- lm(satgpa$fy_gpa ~ I(satgpa$sat_sum/2))
#' summary(g)
#' abline(g)
#'
#' plot(satgpa$sat_m, satgpa$fy_gpa)
#' g <- lm(satgpa$fy_gpa ~ satgpa$sat_m)
#' summary(g)
#' abline(g)
#'
"satgpa"
