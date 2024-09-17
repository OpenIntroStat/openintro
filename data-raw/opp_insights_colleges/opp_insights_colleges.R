library(tidyverse)

# https://opportunityinsights.org/data/
# Tables found under Mobility Report Cards: Income Segregation and Intergenerational
# Mobility Across Colleges in the United States
#
# merging tables 2 and 10 on super_opeid variable
# table 2: baseline cross-sectional estimates of parents', childrens' income distributions by college.
# table 2 (mrc_table2.csv) downloaded from  the Opportunity Insights Data  tab:
#      Baseline Cross-Sectional Estimates of Child and Parent Income Distributions by College
#
# table 10: college-level characteristics drawing from DOE IPEDS database in 2000 and 2013
# and the College Scorecard
# table 10 (mrc_table10.csv) downloaded from the  Opportunity Insights Data Tab:
#       College Level Characteristics from the IPEDS Database and the College Scorecard

mrc10 <- read_csv(here::here("data-raw/opp_insights_colleges/mrc_table10.csv"))
mrc2 <- read_csv(here::here("data-raw/opp_insights_colleges/mrc_table2.csv"))

#select variables
#
mrc10.subset <- mrc10 %>%
  dplyr::select(super_opeid, name, region, state, tier, tier_name, type, iclevel, barrons,
         exp_instr_pc_2000, exp_instr_pc_2013, hbcu,
         ipeds_enrollment_2000, ipeds_enrollment_2013,
         sticker_price_2000, sticker_price_2013,
         grad_rate_150_p_2002, grad_rate_150_p_2013,
         avgfacsal_2001, avgfacsal_2013,
         sat_avg_2001, sat_avg_2013,
         scorecard_netprice_2013, scorecard_rej_rate_2013, scorecard_median_earnings_2011,
         endowment_pc_2000,
         asian_or_pacific_share_fall_2000, black_share_fall_2000, hisp_share_fall_2000,
         alien_share_fall_2000,
         pct_arthuman_2000, pct_business_2000, pct_health_2000, pct_multidisci_2000,
         pct_publicsocial_2000, pct_stem_2000, pct_socialscience_2000, pct_tradepersonal_2000)

mrc2.subset <- mrc2 %>%
  dplyr::select(super_opeid, mr_kq5_pq1, mr_ktop1_pq1, par_mean, par_median,
         par_q1, par_q2, par_q3, par_q4, par_q5,
         par_top10pc, par_top5pc, par_top1pc, par_toppt1pc,
         k_mean, k_median, k_median_nozero, k_0inc,
         k_q1, k_q2, k_q3, k_q4, k_q5,
         k_top10pc, k_top5pc, k_top1pc,
         kq5_cond_parq1,
         ktop1pc_cond_parq1, ktop1pc_cond_parq2, ktop1pc_cond_parq3, ktop1pc_cond_parq4,
         ktop1pc_cond_parq5)

colleges <- inner_join(mrc10.subset, mrc2.subset, by = c("super_opeid" = "super_opeid"))

# Some notes:

  # - $k\_mean$: median individual income at age 34 (i.e., in 2014)
  # - Refer to Table 1 readme for information on preferred estimates of access and mobility rates by college.
  # - $mr\_k5\_pq1$: mobility rate, percent of students who moved from the bottom to top income quintile

# trim dataset for ISLBS use
#
colleges <- colleges %>%
  dplyr::select(super_opeid, name, region, state, tier, tier_name, type,
         exp_instr_pc_2013, ipeds_enrollment_2013, sticker_price_2013,
         scorecard_netprice_2013,
         grad_rate_150_p_2013, avgfacsal_2013, sat_avg_2013, endowment_pc_2000,
         mr_kq5_pq1, mr_ktop1_pq1, par_median,
         par_q1, par_q2, par_q3, par_q4, par_q5,
         par_top5pc, par_top1pc,
         k_median, k_top5pc, k_top1pc) %>%
         dplyr::filter(tier <= 11)

colleges$tier_name <- factor(colleges$tier, levels = 1:11,
                             labels = c("Ivy Plus", "Other elite schools (private and public)",
                                        "Highly selective public", "Highly selective private",
                                        "Selective public", "Selective private",
                                        "Nonselective 4-year public",
                                        "Nonselective 4-year private",
                                        "Two-year (public and private not-for-profit)",
                                        "Four-year for-profit",
                                        "Two-year for-profit"))

colleges$region <- factor(colleges$region)

colleges$type <- factor(colleges$type,
                        labels = c("public", "private non-profit",
                                   "for-profit"))



opp_insights_colleges <- colleges
opp_insights_colleges$tier <- NULL

usethis::use_data(opp_insights_colleges, overwrite = TRUE)

# subset data, remove unused factor levels
#
opp_insights_colleges_4year <- colleges %>%
  dplyr::filter(tier <= 8) %>%
  mutate(type = factor(type))

opp_insights_colleges_4year$tier <- NULL

usethis::use_data(opp_insights_colleges_4year, overwrite = TRUE)



