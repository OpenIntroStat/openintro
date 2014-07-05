`dotPlot` <-
function(x, fact=NULL, vertical=FALSE, at=1, key=NULL, pch=20, col=fadeColor('black', '66'), cex=1.5, add=FALSE, axes=TRUE, xlim=NULL, ylim=NULL, ...){
	skipOut <- FALSE
	if(!is.null(fact[1])){
		if(!is.null(key[1])){
			uFact <- key
		} else {
			uFact <- unique(fact)
		}
		n <- length(uFact)
		if(length(at) == 1){
			at <- 1:n
		}
		dataR <- range(x)
		atR <- range(at)
		if(!vertical){
			if(is.null(xlim[1])){
				xlim <- dataR
			}
			if(is.null(ylim[1])){
				ylim <- atR + c(-1,1)*diff(atR)/7
			}
		} else {
			if(is.null(xlim[1])){
				xlim <- atR + c(-1,1)*diff(atR)/7
			}
			if(is.null(ylim[1])){
				ylim <- dataR
			}
		}
		if(length(pch) == 1){
			pch <- rep(pch, length(at))
		}
		if(length(col) == 1){
			col <- rep(col, length(at))
		}
		if(length(cex) == 1){
			cex <- rep(cex, length(at))
		}
		dotPlot(x[fact == uFact[1]], vertical=vertical, at=at[1], axes=axes, add=add, pch=pch[1], col=col[1], cex=cex[1], xlim=xlim, ylim=ylim, ...)
		for(i in 2:n){
			dotPlot(x[fact == uFact[i]], vertical=vertical, at=at[i], add=TRUE, pch=pch[i], col=col[i], cex=cex[i], axes=FALSE)
		}
		if(axes & !add){
			if(vertical){
				axis(1, at=at, labels=uFact)
			} else {
				axis(2, at=at, labels=uFact)
			}
		}
		skipOut=TRUE
	}
	y <- rep(at[1], length(x))
	if(vertical & !skipOut){
		if(add){
			points(y,x, pch=pch[1], col=col[1], cex=cex[1], ...)
		} else {
			if(is.null(xlim[1])){
				xlim <- at[1]+c(-1,1)
			}
			if(is.null(ylim[1])){
				ylim <- range(x)
			}
			plot(y,x,axes=FALSE,xlim=xlim, ylim=ylim, pch=pch[1], col=col[1], cex=cex[1], ...)
		}
	} else if(!skipOut){
		if(add){
			points(x,y, pch=pch[1], col=col[1], cex=cex[1], ...)
		} else {
			if(is.null(ylim[1])){
				ylim <- at[1]+c(-1,1)
			}
			if(is.null(xlim[1])){
				xlim <- range(x)
			}
			plot(x,y,axes=FALSE,xlim=xlim, ylim=ylim, pch=pch[1], col=col[1], cex=cex[1], ...)
		}
	}
	if(axes & !add & is.null(fact[1])){
		axis(vertical+1)
	}
}

