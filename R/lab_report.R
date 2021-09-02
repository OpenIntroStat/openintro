#' lab_report
#'
#' Acts as a simplified template to common parameters passed to
#' rmarkdown::html_document().
#'
#' @param highlight Syntax highlighting style. Supported styles include
#'  "default", "tango", "pygments", "kate", "monochrome", "espresso", "zenburn",
#'  "haddock", and "textmate". Pass `NULL` to prevent syntax highlighting.
#' @param theme Visual theme ("default", "cerulean", "journal", "flatly",
#'  "readable", "spacelab", "united", "cosmo", "lumen", "paper", "sandstone",
#'  "simplex", or "yeti"). Pass `NULL` for no theme (in this case you can
#'  use the `css` parameter to add your own styles).
#' @param toc `TRUE` to include a table of contents in the output
#' @param toc_float `TRUE` to float the table of contents to the left of the
#'  main document content. Rather than `TRUE` you may also pass a list of
#'  options that control the behavior of the floating table of contents. See the
#'  *Floating Table of Contents* section below for details.
#' @param code_download Embed the Rmd source code within the document and provide
#'  a link that can be used by readers to download the code.
#' @param code_folding Enable document readers to toggle the display of R code
#'  chunks. Specify `"none"` to display all code chunks (assuming
#'  they were knit with `echo = TRUE`). Specify `"hide"` to hide all R
#'  code chunks by default (users can show hidden code chunks either
#'  individually or document-wide). Specify `"show"` to show all R code
#'  chunks by default.
#'
#' @export

lab_report <- function(highlight = "pygments", theme = "spacelab",
                       toc = TRUE, toc_float = TRUE,
                       code_download = TRUE, code_folding = "show") {
  rmarkdown::html_document(
    highlight = highlight,
    theme = theme,
    toc = toc,
    toc_float = toc_float,
    code_download = code_download,
    code_folding = code_folding
  )
}
