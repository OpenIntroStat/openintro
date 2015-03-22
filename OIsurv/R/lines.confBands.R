lines.confBands <- function(x, type='s', ...){
	lines(x$time, x$lower, type=type, ...)
	lines(x$time, x$upper, type=type, ...)
}