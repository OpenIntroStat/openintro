CT2DF <-
function (x,
          rn = row.names(x),
          cn = colnames(x),
          dfn = c("row.var", "col.var")) {
  rs <- rowSums(x)
  cs <- colSums(x)
  v1 <- rep(rn, rs)
  v2 <- c()
  for (i in 1:nrow(x)) {
    v2 <- append(v2, rep(cn, x[i, ]))
  }
  d <- data.frame(as.character(v1), as.character(v2))
  colnames(d) <- dfn
  return(d)
}
