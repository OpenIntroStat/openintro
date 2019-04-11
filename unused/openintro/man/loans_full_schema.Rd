\name{loans_full_schema}
\alias{loans_full_schema}
\alias{loan50}
\docType{data}
\title{
  Loan data from Lending Club
}
\description{
  The data sets represented here cover thousands of loans
  through the Lending Club platform,
  which is a platform that allows
  individuals to lend to other individuals. Of course, not all
  loans are created equal. Someone who is a essentially a sure
  bet to pay back a loan will have an easier time getting
  a loan with a low interest rate than someone who appears
  to be riskier. And for people who are very risky? They may
  not even get a loan offer, or they may not have accepted
  the loan offer due to a high interest rate. It is important
  to keep that last part in mind, since this data set only
  represents loans actually made, i.e. do not mistake this
  data for loan applications!
}
\usage{data("loans_full_schema")}
\format{
  \code{loans_full_schema} is a data frame with
  10,000 observations on the following 56 variables.
  \code{loans50} is a data frame with 50 observations
  that includes 15 of the following variables.
  \describe{
    \item{\code{emp_title}}{Job title.}
    \item{\code{emp_length}}{Number of years in the job, rounded down.
        If longer than 10 years, then this is represented by the value
        \code{10}.}
    \item{\code{state}}{Two-letter state code.}
    \item{\code{home_ownership}}{The ownership status of the
        applicant's residence.}
    \item{\code{annual_income}}{Annual income.}
    \item{\code{verified_income}}{Type of verification
        of the applicant's income.}
    \item{\code{debt_to_income}}{Debt-to-income ratio.}
    \item{\code{annual_income_joint}}{If this is a joint application,
        then the annual income of the two parties applying.}
    \item{\code{verification_income_joint}}{Type of verification of
        the joint income.}
    \item{\code{debt_to_income_joint}}{Debt-to-income ratio for the
        two parties.}
    \item{\code{delinq_2y}}{Delinquencies on lines of credit in the
        last 2 years.}
    \item{\code{months_since_last_delinq}}{Months since the last
        delinquency.}
    \item{\code{earliest_credit_line}}{Year of the applicant's
        earliest line of credit}
    \item{\code{inquiries_last_12m}}{Inquiries into the applicant's
        credit during the last 12 months.}
    \item{\code{total_credit_lines}}{Total number of credit lines
        in this applicant's credit history.}
    \item{\code{open_credit_lines}}{Number of currently open lines
        of credit.}
    \item{\code{total_credit_limit}}{Total available credit, e.g.
        if only credit cards, then the total of all the credit limits.
        This excludes a mortgage.}
    \item{\code{total_credit_utilized}}{Total credit balance,
        excluding a mortgage.}
    \item{\code{num_collections_last_12m}}{Number of collections
        in the last 12 months. This excludes medical collections.}
    \item{\code{num_historical_failed_to_pay}}{The number of
        derogatory public records, which roughly means the
        number of times the applicant failed to pay.}
    \item{\code{months_since_90d_late}}{Months since the last time
        the applicant was 90 days late on a payment.}
    \item{\code{current_accounts_delinq}}{Number of accounts where
        the applicant is currently delinquent.}
    \item{\code{total_collection_amount_ever}}{The total amount
        that the applicant has had against them in collections.}
    \item{\code{current_installment_accounts}}{Number of installment
        accounts, which are (roughly) accounts with a fixed payment
        amount and period. A typical example might be a 36-month
        car loan.}
    \item{\code{accounts_opened_24m}}{Number of new lines of credit
        opened in the last 24 months.}
    \item{\code{months_since_last_credit_inquiry}}{Number of months
        since the last credit inquiry on this applicant.}
    \item{\code{num_satisfactory_accounts}}{Number of satisfactory
        accounts.}
    \item{\code{num_accounts_120d_past_due}}{Number of current
        accounts that are 120 days past due.}
    \item{\code{num_accounts_30d_past_due}}{Number of current
        accounts that are 30 days past due.}
    \item{\code{num_active_debit_accounts}}{Number of currently
        active bank cards.}
    \item{\code{total_debit_limit}}{Total of all bank card limits.}
    \item{\code{num_total_cc_accounts}}{Total number of credit card
        accounts in the applicant's history.}
    \item{\code{num_open_cc_accounts}}{Total number of currently
        open credit card accounts.}
    \item{\code{num_cc_carrying_balance}}{Number of credit cards
        that are carrying a balance.}
    \item{\code{num_mort_accounts}}{Number of mortgage accounts.}
    \item{\code{account_never_delinq_percent}}{Percent of all lines
        of credit where the applicant was never delinquent.}
    \item{\code{tax_liens}}{a numeric vector}
    \item{\code{public_record_bankrupt}}{Number of bankruptcies
        listed in the public record for this applicant.}
    \item{\code{loan_purpose}}{The category for the purpose
        of the loan.}
    \item{\code{application_type}}{The type of application: either
    	\code{individual} or \code{joint}.}
    \item{\code{loan_amount}}{The amount of the loan the
        applicant received.}
    \item{\code{term}}{The number of months of the loan
        the applicant received.}
    \item{\code{interest_rate}}{Interest rate of the loan
        the applicant received.}
    \item{\code{installment}}{Monthly payment for the loan the
        applicant received.}
    \item{\code{grade}}{Grade associated with the loan.}
    \item{\code{sub_grade}}{Detailed grade associated with the loan.}
    \item{\code{issue_month}}{Month the loan was issued.}
    \item{\code{loan_status}}{Status of the loan.}
    \item{\code{initial_listing_status}}{Initial listing status
        of the loan. (I think this has to do with whether the
        lender provided the entire loan or if the loan is across
        multiple lenders.)}
    \item{\code{disbursement_method}}{Dispersement method of the loan.}
    \item{\code{balance}}{Current balance on the loan.}
    \item{\code{paid_total}}{Total that has been paid on the loan by the
        applicant.}
    \item{\code{paid_principal}}{The difference between the original loan
    	    amount and the current balance on the loan.}
    \item{\code{paid_interest}}{The amount of interest paid so far by the
        applicant.}
    \item{\code{paid_late_fees}}{Late fees paid by the applicant.}
  }
}
\source{
  This data comes from Lending Club
  (\url{https://www.lendingclub.com/info/download-data.action}),
  which provides a large set of data on the people
  who received loans through their platform.
}
\examples{
head(loans_full_schema)
head(loan50)
d <- loans_full_schema


# _____ Summarizing Data Sections _____ #
x <- d$homeownership
y <- d$application_type
(t1 <- table(x, y))
apply(t1, 1, sum)
prop.table(t1, 1)
prop.table(t1, 2)
barplot(t1)
barplot(t1, beside = TRUE)
barplot(prop.table(t1, 2))
mosaicplot(apply(t1, 2, sum))
mosaicplot(t(t1))
mosaicplot(t1)
pie(apply(t1, 1, sum))
barplot(apply(t1, 1, sum))


# _____ Multiple regression, initial fit and variable selection _____ #
d$credit_util <- round(ifelse(d$total_credit_limit == 0, 0,
    d$total_credit_utilized / d$total_credit_limit), 4)
d$past_bankr <- (d$public_record_bankrupt > 0) + 0
dim(d)

par(mfrow = c(2, 4))
boxPlot(d$interest_rate, d$verified_income)
plot(d$debt_to_income, d$interest_rate)
boxPlot(d$interest_rate, d$term)
plot(d$current_installment_accounts, d$interest_rate)
# boxPlot(d$interest_rate, d$issue_month)
plot(d$total_debit_limit, d$interest_rate)
plot(d$inquiries_last_12m, d$interest_rate)


# Renaming some variables for convenience
d$ver_income <- ifelse(d$verified_income == "Verified", "verified",
    ifelse(d$verified_income == "Not Verified", "not", "source_only"))
d$credit_checks <- d$inquiries_last_12m
d$issued <- gsub("-", "", d$issue_month, fixed = TRUE)
these <- d$annual_income \%in\% 0:1
d$debt_to_income[these] <- d$total_credit_utilized[these] /
    d$annual_income_joint[these]
# Variables for the model
co <- c(
    "ver_income",
    "debt_to_income",
    "credit_util",
    "past_bankr",
    "term",
    "issued",
    # "total_debit_limit",
    "credit_checks")
head(d[, c("interest_rate", co)])
F <- function(x, sub = 1:length(x)) {
  as.formula(paste("interest_rate ~", paste(x[sub], collapse = "+")))
}
AdjR2 <- function(x) {
  summary(x)$adj.r.squared
}
m <- lm(F(co), data = d); summary(m); AdjR2(m)
# m <- lm(F(co, -4), data = d); summary(m); AdjR2(m)
m <- lm(F(co, -6), data = d); summary(m); AdjR2(m)
# m <- lm(F(co, -c(4, 6)), data = d); summary(m); AdjR2(m)


# Diagnostics
\dontrun{
# Normality (not critical here)
qqnorm(m$residuals)
qqline(m$residuals)

# Homoskedasticity
library(ggplot2)
my_geom <- c("point", "smooth")
qplot(m$fitted, abs(m$residuals), geom = my_geom)

# Residuals against predictors
# boxPlot(m$residuals, d$ver_income)
qplot(d$debt_to_income, m$residuals, geom = my_geom)
qplot(d$credit_util, m$residuals, geom = my_geom)
# boxPlot(m$residuals, d$past_bankr)
# boxPlot(m$residuals, d$term)
qplot(d$total_debit_limit, m$residuals, geom = my_geom)
qplot(d$credit_checks, m$residuals, geom = my_geom)
}


# Refitting with square root of debit limit.
d$debt_to_income_capped_at_50 <-
    ifelse(d$debt_to_income > 50, 50, d$debt_to_income)
co <- c(
    "ver_income",
    "debt_to_income_capped_at_50",
    "credit_util",
    "past_bankr",
    "term",
    "issued",
    # "sqrt(total_debit_limit)",
    "credit_checks")
m <- lm(F(co), data = d); summary(m); AdjR2(m)
# m <- lm(F(co, -4), data = d); summary(m); AdjR2(m)
m <- lm(F(co, -6), data = d); summary(m); AdjR2(m)
# m <- lm(F(co, -c(4, 6)), data = d); summary(m); AdjR2(m)

# Diagnostics for refitted model
\dontrun{
qplot(d$debt_to_income_capped_at_50, m$residuals, geom = my_geom)
qplot(d$credit_util, m$residuals, geom = my_geom)
qplot(sqrt(d$total_debit_limit), m$residuals, geom = my_geom)
qplot(d$credit_checks, m$residuals, geom = my_geom)
}

}
\keyword{datasets}
