## code to prepare `danish.ed.validation` dataset goes here


load(here::here("data-raw/danish_ed_validation/ValidationDataTriageDB_Upload2017.rda"))
danish.ed.validation <- data
rm(data)

danish.ed.validation = rename(danish.ed.validation,
                           albumin = alb,
                           creatinine = crea,
                           hemaglobin = hb,
                           potassium = k,
                           leuk.count = leu,
                           sodium = natr,
                           c.react.protein = crp,
                           oxygen.sat = sat,
                           resp.rate = rf,
                           heart.rate = puls,
                           systolic.bp = bts,
                           days.in.hosp = LOS,
                           icu.status = ev_intensiv)


usethis::use_data(danish.ed.validation, overwrite = TRUE)
