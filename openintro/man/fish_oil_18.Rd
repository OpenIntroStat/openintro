\name{fish_oil_18}
\alias{fish_oil_18}
\docType{data}
\title{
  Findings on n-3 Fatty Acid Supplement Health Benefits
}
\description{
  The results summarize each of the health outcomes for an experiment
  where 12,933 subjects received a 1g fish oil supplement daily and
  12,938 received a placebo daily.
  The experiment's duration was 5-years.
}
\usage{data("fish_oil_18")}
\format{
  The format is a list of 24 matrices.
  Each matrix is a 2x2 table, and below are the named
  items in the list, which also represent the outcomes.
  \describe{
    \item{\code{major_cardio_event}}{
      Major cardiovascular event. (Primary end point.)
    }
    \item{\code{cardio_event_expanded}}{
      Cardiovascular event in expanded composite endpoint.
    }
    \item{\code{myocardioal_infarction}}{
      Total myocardial infarction. (Heart attack.)
    }
    \item{\code{stroke}}{
      Total stroke.
    }
    \item{\code{cardio_death}}{
      Death from cardiovascular causes.
    }
    \item{\code{PCI}}{
      Percutaneous coronary intervention.
    }
    \item{\code{CABG}}{
      Coronary artery bypass graft.
    }
    \item{\code{total_coronary_heart_disease}}{
      Total coronary heart disease.
    }
    \item{\code{ischemic_stroke}}{
      Ischemic stroke.
    }
    \item{\code{hemorrhagic_stroke}}{
      Hemorrhagic stroke.
    }
    \item{\code{chd_death}}{
      Death from coronary heart disease.
    }
    \item{\code{myocardial_infarction_death}}{
      Death from myocardial infraction.
    }
    \item{\code{stroke_death}}{
      Death from stroke.
    }
    \item{\code{invasive_cancer}}{
      Invasive cancer of any type. (Primary end point.)
    }
    \item{\code{breast_cancer}}{
      Breast cancer.
    }
    \item{\code{prostate_cancer}}{
      Prostate cancer.
    }
    \item{\code{colorectal_cancer}}{
      Colorectal cancer.
    }
    \item{\code{cancer_death}}{
      Death from cancer.
    }
    \item{\code{death}}{
      Death from any cause.
    }
    \item{\code{major_cardio_event_after_2y}}{
      Major cardiovascular event,
      excluding the first 2 years of follow-up.
    }
    \item{\code{myocardial_infarction_after_2y}}{
      Total myocardial infarction,
      excluding the first 2 years of follow-up.
    }
    \item{\code{invasive_cancer_after_2y}}{
      Invasive cancer of any type,
      excluding the first 2 years of follow-up.
    }
    \item{\code{cancer_death_after_2y}}{
      Death from cancer,
      excluding the first 2 years of follow-up.
    }
    \item{\code{death_after_2y}}{
      Death from any cause,
      excluding the first 2 years of follow-up.
    }
  }
}
\source{
  Manson JE, et al. 2018. Marine n-3 Fatty Acids and Prevention
  of Cardiovascular Disease and Cancer. NEJMoa1811403.
  
  \url{https://www.nejm.org/doi/full/10.1056/NEJMoa1811403}
}
\examples{
names(fish_oil_18)
(tab <- fish_oil_18[["major_cardio_event"]])
chisq.test(tab)
fisher.test(tab)

(tab <- fish_oil_18[["myocardioal_infarction"]])
chisq.test(tab)
fisher.test(tab)
}
\keyword{datasets}
