`getCorr` <-
function(V, industry=NULL){
	C <- t(V / sqrt(diag(V)))/sqrt(diag(V))
	if(dim(V)[1] < length(industry)){
		industry <- industry[1:dim(V)[1]]
	}
	if(is.null(industry)){
		n <- dim(V)[1]
		rho <- (sum(C) - n)/n/(n-1)
	} else {
		K   <- length(unique(industry))
		GP  <- unique(industry)
		rho <- matrix(NA,K,K)
		n  <- rep(NA,K)
		ss <- list()
		for(i in 1:K){
			ss[[i]] <- which(industry == GP[i])
			n[i]    <- length(ss[[i]])
		}
		for(i in 1:K){
			for(j in min(c(K,i+1)):K){
				rho[i,j] <- mean(C[ss[[i]], ss[[j]]])
				rho[j,i] <- rho[i,j]
			}
			if(n[i] > 1){
				rho[i,i] <- (sum(C[ss[[i]],ss[[i]]])-n[i])/n[i]/(n[i]-1)
			} else {
				rho[i,i] <- 1
			}
		}
		rownames(rho) <- GP
		colnames(rho) <- GP
	}
	return(rho)
}

