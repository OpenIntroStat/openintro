`points.optimalPortfolio` <-
function(x, addNames=FALSE, pos=3, colOP=1, pch=1, pchOP=20, col='heatGradient', optPortOnly=FALSE, ...){
	pR <- portReturn(x$model, x$X)
	if(!optPortOnly){
		points(pR, addNames=addNames, pos=pos, col='heatGradient', pch=pch, ...)
	}
	points(x$risk, x$R, col=colOP, pch=pchOP, ...)
}

