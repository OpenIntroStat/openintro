`summary.portReturn` <-
function(object, ...){
	cat('Expected Return', object$R, '\n')
	cat('Risk estimate  ', sqrt(object$VAR), '\n')
}

