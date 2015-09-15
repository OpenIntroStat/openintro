scrapeTable <-
function(Table){
  if(regexpr("</table[^>]*>", Table) == -1){
    return(NULL)
  }
  Table <- strsplit(Table, "</table[^>]*>")[[1]][1]
  Rows  <- strsplit(Table, "</tr[^>]*>")[[1]]
  Rows  <- strsplit(Rows, "<tr[^>]*>")
  if(!is.list(Rows)){
    Rows <- strsplit(Rows, "ZZQio9SO920slL")
  }
  temp <- unlist(strsplit(Rows[[length(Rows)]], "")) == " "
  if(length(temp) > 0 && all(temp)){
    Rows <- Rows[1:(length(Rows)-1)]
  }
  Rows  <- lapply(Rows, tail, n=1)
  for(j in 1:length(Rows)){
    Rows[[j]] <- rowScrape(Rows[[j]])
  }
  nr    <- unlist(lapply(Rows, length))
  maxnr <- max(nr)
  these <- which(nr == maxnr)
  Rows  <- unlist(Rows[these])
  Rows  <- matrix(Rows, length(these), byrow=TRUE)
  return(Rows)
}
