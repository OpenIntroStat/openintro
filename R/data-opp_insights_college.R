#' College education and upward mobility
#'
#' Opportunity Insights (\url{https://opportunityinsights.org/}) is a research initiative
#' with the goal of understanding upward mobility in the United States by studying
#' barriers to economic opportunity and translating findings into policy recommendations.
#' These data consist of a subset on anonymized dataset gathered in 2017 on all
#' college students in the United States from 1999 - 2013 (30 million students)
#' study to examine the association of higher education system and upward mobility.
#' The data includes parental income distributions and student earnings outcomes
#' by college. The data in this package do not include tiers 12 (less than two year
#' schools of any type), 13 (students attending college with insufficient data),
#' and 14 (students not in college between the ages of 19-22). Monetary values
#' are measured in 2015 dollars; i.e. adjusted for inflation to 2015 dollars.
#'
#' @name opp_insights_colleges
#' @docType data
#' @format A dataframe with 2153 rows and 26 columns
#' \describe{
#'     \item{\code{super_opeid}}{Numeric, a college or university identifier constructed
#'     by the Opportunity Insights team based on tax records.
#'     It is similar but not identical to the U.S. Department of Education’s Office of
#'     Postsecondary Education ID (OPEID) and different from the ID in the  Integrated
#'     Postsecondary Education Data System (IPEDS).}
#'     \item{\code{name}}{Character vector, college name}
#'     \item{\code{region}}{Factor, with levels \code{1} (Northeast),
#'          \code{2} (Midwest), \code{3} (South), \code{4} (West)}
#'     \item{\code{state}}{Character vector, two letter state ID}
#'     \item{\code{tier_name}}{Character vector, selectivity and type of college with 8 values,
#'         \code{Ivy Plus}, \code{Other elite schools (private and public)},
#'         \code{Highly selective public}, \code{Highly selective private},
#'         \code{Selective public}, \code{Selective private},
#'         \code{Nonselective 4-year public}, \code{Nonselective 4-year private},
#'         \code{Two-year (public and private not-for-profit)},
#'         \code{Four-year for-profit},
#'         \code{Two-year for-profit}}
#'     \item{\code{type}}{Factor with 3 levels, \code{public},
#'         \code{private non-profit},
#'         \code{for-profit}}
#'     \item{\code{exp_instr_pc_2013}}{Numeric, instructional expenditures per student in 2013}
#'     \item{\code{ipeds_enrollment_2013}}{Numeric, total undergraduate enrollment in Fall 2013}
#'     \item{\code{sticker_price_2013}}{Numeric, average annual cost of attendance in 2013}
#'     \item{\code{scorecard_netprice_2013}}{Numeric, net annual cost of attendance for
#'         bottom income quintile in 2013}
#'     \item{\code{grad_rate_150_p_2013}}{Numeric, percentage of students graduating within
#'         150% of normal time in 2013}
#'     \item{\code{avgfacsal_2013}}{Numeric, average faculty salary in 2013}
#'     \item{\code{sat_avg_2013}}{Numeric, average SAT scores (scaled to 1600) in 2013}
#'     \item{\code{endowment_pc_2000}}{endowment assets per student in 2000}
#'     \item{\code{mr_kq5_pq1}}{Numeric, mobility rate, top 20% of the income distribution}
#'     \item{\code{mr_ktop1_pq1}}{Numeric, mobility rate, top 1% of the income distribution}
#'     \item{\code{par_median}}{Numeric, median parent household income}
#'     \item{\code{par_q1}}{Numeric, fraction of parents in first (bottom) income quintile}
#'     \item{\code{par_q2}}{Numeric, fraction of parents in second income quintile}
#'     \item{\code{par_q3}}{Numeric, fraction of parents in third income quintile}
#'     \item{\code{par_q4}}{Numeric, fraction of parents in fourth income quintile}
#'     \item{\code{par_q5}}{Numeric, fraction of parents in fifth income quintile}
#'     \item{\code{par_top5pc}}{Numeric, fraction of parents in top 5% of income distribution}
#'     \item{\code{par_top1pc}}{Numeric, fraction of parents in top 1% of income distribution}
#'     \item{\code{k_median}}{Numeric, median child individual earnings in 2014 (at age 34)}
#'     \item{\code{k_top5pc}}{Numeric, fraction of children in top 5% of income distribution}
#'     \item{\code{k_top1pc}}{Numeric, fraction of children in top 1% of income distribution}
#' }
#' @references Chetty, Raj, et al. "Income segregation and intergenerational mobility
#'     across colleges in the United States."
#'     The Quarterly Journal of Economics 135.3 (2020): 1567-1633.
#' @source Tables \code{mrc_table2.csv} and \code{mrc_table10.csv} from \url{https://opportunityinsights.org/data/}
#'
"opp_insights_colleges"
