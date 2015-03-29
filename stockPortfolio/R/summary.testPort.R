`summary.testPort` <-
function(object, ...){
	cat('Change in portfolio value: ', round(100*(object$change-1),1), '%\n', sep='')
}

