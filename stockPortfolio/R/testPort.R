`testPort` <-
function(theData, model=NULL, X=NULL, newestFirst=TRUE, isReturns=NULL){
	returns <- NULL
	if(class(model) == 'optimalPortfolio'){
		X <- model$X
		model <- NULL
	}
	if(class(theData) == 'stockReturns'){
		returns <- theData$R
		theData <- apply(1+theData$R, 2, prod)
	} else if(is.matrix(theData) | is.data.frame(theData)){
		if(any(theData < 0) | ifelse(is.null(isReturns), FALSE, isReturns)){
			returns <- as.matrix(theData)
			theData <- apply(1+theData, 2, prod)
		} else {
			tLast   <- theData[-dim(theData)[1], ]
			tFirst  <- theData[-1, ]
			returns <- as.matrix((tLast - tFirst) / tFirst)
			theData <- apply(1+returns, 2, prod)
		}
	} else if(!is.vector(theData)){
		stop('theData is not recognized.\n')
	}
	if(!newestFirst & !is.null(returns)){
		returns <- returns[dim(returns)[1]:1, ]
	}
	if(is.null(names(theData))[1]){
		# assume columns in order of ticker
		if(is.null(model)){
			dataNames <- names(X)
		} else {
			dataNames <- model$ticker
		}
	} else {
		dataNames <- names(theData)
	}
	if(is.null(X)[1]){
		op <- optimalPort(model)
		X <- op$X
	} else {
		if(is.null(names(X))[1]){
			names(X) <- dataNames
		}
		if(all(c(1,0) == zapsmall(c(sum(X),0)))){
			warning("Allocation X was standardized")
		}
	}
	theOrder <- match(names(X), dataNames)
	tD <- theData[theOrder]
	if(!is.null(returns)[1]){
		returns <- returns[, theOrder]
	}
	change   <- sum(X * tD)
	toReturn <- list(X=X, sumRet=tD, change=change, returns=returns)
	class(toReturn) <- "testPort"
	return(toReturn)
}

