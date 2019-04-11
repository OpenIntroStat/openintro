getTables <-
function(URL){
  
  #______ Clean HTML ______#
  if(substr(URL, 1, 4) == "http"){
    html  <- getURL(URL)
  } else {
    html <- readLines(URL)
    html <- paste(html, collapse="\n")
  }
  html  <- gsub("\t", " ", html)
  html  <- gsub("\n", " ", html)
  html  <- gsub("\n", " ", html)
  html  <- gsub("&amp;", "&", html)
  html  <- gsub("<!--(.| )*?-->", "", html)
  
  #______ Grab Individual Tables ______#
  html  <- strsplit(html, "<table[^>]*>")[[1]][-1]
  N     <- length(html)
  Table <- vector("list", N)
  for(i in N:1){
    temp <- scrapeTable(html[i])
    Table[[i]] <- temp
    if((identical(Table[[i]][1,1], "NA") ||
       identical(Table[[i]][1,1], "")) &&
       all(dim(Table[[i]]) == 1)){
      Table[[i]] <- NULL
    }
  }
  
  #______ Wrap Up ______#
  class(Table) <- "htmlTables"
  return(Table)
}
