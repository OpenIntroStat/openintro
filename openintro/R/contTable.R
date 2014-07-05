contTable <- function(x, prop=c("none", "row", "col"), show=FALSE, digits=3){
  if(tolower(substr(prop[1], 1, 1)) == "r"){
    prop <- "r"
  } else if(tolower(substr(prop[1], 1, 1)) == "c"){
    prop <- "c"
  } else {
    prop <- "n"
  }
  show <- ifelse(!show[1], FALSE, TRUE)
  if(is.data.frame(x)){
    caption <- paste(colnames(x), collapse="-and-")
    x       <- table(x)
  } else {
    caption <- ""
  }
  x <- as.matrix(x)
  x <- cbind(x, rowSums(x))
  x <- rbind(x, colSums(x))
  if(prop == "n"){
    x <- format(x)
  }
  cat("\\begin{table}\n\\begin{center}\n\\begin{tabular}")
  cat("{l", rep("r", ncol(x)), "}\n", sep="")
  
  cat("\\hline\n")
  cat(paste(" &", colnames(x)), "Total \\\\\n", sep="")
  cat("\\hline\n")
  
  for(i in 1:nrow(x)){
    if(i == nrow(x)){
      cat("Total")
    } else if(!is.null(row.names(x)[1])){
      cat(row.names(x)[i])
    }
    cat(" & ")
    for(j in 1:ncol(x)){
      if(prop == "c"){
        if(show){
          cat("$",x[i,j], "/", x[nrow(x),j], " = ")
        }
        temp <- round(x[i,j] / x[nrow(x),j], digits)
        if(show){
          cat(format(temp, nsmall=digits), "$")
        } else {
          cat(format(temp, nsmall=digits))
        }
      } else if(prop == "r"){
        if(show){
          cat("$",x[i,j], "/", x[i,ncol(x)], " = ")
        }
        temp <- round(x[i,j] / x[i,ncol(x)], digits)
        if(show){
          cat(format(temp, nsmall=digits), "$")
        } else {
          cat(format(temp, nsmall=digits))
        }
      } else {
        cat(x[i,j])
      }
      if(j < ncol(x)){
        cat(" & ")
      }
    }
    cat(" \\\\\n")
    if(i==nrow(x)-1){
      cat("\\hline\n")
    }
  }
  cat("\\hline\n\\end{tabular}\n\\end{center}\n")
  cat("\\caption{Contingency table for ", caption, "}\n", sep="")
  cat("\\label{", caption, "}\n", sep="")
  cat("\\end{table}\n")
}