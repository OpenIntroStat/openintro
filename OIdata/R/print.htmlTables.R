print.htmlTables <-
function(x, d=c(4,2), n=17, ...){
  N <- length(x)
  if(is.null(names(x))){
    names(x) <- paste("V", 1:length(x), sep="")
  }
  for(i in 1:N){
    cat(sprintf("[[%s]]", i), "________ ")
    t1 <- paste(nrow(x[[i]]), "by", ncol(x[[i]]))
    t2 <- paste(rep("_", n-nchar(t1)), collapse="")
    cat(t1, t2, "\n")
    
    #___ Print 2x2 Table Details ___#
    t1 <- min(d[1], nrow(x[[i]]))
    t2 <- min(d[2], ncol(x[[i]]))
    X  <- x[[i]][1:t1, 1:t2]
    L  <- ifelse(nchar(X) > n, n-5, n)
    X  <- substr(X, 1, L)
    X  <- paste('"', X, ifelse(L == n-5, '..."', '"'), sep="")
    X  <- matrix(format(X), t1, t2)
    for(ii in 1:t1){
      temp <- ifelse(t2 > 1, paste("1:", d[2], sep=""), "1")
      cat(sprintf("  [%s,%s] ", ii, temp))
      for(jj in 1:t2){
        cat(sprintf('%s', X[ii,jj]))
        cat("  ")
      }
      if(ncol(x[[i]]) > d[2]){
        cat("...")
      }
      cat("\n")
    }
    if(nrow(x[[i]]) > d[1]){
      cat("   ...\n")
    }
    cat("\n")
  }
  cat("Ellipsis (...) generally denote a longer string")
  cat("\nor additional rows or columns\n")
}
