#' Facebook, Google, and LinkedIn IPO filings
#'
#' On Feb 1st, 2011, Facebook Inc. filed an S-1 form with the Securities and
#' Exchange Commission as part of their initial public offering (IPO).  This
#' dataset includes the text of that document as well as text from the IPOs of
#' two competing companies: Google and LinkedIn.
#'
#' Each of the three prospectuses is encoded in UTF-8 format and contains some
#' non-word characters related to the layout of the original documents.  For
#' analysis on the words, it is recommended that the data be processed with
#' packages such as \code{tm} and \code{stringr}.  See example below.
#'
#' @name ipo
#' @docType data
#' @format The format is a list of three character vectors.  Each vector
#' contains the line-by-line text of the IPO Prospectus of Facebook, Google,
#' and LinkedIn, respectively.
#' @references Zweig, J., 2020. Mark Zuckerberg: CEO For Life?. WSJ.
#' Available at: \url{http://blogs.wsj.com/totalreturn/2012/02/06/mark-zuckerberg-ceo-for-life}.
#' @source All IPO prospectuses are available from the U.S. Securities and Exchange Commission:
#' \href{http://www.sec.gov/Archives/edgar/data/1326801/000119312512034517/d287954ds1.htm}{Facebook},
#' \href{http://www.sec.gov/Archives/edgar/data/1288776/000119312504073639/ds1.htm}{Google},
#' \href{http://www.sec.gov/Archives/edgar/data/1271024/000119312511016022/ds1.htm}{LinkedIn}.
#' @keywords datasets ipo corpus text mining
#' @examples
#'
#' \dontrun{
#' library(tm)
#' library(wordcloud)
#'
#' # pre-process data
#' corp <- Corpus(VectorSource(ipo), readerControl=list(language="en"))
#' corp <- tm_map(corp, removePunctuation)
#' corp <- tm_map(corp, tolower)
#' corp <- tm_map(corp, removeNumbers)
#' corp <- tm_map(corp, function(x)removeWords(x,stopwords()))
#' f    <- corp[1] # facebook
#' g    <- corp[2] # google
#' l    <- corp[3] # linkedin
#'
#' tmat      <- TermDocumentMatrix(f)
#' m         <- as.matrix(tmat)
#' freq      <- rowSums(m)
#' words     <- rownames(m)
#' words.ord <- sort.int(freq, decreasing = T, index.return = F)
#' barplot(words.ord[1:15], las = 2)
#'
#' wordcloud(words, freq, min.freq = 100, col='blue')
#'
#' tmat <- TermDocumentMatrix(c(f, g))
#' m    <- as.matrix(tmat)
#' comparison.cloud(m, max.words = 100)
#' }
#'
"ipo"
