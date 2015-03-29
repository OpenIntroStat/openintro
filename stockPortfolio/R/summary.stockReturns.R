`summary.stockReturns` <-
function(object, ...){
	d <- dim(object$R)
	cat(d[2],'stocks, observed once per', object$period,'')
	cat('between', object$start,'and',object$end,'\n\n')
	temp <- data.frame(matrix(apply(object$R, 2, mean),nrow=1))
	colnames(temp) <- object$ticker
	rownames(temp) <- 'Mean Return'
	temp <- format(temp, digits=2)
	print(temp)
}

