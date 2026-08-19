#' Spatial distancing, emotional arousal
#'
#' This dataset is from a published research paper examining the effects of
#' spatial distancing on emotional arousal to reactivated memories. It contains
#' data on gender, age, trait reappraisal and suppression, desirability, and
#' self-reported distress before and after experimental sessions (across three
#' days). Participants underwent an experimental session, where they viewed images
#' from the IAPs. For day 2, participants were spilt into four groups:
#' reactivation + regulation, no regulation, no reactivation, no regulation.
#' The reactivation & regulation group viewed emotional objects cut from the
#' pictures and were asked to regulate them. When they saw the word "far" they
#' had to imagine the object was far away from them.
#'
#' @format A data frame with 175 rows and 14 variables.
#' \describe{
#'  \item{id}{Subject ID number.}
#'  \item{gender}{M = Male; F = Female.}
#'  \item{age}{Age of the participants.}
#'  \item{condition}{1 = Reactivation + Regulation; 2= No Regulation; 3 = No Reactivation; 4 = Neither.}
#'  \item{sds_17}{Social desirability scale.}
#'  \item{erq_reappraisal}{motion Regulation Questionnaire - Reappraisal Subscale.}
#'  \item{erq_suppression}{Emotion Regulation Questionnaire - Suppression Subscale.}
#'  \item{day1_pre_suds}{Day 1 Subjective Units of Distress Scale Pre-Session.}
#'  \item{day1_post_suds}{Day 1 Subjective Units of Distress Scale Post-Session.}
#'  \item{day2_pre_suds}{Day 2 Subjective Units of Distress Scale Pre-Session.}
#'  \item{day2_post_suds}{Day 2 Subjective Units of Distress Scale Post-Session.}
#'  \item{day3_pre_suds}{Day 3 Subjective Units of Distress Scale Pre-Session.}
#'  \item{day3_post_suds}{Day 3 Subjective Units of Distress Scale Post-Session.}
#'  \item{race}{The self identified race of the participant.}
#' }
#'
#' @source  Parikh, N., McGovern, B. & LaBar, K.S. Spatial distancing reduces emotional arousal to reactivated memories. Psychon Bull Rev 26, 1967–1973 (2019).[Link to doi](https://doi.org/10.3758/s13423-019-01648-z)
#'
#' 		Parikh, N., McGovern, B., & LaBar, K. S. (2023). Data from: Spatial distancing reduces emotional arousal to reactivated memories. Duke Research Data Repositor [Link to full dataset](y. https://doi.org/10.7924/r4z89f54)
#'
"sdea"
