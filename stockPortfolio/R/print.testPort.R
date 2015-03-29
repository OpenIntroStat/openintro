`print.testPort` <-
function(x, ...){
	hold <- rbind(x$X, 100*(x$sumRet-1))
	hold <- as.data.frame(hold)
	rownames(hold) <- c('Opt. Portfolio', 'Stock change (%)')
	colnames(hold) <- names(x$sumRet)
	temp <- format(hold, digits=2, scientific=FALSE)
	cat('Change in portfolio value: ', round(100*(x$change-1),1), '%\n\n', sep='')
	print(temp)
}

