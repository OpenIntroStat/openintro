\name{esi}
\alias{esi}
\docType{data}
\title{
Environmental Sustainability Index 2005
}
\description{
This data set comes from the 2005 Environmental Sustainability Index: Benchmarking National Environmental Stewardship.  Countries are given an overall sustainability score as well as scores in each of several different environmental areas.

ESI and Component scores are presented as standard normal percentiles. Indicator scores are in the form of z-scores. See Appendix A of the report for information on the methodology and Appendix C for more detail on original data sources.
}
\usage{data(esi)}
\format{
  A data frame with 146 observations on the following 29 variables.
  \describe{
    \item{\code{code}}{ISO3 country code.}
    \item{\code{country}}{Country.}
    \item{\code{esi}}{Environmental Sustainability Index.}
    \item{\code{system}}{ESI core component: systems}
    \item{\code{stress}}{ESI core component: stresses}
    \item{\code{vulner}}{ESI core component: vulnerability}
    \item{\code{cap}}{ESI core component: capacity}
    \item{\code{global}}{ESI core component: global stewardship}
    \item{\code{sys_air}}{Air quality.}
    \item{\code{sys_bio}}{Biodiversity.}
    \item{\code{sys_lan}}{Land.}
    \item{\code{sys_wql}}{Water quality.}
    \item{\code{sys_wqn}}{Water quantity.}
    \item{\code{str_air}}{Reducing air pollution.}
    \item{\code{str_eco}}{Reducing ecosystem stress.}
    \item{\code{str_pop}}{Reducing population pressure.}
    \item{\code{str_was}}{Reducing waste and consumption pressures.}
    \item{\code{str_wat}}{Reducing water stress.}
    \item{\code{str_nrm}}{Natural resource management.}
    \item{\code{vul_hea}}{Environmental health.}
    \item{\code{vul_sus}}{Basic human sustenance.}
    \item{\code{vul_dis}}{Exposure to natural disasters.}
    \item{\code{cap_gov}}{Environmental governance.}
    \item{\code{cap_eff}}{Eco-efficiency.}
    \item{\code{cap_pri}}{Private sector responsiveness.}
    \item{\code{cap_st}}{Science and technology.}
    \item{\code{glo_col}}{Participation in international collaboration efforts.}
    \item{\code{glo_ghg}}{Greenhouse gas emissions.}
    \item{\code{glo_tbp}}{Reducing transboundary environmental pressures.}
  }
}
\details{
For more information on how each of the indices were calculated, see the documentation linked below.
}
\source{
ESI Component Indicators. \emph{2005 Environmental Sustainability Index: Benchmarking National Environmental Stewardship}, Yale Center for Environmental Law and Policy, Yale University & Center for International Earth Science Information Network (CIESIN), Columbia University

In collaboration with:
World Economic Forum, Geneva, Switzerland
Joint Research Centre of the European Commission, Ispra, Italy

Available at \url{http://www.yale.edu/esi/}
}
\references{
Esty, Daniel C., Marc Levy, Tanja Srebotnjak, and Alexander de Sherbinin (2005). \emph{2005 Environmental Sustainability Index: Benchmarking National Environmental Stewardship.} New Haven: Yale Center for Environmental Law and Policy
}
\examples{
data(esi)

pch <- ifelse(esi$code == "USA", 19, 1)
plot(esi$cap_st, esi$glo_col, pch=pch)
plot(esi$vulner, esi$cap, pch=pch)
}
\keyword{environment}
\keyword{sustainability}
\keyword{country}
\keyword{energy}
\keyword{efficiency}
\keyword{datasets}
