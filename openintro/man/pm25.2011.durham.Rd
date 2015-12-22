\name{pm25.2011.durham}
\alias{pm25.2011.durham}
\docType{data}
\title{Air quality for Durham, NC}
\description{Daily air quality is measured by the air quality index (AQI) reported by the Environmental Protection Agency.}
\usage{data("pm25.2011.durham")}
\format{
  A data frame with 449 observations on the following 20 variables.
  \describe{
    \item{\code{Date}}{Date}
    \item{\code{AQS_SITE_ID}}{a factor with levels \code{37-063-0015}}
    \item{\code{POC}}{a numeric vector}
    \item{\code{Daily.Mean.PM2.5.Concentration}}{a numeric vector}
    \item{\code{UNITS}}{a factor with levels \code{ug/m3 LC}}
    \item{\code{DAILY_AQI_VALUE}}{a factor with levels \code{.} \code{12} \code{14} \code{15} \code{16} \code{17} \code{18} \code{19} \code{20} \code{21} \code{22} \code{23} \code{24} \code{25} \code{26} \code{27} \code{28} \code{29} \code{30} \code{31} \code{32} \code{33} \code{34} \code{35} \code{36} \code{37} \code{38} \code{39} \code{40} \code{41} \code{43} \code{44} \code{45} \code{46} \code{48} \code{49} \code{52} \code{54} \code{55} \code{56} \code{57} \code{60} \code{62} \code{65} \code{9}}
    \item{\code{DAILY_OBS_COUNT}}{a numeric vector}
    \item{\code{PERCENT_COMPLETE}}{a numeric vector}
    \item{\code{AQS_PARAMETER_CODE}}{a numeric vector}
    \item{\code{AQS_PARAMETER_DESC}}{a factor with levels \code{Acceptable PM2.5 AQI & Speciation Mass} \code{PM2.5 - Local Conditions}}
    \item{\code{CSA_CODE}}{a numeric vector}
    \item{\code{CSA_NAME}}{a factor with levels \code{Raleigh-Durham-Cary, NC}}
    \item{\code{CBSA_CODE}}{a numeric vector}
    \item{\code{CBSA_NAME}}{a factor with levels \code{Durham, NC}}
    \item{\code{STATE_CODE}}{a numeric vector}
    \item{\code{STATE}}{a factor with levels \code{North Carolina}}
    \item{\code{COUNTY_CODE}}{a numeric vector}
    \item{\code{COUNTY}}{a factor with levels \code{Durham}}
    \item{\code{SITE_LATITUDE}}{a numeric vector}
    \item{\code{SITE_LONGITUDE}}{a numeric vector}
  }
}
\source{US Environmental Protection Agency, AirData, 2011.
  http://www3.epa.gov/airdata/ad_data_daily.html}
\examples{
data(pm25.2011.durham)
## maybe str(pm25.2011.durham) ; plot(pm25.2011.durham) ...
}
\keyword{datasets}