\name{prof.evaltns.beauty.public}
\alias{prof.evaltns.beauty.public}
\docType{data}
\title{Instructor beauty scores and instruction ratings}
\description{Many college courses conclude by giving students the opportunity to evaluate the course and the instructor anonymously. However, the use of these student evaluations as an indicator of course quality and teaching effectiveness is often criticized because these measures may reflect the influence of non-teaching related characteristics, such as the physical appearance of the instructor. Researchers at University of Texas, Austin collected data on teaching evaluation score (higher score means better) and standardized beauty score (a score of 0 means average, negative score means below average, and a positive score means above average) for a sample of 463 professors. The scatterplot below shows the relationship between these variables, and also provided is a regression output for predicting teaching evaluation score from beauty score.}
\usage{data("prof.evaltns.beauty.public")}
\format{
  A data frame with 463 observations on the following 64 variables.
  \describe{
    \item{\code{tenured}}{a numeric vector}
    \item{\code{profnumber}}{a numeric vector}
    \item{\code{minority}}{a numeric vector}
    \item{\code{age}}{a numeric vector}
    \item{\code{beautyf2upper}}{a numeric vector}
    \item{\code{beautyflowerdiv}}{a numeric vector}
    \item{\code{beautyfupperdiv}}{a numeric vector}
    \item{\code{beautym2upper}}{a numeric vector}
    \item{\code{beautymlowerdiv}}{a numeric vector}
    \item{\code{beautymupperdiv}}{a numeric vector}
    \item{\code{btystdave}}{a numeric vector}
    \item{\code{btystdf2u}}{a numeric vector}
    \item{\code{btystdfl}}{a numeric vector}
    \item{\code{btystdfu}}{a numeric vector}
    \item{\code{btystdm2u}}{a numeric vector}
    \item{\code{btystdml}}{a numeric vector}
    \item{\code{btystdmu}}{a numeric vector}
    \item{\code{class1}}{a numeric vector}
    \item{\code{class2}}{a numeric vector}
    \item{\code{class3}}{a numeric vector}
    \item{\code{class4}}{a numeric vector}
    \item{\code{class5}}{a numeric vector}
    \item{\code{class6}}{a numeric vector}
    \item{\code{class7}}{a numeric vector}
    \item{\code{class8}}{a numeric vector}
    \item{\code{class9}}{a numeric vector}
    \item{\code{class10}}{a numeric vector}
    \item{\code{class11}}{a numeric vector}
    \item{\code{class12}}{a numeric vector}
    \item{\code{class13}}{a numeric vector}
    \item{\code{class14}}{a numeric vector}
    \item{\code{class15}}{a numeric vector}
    \item{\code{class16}}{a numeric vector}
    \item{\code{class17}}{a numeric vector}
    \item{\code{class18}}{a numeric vector}
    \item{\code{class19}}{a numeric vector}
    \item{\code{class20}}{a numeric vector}
    \item{\code{class21}}{a numeric vector}
    \item{\code{class22}}{a numeric vector}
    \item{\code{class23}}{a numeric vector}
    \item{\code{class24}}{a numeric vector}
    \item{\code{class25}}{a numeric vector}
    \item{\code{class26}}{a numeric vector}
    \item{\code{class27}}{a numeric vector}
    \item{\code{class28}}{a numeric vector}
    \item{\code{class29}}{a numeric vector}
    \item{\code{class30}}{a numeric vector}
    \item{\code{courseevaluation}}{a numeric vector}
    \item{\code{didevaluation}}{a numeric vector}
    \item{\code{female}}{a numeric vector}
    \item{\code{formal}}{a numeric vector}
    \item{\code{fulldept}}{a numeric vector}
    \item{\code{lower}}{a numeric vector}
    \item{\code{multipleclass}}{a numeric vector}
    \item{\code{nonenglish}}{a numeric vector}
    \item{\code{onecredit}}{a numeric vector}
    \item{\code{percentevaluating}}{a numeric vector}
    \item{\code{profevaluation}}{a numeric vector}
    \item{\code{students}}{a numeric vector}
    \item{\code{tenuretrack}}{a numeric vector}
    \item{\code{blkandwhite}}{a numeric vector}
    \item{\code{btystdvariance}}{a numeric vector}
    \item{\code{btystdavepos}}{a numeric vector}
    \item{\code{btystdaveneg}}{a numeric vector}
  }
}
\source{Daniel S Hamermesh and Amy Parker. Beauty in the classroom: Instructors pulchritude and putative pedagogical productivity. In: Economics of Education Review 24.4 (2005), pp. 369-376.}
\examples{
data(prof.evaltns.beauty.public)
## maybe str(prof.evaltns.beauty.public) ; plot(prof.evaltns.beauty.public) ...
}
\keyword{datasets}