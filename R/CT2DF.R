#' Contingency Table to Data Frame
#'
#' Take a 2D contingency table and create a data frame representing the
#' individual cases.
#'
#'
#' @param x Contingency table as a matrix.
#' @param rn Character vector of the row names.
#' @param cn Character vector of the column names.
#' @param dfn Character vector with 2 values for the variable representing the
#' rows and columns.
#' @return A data frame with two columns.
#' @author David Diez
#' @seealso \code{\link{MosaicPlot}}
#' @export
#' @examples
#'
#' a <- matrix(
#'   c(459, 727, 854, 385, 99, 4198, 6245, 4821, 1634, 578),
#'   2,
#'   byrow = TRUE
#' )
#' b <-
#'   CT2DF(
#'     a,
#'     c("No", "Yes"),
#'     c("Excellent", "Very good", "Good", "Fair", "Poor"),
#'     c("coverage", "health_status")
#'   )
#' table(b)
CT2DF <-
  function(x,
           rn = row.names(x),
           cn = colnames(x),
           dfn = c("row.var", "col.var")) {
    rs <- rowSums(x)
    cs <- colSums(x)
    v1 <- rep(rn, rs)
    v2 <- c()
    for (i in 1:nrow(x)) {
      v2 <- append(v2, rep(cn, x[i, ]))
    }
    d <- data.frame(as.character(v1), as.character(v2))
    colnames(d) <- dfn
    return(d)
  }
