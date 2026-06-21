#' arenosa
#'
#' Published results used RNA-Seq to investigate how cold responsiveness differs
#'     in two populations of A. arenosa:
#'     TBG (collected from Triberg, Germany) and
#'     KA (collected from Kasparstein, Austria). Each row corresponds to a gene;
#'     the first column contains the gene name; other columns correspond to expression
#'     measured in a plant sample. Three plants of each population were exposed
#'     to cold (vernalized, denoted by v), and three were not (non-vernalized,
#'     denoted by nv). Expression was measured in gene counts
#'     (i.e. the number of RNA transcripts present in a sample);
#'     the data were then normalized to allow comparison between samples.
#'
#' @name arenosa
#' @docType data
#' @format A tibble with 1088 rows and 13 variables:
#' \describe{
#'    \item{\code{gene.name}}{a character vector}
#'    \item{\code{ka.nv.1}}{a numeric vector}
#'    \item{\code{ka.nv.2}}{a numeric vector}
#'    \item{\code{ka.nv.3}}{a numeric vector}
#'    \item{\code{ka.v.1}}{a numeric vector}
#'    \item{\code{ka.v.2}}{a numeric vector}
#'    \item{\code{ka.v.3}}{a numeric vector}
#'    \item{\code{tbg.nv.1}}{a numeric vector}
#'    \item{\code{tbg.nv.2}}{a numeric vector}
#'    \item{\code{tbg.nv.3}}{a numeric vector}
#'    \item{\code{tbg.v.1}}{a numeric vector}
#'    \item{\code{tbg.v.2}}{a numeric vector}
#'    \item{\code{tbg.v.3}}{a numeric vector}
#'    }
#' @references Pierre Baduel, Brian Arnold, Cara M. Weisman, Ben Hunter, Kirsten Bomblies,
#'     Habitat-Associated Life History and
#'     Stress-Tolerance Variation in Arabidopsis arenosa, Plant Physiology,
#'     Volume 171, Issue 1, May 2016, Pages 437–451
#'     https://doi.org/10.1104/pp.15.01875https://doi.org/10.1104/pp.15.01875
#' @source K Bomblies Harvard University lab.
#'
"arenosa"
