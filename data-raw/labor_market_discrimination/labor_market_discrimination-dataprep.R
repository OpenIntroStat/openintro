
# load libraries ----------------------------------------------------------------
library(dplyr)

# load data ---------------------------------------------------------------------
labor_market_discrimination <- rio::import(here::here("data-raw/labor_market_discrimination/lakisha_aer.dta")) %>% as_tibble()

# cleaning ----------------------------------------------------------------------

# remove formats and labels from Stata
labor_market_discrimination <- haven::zap_formats(labor_market_discrimination)
labor_market_discrimination <- haven::zap_label(labor_market_discrimination)

# rename vars using snake case
labor_market_discrimination <- labor_market_discrimination %>%
  rename(
    n_jobs = ofjobs,
    years_exp = yearsexp,
    emp_holes = empholes,
    occup_specific = occupspecific,
    occup_broad = occupbroad,
    work_in_school = workinschool,
    computer_skills = computerskills,
    special_skills = specialskills,
    first_name = firstname,
    ad_id = adid,
    frac_black = fracblack,
    frac_white = fracwhite,
    l_med_hh_inc = lmedhhinc,
    frac_dropout = fracdropout,
    frac_colp = fraccolp,
    l_inc = linc,
    exp_min_req = expminreq,
    school_req = schoolreq,
    frac_black_emp_zip = fracblack_empzip,
    frac_white_emp_zip = fracwhite_empzip,
    l_med_hh_inc_emp_zip = lmedhhinc_empzip,
    frac_dropout_emp_zip = fracdropout_empzip,
    frac_colp_emp_zip = fraccolp_empzip,
    l_inc_emp_zip  = linc_empzip,
    off_support = offsupport,
    sales_rep = salesrep,
    retail_sales = retailsales,
    exp_req = expreq,
    com_req = comreq,
    educ_req = educreq,
    comp_req = compreq,
    org_req = orgreq,
    trans_com = transcom,
    bank_real = bankreal,
    bus_service = busservice,
    oth_service = othservice,
    miss_ind = missind
  ) %>%
  select(-c(id, ad)) #removed as it's unclear what these represent

# save --------------------------------------------------------------------------
usethis::use_data(labor_market_discrimination, overwrite = TRUE)
