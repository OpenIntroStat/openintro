#' World Population Data.
#' 
#' From World Bank, population 1960-2020
#'
#' @format A data frame with 216 rows and 62 variables.
#' \describe{
#'   \item{country}{Name of country.}
#'   \item{year_1960}{population in 1960.}
#'   \item{year_1961}{population in 1961.}   
#'   \item{year_1962}{population in 1962.}
#'   \item{year_1963}{population in 1963.}   
#'   \item{year_1964}{population in 1964.}
#'   \item{year_1965}{population in 1965.}   
#'   \item{year_1966}{population in 1966.}
#'   \item{year_1967}{population in 1967.}   
#'   \item{year_1968}{population in 1968.}
#'   \item{year_1969}{population in 1969.}   
#'   \item{year_1970}{population in 1970.}
#'   \item{year_1971}{population in 1971.}   
#'   \item{year_1972}{population in 1972.}
#'   \item{year_1973}{population in 1973.}   
#'   \item{year_1974}{population in 1974.}
#'   \item{year_1975}{population in 1975.}   
#'   \item{year_1976}{population in 1976.}
#'   \item{year_1977}{population in 1977.}   
#'   \item{year_1978}{population in 1978.}
#'   \item{year_1979}{population in 1979.}   
#'   \item{year_1980}{population in 1980.}
#'   \item{year_1981}{population in 1981.}   
#'   \item{year_1982}{population in 1982.}
#'   \item{year_1983}{population in 1983.}   
#'   \item{year_1984}{population in 1984.}
#'   \item{year_1985}{population in 1985.}   
#'   \item{year_1986}{population in 1986.}
#'   \item{year_1987}{population in 1987.}   
#'   \item{year_1988}{population in 1988.}
#'   \item{year_1989}{population in 1989.}   
#'   \item{year_1990}{population in 1990.}
#'   \item{year_1991}{population in 1991.}   
#'   \item{year_1992}{population in 1992.}
#'   \item{year_1993}{population in 1993.}   
#'   \item{year_1994}{population in 1994.}
#'   \item{year_1995}{population in 1995.}   
#'   \item{year_1996}{population in 1996.}
#'   \item{year_1997}{population in 1997.}   
#'   \item{year_1998}{population in 1998.}
#'   \item{year_1999}{population in 1999.}   
#'   \item{year_2000}{population in 2000.}
#'   \item{year_2001}{population in 2001.}   
#'   \item{year_2002}{population in 2002.}
#'   \item{year_2003}{population in 2003.}   
#'   \item{year_2004}{population in 2004.}
#'   \item{year_2005}{population in 2005.}   
#'   \item{year_2006}{population in 2006.}
#'   \item{year_2007}{population in 2007.}   
#'   \item{year_2008}{population in 2008.}
#'   \item{year_2009}{population in 2009.}   
#'   \item{year_2010}{population in 2010.}
#'   \item{year_2011}{population in 2011.}   
#'   \item{year_2012}{population in 2012.}
#'   \item{year_2013}{population in 2013.}   
#'   \item{year_2014}{population in 2014.}
#'   \item{year_2015}{population in 2015.}   
#'   \item{year_2016}{population in 2016.}
#'   \item{year_2017}{population in 2017.}   
#'   \item{year_2018}{population in 2018.}
#'   \item{year_2019}{population in 2019.}
#'   \item{year_2020}{population in 2020.}      
#'   
#' }
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' library(tidyr)
#' 
#' # List percentage of population change from 1960 to 2020
#' world_pop %>%
#'   mutate(percent_change = round((year_2020-year_1960)/year_2020*100,2)) %>%
#'   mutate(rank_pop_change = round(rank(-percent_change)),0) %>%
#'   select(rank_pop_change,country,percent_change) %>%
#'   arrange(rank_pop_change)
#' 
#'  # Graph population in millions by decade for specified countries
#' world_pop %>%
#'  select(c(country,year_1960, year_1970,year_1980,year_1990, year_2000,year_2010,year_2020)) %>%
#'  filter(country %in% c("China","India", "United States")) %>%
#'  pivot_longer(cols = c(year_1960, year_1970, year_1980, year_1990, year_2000, year_2010, year_2020),
#'               names_to = "year",
#'               values_to = "population") %>% 
#'  mutate(year = as.numeric(gsub("year_", "", year)))%>% 
#'  ggplot(aes(year,population, color=country)) + 
#'  geom_point() + 
#'  geom_smooth(method="loess",formula = "y ~ x") +
#'  labs(title="Population", subtitle = "by Decade", 
#'       x = "Year", y ="Population (in millions)", 
#'       color = "Country")
#' 
#' @source [World Bank](https://data.worldbank.org/indicator/SP.POP.TOTL)
#'
"world_pop"
