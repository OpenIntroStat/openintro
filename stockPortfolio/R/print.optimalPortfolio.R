`print.optimalPortfolio` <-
function(x, ...){
	cat('Model: ')
	if(x$model$model == 'none'){
		cat('no model specified.\n')
	} else if(x$model$model == 'SIM'){
		cat('single index model\n')
	} else if(x$model$model == 'MGM'){
		cat('multigroup model\n')
	} else if(x$model$model == 'MIM'){
		cat('multi-index model\n')
	} else if(x$model$model == 'CCM'){
		cat('constant correlation model\n')
	}
	cat('Expected return:', x$R, '\n')
	cat('Risk estimate:  ', x$risk, '\n\n')
	cat('Portfolio allocation:\n')
	print(x$X)
}

