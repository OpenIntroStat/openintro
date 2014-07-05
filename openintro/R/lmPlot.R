`lmPlot` <- function(x, y, xAxis=0, yAxis=4, resAxis=3, resSymm=TRUE, wBox=TRUE, wLine=TRUE, lCol='#00000088', lty=1, lwd=1, xlab='', ylab='', marRes=NULL, col='#22558888', pch=20, cex=1.5, xR=0.02, yR=0.1, xlim=NULL, ylim=NULL, subset=NULL, parCustom=FALSE, myHeight=c(1,0.45), plots=c('both', 'mainOnly', 'resOnly'), highlight=NULL, hlCol=NULL, hlCex=1.5, hlPch=20, na.rm=TRUE, ...){
	if(na.rm){
		these <- is.na(x) | is.na(y)
		if(any(these)){
			x <- x[!these]
			y <- y[!these]
		}
	}
	if(!parCustom){
		myMat <- rbind(matrix(1:2,2))
		layout(myMat, 1, myHeight)
		mar <- c(3,4,0.5,0.5)
		if(xlab == ''){
			mar[1] <- 1.8
			if(xAxis < 1){
				mar[1] <- 0.25
			}
		}
		if(ylab == ''){
			mar[2] <- 3
			if(yAxis < 1 && resAxis < 1){
				mar[2] <- 0.5
			}
		}
		par(mar=mar, mgp=c(1.9, 0.7, 0))
	}
	if(is.null(ylim)[1]){
		YR <- range(y) + c(-1,1)*yR*diff(range(y))
	} else {
		YR <- ylim
	}
	if(is.null(xlim)[1]){
		XR <- range(x) + c(-1,1)*xR*diff(range(x))
	} else {
		XR <- xlim
	}
	these <- 1:length(x)
	if(length(highlight) > 0){
		these <- these[-highlight]
	}
	plot(x[these], y[these], axes=FALSE, xlab=xlab, ylab=ylab, col=col, pch=pch, cex=cex, ylim=YR, xlim=XR, ...)
	if(!is.null(highlight)[1]){
		if(is.null(hlCol)[1]){
			points(x[highlight], y[highlight], col=1+1:length(highlight), pch=hlPch, cex=hlCex)
		} else {
			points(x[highlight], y[highlight], col=hlCol, pch=hlPch, cex=hlCex)
		}
	}
	if(wBox){
		box()
	}
	if(xAxis > 0){
		buildAxis(1, x, xAxis, nMax=xAxis)
	}
	if(yAxis > 0){
		buildAxis(2, y, yAxis, nMax=yAxis)
	}
	g <- lm(y ~ x, subset=subset)
	if(wLine){
		abline(g, col=lCol, lty=lty, lwd=lwd)
	}
	if(!is.null(marRes)[1]){
		par(mar=marRes)
	} else if(!parCustom){
		par(mar=c(0.5,mar[2],0.25,0.5))
	}
	X <- list(x=x)
	y <- y - predict(g, X)
	if(resSymm){
		YR <- range(c(y,-y)) + c(-1,1)*yR*diff(range(c(y,-y)))
	} else {
		YR <- range(y) + c(-1,1)*yR*diff(range(y))
	}
	plot(x[these],y[these], axes=FALSE, xlab=xlab, ylab='', col=col, pch=pch, cex=cex, ylim=YR, ...)
	if(!is.null(highlight)[1]){
		if(is.null(hlCol)[1]){
			points(x[highlight], y[highlight], col=1+1:length(highlight), pch=hlPch, cex=hlCex)
		} else {
			points(x[highlight], y[highlight], col=hlCol, pch=hlPch, cex=hlCex)
		}
	}
	if(wBox){
		box()
	}
	if(resAxis > 0){
		if(resSymm){
			y <- c(y,-y)
		}
		buildAxis(2, y, resAxis, nMax=resAxis)
	}
	abline(h=0, lty=3, col=lCol)
}
