\name{mtl}
\alias{mtl}
\docType{data}
\title{
  Medial temporal lobe (MTL) and other
  data for 26 participants
}
\description{
  The data are from a convenience sample of 25 women and 10 men who were
  middle-aged or older. The purpose of the study was to understand the
  relationship between sedentary behavior and thickness of the medial
  temporal lobe (MTL) in the brain.
}
\usage{data("mtl")}
\format{
  A data frame with 35 observations on the following 23 variables.
  \describe{
    \item{\code{Subject}}{ID for the individual.}
    \item{\code{Sex}}{Gender, which takes values \code{F} (female) or \code{M} (male).}
    \item{\code{Ethnic}}{Ethnicity, simplified to \code{Caucasian} and \code{Other}.}
    \item{\code{Educ}}{Years of educational.}
    \item{\code{e4grp}}{APOE-4 status, taking a value of \code{E4} or \code{Non-E4}.}
    \item{\code{Age}}{Age, in years.}
    \item{\code{MMSE}}{
      Score from the Mini-Mental State Examination,
      which is a global cognitition evaluation.
    }
    \item{\code{HamD}}{Score on the Hamilton Rating Scale for depression.}
    \item{\code{HamA}}{Score on the Hamilton Rating Scale for anxiety.}
    \item{\code{DigSym}}{
      We (the authors of this R package) are unsure
      as to the meaning of this variable.
    }
    \item{\code{DelayVP}}{
      We (the authors of this R package) are unsure
      as to the meaning of this variable.
    }
    \item{\code{BFRSelective.Reminding.Delayed}}{
      We (the authors of this R package) are unsure
      as to the meaning of this variable.
    }
    \item{\code{Sitting}}{
      Self-reported time sitting per day, averaged to the nearest hour.
    }
    \item{\code{METminwk}}{
      Metabolic equivalent units score (activity level).
      A score of \code{0} means \dQuote{no activity} while
      \code{3000} is considered \dQuote{high activity}.
    }
    \item{\code{IPAQgrp}}{
      Classification of \code{METminwk} into \code{Low} or \code{High}.
    }
    \item{\code{ACA1}}{Thickness of the CA1 subregion of the MTL.}
    \item{\code{ACA23DG}}{Thickness of the CA23DG subregion of the MTL.}
    \item{\code{AECort}}{Thickness of a subregion of the MTL.}
    \item{\code{AFusiCort}}{Thickness of the fusiform gyrus subregion of the MTL.}
    \item{\code{APhCort}}{Thickness of the perirhinal cortex subregion of the MTL.}
    \item{\code{APeCort}}{Thickness of the entorhinal cortex subregion of the MTL.}
    \item{\code{Asubic}}{Thickness of the subiculum subregion of the MTL.}
    \item{\code{TOTAL}}{Total MTL thickness.}
  }
}
\source{
  Siddarth P, Burggren AC, Eyre HA, Small GW, Merrill DA. 2018. Sedentary behavior associated with reduced medial temporal lobe thickness in middle-aged and older adults. PLoS ONE 13(4): e0195549.
  \url{https://doi.org/10.1371/journal.pone.0195549}

  Thank you to Professor Silas Bergen of Winona State University for pointing us to this data set!
}
\references{
  A New York Times article references this study.
  \url{https://www.nytimes.com/2018/04/19/opinion/standing-up-at-your-desk-could-make-you-smarter.html}
}
\examples{
data(mtl)

# Examine the relationship between the METminwk and IPAQgrp variables.
a <- mtl[, c("METminwk", "IPAQgrp")]
a[order(a$METminwk), ]

}
\keyword{datasets}
