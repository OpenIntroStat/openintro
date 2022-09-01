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
#' @param out_type Format for the type of output as a CSV (\code{"csv"}),
#'   tab-delimited text file (\code{"tab"}), or the R code to generate
#'   the object (\code{"R"}).
#' @export
#' @examples
#' \dontrun{
#' write_pkg_data("openintro")
#' list.files("data-csv")
#' }
write_pkg_data <- function(pkg, dir = paste0("data-", out_type), overwrite = FALSE, out_type = c("csv", "tab", "R")) {
  out_type <- match.arg(out_type)
  stopifnot(pkg %in% dimnames(utils::installed.packages())[[1]])
  stopifnot(dir != "")
  data_sets <- utils::data(package = pkg)$results[, 3]
  if ("tmp_data" %in% data_sets) {
    warning("Data set `tmp_data` was omitted.")
    data_sets <- data_sets[data_sets != "tmp_data"]
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
  txtpb_max <- ifelse(length(data_sets) > 1, length(data_sets), 2)
  pb <- utils::txtProgressBar(1, txtpb_max, style = 3)
  for (i in seq_along(data_sets)) {
    eval(parse(text = paste0("tmp_data <- ", pkg, "::", data_sets[i])))
    if (is.matrix(tmp_data)) {
      tmp_data <- as.data.frame(tmp_data)
    }
    if (is.data.frame(tmp_data)) {
      file_name <- switch(out_type,
        csv = paste0(data_sets[i], ".csv"),
        tab = paste0(data_sets[i], ".txt"),
        R = paste0(data_sets[i], ".R")
      )
      if (file_name %in% list.files(dir) && !overwrite) {
        overwrite_skip <- overwrite_skip + 1
        overwrite_skip_list <- append(overwrite_skip_list, data_sets[i])
      } else {
        destination <- paste0(dir, file_name)
        # Future implementations for other data formats may use:
        # - readr::write_delim()
        # - writexl::write_xlsx()
        if (out_type == "R") {
        	  eval(parse(text = paste0(data_sets[i], " <- tmp_data")))
        	  dump(list = data_sets[i], file = destination)
        	} else {
          switch(out_type,
            csv = readr::write_csv(x = tmp_data, file = destination),
            tab = readr::write_delim(x = tmp_data, file = destination, delim = "\t")
          )
        }
        written <- written + 1
      }
    } else {
      skipped <- skipped + 1
      skipped_list <- append(skipped_list, data_sets[i])
    }
    utils::setTxtProgressBar(pb, i)
  }
  overwrite_skip_listed <- paste0(
    "  - ", overwrite_skip_list,
    collapse = "\n"
  )
  overwrite_skip_listed <-
    ifelse(
      overwrite_skip_listed == "  - ",
      "",
      paste0(overwrite_skip_listed, "\n")
    )
  skipped_listed <- paste0("  - ", skipped_list, collapse = "\n")
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
