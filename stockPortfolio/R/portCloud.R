`portCloud` <-
function(model, riskRange=2, detail=25, N=3000, add=TRUE, col=c('#55550044'), pch=20, subSamp=1000, xlim='default', ylim='default', xlab='Risk', ylab='Return', ...){
	#===> must have short-selling <===#
	if(!model$shorts){
		stop("Short selling must be permitted.\n")
	}
	
	#===> identifying how to distribute points <===#
	n   <- length(model$R)
	ppc <- portPossCurve(model, riskRange=riskRange, detail=detail, doNotPlot=TRUE)
	PPP <- ceiling(N/n/dim(ppc$ports)[1])
	N   <- n*PPP*dim(ppc$ports)[1]
	if(subSamp > N){
		subSamp <- N
	}
	subSamp <- min(c(subSamp, N))
	
	#===> start explicit instruction of points <===#
	ports    <- ppc$ports
	portMat  <- matrix(NA, subSamp, 2)
	steps    <- seq(1/(PPP+1),1-1/(PPP+1),length.out=PPP)
	x  <- matrix(NA, subSamp, n)
	r  <- c()
	v  <- c()
	m  <- 0
	M  <- 0
	if(subSamp == N){
		subSamp <- 1:N
	} else {
		subSamp <- sample(N, subSamp)
	}
	for(i in 1:n){
		for(l in 1:dim(ppc$ports)[1]){
			for(j in 1:PPP){
				M <- M+1
				if(M %in% subSamp){
					m     <- m+1
					u     <- c(rep(0, i-1), 1-steps[j], rep(0, n-i))
					x[m,] <- steps[j]*ports[l,] + u
					r[m]  <- sum(model$R * x[m,])
					v[m]  <- as.numeric(t(x[m,]) %*% model$COV %*% x[m,])
					portMat[m,2] <- r[m]
					portMat[m,1] <- sqrt(v[m])
				}
			}
		}
	}
	
	#===> plot the points <===#
	if(add){
		points(portMat, col=col, pch=pch, ...)
	} else {
		if(xlim[1] == 'default'){
			xMin <- min(portMat[,1])
			xlim <- c(xMin, riskRange*xMin)
			if(ylim[1] == 'default'){
				ylim <- range(portMat[portMat[,1] < xlim[2],2])
				ylim <- ylim + c(-1,1)*diff(ylim)/20
			}
		} else if(ylim[1] == 'default'){
			ylim <- range(portMat[,2])
		}
		plot(portMat, col=col, pch=pch, xlim=xlim, ylim=ylim, xlab=xlab, ylab=ylab, ...)
	}
	invisible(list(ports=x, R=r, risk=sqrt(v)))
}

