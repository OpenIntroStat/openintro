`stockModel` <-
function(stockReturns, drop=NULL, Rf=0, shortSelling=c('y','n'), model=c('none', 'SIM', 'CCM', 'MGM'), industry=NULL, index=NULL, get=c('overlapOnly', 'all'), freq=c('month', 'week', 'day'), start='1970-01-01', end=NULL, recentLast=FALSE, rawStockPrices=FALSE){
	if(!is.vector(stockReturns) & !is.factor(stockReturns) & !is.matrix(stockReturns) & !(class(stockReturns) %in% c('stockReturns', 'stockModel'))){
		stop('The "stockReturns" variable is not recognized.')
	}
	
	#===> setting up theModel list <===#
	tM <- list()
	class(tM) <- "stockModel"
	tM$model <- model[1]
	if(is.numeric(tM$model)){
		tM$model <- c('none','SIM','CCM','MGM','MIM')[tM$model]
	}
	tM$ticker  <- NA
	tM$index   <- ifelse(is.null(index), NA, index)
	tM$theIndex <- NA
	tM$industry <- NA
	if(!is.null(industry)[1]){ tM$industry <- as.character(industry) }
	tM$returns <- NA
	tM$marketReturns <- NA
	tM$n      <- NA
	tM$start  <- NA
	tM$end    <- NA
	tM$period <- NA
	tM$R      <- NA
	tM$COV    <- NA
	tM$sigma  <- NA
	temp      <- c('y','yes','Y','Yes','YES',TRUE)
	tM$shorts <- ifelse(shortSelling[1] %in% temp, TRUE, FALSE)
	tM$Rf     <- Rf
	tM$alpha  <- NA
	tM$vAlpha <- NA
	tM$beta   <- NA
	tM$vBeta  <- NA
	tM$betaAdj <- FALSE
	tM$MSE <- NA
	tM$RM  <- NA
	tM$VM  <- NA
	tM$rho    <- NA
	
	#===> error preventing <===#
	if(model[1] == 'SIM'){
		if(is.null(index)[1]){
			stop('Variable "index" is required for the single index model.')
		}
		index <- index[1]
	#} else if(model[1] == 'MIM'){
	#	if(is.null(index)[1]){
	#		stop('Variable "index" is required for the multi-index model.')
	#	}
	} else if(tM$model == 'MGM'){
		if(is.null(tM$industry)[1]){
			stop('Variable "industry" is required for the multigroup model.')
		}
	} else if(tM$model == 'none' & !tM$shorts){
		warning('Short sales are always permitted when no model is specified.')
		tM$shorts <- TRUE
	}
	
	#===> put the data into stockReturns class <===#
	if(is.vector(stockReturns) | is.factor(stockReturns)){
		if(!is.character(stockReturns) & !is.factor(stockReturns)){
			stop('Variable "stockReturns" not recognized.')
		}
		stockReturns <- getReturns(stockReturns, freq, get, start, end)
		temp <- stockModel(stockReturns, drop=drop, Rf=Rf,
				shortSelling=shortSelling, model=model,
				index=index, industry=industry)
		return(temp)
	} else if(is.matrix(stockReturns)){
		n <- dim(stockReturns)[1]
		if(recentLast){
			stockReturns <- stockReturns[n:1,]
		}
		if(rawStockPrices){ # make into return data
			rn           <- rownames(stockReturns)[1:(n-1)]
			temp         <- stockReturns[-n,]-stockReturns[-1,]
			stockReturns <- temp/stockReturns[-1,]
			rownames(stockReturns) <- rn
		}
		rn     <- rownames(stockReturns)
		cn     <- colnames(stockReturns)
		start  <- ifelse(is.null(rn[1]), start, rn[1])
		end    <- ifelse(is.null(end), rev(rn)[1], end)
		period <- freq[1]
		if(is.null(cn)[1]){
			Ticker <- NA
		} else {
			Ticker <- cn
		}
		stockReturns <- list(R=stockReturns, ticker=Ticker, period=period,
				start=start, end=end)
		class(stockReturns) <- "stockReturns"
	} else if(class(stockReturns) == 'stockModel'){
		stockR        <- list()
		stockR$R      <- stockReturns$returns
		stockR$ticker <- stockReturns$ticker
		stockR$period <- stockReturns$period
		stockR$start  <- stockReturns$start
		stockR$end    <- stockReturns$end
		stockReturns  <- stockR
		class(stockReturns) <- 'stockReturns'
	}
	
	#===> setup theModel <===#
	sR <- stockReturns
	tM$ticker  <- sR$ticker
	tM$returns <- sR$R
	tM$start   <- sR$start
	tM$end     <- sR$end
	tM$period  <- sR$period
	if(!is.null(drop)[1]){
		if(length(tM$ticker) == length(industry)){
			tM$industry <- tM$industry[-drop]
		}
		if(length(tM$ticker) == dim(tM$returns)[2]){
			tM$returns <- tM$returns[,-drop]
		}
		tM$ticker <- tM$ticker[-drop]
	}
	tM$R     <- apply(tM$returns, 2, mean)
	tM$COV   <- cov(tM$returns)
	tM$n     <- dim(tM$returns)[1]
	tM$sigma <- sqrt(diag(tM$COV))
	if(!is.na(tM$index)){
		tM$marketReturns <- as.matrix(tM$returns[,index],ncol=1)
		colnames(tM$marketReturns) <- tM$ticker[index]
	}

	#===> build special models <===#
	if(tM$model == 'SIM'){
		tM$theIndex <- tM$ticker[index]
		tM$ticker   <- tM$ticker[-index]
		tM$industry <- tM$industry[-index]
		tM$sigma    <- tM$sigma[-index]
		getRegCoef <- function(R, COV, index, n){
			RM     <- R[index]
			VM     <- diag(COV)[index]
			beta   <- COV[index,-index] / VM
			alpha  <- R[-index] - beta*RM
			MSE    <- (n-1)*(diag(COV)[-index] - beta^2*VM)/(n-2)
			VBeta  <- MSE / (n * VM)
			VAlpha <- MSE * rep((RM^2 + VM) / (n * VM), length(VBeta))
			R      <- R[-index]
			COV    <- matrix(VM, length(R), length(R))
			COV    <- t(COV * beta) * beta
			diag(COV) <- diag(COV) + MSE
			return(list(R=R, COV=COV, RM=RM, VM=VM, alpha=alpha, vAlpha=VAlpha,
					beta=beta, vBeta=VBeta, MSE=MSE))
		}
		grc <- getRegCoef(tM$R, tM$COV, tM$index, tM$n)
		tM$returns <- tM$returns[,-index]
		tM$R      <- grc$R
		tM$COV    <- grc$COV
		tM$RM     <- grc$RM
		tM$VM     <- grc$VM
		tM$alpha  <- grc$alpha
		tM$beta   <- grc$beta
		tM$vAlpha <- grc$vAlpha
		tM$vBeta  <- grc$vBeta
		tM$MSE    <- grc$MSE
	}
	if(tM$model == 'CCM'){
		tM$rho <- getCorr(tM$COV)
		tM$COV[,] <- tM$rho
		diag(tM$COV) <- 1
		tM$COV <- t(t(tM$COV * tM$sigma) * tM$sigma)
	}
	if(tM$model == 'MGM' && tM$shorts){
		tM$rho <- getCorr(tM$COV, tM$industry)
		theMatch <- match(tM$industry, unique(tM$industry))
		tM$COV <- tM$rho[theMatch, theMatch]
		diag(tM$COV) <- 1
		tM$COV <- t(t(tM$COV * tM$sigma) * tM$sigma)
		colnames(tM$COV) <- tM$ticker
		rownames(tM$COV) <- tM$ticker
	} else if(tM$model == 'MGM'){
		# Rui and Chaochao add code here for:
		# Multigroup model, short sales not allowed
		# In particular, you must identify/assign the following components:
		# op$COV <- covariance matrix of the stocks
		# tM$rho <- correlation matrix (not covariance matrix),
		#           may be able to use getCorr function
		
		
		
		
		
	}
	#if(tM$model == 'MIM' && tM$shorts){
		# Rui and Chaochao add code here for: multi-index model, short sales allowed
		# In particular, you must identify the following components:
		# op$COV <- covariance matrix of the stocks
		# tM$rho <- correlation matrix (not covariance matrix),
		#           may be able to use getCorr function
		
		
		
		
	#} else if(tM$model == 'MIM'){
		# Rui and Chaochao add code here for: multi-index model, no shorts allowed
		# In particular, you must identify the following components:
		# op$COV <- covariance matrix of the stocks
		# tM$rho <- correlation matrix (not covariance matrix),
		#           may be able to use getCorr function
		
		
		
		
	#}
	return(tM)
}

