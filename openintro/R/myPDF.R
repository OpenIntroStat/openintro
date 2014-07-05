myPDF <-
function(fileName, width=5, height=3,
    mar=c(3.9, 3.9, 1, 1), mgp=c(2.8, 0.55, 0),
    las=1, tcl=-0.3, ...){
  pdf(fileName, width, height)
  par(mar=mar, mgp=mgp, las=las, tcl=tcl, ...)
}
