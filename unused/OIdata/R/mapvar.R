mapvar <- function(val, abbr, col=1:3, Legend=""){
  Val  <- range(val, na.rm=TRUE)
  Val  <- seq(Val[1], Val[2], length.out=100)
  Val. <- (Val-min(Val, na.rm=TRUE)) /
             diff(range(Val, na.rm=TRUE))
  val  <- (val-min(val, na.rm=TRUE)) /
             diff(range(val, na.rm=TRUE))
  data(state.fips)
  keep <- match(state.fips$abb, abbr)
  val  <- val[keep]
  col  <- col/max(col)
  col. <- rep("#888888", length(val))
  val. <- val[!is.na(val)]
  col.[!is.na(val)] <- rgb(val.*col[1],
                           val.*col[2],
                           val.*col[3])
  map("state", col=col., fill=TRUE)
  COL  <- rgb(Val.*col[1], Val.*col[2], Val.*col[3])
  for(i in 1:length(Val)){
    rect(-123+2*i/10, 25, -123.2+2*i/10, 26.5,
         col=COL[i], border="#88888800")
  }
  text(-122.5, 26.5, Val[1], pos=3)
  text(-113, 27.5, Legend, pos=3)
  text(-103.5, 26.5, Val[100], pos=3)
  invisible(data.frame(state.fips, val))
}
