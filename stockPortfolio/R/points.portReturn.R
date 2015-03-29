`points.portReturn` <-
function(x, addNames=FALSE, pos=3, col='heatGradient', ...){
	if(col == 'heatGradient'){
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
	}
	points(x$model, addNames=addNames, pos=pos, col=col, ...)
}

