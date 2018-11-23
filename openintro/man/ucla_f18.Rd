\name{ucla_f18}
\alias{ucla_f18}
\docType{data}
\title{
UCLA courses in Fall 2018
}
\description{
  List of all courses at UCLA during Fall 2018.
}
\usage{data("ucla_f18")}
\format{
  A data frame with 3950 observations on the following 14 variables.
  \describe{
    \item{\code{year}}{Year the course was offered.}
    \item{\code{term}}{Term the course was offered.}
    \item{\code{subject}}{Subject.}
    \item{\code{subject_abbr}}{Subject abbreviation, if any.}
    \item{\code{course}}{Course name.}
    \item{\code{course_num}}{Course number, complete.}
    \item{\code{course_numeric}}{Course number, numeric only.}
    \item{\code{seminar}}{Boolean for if this is a seminar course.}
    \item{\code{ind_study}}{Boolean for if this is some form of independent study.}
    \item{\code{apprenticeship}}{Boolean for if this is an apprenticeship.}
    \item{\code{internship}}{Boolean for if this is an internship.}
    \item{\code{honors_contracts}}{Boolean for if this is an honors contracts course.}
    \item{\code{laboratory}}{Boolean for if this is a lab.}
    \item{\code{special_topic}}{Boolean for if this is any of the special types of courses listed.}
  }
}
\details{
  Data was retrieved November 22nd, 2018.
}
\source{
  \url{https://sa.ucla.edu/ro/public/soc}
}
\examples{
nrow(ucla_f18)
table(ucla_f18$special_topic)
subset(ucla_f18, is.na(course_numeric))
table(subset(ucla_f18, !special_topic)$course_numeric < 100)
elig_courses <-
    subset(ucla_f18, !special_topic & course_numeric < 100)
set.seed(1)
ucla_textbooks_f18 <-
    elig_courses[sample(nrow(elig_courses), 100), ]
tmp <- order(ucla_textbooks_f18$subject,
    ucla_textbooks_f18$course_numeric)
ucla_textbooks_f18 <- ucla_textbooks_f18[tmp, ]
rownames(ucla_textbooks_f18) <- NULL
head(ucla_textbooks_f18)
}
\keyword{datasets}
