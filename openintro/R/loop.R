loop <-
function(i, n=NULL, every=1, extra=NULL){
	if(i %% every == 0){
		if(is.null(n)[1]){
			cat("Iter", i, "\t")
		} else {
			cat(i, "of", n, "\t")
		}
		if(!is.null(extra)){
			cat(extra)
		}
		cat("\n")
	}
}