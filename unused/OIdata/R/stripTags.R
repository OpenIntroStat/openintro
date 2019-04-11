stripTags <-
function(Cell){
  Cell <- strsplit(Cell, "</*[A-Za-z][^>]*>")[[1]]
  Cell <- paste(Cell, collapse=" ")
  Cell <- gsub("&nbsp;", " ", Cell)
  Cell <- gsub(" +", " ", Cell)
  Cell <- gsub("^ ", "", Cell)
  Cell <- gsub(" $", "", Cell)
  return(Cell)
}
