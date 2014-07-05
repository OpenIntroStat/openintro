`densityPlot` <-
function(x, fact=NULL, bw = "nrd0", histo=c('none', 'faded', 'hollow'), breaks='Sturges', fading='0E', fadingBorder='25', lty=NULL, lwd=1, col=c('black', 'red', 'blue'), key=NULL, add=FALSE, adjust = 1, kernel = c("gaussian", "epanechnikov", "rectangular","triangular", "biweight", "cosine", "optcosine"), weights = NULL, n = 512, from, to, na.rm = FALSE, xlim=NULL, ylim=NULL, main='', ...){
	if(!is.null(fact)[1]){
		d <- list()
		fact <- as.character(fact)
		if(is.null(key)[1]){
			key <- unique(fact)
		}
		K <- length(key)
		if(is.null(lty)[1]){
			lty <- 1:K
		}
		if(is.null(lwd)[1]){
			lwd <- rep(1,K)
		}
		xR <- NULL
		yR <- NULL
		for(i in 1:K){
			d[[i]] <- density(x[fact == key[i]],
				bw=bw, adjust=adjust, kernel=kernel,
				weights=weights, n=n, from=from, to=to,
				na.rm=na.rm)
			xR <- range(c(xR, d[[i]]$x))
			yR <- max(c(yR, max(d[[i]]$y)))
		}
		if(is.null(xlim)[1]){
			xlim <- xR
		}
		if(is.null(ylim)[1]){
			ylim <- c(0,yR)
		}
		if(add){
			for(i in 1:K){
				densityPlot(x[fact==key[i]], add=TRUE,
					col=col[i], lty=lty[i], lwd=lwd[i],
					xlim=xlim, ylim=ylim)
			}
		} else {
			densityPlot(x[fact==key[1]], add=FALSE,
				col=col[1], lty=lty[1], lwd=lwd[1],
				xlim=xlim, ylim=ylim, main=main, ...)
			if(K > 1){
				for(i in 2:K){
					densityPlot(x[fact==key[i]], add=TRUE,
						col=col[i], lty=lty[i], lwd=lwd[i])
				}
			}
		}
	} else {
		K <- 1
		d <- density(x, bw=bw, adjust=adjust, kernel=kernel,
			weights=weights, n=n, from=from, to=to, na.rm=na.rm)
		xR <- range(d$x)
		yR <- max(d$y)
		if(histo[1] %in% c('hollow', 'faded')){
			H <- hist(x, breaks=breaks, plot=FALSE)
			xR <- range(c(xR, H$breaks))
			yR <- max(c(yR, max(H$density)))
		}
		if(is.null(xlim)[1]){
			xlim <- xR
		}
		if(is.null(ylim)[1]){
			ylim <- c(0,yR)
		}
		if(histo[1]=='hollow'){
			histPlot(x, col=fadeColor(col[1],fading),
				border=fadeColor(col[1],fadingBorder),
				breaks=breaks, probability=TRUE,
				add=add, xlim=xlim, ylim=ylim, main=main,
				hollow=TRUE, ...)
		} else if(histo[1]=='faded'){
			histPlot(x, col=fadeColor(col[1],fading),
				border=fadeColor(col[1],fadingBorder),
				breaks=breaks, probability=TRUE,
				add=add, xlim=xlim, ylim=ylim, main=main, ...)
		} else if(!add){
			plot(d, col=col[1], type='l', main=main,				xlim=xlim, ylim=ylim, ...)
			abline(h=0)
		}
		if(histo[1] %in% c('hollow', 'faded') | add){
			points(d, col=col[1], type='l',
				lty=lty, lwd=lwd)
		}
	}
}

