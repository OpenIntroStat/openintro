#' Data frame representing information about a collection of emails
#'
#' These data represent incoming emails for the first three months of 2012 for
#' an email account (see Source).
#'
#'
#' @name email
#' @aliases email email_test
#' @docType data
#' @format A \code{email} (\code{email_sent}) data frame has 3921 (1252)
#' observations on the following 21 variables.
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
#' @seealso \code{\link{email50}}
#' @source David Diez's Gmail Account, early months of 2012. All personally identifiable information has been removed.
#' @keywords datasets
#' @examples
#'
#' e <- email
#'
#' # ______ Variables For Logistic Regression ______#
#' # Variables are modified to match
#' #   OpenIntro Statistics, Second Edition
#' # As Is (7): spam, to_multiple, winner, format,
#' #            re_subj, exclaim_subj
#' # Omitted (6): from, sent_email, time, image,
#' #              viagra, urgent_subj, number
#' # Become Indicators (5): cc, attach, dollar,
#' #                        inherit, password
#' e$cc <- ifelse(email$cc > 0, 1, 0)
#' e$attach <- ifelse(email$attach > 0, 1, 0)
#' e$dollar <- ifelse(email$dollar > 0, 1, 0)
#' e$inherit <- ifelse(email$inherit > 0, 1, 0)
#' e$password <- ifelse(email$password > 0, 1, 0)
#' # Transform (3): num_char, line_breaks, exclaim_mess
#' # e$num_char     <- cut(email$num_char, c(0,1,5,10,20,1000))
#' # e$line_breaks  <- cut(email$line_breaks, c(0,10,100,500,10000))
#' # e$exclaim_mess <- cut(email$exclaim_mess, c(-1,0,1,5,10000))
#' g <- glm(
#'   spam ~ to_multiple + winner + format +
#'     re_subj + exclaim_subj +
#'     cc + attach + dollar +
#'     inherit + password, # +
#'   # num_char + line_breaks + exclaim_mess,
#'   data = e, family = binomial
#' )
#' summary(g)
#'
#'
#' # ______ Variable Selection Via AIC ______#
#' g. <- step(g)
#' plot(predict(g., type = "response"), e$spam)
#'
#'
#' # ______ Splitting num_char by html ______#
#' x <- log(email$num_char)
#' bw <- 0.004
#' R <- range(x) + c(-1, 1)
#' wt <- sum(email$format == 1) / nrow(email)
#' htmlAll <- density(x, bw = 0.4, from = R[1], to = R[2])
#' htmlNo <- density(x[email$format != 1],
#'   bw = 0.4,
#'   from = R[1], to = R[2]
#' )
#' htmlYes <- density(x[email$format == 1],
#'   bw = 0.4,
#'   from = R[1], to = R[2]
#' )
#' htmlNo$y <- htmlNo$y #* (1-wt)
#' htmlYes$y <- htmlYes$y #* wt + htmlNo$y
#' plot(htmlAll, xlim = c(-4, 6), ylim = c(0, 0.4))
#' lines(htmlNo, col = 4)
#' lines(htmlYes, lwd = 2, col = 2)
"email"
