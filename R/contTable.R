#' Generate Contingency Tables for LaTeX
#'
#' Input a data frame or a table, and the LaTeX output will be returned.
#' Options exist for row and column proportions as well as for showing work.
#'
#' The \code{contTable} function makes substantial use of the
#' \code{\link[base]{cat}} function.
#'
#' @param x A data frame (with two columns) or a table.
#' @param prop Indicate whether row (\code{"r"}, \code{"R"}, \code{"row"}) or
#' column (\code{"c"}, \code{"C"}, \code{"col"}) proportions should be used.
#' The default is to simply print the contingency table.
#' @param show If row or column proportions are specified, indicate whether
#' work should be shown.
#' @param digits The number of digits after the decimal that should be shown
#' for row or column proportions.
#' @param caption A string that contains the table caption. The default value is
#' \code{NULL}. If \code{x} is a data frame and \code{caption=NULL}, then
#' \code{contTable} creates a sensible caption from the data frame's column
#' names. If \code{x} is a table and \code{caption=NULL}, then the caption is an
#' empty string.
#' @param label The latex table label. The default value is \code{NULL}. If
#' \code{x} is a data frame and \code{label=NULL}, then \code{contTable} creates
#' a sensible label from the data frame's column names. If \code{x} is a table
#' and \code{label=NULL}, then the label is an empty string.
#' @author David Diez
#' @seealso \code{\link{email}}, \code{\link{cars93}}, \code{\link{possum}},
#' \code{\link{mariokart}}
#' @keywords table LaTeX
#' @export
#' @examples
#'
#' data(email)
#' table(email[, c("spam", "sent_email")])
#' contTable(email[, c("spam", "sent_email")])
contTable <- function(x, prop = c("none", "row", "col"), show = FALSE, digits = 3, caption = NULL, label = NULL) {
  if (tolower(substr(prop[1], 1, 1)) == "r") {
    prop <- "r"
  } else if (tolower(substr(prop[1], 1, 1)) == "c") {
    prop <- "c"
  } else {
    prop <- "n"
  }
  show <- ifelse(!show[1], FALSE, TRUE)
  custom_caption <- !is.null(caption)
  custom_label <- !is.null(label)
  if (is.data.frame(x) & !custom_caption) {
    caption <- paste(colnames(x), collapse = " and ")
    caption <- gsub("\\_", "\\\\_", caption)
  }
  if (!is.data.frame(x) & !custom_caption) {
    caption <- ""
  }
  if (is.data.frame(x)) x <- table(x)
  if (!custom_label) label <- caption
  x <- as.matrix(x)
  x <- cbind(x, rowSums(x))
  x <- rbind(x, colSums(x))
  if (prop == "n") {
    x <- format(x)
  }
  cat("\\begin{table}\n\\begin{center}\n\\begin{tabular}")
  cat("{l", rep("r", ncol(x)), "}\n", sep = "")

  cat("\\hline\n")
  cat(paste(" &", colnames(x)), "Total \\\\\n", sep = "")
  cat("\\hline\n")

  for (i in 1:nrow(x)) {
    if (i == nrow(x)) {
      cat("Total")
    } else if (!is.null(row.names(x)[1])) {
      cat(row.names(x)[i])
    }
    cat(" & ")
    for (j in 1:ncol(x)) {
      if (prop == "c") {
        if (show) {
          cat("$", x[i, j], "/", x[nrow(x), j], " = ")
        }
        temp <- round(x[i, j] / x[nrow(x), j], digits)
        if (show) {
          cat(format(temp, nsmall = digits), "$")
        } else {
          cat(format(temp, nsmall = digits))
        }
      } else if (prop == "r") {
        if (show) {
          cat("$", x[i, j], "/", x[i, ncol(x)], " = ")
        }
        temp <- round(x[i, j] / x[i, ncol(x)], digits)
        if (show) {
          cat(format(temp, nsmall = digits), "$")
        } else {
          cat(format(temp, nsmall = digits))
        }
      } else {
        cat(x[i, j])
      }
      if (j < ncol(x)) {
        cat(" & ")
      }
    }
    cat(" \\\\\n")
    if (i == nrow(x) - 1) {
      cat("\\hline\n")
    }
  }
  cat("\\hline\n\\end{tabular}\n\\end{center}\n")
  if (custom_caption) {
    cat("\\caption{", caption, "}\n", sep = "")
  } else {
    cat("\\caption{Contingency table for ", caption, "}\n", sep = "")
  }
  cat("\\label{", gsub(" ", "-", gsub("[^A-Za-z0-9 -]", "", label)), "}\n", sep = "")
  cat("\\end{table}\n")
}
