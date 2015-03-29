`print.stockReturns` <-
function(x, ...){
  totalReturn <- apply(1 + x$R, 2, prod)
  aveReturn   <- totalReturn^(1/nrow(x$R)) - 1
  cat("Time Scale:", x$period, "\n\nAverage Return\n")
  print(aveReturn)
}
