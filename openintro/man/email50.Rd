\name{email50}
\alias{email50}
\docType{data}
\title{ Sample of 50 emails }
\description{ This is a subsample of the \code{\link{email}} data set. }
\usage{data(email50)}
\format{
  A data frame with 50 observations on the following 21 variables.
  \describe{
    \item{\code{spam}}{Indicator for whether the email was spam.}
    \item{\code{to_multiple}}{Indicator for whether the email was addressed to more than one recipient.}
    \item{\code{from}}{Whether the message was listed as from anyone (this is usually set by default for regular outgoing email).}
    \item{\code{cc}}{Indicator for whether anyone was CCed.}
    \item{\code{sent_email}}{Indicator for whether the sender had been sent an email in the last 30 days.}
    \item{\code{time}}{Time at which email was sent.}
    \item{\code{image}}{The number of images attached.}
    \item{\code{attach}}{The number of attached files.}
    \item{\code{dollar}}{The number of times a dollar sign or the word \dQuote{dollar} appeared in the email.}
    \item{\code{winner}}{Indicates whether \dQuote{winner} appeared in the email.}
    \item{\code{inherit}}{The number of times \dQuote{inherit} (or an extension, such as \dQuote{inheritance}) appeared in the email.}
    \item{\code{viagra}}{The number of times \dQuote{viagra} appeared in the email.}
    \item{\code{password}}{The number of times \dQuote{password} appeared in the email.}
    \item{\code{num_char}}{The number of characters in the email, in thousands.}
    \item{\code{line_breaks}}{The number of line breaks in the email (does not count text wrapping).}
    \item{\code{format}}{Indicates whether the email was written using HTML (e.g. may have included bolding or active links).}
    \item{\code{re_subj}}{Whether the subject started with \dQuote{Re:}, \dQuote{RE:}, \dQuote{re:}, or \dQuote{rE:}}
    \item{\code{exclaim_subj}}{Whether there was an exclamation point in the subject.}
    \item{\code{urgent_subj}}{Whether the word \dQuote{urgent} was in the email subject.}
    \item{\code{exclaim_mess}}{The number of exclamation points in the email message.}
%    \item{\code{period_mess}}{The number of periods in the message.}
%    \item{\code{signoff}}{Whether a sign-off of \dQuote{Cheers}, \dQuote{Regards}, or \dQuote{Best} (also, \dQuote{Best Regards}) was used.}
    \item{\code{number}}{Factor variable saying whether there was no number, a small number (under 1 million), or a big number.}
  }
}
\source{ David Diez's Gmail Account, early months of 2012. All personally identifiable information has been removed. }
\references{
~~ OpenIntro Statistics, \href{http://www.openintro.org/stat/textbook.php}{openintro.org} ~~
}
\seealso{ \code{\link{email}}, \code{\link{county}} }
\examples{
data(email50)
data(email)
set.seed(5)
d  <- email[sample(nrow(email), 50),][c(1:25,27:50,26),]
identical(d, email50)

# the "[c(1,26,2:25,27:50),]" was added to reorder the cases
}
\keyword{datasets}
