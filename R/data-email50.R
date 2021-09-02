#' Sample of 50 emails
#'
#' This is a subsample of the \code{\link{email}} data set.
#'
#'
#' @name email50
#' @docType data
#' @format A data frame with 50 observations on the following 21 variables.
#' \describe{
#'   \item{spam}{Indicator for whether the email was spam.}
#'   \item{to_multiple}{Indicator for whether the email was addressed to more than one recipient.}
#'   \item{from}{Whether the message was listed as from anyone (this is usually set by default for regular outgoing email).}
#'   \item{cc}{Number of people cc'ed.}
#'   \item{sent_email}{Indicator for whether the sender had been sent an email in the last 30 days.}
#'   \item{time}{Time at which email was sent.}
#'   \item{image}{The number of images attached.}
#'   \item{attach}{The number of attached files.}
#'   \item{dollar}{The number of times a dollar sign or the word \dQuote{dollar} appeared in the email.}
#'   \item{winner}{Indicates whether \dQuote{winner} appeared in the email.}
#'   \item{inherit}{The number of times \dQuote{inherit} (or an extension, such as \dQuote{inheritance}) appeared in the email.}
#'   \item{viagra}{The number of times \dQuote{viagra} appeared in the email.}
#'   \item{password}{The number of times \dQuote{password} appeared in the email.}
#'   \item{num_char}{The number of characters in the email, in thousands.}
#'   \item{line_breaks}{The number of line breaks in the email (does not count text wrapping).}
#'   \item{format}{Indicates whether the email was written using HTML (e.g. may have included bolding or active links).}
#'   \item{re_subj}{Whether the subject started with \dQuote{Re:}, \dQuote{RE:}, \dQuote{re:}, or \dQuote{rE:}}
#'   \item{exclaim_subj}{Whether there was an exclamation point in the subject.}
#'   \item{urgent_subj}{Whether the word \dQuote{urgent} was in the email subject.}
#'   \item{exclaim_mess}{The number of exclamation points in the email message.}
#'   \item{number}{Factor variable saying whether there was no number, a small number (under 1 million), or a big number.}
#'   }
#' @seealso \code{\link{email}}
#' @source David Diez's Gmail Account, early months of 2012. All personally identifiable information has been removed.
#' @keywords datasets
#' @examples
#'
#' index <- c(
#'   101, 105, 116, 162, 194, 211, 263, 308, 361, 374,
#'   375, 465, 509, 513, 571, 691, 785, 842, 966, 968,
#'   1051, 1201, 1251, 1433, 1519, 1727, 1760, 1777, 1899, 1920,
#'   1943, 2013, 2052, 2252, 2515, 2629, 2634, 2710, 2823, 2835,
#'   2944, 3098, 3227, 3360, 3452, 3496, 3530, 3665, 3786, 3877
#' )
#' order <- c(
#'   3, 33, 12, 1, 21, 15, 43, 49, 8, 6,
#'   34, 25, 24, 35, 41, 9, 22, 50, 4, 48,
#'   7, 14, 46, 10, 38, 32, 26, 18, 23, 45,
#'   30, 16, 17, 20, 40, 47, 31, 37, 27, 11,
#'   5, 44, 29, 19, 13, 36, 39, 42, 28, 2
#' )
#' d <- email[index, ][order, ]
#' identical(d, email50)
"email50"
