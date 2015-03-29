`plot.portReturn` <-
function(x, xlab='Risk', ylab='Return', main='Risk and Return of Stocks', addNames=FALSE, pos=3, ylim="default", col='heatGradient', ...){
	if(all(x$X == x$X[1])){
		if(col[1] == 'heatGradient'){
			col <- '#550055'
		} else {
			if(length(col) < length(x$X)){
				col <- rep(col, length(x$X))
			}			
		}
	} else if(col[1] == 'heatGradient'){
		tMin <- min(x$X)
		tMax <- max(x$X)
		inte <- (x$X-0)/(max(c(tMax,tMin))+0.01)
		blue         <- inte
		blue[inte<0] <- 0
		red          <- -inte
		red[inte>0]  <- 0
		cols  <- cbind(red, 0, blue)
		means <- apply(cols, 1, mean)
		cols  <- cols+1-means
		cols  <- cols - apply(cols, 1, max) + apply(cols, 1, min)
		cols  <- cols - 0.15
		temp  <- apply(cols, 1, min)
		temp[temp>0] <- 0
		cols  <- cols - temp
		temp  <- apply(cols, 1, max)
		cols  <- cols/(temp+0.12)
		col   <- rgb(cols[,1], cols[,2], cols[,3])
	} else if(length(col) < length(x$X)){
		col <- rep(col, length(x$X))
	}
	plot(x$model, xlab=xlab, ylab=ylab, main=main,
		addNames=addNames, pos=pos, ylim=ylim, col=col, ...)
}

