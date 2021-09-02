#' Housing prices in Ames, Iowa
#'
#' Data set contains information from the Ames Assessor's Office used in
#' computing assessed values for individual residential properties sold in
#' Ames, IA from 2006 to 2010. See [here](http://jse.amstat.org/v19n3/decock/DataDocumentation.txt)
#' for detailed variable descriptions.
#'
#' @format A tbl_df with with 2930 rows and 82 variables:
#' \describe{
#'   \item{Order}{Observation number.}
#'   \item{PID}{Parcel identification number  - can be used with city web site
#'   for parcel review.}
#'   \item{area}{Above grade (ground) living area square feet.}
#'   \item{price}{Sale price in USD.}
#'   \item{MS.SubClass}{Identifies the type of dwelling involved in the sale.}
#'   \item{MS.Zoning}{Identifies the general zoning classification of the sale.}
#'   \item{Lot.Frontage}{Linear feet of street connected to property.}
#'   \item{Lot.Area}{Lot size in square feet.}
#'   \item{Street}{Type of road access to property.}
#'   \item{Alley}{Type of alley access to property.}
#'   \item{Lot.Shape}{General shape of property.}
#'   \item{Land.Contour}{Flatness of the property.}
#'   \item{Utilities}{Type of utilities available.}
#'   \item{Lot.Config}{Lot configuration.}
#'   \item{Land.Slope}{Slope of property.}
#'   \item{Neighborhood}{Physical locations within Ames city limits (map
#'   available).}
#'   \item{Condition.1}{Proximity to various conditions.}
#'   \item{Condition.2}{Proximity to various conditions (if more than one is
#'   present).}
#'   \item{Bldg.Type}{Type of dwelling.}
#'   \item{House.Style}{Style of dwelling.}
#'   \item{Overall.Qual}{Rates the overall material and finish of the house.}
#'   \item{Overall.Cond}{Rates the overall condition of the house.}
#'   \item{Year.Built}{Original construction date.}
#'   \item{Year.Remod.Add}{Remodel date (same as construction date if no
#'   remodeling or additions).}
#'   \item{Roof.Style}{Type of roof.}
#'   \item{Roof.Matl}{Roof material.}
#'   \item{Exterior.1st}{Exterior covering on house.}
#'   \item{Exterior.2nd}{Exterior covering on house (if more than one material).}
#'   \item{Mas.Vnr.Type}{Masonry veneer type.}
#'   \item{Mas.Vnr.Area}{Masonry veneer area in square feet.}
#'   \item{Exter.Qual}{Evaluates the quality of the material on the exterior.}
#'   \item{Exter.Cond}{Evaluates the present condition of the material on the
#'   exterior.}
#'   \item{Foundation}{Type of foundation.}
#'   \item{Bsmt.Qual}{Evaluates the height of the basement.}
#'   \item{Bsmt.Cond}{Evaluates the general condition of the basement.}
#'   \item{Bsmt.Exposure}{Refers to walkout or garden level walls.}
#'   \item{BsmtFin.Type.1}{Rating of basement finished area.}
#'   \item{BsmtFin.SF.1}{Type 1 finished square feet.}
#'   \item{BsmtFin.Type.2}{Rating of basement finished area (if multiple types).}
#'   \item{BsmtFin.SF.2}{Type 2 finished square feet.}
#'   \item{Bsmt.Unf.SF}{Unfinished square feet of basement area.}
#'   \item{Total.Bsmt.SF}{Total square feet of basement area.}
#'   \item{Heating}{Type of heating.}
#'   \item{Heating.QC}{Heating quality and condition.}
#'   \item{Central.Air}{Central air conditioning.}
#'   \item{Electrical}{Electrical system.}
#'   \item{X1st.Flr.SF}{First Floor square feet.}
#'   \item{X2nd.Flr.SF}{Second floor square feet.}
#'   \item{Low.Qual.Fin.SF}{Low quality finished square feet (all floors).}
#'   \item{Bsmt.Full.Bath}{Basement full bathrooms.}
#'   \item{Bsmt.Half.Bath}{Basement half bathrooms.}
#'   \item{Full.Bath}{Full bathrooms above grade.}
#'   \item{Half.Bath}{Half baths above grade.}
#'   \item{Bedroom.AbvGr}{Bedrooms above grade (does NOT include basement
#'   bedrooms).}
#'   \item{Kitchen.AbvGr}{Kitchens above grade.}
#'   \item{Kitchen.Qual}{Kitchen quality.}
#'   \item{TotRms.AbvGrd}{Total rooms above grade (does not include bathrooms).}
#'   \item{Functional}{Home functionality (Assume typical unless deductions are
#'   warranted).}
#'   \item{Fireplaces}{Number of fireplaces.}
#'   \item{Fireplace.Qu}{Fireplace quality.}
#'   \item{Garage.Type}{Garage location.}
#'   \item{Garage.Yr.Blt}{Year garage was built.}
#'   \item{Garage.Finish}{Interior finish of the garage.}
#'   \item{Garage.Cars}{Size of garage in car capacity.}
#'   \item{Garage.Area}{Size of garage in square feet.}
#'   \item{Garage.Qual}{Garage quality.}
#'   \item{Garage.Cond}{Garage condition.}
#'   \item{Paved.Drive}{Paved driveway.}
#'   \item{Wood.Deck.SF}{Wood deck area in square feet.}
#'   \item{Open.Porch.SF}{Open porch area in square feet.}
#'   \item{Enclosed.Porch}{Enclosed porch area in square feet.}
#'   \item{X3Ssn.Porch}{Three season porch area in square feet.}
#'   \item{Screen.Porch}{Screen porch area in square feet.}
#'   \item{Pool.Area}{Pool area in square feet.}
#'   \item{Pool.QC}{Pool quality.}
#'   \item{Fence}{Fence quality.}
#'   \item{Misc.Feature}{Miscellaneous feature not covered in other categories.}
#'   \item{Misc.Val}{Dollar value of miscellaneous feature.}
#'   \item{Mo.Sold}{Month Sold (MM).}
#'   \item{Yr.Sold}{Year Sold (YYYY).}
#'   \item{Sale.Type}{Type of sale.}
#'   \item{Sale.Condition}{Condition of sale.}
#' }
#' @source De Cock, Dean. "Ames, Iowa: Alternative to the Boston housing data as
#' an end of semester regression project." Journal of Statistics Education 19.3
#' (2011).
"ames"
