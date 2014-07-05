`histPlot` <-
function(x, col=fadeColor('black', '22'), border='black', breaks="default", probability=FALSE, hollow=FALSE, add=FALSE, lty=2, lwd=1, freqTable=FALSE, right=TRUE, axes=TRUE, xlab=NULL, ylab=NULL, xlim=NULL, ylim=NULL, ...){
	if(breaks[1] == 'default'){
		breaks <- 'Sturges'
	}
	if(freqTable){
		nObs <- sum(x[,2])
		xR   <- range(x[,1])
		xR   <- xR + c(-1,1)*diff(xR)/10^5
		H    <- list()
		if(is.character(breaks)[1]){
			breaks <- 10
		}
		if(length(breaks) == 1){
			H$breaks <- pretty(xR, n=breaks, min.n=1)
		} else {
			H$breaks <- breaks
		}
		H$mids <- H$breaks[-1] - diff(H$breaks)/2
		H$counts <- rep(0, length(H$mids))
		for(i in 1:length(H$counts)){
			if(right){
				temp <- which(x[,1] <= H$breaks[i+1] & x[,1] > H$breaks[i])
			} else {
				temp <- which(x[,1] < H$breaks[i+1] & x[,1] >= H$breaks[i])
			}
			H$counts[i] <- sum(x[temp,2])
		}
		H$density <- (H$counts/sum(H$counts))/diff(H$breaks)
	} else {
		if(length(breaks) > 1 && is.numeric(breaks)[1]){
			H <- hist(x, breaks=breaks, plot=FALSE, right=right, include.lowest=FALSE)
		} else {
			H <- hist(x, breaks=breaks, plot=FALSE, right=right)
		}
	}
	br <- H$breaks
	mi <- H$mids
	y <- H$counts
	if(probability){
		y <- H$density
	}
	if(is.null(ylab)){
		ylab <- 'frequency'
		if(probability){
			ylab <- 'density'
		}
	}
	if(is.null(xlab)){
		xlab <- H$xname
	}
	if(is.null(xlim)){
		xlim <- range(br)
	}
	if(is.null(ylim)){
		ylim=c(0,max(y))
	}
	if(!add){
		plot(x, xlim=xlim, ylim=ylim, type='n', axes=FALSE, ylab=ylab, xlab=xlab, ...)
		abline(h=0)
		if(axes){
			axis(1)
			axis(2)
		}
	}
	if(hollow){
		n  <- length(H$breaks)
		br <- c(br[1], br)
		y  <- c(0, y, 0)
		points(br, y, type='s', col=border, lty=lty, lwd=lwd)
	} else {
		miL <- length(mi)
		for(i in 1:miL){
			rect(br[i], 0, br[i+1], y[i],
				border='#ffffff00', col=col)
			lines(rep(br[i],2), c(0,y[i]), col=border)
			lines(br[i:(i+1)], rep(y[i],2), col=border)
			if(i > 1){
				if(y[i] < y[i-1]){
					lines(rep(br[i],2), y[(i-1):i], col=border)
				}
			}
		}
		lines(rep(br[miL+1],2), c(0,y[miL]), col=border)
	}
}

