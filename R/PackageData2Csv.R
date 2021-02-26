#' Create a CSV variant of .rda files
#'
#' The function should be run with a path to a package directory.
#' It will then look through the `data` directory of the package,
#' and for all data sets that are data frames, create CSV variants
#' in a `data-csv` directory.
#'
#' @param pkg The R package where we'd like to generate CSVs of any
#'   data frames.
#' @param dir A character string representing the path to the folder.
#'   where the CSV files should be written. If no such directory
#'   exists, one will be created (recursively).
#' @param overwrite Boolean to indicate if to overwrite any existing
#'   files that have conflicting names in the directory specified.
#' @export
#' @examples
#'
#' \dontrun{
#'   PackageData2Csv("openintro")
#'   list.files("data-csv")
#' }
PackageData2Csv <- function(pkg, dir = "data-csv", overwrite = FALSE) {
  stopifnot(pkg %in% dimnames(utils::installed.packages())[[1]])
  stopifnot(dir != "")
  data_sets <- utils::data(package = "openintro")$results[, 3]
  if ("zzq" %in% data_sets) {
    warning("Data set `zzq` was omitted.")
    data_sets <- data_sets[data_sets != "zzq"]
  }
  # If the directory path ends in a /, remove it.
  dir <- gsub("/$", "", dir, perl = TRUE)
  # Now ensure that / is at the end of the directory path.
  dir <- ifelse(dir == "", "./", paste0(dir, "/"))
  # If the directory doesn't already exist, create it.
  if (!dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
  }
  written <- 0
  skipped <- 0
  skipped_list <- c()
  overwrite_skip <- 0
  overwrite_skip_list <- c()
  pb <- utils::txtProgressBar(1, length(data_sets), style = 3)
  for (i in seq_along(data_sets)) {
    eval(parse(text = paste0("zzq <- ", pkg, "::", data_sets[i])))
    if (is.matrix(zzq)) {
      zzq <- as.data.frame(zzq)
    }
    if (is.data.frame(zzq)) {
      file_name <- paste0(data_sets[i], ".csv")
      if (file_name %in% list.files(dir) && !overwrite) {
        # warning(
        #   "`",
        #   data_sets[i],
        #   ".csv` already exists and was not overwritten"
        # )
        overwrite_skip <- overwrite_skip + 1
        overwrite_skip_list <- append(overwrite_skip_list, data_sets[i])
      } else {
      	destination <- paste0(dir, file_name)
        readr::write_csv(x = zzq, path = destination)
        written <- written + 1
      }
    } else {
      skipped <- skipped + 1
      skipped_list <- append(skipped_list, data_sets[i])
    }
    utils::setTxtProgressBar(pb, i)
  }
  overwrite_skip_listed <-  paste0(
    "  - ", overwrite_skip_list, collapse = "\n"
  )
  overwrite_skip_listed <-
    ifelse(
      overwrite_skip_listed == "  - ",
      "",
      paste0(overwrite_skip_listed, "\n")
    )
  skipped_listed <-  paste0("  - ", skipped_list, collapse = "\n")
  skipped_listed <-
    ifelse(skipped_listed == "  - ", "", skipped_listed)
  message(
    "\n\n- ", written, " data sets were written.\n",
    "- ", overwrite_skip, " data sets were skipped, because they already ",
      "existed.\n", overwrite_skip_listed,
    "- ", skipped, " data sets were not matrices or data frames and so ",
      "could not be written.\n", skipped_listed
  )
}
