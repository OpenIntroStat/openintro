`portPossCurve` <-
function(model, riskRange=2, detail=100, effFrontier=FALSE, add=FALSE, type='l', xlab='Risk', ylab='Expected Return', doNotPlot=FALSE, ...){
	#===> must have short-selling <===#
	if(!model$shorts){
		stop("Short selling must be permitted.\n")
	}
	
	#===> prevent multiple warnings in optimalPort <===#
	if(!model$shorts & model$model %in% 'none'){
		model$shorts <- TRUE
		warning('Short sales are always allowed when no model is provided.\n')
	}
	
	#===> get two points on PP curve, their returns & cov <===#
	G1  <- optimalPort(model, Rf=-1000)
	G2  <- optimalPort(model, Rf=G1$R-0.01)
	g1X <- G1$X[match(names(model$R), names(G1$X))]
	g2X <- G2$X[match(names(model$R), names(G2$X))]
	R   <- c(G1$R, G2$R)
	COV <- diag(c(G1$risk^2, G2$risk^2))
	COV[1,2] <- as.numeric(t(g1X) %*% model$COV %*% g2X)
	COV[2,1] <- COV[1,2]
	
	#===> recursive function to make the plot pretty <===#
	meetRRF <- function(R, COV, X, detail, minRisk, RRF){
		x    <- X
		X    <- seq(X[1], X[2], length.out=detail)
		r    <- X*R[1] + (1-X)*R[2]
		v    <- X^2*COV[1,1] + (1-X)^2*COV[2,2] + 2*X*(1-X)*COV[1,2]
		trim <- TRUE
		if(sqrt(v[1]) < RRF*minRisk){
			x[1] <- 2*x[1]
			trim <- FALSE
		}
		if(sqrt(rev(v)[1]) < RRF*minRisk){
			x[2] <- 2*x[2]
			trim <- FALSE
		}
		if(trim){
			these <- sqrt(v) < RRF*minRisk
			if(sum(these) > detail/2){
				out   <- list()
				out$X <- X[these]
				out$R <- r[these]
				out$V <- v[these]
			} else {
				x[1] <- (x[1]-1)*.75 + 1
				x[2] <- (x[2]-1)*.75 + 1
				out <- meetRRF(R, COV, X=x, detail=detail, minRisk=minRisk, RRF=RRF)
			}
		} else {
			out <- meetRRF(R, COV, X=x, detail=detail, minRisk=minRisk, RRF=RRF)
		}
		return(list(R=out$R, V=out$V, X=out$X))
	}
	mRRF <- meetRRF(R, COV, X=c(-3,5), detail=detail, minRisk=G1$risk, RRF=riskRange)
	if(effFrontier){
		these  <- which(diff(mRRF$V) < 0)
		mRRF$R <- mRRF$R[these]
		mRRF$V <- mRRF$V[these]
		mRRF$X <- mRRF$X[these]
	}
	ports    <- mRRF$X %*% t(g1X) + (1-mRRF$X) %*% t(g2X)
	toReturn <- list(R=mRRF$R, risk=sqrt(mRRF$V), ports=ports)
	if(add & !doNotPlot){
		lines(toReturn$risk, toReturn$R, type=type, ...)
	} else if(!doNotPlot){
		plot(toReturn$risk, toReturn$R, type=type, xlab=xlab, ylab=ylab, ...)
	}
	invisible(toReturn)
}

