\name{country_iso}
\alias{country_iso}
\docType{data}
\title{
 Country ISO information
}
\description{
  Country International Organization for
  Standardization (ISO) information.
}
\usage{data("country_iso")}
\format{
  A data frame with 249 observations on the following 4 variables.
  \describe{
    \item{\code{country_code}}{
    	  Two-letter ISO country code.
    	}
    \item{\code{country_name}}{
    	  Country name.
    	}
    \item{\code{year}}{
      Year the two-letter ISO country code was assigned.
    }
    \item{\code{top_level_domain}}{
    	  Top-level domain name.
    	}
  }
}
\source{
  Retrieved from Wikipedia on 2018-11-18.

  \url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2}
}
\examples{
head(country_iso)
}
\keyword{datasets}
