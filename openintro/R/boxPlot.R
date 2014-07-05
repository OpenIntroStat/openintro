# fact=NULL
# horiz=FALSE
# width=2/3
# lwd=1
# lcol='black'
# medianLwd=2
# pch=20
# pchCex=1.8
# col=rgb(0,0,0,0.25)
# add=FALSE
# key=NULL
# axes=TRUE
# xlab=''
# ylab=''
# xlim=NULL
# ylim=NULL
# na.rm=TRUE

`boxPlot` <-
function(x, fact=NULL, horiz=FALSE, width=2/3, lwd=1, lcol='black', medianLwd=2, pch=20, pchCex=1.8, col=rgb(0,0,0,0.25), add=FALSE, key=NULL, axes=TRUE, xlab='', ylab='', xlim=NULL, ylim=NULL, na.rm=TRUE, ...){
  if(!is.null(fact)[1]){
  	if(na.rm){
  	  keep <- !is.na(x) & !is.na(fact)
  	  fact <- fact[keep]
  	  x    <- x[keep]
  	}
  	if(is.null(key)[1]){
  	  if(is.factor(fact)[1]){
  	    uFact <- levels(fact)
  	  } else {
  	    uFact <- sort(unique(fact))
  	  }
  	  key   <- uFact
  	} else {
  	  uFact <- key
  	}
  	N    <- length(uFact)
  	fact <- as.character(fact)
  	makePlot <- FALSE
  	if(is.logical(add) && add == FALSE){
  	  add  <- 1:length(uFact)
  	  makePlot <- TRUE
  	}
  	if(is.null(xlim)[1]){
  	  xlim <- c(1-width,N+width)
  	  if(horiz){
  	    xlim <- range(x)
  	  }
  	}
  	if(is.null(ylim)[1]){
  	  ylim <- range(x)
  	  if(horiz){
  	    ylim <- c(1-width,N+width)
  	  }
  	}
  	
    if(makePlot){
      plot(0, 0, type="n", xlab=xlab, ylab=ylab,
           xlim=xlim, ylim=ylim, axes=FALSE)
      if(axes){
        axis(ifelse(horiz, 2, 1), at=add, labels=uFact)
  	    axis(ifelse(horiz, 1, 2))
      }
    }
  	if(N > 1){
  	  for(i in 1:N){
  	    Recall(x[fact == uFact[i]], fact=NULL, horiz=horiz, width=width,
  	        lwd=lwd, lcol=lcol, medianLwd=medianLwd, pch=pch,
  	        pchCex=pchCex, col=col, add=add[i], na.rm=FALSE, ...)
  	  }
  	}
  	
  } else {
  	if(na.rm){
  	  keep <- !is.na(x)
  	  x    <- x[keep]
  	}
  	if(is.logical(add) && add == FALSE){
  	  add <- 1
  	  if(is.null(xlim)[1]){
  	    xlim <- c(add-width,add+width)
  	    if(horiz){
  	      xlim <- range(x)
  	    }
  	  }
  	  if(is.null(ylim)[1]){
  	    ylim <- range(x)
  	    if(horiz){
  	      ylim <- c(1-width,N+width)
  	    }
      }
      plot(0, 0, type="n", xlab=xlab, ylab=ylab,
           xlim=xlim, ylim=ylim, axes=FALSE)
      if(axes){
  	    axis(ifelse(horiz, 1, 2))
      }
  	}
  	
  	FN    <- c(min(x), quantile(x, c(0.25, 0.5, 0.75)), max(x))
  	IQR   <- FN[4] - FN[2]
  	FENCE <- FN[c(2,4)] + 1.5*IQR*c(-1,1)
  	below <- x < FENCE[1]
  	above <- x > FENCE[2]
  	if(!any(below)){
  	  FENCE[1] <- FN[1]
  	} else {
  	  FENCE[1] <- min(x[!below])
  	}
  	if(!any(above)){
  	  FENCE[2] <- FN[5]
  	} else {
  	  FENCE[2] <- max(x[!above])
  	}
  	show  <- below | above
  	w     <- width/2
  	
  	if(horiz){
  	  rect(FN[2], add-w, FN[4], add+w, lwd=lwd, border=lcol)
  	  lines(rep(FN[3], 2), add+w*c(-1,1), lwd=medianLwd, col=lcol)
  	  lines(c(FENCE[1], FN[2]), rep(add,2), lwd=lwd, col=lcol)
  	  lines(rep(FENCE[1], 2), add+w*c(-1,1), lwd=lwd, col=lcol)
  	  lines(c(FENCE[2], FN[4]), rep(add,2), lwd=lwd, col=lcol)
  	  lines(rep(FENCE[2], 2), add+w*c(-1,1), lwd=lwd, col=lcol)
  	  if(any(show)){
  	    points(x[show], rep(add, sum(show)),
  	           pch=pch, cex=pchCex, col=col)
  	  }
  	} else {
  	  rect(add-w, FN[2], add+w, FN[4], lwd=lwd, border=lcol)
  	  lines(add+w*c(-1,1), rep(FN[3], 2), lwd=medianLwd, col=lcol)
  	  lines(rep(add,2), c(FENCE[1], FN[2]), lwd=lwd, col=lcol)
  	  lines(add+w*c(-1,1), rep(FENCE[1], 2), lwd=lwd, col=lcol)
  	  lines(rep(add,2), c(FENCE[2], FN[4]), lwd=lwd, col=lcol)
  	  lines(add+w*c(-1,1), rep(FENCE[2], 2), lwd=lwd, col=lcol)
  	  if(any(show)){
  	    points(rep(add, sum(show)), x[show],
  	           pch=pch, cex=pchCex, col=col)
  	  }
  	}
  }
}

