
# Load data.
c1 <- read.delim("covid_period_20210124.tsv")
c2 <- read.delim("covid_period_20210215.tsv")

# Confirm each of the three sources of data underlying each data set
# have a consistent state/territory order.
head(c1)
head(c2)
all(c1$state == c1$state2)
all(c1$state == c1$state3)
all(c2$state == c2$state2)
all(c2$state == c2$state3)
all(c1$state == c2$state)
c1$state2 <- NULL
c1$state3 <- NULL
c2$state2 <- NULL
c2$state3 <- NULL
names(c1)[-1] <- paste0(names(c1)[-1], "_t1")
names(c2)[-1] <- paste0(names(c2)[-1], "_t2")
covid_pos_rate <-
  merge(c1, c2, by = "state") %>%
  subset(state %in% usdata::state_stats$state)
head(covid_pos_rate)

select(
  covid_pos_rate,
  state,
  new_cases_per_100k_t1,
  new_deaths_per_100k_t2
)
qplot(
  # new_cases_per_100k_t1,
  test_pos_rate_t1,
  new_deaths_per_100k_t2,
  data = covid_pos_rate
)
m <- lm(
  (new_deaths_per_100k_t2) ~ test_pos_rate_t1 + (new_cases_per_100k_t1),
  data = subset(covid_pos_rate, state != "Ohio")
)
summary(m)


usethis::use_data(covid_pos_rate, overwrite = TRUE)
