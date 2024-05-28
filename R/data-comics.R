#' comics
#'
#' A data frame containing information about comic book characters from Marvel Comics and DC Comics.
#'
#'
#' @name comics
#' @docType data
#' @format A data frame with 21821 observations on the following 11 variables.
#' \describe{
#'   \item{name}{Name of the character. May include: Real name, hero or villain name,  alias(es) and/or which universe they live in (i.e. Earth-616 in Marvel's multiverse).}
#'   \item{id}{Status of the characters identity with levels `Secret`, `Publie`, `No Dual` and `Unknown`.}
#'   \item{align}{Character's alignment with levels `Good`, `Bad`, `Neutral` and `Reformed Criminals`.}
#'   \item{eye}{Character's eye color.}
#'   \item{hair}{Character's hair color.}
#'   \item{gender}{Character's gender.}
#'   \item{gsm}{Character's classification as a gender or sexual minority.}
#'   \item{alive}{Is the character dead or alive?}
#'   \item{appearances}{Number of comic boooks the character appears in.}
#'   \item{first_appear}{Date of publication for the comic book the character first appeared in.}
#'   \item{publisher}{Publisher of the comic with levels `Marvel` and `DC`.}
#' }
#' @keywords datasets
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' # Good v Bad
#'
#' plot_data <- comics |>
#'   filter(align == "Good" | align == "Bad")
#'
#' ggplot(plot_data, aes(x = align, fill = align)) +
#'   geom_bar() +
#'   facet_wrap(~publisher) +
#'   scale_fill_manual(values = c(IMSCOL["red", "full"], IMSCOL["blue", "full"])) +
#'   theme_minimal() +
#'   labs(
#'     title = "Is there a balance of power",
#'     x = "",
#'     y = "Number of characters",
#'     fill = ""
#'   )
"comics"
