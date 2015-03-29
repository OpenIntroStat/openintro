`print.stockModel` <-
function(x, ...){
	cat('Model:',x$model,'\n')
	cat(x$n, 'observations, each one', x$period,'apart\n')
	cat('Dates:', x$start, 'to', x$end, '\n')
	cat('Short selling is ')
	cat(ifelse(x$shorts,'','not '))
	cat('permitted\n\n')
	theNames <- names(x$R)
	if(x$model == 'MGM'){
		temp <- factor(x$industry)
		match(temp, levels(temp))
		hold <- rbind(x$R, x$sigma, temp)
		hold <- as.data.frame(hold)
		rownames(hold) <- c('Return', 'Risk', 'Industry')
	} else {
		hold <- rbind(x$R, x$sigma)
		hold <- as.data.frame(hold)
		rownames(hold) <- c('Return', 'Risk')
	}
	colnames(hold) <- theNames
	temp <- format(hold, digits=2, scientific=FALSE)
	print(temp)
}

