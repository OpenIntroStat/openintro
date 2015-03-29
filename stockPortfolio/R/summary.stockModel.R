`summary.stockModel` <-
function(object, ...){
	cat('Model:',object$model,'\n')
	cat(object$n, 'observations, each one', object$period,'apart\n')
	cat('Dates:', object$start, 'to', object$end, '\n')
	cat('Short selling is ')
	cat(ifelse(object$shorts,'','not '))
	cat('permitted\n')
}

