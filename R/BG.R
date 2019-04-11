BG <- function(col = openintro::COL[5, 9]) {
  rect(
      graphics::par("usr")[1],
      graphics::par("usr")[3],
      graphics::par("usr")[2],
      graphics::par("usr")[4],
      col = col)
}
