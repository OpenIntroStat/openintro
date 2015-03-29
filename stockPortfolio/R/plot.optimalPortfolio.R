`plot.optimalPortfolio` <-
function(x, xlab='Risk', ylab='Return', main='Risk and Return of Stocks', addNames=FALSE, pos=3, xlim="default", ylim="default", col='heatGradient', colOP=1, pch=1, pchOP=20, optPortOnly=FALSE, type='p', noOptPort=FALSE, ...){
	pR <- portReturn(x$model, x$X)
	if(xlim[1] == 'default'){
		R    <- range(c(x$model$sigma, x$risk))
		xlim <- R + c(-1,1)*diff(R)/10
	}
	if(ylim[1] == 'default'){
		ylim <- range(c(x$model$R, x$R))
		ylim <- ylim + c(-1,1)*diff(ylim)/10
	}
	if(optPortOnly){
		plot(x$risk, x$R, xlab=xlab, ylab=ylab,
			main=main, xlim=xlim, ylim=ylim, col=colOP,
			pch=pchOP, type=type, ...)
	} else {
		plot(pR, xlab=xlab, ylab=ylab, main=main,
			addNames=addNames, pos=pos, xlim=xlim,
			ylim=ylim, col=col, pch=pch, type=type, ...)
		if(!noOptPort){
			points(x$risk, x$R, col=colOP, pch=pchOP, type=type)
		}
	}
}

