\name{bdims}
\alias{bdims}
\docType{data}
\title{
Body measurements of 507 physically active individuals.
}
\description{
Body girth measurements and skeletal diameter measurements, as well as age, weight, height and gender, are given for 507 physically active individuals - 247 men and 260 women. These data can be used to provide statistics students practice in the art of data analysis. Such analyses range from simple descriptive displays to more complicated multivariate analyses such as multiple regression and discriminant analysis.
}
\usage{data(bdims)}
\format{
  A data frame with 507 observations on the following 25 variables.
  \describe{
	\item{\code{bia.di}}{A numerical vector, respondent's biacromial diameter in centimeters.}	\item{\code{bii.di}}{A numerical vector, respondent's biiliac diameter (pelvic breadth) in centimeters.}	\item{\code{bit.di}}{A numerical vector, respondent's bitrochanteric diameter in centimeters.}	\item{\code{che.de}}{A numerical vector, respondent's chest depth in centimeters, measured between spine and sternum at nipple level, mid-expiration.}	\item{\code{che.di}}{A numerical vector, respondent's chest diameter in centimeters, measured at nipple level, mid-expiration.}	\item{\code{elb.di}}{A numerical vector, respondent's elbow diameter in centimeters, measured as sum of two elbows.}	\item{\code{wri.di}}{A numerical vector, respondent's wrist diameter in centimeters, measured as sum of two wrists.}	\item{\code{kne.di}}{A numerical vector, respondent's knee diameter in centimeters, measured as sum of two knees.}	\item{\code{ank.di}}{A numerical vector, respondent's ankle diameter in centimeters, measured as sum of two ankles.}	\item{\code{sho.gi}}{A numerical vector, respondent's shoulder girth in centimeters, measured over deltoid muscles.}	\item{\code{che.gi}}{A numerical vector, respondent's chest girth in centimeters, measured at nipple line in males and just above breast tissue in females, mid-expiration.}	\item{\code{wai.gi}}{A numerical vector, respondent's waist girth in centimeters, measured at the narrowest part of torso below the rib cage as average of contracted and relaxed position.}	\item{\code{nav.gi}}{A numerical vector, respondent's navel (abdominal) girth in centimeters, measured at umbilicus and iliac crest using iliac crest as a landmark.}	\item{\code{hip.gi}}{A numerical vector, respondent's hip girth in centimeters, measured at at level of bitrochanteric diameter.}	\item{\code{thi.gi}}{A numerical vector, respondent's thigh girth in centimeters, measured below gluteal fold as the average of right and left girths.}	\item{\code{bic.gi}}{A numerical vector, respondent's bicep girth in centimeters, measured when flexed as the average of right and left girths.}	\item{\code{for.gi}}{A numerical vector, respondent's forearm girth in centimeters, measured when extended, palm up as the average of right and left girths.}	\item{\code{kne.gi}}{A numerical vector, respondent's knee diameter in centimeters, measured as sum of two knees.}	\item{\code{cal.gi}}{A numerical vector, respondent's calf maximum girth in centimeters, measured as average of right and left girths.}	\item{\code{ank.gi}}{A numerical vector, respondent's ankle minimum girth in centimeters, measured as average of right and left girths.}	\item{\code{wri.gi}}{A numerical vector, respondent's wrist minimum girth in centimeters, measured as average of right and left girths.}	\item{\code{age}}{A numerical vector, respondent's age in years.}	\item{\code{wgt}}{A numerical vector, respondent's weight in kilograms.}	\item{\code{hgt}}{A numerical vector, respondent's height in centimeters.}	\item{\code{sex}}{A categorical vector, 1 if the respondent is male, 0 if female.}
  }
}
\source{
Heinz G, Peterson LJ, Johnson RW, Kerk CJ. 2003. Exploring Relationships in Body Dimensions. Journal of Statistics Education 11(2).
}
\examples{
data(bdims)
histPlot(bdims$hgt)
boxPlot(bdims$hgt)
plot(bdims$wgt ~ bdims$hgt)
plot(bdims$hgt ~ bdims$sho.gi)
plot(bdims$wgt ~ bdims$hip.gi)
}
\keyword{datasets}
