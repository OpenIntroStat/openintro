CCP <-
function (xlim=c(-4,4), ylim=c(-4,4), mar=rep(0,4), length=0.1, tcl=0.007, xylab=FALSE, ticks=1, ticklabs=1, xpos=1, ypos=2, cex.coord=1, cex.xylab=1.5, add=FALSE) {
  
  #___ Blank Canvas ___#
  xlim <- xlim + c(-1, 1)
  ylim <- ylim + c(-1, 1)
  if (!add) {
    par(mar=mar)
    plot(0, type="n", axes=FALSE, xlab="", ylab="",
         xlim=xlim, ylim=ylim)
  }
  
  #___ Axes ___#
  arrows(xlim[1], 0, xlim[2], 0, length=length)
  arrows(0, ylim[1], 0, ylim[2], length=length)
  
  #___ Tick Marks + Labels ___#
  if (length(ticks) < 2) {
    ticks <- rep(ticks, 2)
  }
  if (length(ticklabs) < 2) {
    ticklabs <- rep(ticklabs, 2)
  }
  xR    <- diff(xlim)
  yR    <- diff(ylim)
  xlim  <- xlim - c(-1, 1)
  ylim  <- ylim - c(-1, 1)
  if (ticks[1] > 0) {
    these <- seq(round(xlim[1]), round(xlim[2]), ticks[1])
    these <- these[these != 0]
    segments(these, -yR*tcl, these, yR*tcl)
    if (ticklabs[1] > 0) {
      these <- seq(round(xlim[1]), round(xlim[2]), ticklabs[1])
      these <- these[these != 0]
      text(these, rep(0, length(these)), these,
           pos=xpos, cex=cex.coord)
    }
  }
  if (ticks[2] > 0) {
    these <- seq(round(ylim[1]), round(ylim[2]), ticks[2])
    these <- these[these != 0]
    segments(-xR*tcl, these, xR*tcl, these)
    if (ticklabs[2] > 0) {
      these <- seq(round(ylim[1]), round(ylim[2]), ticklabs[2])
      these <- these[these != 0]
      text(rep(0, length(these)), these, these,
           pos=ypos, cex=cex.coord)
    }
  }

  #___ x-y Labels ___#
  if (xylab[1]) {
    text(xlim[2]+1, 0, "x", pos=xpos, cex=cex.xylab)
    text(0, ylim[2]+1, "y", pos=ypos, cex=cex.xylab)
  }
}
