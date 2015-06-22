\name{smoking}
\alias{smoking}
\docType{data}
\title{
UK Smoking Data
}
\description{
Survey data on smoking habits from the UK. The data set can be used for analyzing the demographic characteristics of smokers and types of tobacco consumed.
}
\usage{data(smoking)}
\format{
  A data frame with 1691 observations on the following 12 variables.
  \describe{
    \item{\code{gender}}{Gender with levels \code{Female} and \code{Male}.}
    \item{\code{age}}{Age.}
    \item{\code{maritalStatus}}{Marital status with levels \code{Divorced}, \code{Married}, \code{Separated}, \code{Single} and \code{Widowed}.}
    \item{\code{highestQualification}}{Highest education level with levels \code{A Levels}, \code{Degree}, \code{GCSE/CSE}, \code{GCSE/O Level}, \code{Higher/Sub Degree}, \code{No Qualification}, \code{ONC/BTEC} and \code{Other/Sub Degree}}
    \item{\code{nationality}}{Nationality with levels \code{British}, \code{English}, \code{Irish}, \code{Scottish}, \code{Welsh}, \code{Other}, \code{Refused} and \code{Unknown}.}
    \item{\code{ethnicity}}{Ethnicity with levels \code{Asian}, \code{Black}, \code{Chinese}, \code{Mixed}, \code{White} and \code{Refused} \code{Unknown}.}
    \item{\code{grossIncome}}{Gross income with levels \code{Under 2,600}, \code{2,600 to 5,200}, \code{5,200 to 10,400}, \code{10,400 to 15,600}, \code{15,600 to 20,800}, \code{20,800 to 28,600}, \code{28,600 to 36,400}, \code{Above 36,400}, \code{Refused} and \code{Unknown}.}
    \item{\code{region}}{Region with levels \code{London}, \code{Midlands & East Anglia}, \code{Scotland}, \code{South East}, \code{South West}, \code{The North} and \code{Wales}}
    \item{\code{smoke}}{Smoking status with levels \code{No} and \code{Yes}}
    \item{\code{amtWeekends}}{Number of cigarettes smoked per day on weekends.}
    \item{\code{amtWeekdays}}{Number of cigarettes smoked per day on weekdays.}
    \item{\code{type}}{Type of cigarettes smoked with levels \code{Packets}, \code{Hand-Rolled}, \code{Both/Mainly Packets} and \code{Both/Mainly Hand-Rolled}}
  }
}
\source{
National STEM Centre, Large Datasets from stats4schools, \url{http://www.nationalstemcentre.org.uk/elibrary/resource/3624/large-datasets-from-stats4schools}.
}
\examples{
data(smoking)
str(smoking)
histPlot(smoking$amtWeekends)
histPlot(smoking$amtWeekdays)
table(smoking$smoke, smoking$gender)
mosaicplot(~ smoke + maritalStatus, data = smoking)
barplot(sort(table(smoking$maritalStatus), decreasing = TRUE))
}
\keyword{datasets, smoking}
