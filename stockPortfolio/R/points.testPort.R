`points.testPort` <-
function(x, ...){
	if(is.null(x$returns)[1]){
		stop('Cannot plot this model since no returns data provided.\n')
	}
	hold <- dim(x$returns)[1]
	values <- apply(1+x$returns[hold:1,], 2, cumprod)
	theReturns <- c(1, as.numeric(values %*% x$X))
	Index <- 0:(length(theReturns)-1)
	points(Index, theReturns, ...)
}

