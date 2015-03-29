`summary.optimalPortfolio` <-
function(object, ...){
	cat('Model: ')
	if(object$model$model == 'none'){
		cat('no model specified.\n')
	} else if(object$model$model == 'SIM'){
		cat('single index model\n')
	} else if(object$model$model == 'MGM'){
		cat('multigroup model\n')
	} else if(object$model$model == 'MIM'){
		cat('multi-index model\n')
	} else if(object$model$model == 'CCM'){
		cat('constant correlation model\n')
	}
	cat('Expected return:', object$R, '\n')
	cat('Risk estimate:  ', object$risk, '\n')
}

