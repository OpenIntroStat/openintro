`portReturn` <-
function(model, X){
	if(is.null(names(model$R)) | is.null(names(X)) | length(model$R) == 1){
		R <- sum(model$R * X)
		V <- as.numeric(t(X) %*% model$COV %*% X)
	} else {
		these <- match(names(X), names(model$R))
		R <- sum(model$R[these] * X)
		V <- as.numeric(t(X) %*% model$COV[these, these] %*% X)
	}
	portSum <- list(R=R, VAR=V, X=X, ticker=model$ticker, model=model)
	class(portSum) <- 'portReturn'
	return(portSum)
}

