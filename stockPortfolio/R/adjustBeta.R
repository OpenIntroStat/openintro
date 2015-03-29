`adjustBeta` <-
function(model, model2=NULL, method=c('Blume', 'Vasicek')){
	if(method[1] %in% c('B', 'b', 'Blume', 'blume', '1')){
		if(is.null(model2)){
			stop('The model for the second period must be provided.')
		} else if(any(c(model$model, model2$model) != 'SIM')){
			stop('The models must be from the single index model.')
		}
		if(model2$betaAdj){
			stop('This model has already been adjusted.')
		}
		x  <- model$beta
		y  <- model2$beta
		g  <- lm(y ~ x)
		df <- data.frame(x = model2$beta)
		newBeta  <- predict(g, df)
		newModel <- model2
	} else {
		if(model$betaAdj){
			stop('This model has already been adjusted.')
		}
		beta    <- model$beta
		mBeta   <- mean(beta)
		vBetas  <- var(beta)
		newBeta <- rep(NA, length(beta))
		p <- (model$vBeta) / (vBetas + model$vBeta)
		newBeta  <- p*mBeta + (1-p)*beta
		newModel <- model
	}
	R    <- newModel$alpha + newModel$beta*newModel$RM
	COV  <- matrix(newModel$VM, length(R), length(R))
	COV  <- t(COV * newBeta) * newBeta
	diag(COV)    <- diag(COV) + newModel$MSE
	newModel$R   <- R
	newModel$COV <- COV
	newModel$sigma   <- sqrt(diag(COV))
	newModel$beta    <- newBeta
	newModel$vBeta   <- newModel$vBeta*NA
	newModel$betaAdj <- TRUE
	return(newModel)
}

