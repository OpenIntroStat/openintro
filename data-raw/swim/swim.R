# loading table 3 from de Lucas JSAMS 2000 3(1)
#
swim_table_3_delucas <- readr::read_csv(here::here("data-raw/swim/swim_table_3_delucas.csv"))

swim <- swim_table_3_delucas

swim <- swim %>%
  mutate(velocity.diff = wet.suit.velocity
         - swim.suit.velocity) %>%
  mutate(swimmer.sex = as.factor(swimmer.sex)) %>%
  mutate(swimmer.class = as.factor(swimmer.class))

usethis::use_data(swim, overwrite = TRUE)
