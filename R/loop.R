# txtProgressBar() and setTxtProgressBar() are better



#' Output a message while inside a loop
#'
#' NOTE: \code{utils::txtProgressBar()} and \code{utils::setTxtProgressBar()} are better.
#' Output a message while inside a for loop to update the user on progress. This
#' function is useful in tracking progress when the number of iterations is large
#' or the procedures in each iteration take a long time.
#'
#'
#' @param i The index value used in the loop.
#' @param n The last entry in the loop.
#' @param every The number of loops between messages.
#' @param extra Additional information to print.
#' @author David Diez
#' @seealso \code{\link{myPDF}}
#' @keywords for loop looping index message
#' @export
#' @examples
#'
#' for (i in 1:160) {
#'   loop(i, 160, 20, paste("iter", i))
#' }
loop <- function(i, n = NULL, every = 1, extra = NULL) {
  if (i %% every == 0) {
    if (is.null(n)[1]) {
      cat("Iter", i, "\t")
    } else {
      cat(i, "of", n, "\t")
    }
    if (!is.null(extra)) {
      cat(extra)
    }
    cat("\n")
  }
}
