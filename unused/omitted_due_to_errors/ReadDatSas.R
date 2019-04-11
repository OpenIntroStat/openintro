
ReadDatSas <- function(dat, ...) {

  d <- read.csv(dat)
  sas <- paste0(substr(dat, 1, nchar(dat) - 3), "sas")
  key <- readLines(sas)

  # Find Input
  input <- grep("^input$", key, perl = TRUE) + 1
  sc <- grep(";", key, fixed = TRUE)
  end.input <- sc[input < sc][1] - 1
  field.names <- gsub(" ", "", key[input:end.input])
  stopifnot(all(names(d) == field.names))

  label.field.names <- paste("label", field.names, "= ")
  field.details <- rep(NA, length(field.names))
  for (i in 1:length(key)) {
    test <- strsplit(key[i], "\"")[[1]]
    if (test[1] %in% label.field.names) {
      field.details[test[1] == label.field.names] <- test[2]
    }
  }
  field.details <- gsub("`", "'", field.details)

  fields <- ""
  for (i in seq_along(field.names)) {
    field.name <- field.names[i]
    field.detail <- field.details[i]
    fields <- paste0(fields, "    \\item{\\code{", field.name, "}}{", field.detail, "}\n")
  }

  find.key <- rep(FALSE, length(field.names))
  for (f in field.names) {
    found <- grep(paste("^value", f), key)[1]
    if (!is.na(found)) {
      found.end <- sc[found + 1 < sc][1] - 1
      maps <- key[(found + 1):found.end] %>%
          strsplit(" = \"") %>%
          lapply(function(x) {
            x[2] <- strsplit(x[2], "\"")[[1]][1]
            return(x)
          }) %>%
          do.call("rbind.data.frame", .)
      names(maps) <- c("key", "value")
      d[[f]] <- as.character(maps$value[match(d[[f]], maps$key)])
    }
  }

  message("1) Save the $data object to the desired object name.")
  message("2) Use save(<obj.name>, file = \"<obj.name>.rda\") to save the object.")
  message("3) Create a help file with prompt(<obj.name>) and use cat() on $fields for field descriptions.")
  return(list(data = d, fields = fields))
}

