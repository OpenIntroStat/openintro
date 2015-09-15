rowScrape <-
function(Row){
  Cells      <- strsplit(Row, "</t[dh][^>]*>")[[1]]
  if(all(strsplit(tail(Cells, 1), "")[[1]] == " ")){
    Cells <- head(Cells, -1)
  }
  Insides    <- strsplit(Cells, "<t[dh]")
  Insides    <- sapply(Insides, "[", 2)
  SplitCells <- strsplit(Insides, ">")
  Attributes <- sapply(SplitCells, "[", 1)
  Repeat <- c()
  for(i in 1:length(Attributes)){
    Colspan  <- strsplit(Attributes[i], " colspan[ ]*=")[[1]]
    if(length(Colspan) > 1){
      Colspan <- Colspan[2]
      Lead    <- substr(Colspan, 1, 1)
      if(Lead %in% c('"', "'")){
        Repeat[i] <- strsplit(Colspan, Lead)[[1]][2]
      } else {
        Repeat[i] <- strsplit(Colspan, " ")[[1]][1]
      }
      
    } else {
      Repeat[i] <- "1"
    }
  }
  Repeat <- as.numeric(Repeat)
  
  Cells <- strsplit(Row, "</t[dh][^>]*>")[[1]]
  if(all(strsplit(tail(Cells, 1), "")[[1]] == " ")){
    Cells <- head(Cells, -1)
  }
  Cells <- strsplit(Cells, "<t[dh][^>]*>")
  Cells <- sapply(Cells, "[", 2)
  Cells <- unlist(lapply(Cells, stripTags))
  Cells <- rep(Cells, Repeat)
  return(Cells)
}
