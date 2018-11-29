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
 $ major_cardio_event            : num [1:2, 1:2] 12547 12519 386 419
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "major_cardio_event" "no_event"
 $ cardio_event_expanded         : num [1:2, 1:2] 12406 12371 527 567
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "cardio_event_expanded" "no_event"
 $ myocardioal_infarction        : num [1:2, 1:2] 12788 12738 145 200
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "myocardioal_infarction" "no_event"
 $ stroke                        : num [1:2, 1:2] 12785 12796 148 142
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "stroke" "no_event"
 $ cardio_death                  : num [1:2, 1:2] 12791 12790 142 148
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "cardio_death" "no_event"
 $ PCI                           : num [1:2, 1:2] 12771 12730 162 208
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "PCI" "not_performed"
 $ CABG                          : num [1:2, 1:2] 12848 12852 85 86
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "CABG" "not_performed"
 $ total_coronary_heart_disease  : num [1:2, 1:2] 12625 12568 308 370
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "total_coronary_heart_disease" "not_present"
 $ ischemic_stroke               : num [1:2, 1:2] 12822 12822 111 116
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "ischemic_stroke" "not_present"
 $ hemorrhagic_stroke            : num [1:2, 1:2] 12908 12919 25 19
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "hemorrhagic_stroke" "not_present"
 $ chd_death                     : num [1:2, 1:2] 12896 12889 37 49
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "chd_death" "not_present"
 $ myocardial_infarction_death   : num [1:2, 1:2] 12920 12912 13 26
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "myocardial_infarction_death" "not_present"
 $ stroke_death                  : num [1:2, 1:2] 12911 12918 22 20
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "stroke_death" "not_present"
 $ invasive_cancer               : num [1:2, 1:2] 12113 12141 820 797
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "invasive_cancer" "not_present"
 $ breast_cancer                 : num [1:2, 1:2] 12816 12809 117 129
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "breast_cancer" "not_present"
 $ prostate_cancer               : num [1:2, 1:2] 12714 12746 219 192
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "prostate_cancer" "not_present"
 $ colorectal_cancer             : num [1:2, 1:2] 12879 12894 54 44
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "colorectal_cancer" "not_present"
 $ cancer_death                  : num [1:2, 1:2] 12765 12765 168 173
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "cancer_death" "no_cancer_death"
 $ death                         : num [1:2, 1:2] 12440 12453 493 485
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "death" "alive"
 $ major_cardio_event_after_2y   : num [1:2, 1:2] 12664 12637 269 301
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "major_cardio_event_after_2y" "no_event"
 $ myocardial_infarction_after_2y: num [1:2, 1:2] 12839 12807 94 131
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "myocardial_infarction_after_2y" "no_event"
 $ invasive_cancer_after_2y      : num [1:2, 1:2] 12397 12462 536 476
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "invasive_cancer_after_2y" "no_event"
 $ cancer_death_after_2y         : num [1:2, 1:2] 12807 12803 126 135
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "cancer_death_after_2y" "no_event"
 $ death_after_2y                : num [1:2, 1:2] 12562 12557 371 381
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:2] "fish_oil" "placebo"
  .. ..$ : chr [1:2] "death_after_2y" "remained_alive"
}
\source{
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
