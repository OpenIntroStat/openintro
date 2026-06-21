#' Patient level data on the randomized trial Learning Early About Peanut (LEAP) allergies.
#'
#' This study examined whether early exposure to peanuts increased tolerance and
#' protection from developing a peanut allergy in children who are allergic to
#' eggs or who have severe eczema. Participants between 4 and 11 months old were
#' randomized to either avoid versus consume peanut based products during the
#' first three years of life.  The longer title of the study is Induction of
#' Tolerance Through Early Introduction of Peanut in High-Risk Children and can
#' be found in \url{https://clinicaltrials.gov/} as study NCT00329784.
#'
#' More variables are available at the site in the source.
#'
#' @docType data
#' @format A data frame with 640 rows and 7 columns
#' \describe{
#'      \item{\code{participant.ID}}{Character vector, unique identifier for each participant.}
#'      \item{\code{stratum}}{Factor, outcome of a skin prick test (SPT) conducted
#'      before randomization, with levels \code{SPT-Negative}, participant
#'      shows no evidence of peanut allergy,  and \code{SPT-Positive}, evidence
#'      of a peanut allergy.  Participants were
#'      randomized separately within each stratum.  The primary analysis of the
#'      study is typically restricted to the SPT-Negative group.}
#'      \item{\code{treatment.group}}{Factor, randomized assignment for each participant,
#'       with levels \code{Peanut Avoidance} and \code{Peanut Consumption}}.
#'      \item{\code{age.months}}{Participant age in months at randomization.}
#'      \item{\code{sex}}{Factor, sex of participant with levels \code{Female} and
#'      \code{Male}}
#'      \item{\code{primary.ethnicity}}{Factor variable with levels \code{Asian},
#'      \code{Black}, \code{Other}, \code{Mixed}, and \code{White}.}
#'      \item{\code{overall.V60.outcome}}{Factor, indicating whether after 5 years,
#'      the participant had an allergic reaction in the OFC,
#'      with levels for having a reaction to a peanut based oral food challenge,
#'      with levels (\code{FAIL OFC}) (allergic reaction),
#'      (\code{PASS OFC}) (no allergic reaction)}
#'   }
#' @source These data are a subset of variables from the file ADSTART0_2015-03-03_14-20-10.txt,
#'     available by downloading study files from
#'     \url{https://www.immport.org/shared/study/SDY660}
#' @references Du Toit, George, et al. "Randomized trial of peanut consumption in
#'       infants at risk for peanut allergy."
#'       New England Journal of Medicine 372.9 (2015): 803-813.
#'       doi 10.1056/nejmoa1414850
#'
"LEAP"
