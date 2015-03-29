`print.portReturn` <-
function(x, ...){
	cat('Expected Return:', x$R, '\n')
	cat('Risk estimate:  ', sqrt(x$VAR), '\n\n')
	cat('Stock distribution, by proportion of portfolio:\n')
	temp <- matrix(x$X, nrow=1)
	colnames(temp) <- x$ticker
	temp <- format(data.frame(temp), digits=3)
	rownames(temp) <- ''
	print(temp)
}

