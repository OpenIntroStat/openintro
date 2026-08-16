#' Skill Acquisition
#'
#' This data set contains 1,035 observations of 18 variables from Experiment 1
#' of Kardas and O’Brien (2018). In this experiment, the authors randomly assigned
#' participants to one of six between-subject conditions in a 3 (type of exposure:
#' watch, read, think) × 2 (amount of exposure: low, high) design. The key
#' dependent variable is perceived ability, operationalized as how much
#' participants believed they could pull off a “tablecloth trick” (removing the
#' tablecloth from a table without upsetting the dishes on the table) based on
#' the type of training they received.
#'
#' @format A data frame with 1035 rows and 18 variables.
#' \describe{
#'  \item{p_number}{participant ID}
#'  \item{heard_before}{Whether the participant knows what “the tablecloth trick” was before the beginning of the study with levels 1 = Yes and 2 = No. All participants completed the study but participants who indicated they did not know were excluded from the analysis.}
#'  \item{type_of_info}{Experimental condition for type of exposure with levels 1 = Watching, 2 = Reading and 3 = Control.}
#'  \item{amt_of_info}{Experimental condition for amount of exposure with levels 1 = Low Exposure and 2 = High Exposure.}
#'  \item{perceived_ability}{Dependent variable; “You jump in and give the trick ONE SHOT yourself. What do you feel are the chances that you’d successfully pull it off?” on a 1 to 7 scale where 1 = I feel there’s no chance at all I’d succeed on this attempt, 7 = I feel I’d definitely succeed without a doubt on this attempt.}
#'  \item{manipulation_check}{Manipulation check for amount of information; “About how much of this ‘more information’ do you feel you were given?” on a 1 to 7 scale where 1 = very little/went by quickly, 7 = a lot/displayed for a while.}
#'  \item{technical_difficulties}{Whether participants had any technical difficulties with levels 0 = No and 1 = Yes.}
#'  \item{technical_difficulties_description}{Free text describing the technical difficulty.}
#'  \item{gender}{Participant’s gender with levels 1 = Male, 2 = Female and 3 = Other.}
#'  \item{ethnic_1}{Participant identified as Black with levels 0 = No, 1 = Yes.}
#'  \item{ethnic_2}{Participant identified as Hispanic with levels 0 = No, 1 = Yes.}
#'  \item{ethnic_3}{Participant identified as Asian with levels 0 = No, 1 = Yes.}
#'  \item{ethnic_4}{Participant identified as American Indian with levels 0 = No, 1 = Yes.}
#'  \item{ethnic_5}{Participant identified as White with levels 0 = No, 1 = Yes.}
#'  \item{ethnic_6 }{Participant identified as Other with levels 0 = No, 1 = Yes.}
#'  \item{age}{Participant’s age in years.}
#'  \item{tried_before}{Whether participants had ever previously attempted a tablecloth trick in their everyday lives with levels 1 = Yes and 2 = No.}
#'  \item{fail_ac}{Whether a participant failed an attention check with levels 0 = did not fail any attention checks and 1 = failed one or more attention checks.}
#' }
#'
#' @source Kardas, M., & O’Brien, E. (2018). Easier seen than done: Merely watching others perform can foster an illusion of skill acquisition. Psychological Science, 29(4), 521-536. [Link to doi](https://doi.org/10.1177/0956797617740646) [Link to full dataset](https://osf.io/u3byh/files/bfj8n)
#'
"skill_acquisition"
