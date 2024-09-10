#' A dataset used to illustrate a method for examining the association between
#' gene expression and leukemia type.
#'
#' The larger golub dataset is a normalized version of the Golub leukemia data
#' from the \code{golubEsets} package, available from \url{http://www.bioconductor.org/download/experiments/}.
#' Republished from the \code{hddplot} package by John Maindonald on 10 March 2018.
#' The first 6 variables contain data on clinical and demographic features. The
#' remaining 7129 contain normalized expression data for the probes given by the
#' variable name. This data frame contains only 10 rows and 11 variables, a cancer
#' type and expression from 10 genes arbitrarily labeled A - J.
#'
#' @name golub.small
#' @docType data
#' #' @format A tibble with 10 rows and 11 variables:
#' \describe{
#'   \item{\code{cancer}}{a character vector denoting cancer type, with
#'        values \code{allB}, (acute lymphocytic leukemia, B subtype),
#'        \code{allT}, (acute lymphocytic leukemia, T subtype),
#'        and \code{aml} (acute myeloid leukemia)}
#'   \item{\code{A}}{numeric}
#'   \item{\code{B}}{numeric}
#'   \item{\code{C}}{numeric}
#'   \item{\code{D}}{numeric}
#'   \item{\code{E}}{numeric}
#'   \item{\code{F}}{numeric}
#'   \item{\code{G}}{numeric}
#'   \item{\code{H}}{numeric}
#'   \item{\code{I}}{numeric}
#'   \item{\code{J}}{numeric}
#'   }
#'   #' @references{https://sjtrem.biomedcentral.com/articles/10.1186/s13049-017-0458-x?report=reader}
#' @source \url{doi:10.5061/dryad.m2bq5}
#'
"golub.small"
