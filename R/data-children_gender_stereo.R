#' Gender Stereotypes in 5-7 year old Children
#'
#' Stereotypes are common, but at what age do they start? This study
#' investigates stereotypes in young children aged 5-7 years old. There are
#' four studies reported in the [paper](https://science.sciencemag.org/content/355/6323/389),
#' and all four data sets are provided here.
#'
#' The structure of the data object is a little unusual, so we recommend
#' reviewing the Examples section before starting your analysis.
#'
#' Thank you to Nicholas Horton for pointing us to this study and the data!
#'
#' Most of the results in the paper can be reproduced using the data provided
#' here.
#'
#' % TODO(David) - Add short descriptions of each study.
#'
#' @name children_gender_stereo
#' @docType data
#' @format This data object is more unusual than most. It is a list of 4 data
#' frames. The four data frames correspond to the data used in Studies 1-4 of
#' the referenced [paper](https://science.sciencemag.org/content/355/6323/389),
#' and these data frames each have variables (columns) that are among the following:
#' \describe{
#'   \item{subject}{Subject ID. Note that Subject 1 in the first data frame
#'   (data set) does \bold{not} correspond to Subject 1 in the second data frame.}
#'   \item{gender}{Gender of the subject.}
#'   \item{age}{Age of the subject, in years.}
#'   \item{trait}{The trait that the children were making a judgement about,
#'   which was either \code{nice} or \code{smart}.}
#'   \item{target}{The age group of the people the children were making judgements
#'   about (as being either nice or smart): \code{children} or \code{adults}.}
#'   \item{stereotype}{The proportion of trials where the child picked a gender
#'   target that matched the trait that was the same as the gender of the child.
#'   For example, suppose we had 18 pictures, where each picture showed 2 men and
#'   2 women (and a different set of people in each photo). Then if we asked a
#'   boy to pick the person in each picture who they believed to be really smart,
#'   this \code{stereotype} variable would report the fraction of pictures where
#'   the boy picked a man. When a girl reviews the photos, then this
#'   \code{stereotype} variable reports the fraction of photos where she picked
#'   a woman. That is, this variable differs in meaning depending on the gender
#'   of the child. (This variable design is a little confusing, but it is useful
#'   when analyzing the data.)}
#'   \item{high_achieve_caution}{The proportion of trials where the child said
#'   that children of their own gender were high-achieving in school.}
#'   \item{interest}{Average score that measured the interest of the child in
#'   the game.}
#'   \item{difference}{A difference score between the interest of the child in
#'   the \dQuote{smart} game and their interest in the \dQuote{try-hard} game.}
#' }
#' @source Bian L, Leslie SJ, Cimpian A. 2017. "Gender stereotypes about intellectual
#' ability emerge early and influence children's interests". Science 355:6323
#' (389-391). \url{https://science.sciencemag.org/content/355/6323/389}.
#'
#' The original data may be found [here](https://osf.io/yund6/?view_only=9a8505d4e87b456a89f255b43e21234e).
#' @keywords datasets
#' @examples
#'
#' # This data set is a little funny to work with.
#' # If wanting to review the data for a study, we
#' # recommend first assigning the corresponding
#' # data frame to a new variable. For instance,
#' # below we assign the second study's data to an
#' # object called `d` (d is for data!).
#' d <- children_gender_stereo[[2]]
#'
"children_gender_stereo"
