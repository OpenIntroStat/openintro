processTable <-
function(Table, num=NULL, Names=NULL){
  if(is.null(num[1])){
    stop("'num' must be a vector of column names or numbers")
  }
  if(any(!num %in% 1:ncol(Table)) && (!num %in% colnames(Table))){
    stop("'num' must be a vector of column names or numbers")
  }
  Table <- as.data.frame(Table)
  for(i in num){
  	Table[,i] <- as.character(Table[,i])
    Negative  <- substr(Table[,i], 1, 1) == "-"
    Table[,i] <- gsub(" ", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub("%", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub(",", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub("$", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub(")", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub("[(]", "-", Table[,i])
    million   <- grep("M$", Table[,i])
    Table[,i] <- gsub("M", "", Table[,i], fixed=TRUE)
    billion   <- grep("B$", Table[,i])
    Table[,i] <- gsub("B", "", Table[,i], fixed=TRUE)
    Table[,i] <- gsub("[^0-9.]", "", Table[,i])
    if(length(million) > 0){
      Table[million,i] <- 10^6*as.numeric(Table[million,i])
    }
    if(length(billion) > 0){
      Table[billion,i] <- 10^9*as.numeric(Table[billion,i])
    }
    Table[,i] <- as.numeric(Table[,i])*ifelse(Negative, -1, 1)
  }
  df <- Table #as.data.frame(Table)
  for(i in num){
    df[,i] <- as.numeric(as.character(df[,i]))
  }
  #if(is.null(Names[1]) && is.character(num)[1]){
    #Names <- num
  #}
  if(!is.null(Names[1])){
    names(df) <- Names
  }
  return(df)
}
