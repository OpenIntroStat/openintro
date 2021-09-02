# Ran this back in Nov 2020 to scrape data

library(rvest)
library(tidyverse)

# pages ------------------------------------------------------------------------

page1 <- read_html("https://www.zillow.com/homes/recently_sold/?searchQueryState=%7B%22usersSearchTerm%22%3A%2227705%22%2C%22mapBounds%22%3A%7B%22west%22%3A-78.97046046561346%2C%22east%22%3A-78.91123729056463%2C%22south%22%3A35.96344578386982%2C%22north%22%3A36.00664470880978%7D%2C%22isMapVisible%22%3Atrue%2C%22filterState%22%3A%7B%22ah%22%3A%7B%22value%22%3Atrue%7D%2C%22sch%22%3A%7B%22value%22%3Atrue%7D%2C%22rs%22%3A%7B%22value%22%3Atrue%7D%2C%22fsba%22%3A%7B%22value%22%3Afalse%7D%2C%22fsbo%22%3A%7B%22value%22%3Afalse%7D%2C%22nc%22%3A%7B%22value%22%3Afalse%7D%2C%22cmsn%22%3A%7B%22value%22%3Afalse%7D%2C%22auc%22%3A%7B%22value%22%3Afalse%7D%2C%22fore%22%3A%7B%22value%22%3Afalse%7D%2C%22pmf%22%3A%7B%22value%22%3Afalse%7D%2C%22pf%22%3A%7B%22value%22%3Afalse%7D%7D%2C%22isListVisible%22%3Atrue%2C%22mapZoom%22%3A14%2C%22customRegionId%22%3A%22b954d5fb9aX1-CRvbfiseagcose_vreiz%22%2C%22pagination%22%3A%7B%7D%7D")
page2 <- read_html("https://www.zillow.com/homes/recently_sold/2_p/?searchQueryState=%7B%22pagination%22%3A%7B%22currentPage%22%3A2%7D%2C%22usersSearchTerm%22%3A%2227705%22%2C%22mapBounds%22%3A%7B%22west%22%3A-78.97046046561346%2C%22east%22%3A-78.91123729056463%2C%22south%22%3A35.96344578386982%2C%22north%22%3A36.00664470880978%7D%2C%22mapZoom%22%3A14%2C%22customRegionId%22%3A%22b954d5fb9aX1-CRvbfiseagcose_vreiz%22%2C%22isMapVisible%22%3Atrue%2C%22filterState%22%3A%7B%22pmf%22%3A%7B%22value%22%3Afalse%7D%2C%22fore%22%3A%7B%22value%22%3Afalse%7D%2C%22sch%22%3A%7B%22value%22%3Atrue%7D%2C%22ah%22%3A%7B%22value%22%3Atrue%7D%2C%22auc%22%3A%7B%22value%22%3Afalse%7D%2C%22nc%22%3A%7B%22value%22%3Afalse%7D%2C%22rs%22%3A%7B%22value%22%3Atrue%7D%2C%22fsbo%22%3A%7B%22value%22%3Afalse%7D%2C%22cmsn%22%3A%7B%22value%22%3Afalse%7D%2C%22pf%22%3A%7B%22value%22%3Afalse%7D%2C%22fsba%22%3A%7B%22value%22%3Afalse%7D%7D%2C%22isListVisible%22%3Atrue%7D")
page3 <- read_html("https://www.zillow.com/homes/recently_sold/3_p/?searchQueryState=%7B%22pagination%22%3A%7B%22currentPage%22%3A3%7D%2C%22usersSearchTerm%22%3A%2227705%22%2C%22mapBounds%22%3A%7B%22west%22%3A-78.97046046561346%2C%22east%22%3A-78.91123729056463%2C%22south%22%3A35.96344578386982%2C%22north%22%3A36.00664470880978%7D%2C%22mapZoom%22%3A14%2C%22customRegionId%22%3A%22b954d5fb9aX1-CRvbfiseagcose_vreiz%22%2C%22isMapVisible%22%3Atrue%2C%22filterState%22%3A%7B%22pmf%22%3A%7B%22value%22%3Afalse%7D%2C%22fore%22%3A%7B%22value%22%3Afalse%7D%2C%22sch%22%3A%7B%22value%22%3Atrue%7D%2C%22ah%22%3A%7B%22value%22%3Atrue%7D%2C%22auc%22%3A%7B%22value%22%3Afalse%7D%2C%22nc%22%3A%7B%22value%22%3Afalse%7D%2C%22rs%22%3A%7B%22value%22%3Atrue%7D%2C%22fsbo%22%3A%7B%22value%22%3Afalse%7D%2C%22cmsn%22%3A%7B%22value%22%3Afalse%7D%2C%22pf%22%3A%7B%22value%22%3Afalse%7D%2C%22fsba%22%3A%7B%22value%22%3Afalse%7D%7D%2C%22isListVisible%22%3Atrue%7D")

# function: read_zillow --------------------------------------------------------

read_zillow <- function(page) {
  addresses <- page %>%
    html_nodes(".list-card-addr") %>%
    html_text()

  prices <- page %>%
    html_nodes(".list-card-price") %>%
    html_text()

  details <- page %>%
    html_nodes(".list-card-details") %>%
    html_text()

  links_double <- page %>%
    html_nodes(".list-card-link") %>%
    html_attr("href")

  links <- links_double[seq(1, length(links_double), 2)]

  tibble(
    address = addresses,
    price   = prices,
    details = details,
    link    = links
  )
}

# all houses -------------------------------------------------------------------

df1 <- read_zillow(page1)
df2 <- read_zillow(page2)
df3 <- read_zillow(page3)

df_raw <- bind_rows(df1, df2, df3)

# clean data -------------------------------------------------------------------

df_raw <- df_raw %>%
  mutate(
    price = parse_number(price),
    price = if_else(price < 100, price * 1000000, price)
  ) %>%
  filter(
    !str_detect(details, "lot"),
    !str_detect(details, "-- bds-- ba-- sqft"),
    !str_detect(details, "Studio")
  ) %>%
  mutate(
    details = str_replace(details, "bds", "bds - "),
    details = str_replace(details, "ba", "ba - ")
  ) %>%
  separate(details, into = c("bed", "bath", "area"), sep = " - ") %>%
  mutate(
    bed = parse_number(bed),
    bath = parse_number(bath),
    area = parse_number(area)
  )

# function: get_features -------------------------------------------------------

get_features <- function(url) {
  page <- read_html(url)

  Sys.sleep(rpois(1, lambda = 1))

  page %>%
    html_nodes(".ds-home-facts-and-features") %>%
    html_nodes(".ds-home-fact-list>li") %>%
    html_text() %>%
    strsplit(":") %>%
    map(
      ~ setNames(.x[2], .x[1])
    ) %>%
    unlist()
}

# get features -----------------------------------------------------------------

df_with_features <- df_raw %>%
  mutate(features = map(link, get_features))

df <- df_with_features %>%
  unnest_wider(features) %>%
  janitor::clean_names()

df <- df %>%
  mutate(
    lot = parse_number(lot),
    lot = if_else(lot > 100, round(lot / 43560, 2), lot)
  ) %>%
  filter(type == "Single Family")

# write csv --------------------------------------------------------------------

write_csv(df, "duke-forest.csv")
