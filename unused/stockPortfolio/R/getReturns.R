`getReturns` <- function(
    ticker,
    url,
    freq = c('month', 'week', 'day'),
    get = c('overlapOnly', 'all'),
    start = '2000-01-01',
    end = NULL){
  
  #______ Cleaning, Checking, and Initialization ______#
  startURL <- 'https://query1.finance.yahoo.com/v7/finance/download/'
  if (missing(url)) {
    stop("Need to provide a fresh URL of one Yahoo! Finance download link.")
  } else {
    crumb <- strsplit(url, "crumb=", fixed = TRUE)[[1]][2]
  }

  URL      <- list()
  full     <- list()
  r        <- list()
  dates    <- list()
  ticker   <- as.character(ticker)
  n        <- length(ticker)
  start    <- as.Date(start)
  start.o  <- start
  if (class(start) != "Date") {
    stop('Cannot read the start date.\n')
  } else {
    start <- as.numeric(as.POSIXct(start))
  }
  if (is.null(end)[1]) {
    end <- as.Date(Sys.time())
  } else {
    end <- as.Date(end)
    if (class(end) != "Date") {
      stop('Cannot read the end date.\n')
    }
  }
  end.o <- end
  end <- as.numeric(as.POSIXct(end))
  
  #______ Data Retrieval ______#
  # https://query1.finance.yahoo.com/v7/finance/download/CAT?period1=1447574400&period2=1542268800&interval=1mo&events=history&crumb=BN7Z7hcasct
  N       <- rep(-1, n)
  period  <- freq[1]
  freq    <- switch(period, day = "d", week = "wk", month = "mo")
  freq    <- paste0("interval=1", freq)
  period1 <- paste0("period1=", start)
  period2 <- paste0("period2=", end)
  endURL  <- paste(period1, period2, freq,
      "events=history", # paste0("crumb=", crumb),
      sep = "&")
  minDate <- as.Date('2499-12-31')
  h <- new_handle()
  req <- curl_fetch_memory("https://finance.yahoo.com", handle = h)
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
  temp  <- list(
      R = R,
      ticker = ticker,
      period = period,
      start = start.o,
      end = end.o,
      full = full)
  class(temp) <- "stockReturns"
  return(temp)
}

