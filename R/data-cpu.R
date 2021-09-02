#'  CPU's Released between 2010 and 2020.
#'
#'  Data on computer processors released between 2010 and 2020.
#'
#'
#' @format A data frame with 875 rows and 12 variables.
#' \describe{
#'   \item{company}{Manufacturer of the CPU.}
#'   \item{name}{Model name of the processor.}
#'   \item{codename}{Name given by manufacturer to all chips with this architecture.}
#'   \item{cores}{Number of compute cores per processor.}
#'   \item{threads}{The number of \emph{threads} represents the number of simultaneous calculations that can be ongoing in the processor.}
#'   \item{base_clock}{Base speed for the CPU in GHz.}
#'   \item{boost_clock}{Single-core max speed for the CPU in GHz.}
#'   \item{socket}{Specifies the type of connection to the motherboard.}
#'   \item{process}{Size of the process node used in production in nm.}
#'   \item{l3_cache}{Size of the level 3 cache on the processor in MB.}
#'   \item{tdp}{Total draw power of the processor.}
#'   \item{released}{Date which the processor was released to the public.}
#' }
#' @examples
#'
#' library(ggplot2)
#'
#' # CPU base speed
#' ggplot(cpu, aes(x = company, y = base_clock)) +
#'   geom_boxplot() +
#'   labs(
#'     x = "Company",
#'     y = "Base Clock (GHz)",
#'     title = "CPU base speed"
#'   )
#'
#' # Process node size vs. boost speed
#' ggplot(cpu, aes(x = process, y = boost_clock)) +
#'   geom_point() +
#'   labs(
#'     x = "Process node size (nm)",
#'     y = "Boost Clock (GHz)",
#'     title = "Process node size vs. boost speed"
#'   )
#' @source [TechPowerUp CPU Database](https://www.techpowerup.com/cpu-specs/?released=2019&sort=name).
#'
"cpu"
