#' Helium football
#'
#' At the 1976 Pro Bowl, Ray Guy, a punter for the Oakland Raiders, punted a
#' ball that hung mid-air long enough for officials to question whether the
#' pigskin was filled with helium. The ball was found to be filled with air,
#' but since then many have tossed around the idea that a helium-filled
#' football would outdistance an air-filled one. Students at Ohio State
#' University conducted an experiment to test this myth. They used two
#' identical footballs, one air filled with air and one filled with helium.
#' Each football was kicked 39 times and the two footballs were alternated with
#' each kick.
#'
#' Lafferty, M. B. (1993), "OSU scientists get a kick out of sports
#' controversy, "The Columbus Dispatch (November, 21, 1993), B7.
#'
#' @name helium
#' @docType data
#' @format A data frame with 39 observations on the following 3 variables.
#' \describe{\item{trial}{Trial number.} \item{air}{Distance in years for
#' air-filled football.} \item{helium}{Distance in years for helium-filled
#' football.} }
#' @source Previously part of the Data and Story Library, \url{https://dasl.datadescription.com}.
#' Removed as of 2020.
#' @keywords datasets
#' @examples
#'
#'
#' boxPlot(helium$air, xlab = "air")
#' boxPlot(helium$helium, xlab = "helium")
"helium"
