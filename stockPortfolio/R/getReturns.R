`getReturns` <-
function(ticker, freq=c('month', 'week', 'day'),
get=c('overlapOnly', 'all'),
start='1970-01-01', end=NULL){
  
  #______ Cleaning, Checking, and Initialization ______#
  startURL <- 'http://ichart.finance.yahoo.com/table.csv?s='
  URL      <- list()
  full     <- list()
  r        <- list()
  dates    <- list()
  ticker   <- as.character(ticker)
  n        <- length(ticker)
  start    <- as.Date(start)
  if(class(start) != "Date"){
    stop('Cannot read the start date.\n')
  }
  start    <- c(format(as.Date(start), "%m"),
                format(as.Date(start), "%d"),
                format(as.Date(start), "%Y"))
  start    <- as.numeric(start)
  if(is.null(end)[1]){
    end <- ''
  } else {
    end  <- as.Date(end)
    if(class(end) != "Date"){
      stop('Cannot read the end date.\n')
    }
    end <- c(format(as.Date(end), "%m"),
              format(as.Date(end), "%d"),
              format(as.Date(end), "%Y"))
    end <- as.numeric(end)
    end <- paste('&d=',end[1]-1, '&e=',end[2], '&f=',end[3], sep='')
  }
  
  #______ Data Retrieval ______#
  N       <- rep(-1, n)
  period  <- freq[1]
  freq    <- substr(freq[1],1,1)
  start   <- paste('&a=',start[1]-1, '&b=',start[2], '&c=',start[3], sep='')
  endURL  <- paste(start, end, "&g=", freq, "&ignore=.csv", sep="")
  minDate <- as.Date('2499-12-31')
  for(i in 1:n){
    URL        <- paste(startURL, ticker[i], endURL, sep='')
    d          <- read.delim(URL, TRUE, sep=',')
    full[[ticker[i]]]  <- d
    r[[i]]     <- (d[-dim(d)[1],7] - d[-1,7]) / d[-1,7]
    dates[[i]] <- as.Date(d[-dim(d)[1],1])
    minDate    <- min(c(minDate, d[,1]))
    N[i]       <- length(r[[i]])
  }
  uDates <- rev(sort(unique(c(dates, recursive=TRUE) - 1)))
  R      <- matrix(NA, length(uDates), n)
  rownames(R) <- as.character(as.Date(uDates, origin=minDate))
  for(i in 1:n){
    inR      <- match(as.character(dates[[i]]), rownames(R))
    R[inR,i] <- r[[i]]
  }
  if(get[1] == 'overlapOnly'){
  #===> this has been modified to work very well for months <===#
    toRemove <- which(apply(is.na(R), 1, any))
    if(all(diff(toRemove) == 1) | freq != 'm'){
      if(length(toRemove) > 0){
        R <- R[-toRemove, ]
      }
    } else {
      keep      <- rep(0, length(toRemove))
      theDates  <- as.Date(rownames(R)[toRemove], "%Y-%m-%d")
      theMonths <- months(theDates)
      theYears  <- format(theDates, '%Y')
      toCombine <- 0
      for(i in 1:(length(toRemove)-1)){
        cond1 <- theMonths[i] == theMonths[i+1]
        cond2 <- theYears[i] == theYears[i+1]
        cond3 <- abs(as.numeric(theDates[i] - theDates[i+1])) < 7 # extra precaution
        if((cond1 & cond2) | cond3){
          if(keep[i] > 0){ # if a 3rd or 4th date of the month is listed
            keep[i+1] <- keep[i]
          } else {
            toCombine <- toCombine+1
            keep[i]   <- toCombine
            keep[i+1] <- toCombine
          }
        }
      }
      # now we need to reorganize R
      if(any(keep == 0)){
        R <- R[-toRemove[keep == 0], ]
      }
      nRemoved <- 0
      for(i in 1:toCombine){
        combineThese <- toRemove[keep == i]
        inThisRow    <- combineThese[1]
        for(k in 2:length(combineThese)){
          thisRow <- combineThese[k]
          for(j in 1:ncol(R)){
            if(!is.na(R[thisRow-nRemoved,j])){
              R[inThisRow-nRemoved,j] <- R[thisRow-nRemoved,j]
            }
          }
          
        }
        R        <- R[-(combineThese[-1]-nRemoved),]
        nRemoved <- nRemoved + length(combineThese[-1])
      }
    }
  }
  if(!is.matrix(R)){
    R <- matrix(R, ncol=1)
    rownames(R) <- as.character(as.Date(uDates, origin=minDate))
  }
  colnames(R) <- ticker
  start <- rownames(R)[dim(R)[1]]
  end   <- rownames(R)[1]
  temp  <- list(R=R, ticker=ticker, period=period,
                start=start, end=end, full=full)
  class(temp) <- "stockReturns"
  return(temp)
}

