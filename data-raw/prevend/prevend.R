

##########################
#
# Code to read prevend dataset
# and create random sample
#
# source is http://doi.org/10.5061/dryad.6qs53.
#
#  Data dictionary in references folder
#  README_for_Cognition_statin_use_Groningen_the_Netherlands.pdf
#
# #########################

prevend <- readr::read_delim(here::here("data-raw/prevend/Cognition statin use Groningen the Netherlands.csv"),
                        delim = ";", escape_double = FALSE,
                        locale = locale(decimal_mark = ","),
                        trim_ws = TRUE)

prevend <- prevend %>%
  mutate(VAT = na_if(VAT, -1)) %>%
  mutate(Smoking = na_if(Smoking, -1)) %>%
  mutate(HDL = na_if(HDL, -1)) %>%
  mutate(Solubility = na_if(Solubility, -1)) %>%
  mutate(FRS = na_if(FRS, -1)) %>%
  mutate(PS = na_if(PS, -1)) %>%
  mutate(PSquint = na_if(PSquint, -1))


usethis::use_data(prevend, overwrite = TRUE)

num.rows.prevend = nrow(prevend)

#set.seed(5011)
# calling set.seed to match older version of RNG

set.seed(5011, sample.kind = "Rounding")
row.num = sample(1:num.rows.prevend, 500, replace = FALSE)
prevend.samp = prevend[row.num, ]


usethis::use_data(prevend.samp, overwrite = TRUE)
