`fadeColor` <-
function(col, fade='FF'){
	if(is.numeric(col)[1]){
		col <- round(col)
		COL <- col
		COL[col %% 8 == 0] <- '#BBBBBB'
		COL[col %% 8 == 1] <- '#000000'
		COL[col %% 8 == 2] <- '#BB0000'
		COL[col %% 8 == 3] <- '#00FF00'
		COL[col %% 8 == 4] <- '#0000FF'
		COL[col %% 8 == 5] <- '#00FFFF'
		COL[col %% 8 == 6] <- '#FF00FF'
		COL[col %% 8 == 7] <- '#FFFF00'
		col <- COL
	} else if(substr(col[1],1,1) != '#'){
		temp <- col2rgb(col[1])
		col <- rgb(temp[1], temp[2], temp[3], maxColorValue=255)
	}
	# check fading
	if(any(nchar(col[1]) != 7)){
		stop('col must be either an integer or in #RRGGBB format\n')
	}
	if(any(nchar(fade[1]) != 2)){
		stop('fade must be a hexadecimal string of 2 characters\n')
	}
	col <- paste(col, fade, sep='')
	return(col)
}

