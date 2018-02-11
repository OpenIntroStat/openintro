\name{evals}
\alias{evals}
\docType{data}
\title{
  Professor evaluations and beauty
}
\description{
  The data are gathered from end of semester student evaluations
  for a large sample of professors from the University of Texas
  at Austin. In addition, six students rate the professors'
  physical appearance. The result is a data frame where each
  row contains a different course and each column has information
  on either the course or the professor.
  \url{https://www.openintro.org/stat/data/?data=evals}
}
\usage{data("evals")}
\format{
  A data frame with 463 observations on the following 21 variables.
  \describe{
    \item{\code{score}}{Average professor evaluation score: (1) very unsatisfactory - (5) excellent.}
    \item{\code{rank}}{Rank of professor: teaching, tenure track, tenured.}
    \item{\code{ethnicity}}{Ethnicity of professor: not minority, minority.}
    \item{\code{gender}}{Gender of professor: female, male.}
    \item{\code{language}}{Language of school where professor received education: English or non-English.}
    \item{\code{age}}{Age of professor.}
    \item{\code{cls_perc_eval}}{Percent of students in class who completed evaluation.}
    \item{\code{cls_did_eval}}{Number of students in class who completed evaluation.}
    \item{\code{cls_students}}{Total number of students in class.}
    \item{\code{cls_level}}{Class level: lower, upper.}
    \item{\code{cls_profs}}{Number of professors teaching sections in course in sample: single, multiple.}
    \item{\code{cls_credits}}{Number of credits of class: one credit (lab, PE, etc.), multi credit.}
    \item{\code{bty_f1lower}}{Beauty rating of professor from lower level female: (1) lowest - (10) highest.}
    \item{\code{bty_f1upper}}{Beauty rating of professor from upper level female: (1) lowest - (10) highest.}
    \item{\code{bty_f2upper}}{Beauty rating of professor from second level female: (1) lowest - (10) highest.}
    \item{\code{bty_m1lower}}{Beauty rating of professor from lower level male: (1) lowest - (10) highest.}
    \item{\code{bty_m1upper}}{Beauty rating of professor from upper level male: (1) lowest - (10) highest.}
    \item{\code{bty_m2upper}}{Beauty rating of professor from second upper level male: (1) lowest - (10) highest.}
    \item{\code{bty_avg}}{Average beauty rating of professor.}
    \item{\code{pic_outfit}}{Outfit of professor in picture: not formal, formal.}
    \item{\code{pic_color}}{Color of professor's picture: color, black & white.}
  }
}
\source{
  Cetinkaya-Rundel M, Morgan KL, Stangl D. 2013. Looking Good on Course Evaluations. CHANCE 26(2). http://chance.amstat.org/2013/04/looking-good/
}
\examples{
data(evals)
}
\seealso{
See also \code{\link{prof.evals}} and \code{\link{prof.evaltns.beauty.public}} for raw data, including individual student ratings of professors' beauty. 
}
\keyword{datasets}
