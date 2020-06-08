#' US Airports
#'
#' Airports located in all regions with Federal Aviation Administration (FAA)
#' oversight.
#'
#' @format A data frame with 19615 rows and 14 variables:
#' \describe{
#'   \item{effective_date}{Information effective date. This date coincides with the 56-day charting and publication cycle date.}
#'   \item{state}{Associated state post office code standard two letter abbreviation for U.S. states and territories. (ex. IL, PR, CQ)}
#'   \item{region}{FAA region code. (AAL - Alaska, ACE - Central, AEA - Eastern, AGL - Great Lakes, ANE - New England, ANM - Northwest Mountain, ASO - Southern, ASW - Southwest, AWP - Western-Pacific)}
#'   \item{ado}{FAA district or field office code. (ex. CHI)}
#'   \item{city}{Associated city name. (ex. Chicago)}
#'   \item{county}{Associated county (or parish) name. (ex. Cook)}
#'   \item{facility_name}{Official facility name. (ex. Chicago O'Hare Intl)}
#'   \item{ownership}{Airport ownership type. (PU - Publicly owned, PR - Privately owned, MA - Air Force owned, MN - Navy owned, MR - Army owned, CG - Coast Guard owned)}
#'   \item{use}{Facility use. (PU - open to the public, PR - private)}
#'   \item{location_id}{Location identifier unique 3-4 character alphanumeric identifier assigned to the landing facility. (ex. 'ORD' for Chicago O'Hare)}
#'   \item{site_number}{Landing facility site number - a unique identifying number which, together with the landing facility type code, forms the key to the airport record. (ex. 04508.*A)}
#'   \item{arp_latitude}{Airport reference point latitude (formatted)}
#'   \item{arp_longitude}{Airport reference point longitude (formatted)}
#'   \item{cert_type_date}{Airport certification type and date. Format is the class code ('I', 'II', 'III' or 'IV') followed by a one characther code A, B, C, D, E, or L, followed by a one character code S or U, followed by the month and year of certification. (ex. 'I A S 07/1980', I C S 01/1983' or 'I A U 09/1983').  Codes A, B, C, D, and E are for airports having a full certificate under CFR Part 139, and receiving scheduled air carrier service from carriers certificated by the Civil Aeronautics Board.  The A, B, C, D, and E identify the aircraft rescue and firefighting index for the airport.  Code L is for airports having limited certification under CFR Part 139.  Code S is for Airports receiving scheduled air carrier service from carriers certificated by the Civil Aeronautics Board.  Code U is for airports not receiving this scheduled service.}
#' }
#' @source Retrieved from \url{https://www.faa.gov/airports/airport_safety/airportdata_5010}
#' on 2018-08-13.
#' @examples
#'
#' usairports
#'
"usairports"
