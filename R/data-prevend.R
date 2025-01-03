#' Data with Ruff Figural Fluency Test (RFFT) scores with demographic predictors and statin use.
#'
#' Data from the Prevention of REnal and Vascular END-stage Disease (PREVEND) study,
#' which took place in the Netherlands.  The study collected various demographic and
#' cardiovascular risk factors. This dataset is from the third survey,
#' which participants completed in 2003-2006;
#' data are provided for 4,095 individuals who completed cognitive testing with RFFT.
#'
#' @name prevend
#' @docType data
#' @encoding UTF-8
#' @format A tibble with 4095 rows and 31 variables:
#' \describe{
#'   \item{\code{Casenr}}{case number, numeric}
#'   \item{\code{Age}}{Numeric, age in years, recorded at time of enrollment.}
#'   \item{\code{Gender}}{Numeric vector: 0 = males; 1 = females.}
#'   \item{\code{Ethnicity}}{Numeric vector: 0 = Western European; 1 = African; 2 = Asian; 3 = Other.}
#'   \item{\code{Education}}{Highest level of education. Numeric: 0 primary school; 1 = lower secondary education; 3 = university.}
#'   \item{\code{RFFT}}{Numeric, performance on the Ruff Figural Fluency Test. Scores range from 0 (worst) to 175 (best).}
#'   \item{\code{VAT}}{Numeric, Visual Association Test score. The VAT is a learning task based on
#'   image recognition. Scores may range from 0 (worst) to 12 (best)}
#'   \item{\code{CVD}}{History of cardiovascular event. Numeric vector: 0 = No; 1 = Yes.}
#'   \item{\code{DM}}{Diabetes mellitus (Type 2 diabetes) status at enrollment.
#'   Numeric vector: 0 = No; 1 = Yes.}
#'   \item{\code{Smoking}}{Smoking status at enrollment. numeric vector: 0 = No; 1 = Yes.}
#'   \item{\code{Hypertension}}{status of hypertension at enrollment. Numeric vector: 0 = No; 1 = Yes.}
#'   \item{\code{BMI}}{Numeric, body mass index, weight divided by height-squared, in kg/m^2}
#'   \item{\code{SBP}}{Numeric, systolic blood pressure, in mmHg}
#'   \item{\code{DBP}}{Numeric, diastolic blood pressure, in mmHg}
#'   \item{\code{MAP}}{Numeric, mean arterial pressure, in mmHg}
#'   \item{\code{eGFR}}{Numeric, estimated glomerular filtration rate, a measure of kidney function.
#'   Low values indicate possible kidney damage, in mL/min.}
#'   \item{\code{Albuminuria.1}}{Albuminuria (mg/24hr) in two categories. Numeric vector:
#'    0 = (< 30); 1 = (\eqn{\ge} 30)}
#'   \item{\code{Albuminuria.2}}{Albuminuria (mg/24hr) in three categories.  Numeric:
#'   0 = (0  to < 10), 1 = (10 to < 30); 3 = (\eqn{\ge} 30).}
#'   \item{\code{Chol}}{Numeric, total cholesterol, in mmol/L.}
#'   \item{\code{HDL}}{Numeric, HDL cholesterol, in mmol/L.}
#'   \item{\code{Statin}}{Statin use at enrollment. Numeric vector: 0 = No; 1 = Yes. }
#'   \item{\code{Solubility}}{Statin solubility.Numeric vector: 0 = lipophilic; 1 = hydrophilic;
#'   2 = no statin use.  NA indicates statin solubility is missing.}
#'   \item{\code{Days}}{Numeric, total duration of statin use, in days. -1 indicates participant
#'   did not use statins}
#'   \item{\code{Years}}{Numeric, total duration of statin use, in years. -1 indicates participant
#'   did not use statins.}
#'   \item{\code{DDD}}{Defined daily dose of the statin.  Numeric vector: From the PLOS One
#'   paper, "DDD is defined by the WHO as the drug units representing dosages with approximately
#'   similar efficacy. One DDD corresponds to the following dosage for each statin respectively:
#'   Simvastatin 30 mg, Pravastatin 30 mg, Fluvastatin 60 mg, Atorvastatin 20 mg and
#'   Rosuvastatin 10 mg."}
#'   \item{\code{FRS}}{Framingham risk score. Numeric vector. The score, a measure of
#'   risk for a cardivascular event within 10 years.  Higher values imply increased use.
#'   For details see D’Agostino RBS, Vasan RS, Pencina MJ, Wolf PA, Cobain M, et al. (2008)
#'   General cardiovascular risk profile for use in primary care: The Framingham Heart Study.
#'   Circulation 117: 743–753.}
#'   \item{\code{PS}}{Propensity score of statin use. Numeric vector.
#'   See the PLOS One paper for the model used to calculate the score}
#'   \item{\code{PSquint}}{Quintile of PS. Numeric vector.}
#'   \item{\code{GRS}}{Indicator for random sample of 1638 Groningen residents in the study. Numeric vector.}
#'   \item{\code{Match_1}}{Numeric, statin users and non-users matched 1:1 on age and educational level.
#'   Matched pairs share a common integer label. -1 indicates participant not matched. }
#'   \item{\code{Match_2}}{Numeric, statin users and non-users matched 1:1 on Framingham risk score.
#'   Matched pairs share a common integer label. -1 indicates participant not matched}
#' }
#' @references{https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0115755}
#' @source \url{http://doi.org/10.5061/dryad.6qs53}

"prevend"

