# Major League Baseball Teams Data.

A subset of data on Major League Baseball teams from Lahman's Baseball
Database. The full dataset is available in the [Lahman R
package](https://github.com/cdalzell/Lahman).

## Usage

``` r
mlb_teams
```

## Format

A data frame with 2784 rows and 41 variables.

- year:

  Year of play.

- league_id:

  League the team plays in with levels AL (American League) and NL
  (National League).

- division_id:

  Division the team plays in with levels W (west), E (east) and C
  (central).

- rank:

  Team's rank in their division at the end of the regular season.

- games_played:

  Games played.

- home_games:

  Games played at home.

- wins:

  Number of games won.

- losses:

  Number of games lost.

- division_winner:

  Did the team win their division? Levels of Y (yes) and N (no).

- wild_card_winner:

  Was the team a wild card winner. Levels of Y (yes) and N (no).

- league_winner:

  Did the team win their league? Levels of Y (yes) and N (no).

- world_series_winner:

  Did the team win the World Series? Levels of Y (yes) and N (no).

- runs_scored:

  Number of runs scored during the season.

- at_bats:

  Number of at bats during the season.

- hits:

  Number of hits during the season. Includes singles, doubles, triples
  and homeruns.

- doubles:

  Number of doubles hit.

- triples:

  Number of triples hit.

- homeruns:

  Homeruns by batters.

- walks:

  Number of walks.

- strikeouts_by_batters:

  Number of batters struckout.

- stolen_bases:

  Number of stolen bases.

- caught_stealing:

  Number of base runners caught stealing.

- batters_hit_by_pitch:

  Number of batters hit by a pitch.

- sacrifice_flies:

  Number of sacrifice flies.

- opponents_runs_scored:

  Number of runs scored by opponents.

- earned_runs_allowed:

  Number of earned runs allowed.

- earned_run_average:

  Earned run average.

- complete_games:

  Number of games where a single pitcher played the entire game.

- shutouts:

  Number of shutouts.

- saves:

  Number of saves.

- outs_pitches:

  Number of outs pitched for the season (number of innings pitched times
  3).

- hits_allowed:

  Number of hits made by opponents.

- homeruns_allowed:

  Number of homeruns hit by opponents.

- walks_allowed:

  Number of opponents who were walked.

- strikeouts_by_pitchers:

  Number of opponents who were struckout.

- errors:

  Number of errors.

- double_plays:

  Number of double plays.

- fielding_percentage:

  Teams fielding percentage.

- team_name:

  Full name of team.

- ball_park:

  Home ballpark name.

- home_attendance:

  Home attendance total.

## Source

Lahmans Baseball Database

## Examples

``` r
library(dplyr)

# List the World Series winning teams for each year
mlb_teams |>
  filter(world_series_winner == "Y") |>
  select(year, team_name, ball_park)
#>     year              team_name                     ball_park
#> 1   1884       Providence Grays         Messer Street Grounds
#> 2   1887     Detroit Wolverines               Recreation Park
#> 3   1888        New York Giants                Polo Grounds I
#> 4   1889        New York Giants               Polo Grounds II
#> 5   1903       Boston Americans     Huntington Avenue Grounds
#> 6   1905        New York Giants              Polo Grounds III
#> 7   1906      Chicago White Sox            South Side Park II
#> 8   1907           Chicago Cubs             West Side Park II
#> 9   1908           Chicago Cubs             West Side Park II
#> 10  1909     Pittsburgh Pirates  Exposition Park/Forbes Field
#> 11  1910 Philadelphia Athletics                    Shibe Park
#> 12  1911 Philadelphia Athletics                    Shibe Park
#> 13  1912         Boston Red Sox                 Fenway Park I
#> 14  1913 Philadelphia Athletics                    Shibe Park
#> 15  1914          Boston Braves         South End Grounds III
#> 16  1915         Boston Red Sox                 Fenway Park I
#> 17  1916         Boston Red Sox                 Fenway Park I
#> 18  1917      Chicago White Sox                 Comiskey Park
#> 19  1918         Boston Red Sox                 Fenway Park I
#> 20  1919        Cincinnati Reds                 Crosley Field
#> 21  1920      Cleveland Indians                League Park II
#> 22  1921        New York Giants               Polo Grounds IV
#> 23  1922        New York Giants               Polo Grounds IV
#> 24  1923       New York Yankees              Yankee Stadium I
#> 25  1924    Washington Senators            Griffith Stadium I
#> 26  1925     Pittsburgh Pirates                  Forbes Field
#> 27  1926    St. Louis Cardinals           Sportsman's Park IV
#> 28  1927       New York Yankees              Yankee Stadium I
#> 29  1928       New York Yankees              Yankee Stadium I
#> 30  1929 Philadelphia Athletics                    Shibe Park
#> 31  1930 Philadelphia Athletics                    Shibe Park
#> 32  1931    St. Louis Cardinals           Sportsman's Park IV
#> 33  1932       New York Yankees              Yankee Stadium I
#> 34  1933        New York Giants               Polo Grounds IV
#> 35  1934    St. Louis Cardinals           Sportsman's Park IV
#> 36  1935         Detroit Tigers                   Navin Field
#> 37  1936       New York Yankees              Yankee Stadium I
#> 38  1937       New York Yankees              Yankee Stadium I
#> 39  1938       New York Yankees              Yankee Stadium I
#> 40  1939       New York Yankees              Yankee Stadium I
#> 41  1940        Cincinnati Reds                 Crosley Field
#> 42  1941       New York Yankees              Yankee Stadium I
#> 43  1942    St. Louis Cardinals           Sportsman's Park IV
#> 44  1943       New York Yankees              Yankee Stadium I
#> 45  1944    St. Louis Cardinals           Sportsman's Park IV
#> 46  1945         Detroit Tigers                Briggs Stadium
#> 47  1946    St. Louis Cardinals           Sportsman's Park IV
#> 48  1947       New York Yankees              Yankee Stadium I
#> 49  1948      Cleveland Indians             Cleveland Stadium
#> 50  1949       New York Yankees              Yankee Stadium I
#> 51  1950       New York Yankees              Yankee Stadium I
#> 52  1951       New York Yankees              Yankee Stadium I
#> 53  1952       New York Yankees              Yankee Stadium I
#> 54  1953       New York Yankees              Yankee Stadium I
#> 55  1954        New York Giants               Polo Grounds IV
#> 56  1955       Brooklyn Dodgers                  Ebbets Field
#> 57  1956       New York Yankees              Yankee Stadium I
#> 58  1957       Milwaukee Braves                County Stadium
#> 59  1958       New York Yankees              Yankee Stadium I
#> 60  1959    Los Angeles Dodgers Los Angeles Memorial Coliseum
#> 61  1960     Pittsburgh Pirates                  Forbes Field
#> 62  1961       New York Yankees              Yankee Stadium I
#> 63  1962       New York Yankees              Yankee Stadium I
#> 64  1963    Los Angeles Dodgers                Dodger Stadium
#> 65  1964    St. Louis Cardinals           Sportsman's Park IV
#> 66  1965    Los Angeles Dodgers                Dodger Stadium
#> 67  1966      Baltimore Orioles              Memorial Stadium
#> 68  1967    St. Louis Cardinals              Busch Stadium II
#> 69  1968         Detroit Tigers                 Tiger Stadium
#> 70  1969          New York Mets                  Shea Stadium
#> 71  1970      Baltimore Orioles              Memorial Stadium
#> 72  1971     Pittsburgh Pirates          Three Rivers Stadium
#> 73  1972      Oakland Athletics              Oakland Coliseum
#> 74  1973      Oakland Athletics              Oakland Coliseum
#> 75  1974      Oakland Athletics              Oakland Coliseum
#> 76  1975        Cincinnati Reds            Riverfront Stadium
#> 77  1976        Cincinnati Reds            Riverfront Stadium
#> 78  1977       New York Yankees             Yankee Stadium II
#> 79  1978       New York Yankees             Yankee Stadium II
#> 80  1979     Pittsburgh Pirates          Three Rivers Stadium
#> 81  1980  Philadelphia Phillies              Veterans Stadium
#> 82  1981    Los Angeles Dodgers                Dodger Stadium
#> 83  1982    St. Louis Cardinals              Busch Stadium II
#> 84  1983      Baltimore Orioles              Memorial Stadium
#> 85  1984         Detroit Tigers                 Tiger Stadium
#> 86  1985     Kansas City Royals                Royals Stadium
#> 87  1986          New York Mets                  Shea Stadium
#> 88  1987        Minnesota Twins   Hubert H Humphrey Metrodome
#> 89  1988    Los Angeles Dodgers                Dodger Stadium
#> 90  1989      Oakland Athletics              Oakland Coliseum
#> 91  1990        Cincinnati Reds            Riverfront Stadium
#> 92  1991        Minnesota Twins   Hubert H Humphrey Metrodome
#> 93  1992      Toronto Blue Jays                       Skydome
#> 94  1993      Toronto Blue Jays                       Skydome
#> 95  1995         Atlanta Braves Atlanta-Fulton County Stadium
#> 96  1996       New York Yankees             Yankee Stadium II
#> 97  1997        Florida Marlins            Joe Robbie Stadium
#> 98  1998       New York Yankees             Yankee Stadium II
#> 99  1999       New York Yankees             Yankee Stadium II
#> 100 2000       New York Yankees             Yankee Stadium II
#> 101 2001   Arizona Diamondbacks             Bank One Ballpark
#> 102 2002         Anaheim Angels    Edison International Field
#> 103 2003        Florida Marlins            Pro Player Stadium
#> 104 2004         Boston Red Sox                Fenway Park II
#> 105 2005      Chicago White Sox           U.S. Cellular Field
#> 106 2006    St. Louis Cardinals             Busch Stadium III
#> 107 2007         Boston Red Sox                Fenway Park II
#> 108 2008  Philadelphia Phillies            Citizens Bank Park
#> 109 2009       New York Yankees            Yankee Stadium III
#> 110 2010   San Francisco Giants                     AT&T Park
#> 111 2011    St. Louis Cardinals             Busch Stadium III
#> 112 2012   San Francisco Giants                     AT&T Park
#> 113 2013         Boston Red Sox                Fenway Park II
#> 114 2014   San Francisco Giants                     AT&T Park
#> 115 2015     Kansas City Royals              Kauffman Stadium
#> 116 2016           Chicago Cubs                 Wrigley Field
#> 117 2017         Houston Astros              Minute Maid Park
#> 118 2018         Boston Red Sox                Fenway Park II
#> 119 2019   Washington Nationals                Nationals Park
#> 120 2020    Los Angeles Dodgers                Dodger Stadium

# List the teams with their average number of wins and losses
mlb_teams |>
  group_by(team_name) |>
  summarize(mean_wins = mean(wins), mean_losses = mean(losses)) |>
  arrange((team_name))
#> # A tibble: 86 × 3
#>    team_name            mean_wins mean_losses
#>    <chr>                    <dbl>       <dbl>
#>  1 Anaheim Angels            83          79  
#>  2 Arizona Diamondbacks      77.7        79.8
#>  3 Atlanta Braves            81.2        76.3
#>  4 Baltimore Orioles         79.1        75.4
#>  5 Boston Americans          75.4        70.3
#>  6 Boston Beaneaters         72.6        61.0
#>  7 Boston Bees               71          81.2
#>  8 Boston Braves             68.3        83.5
#>  9 Boston Doves              54.8        97.2
#> 10 Boston Red Caps           42.7        32.3
#> # ℹ 76 more rows
```
