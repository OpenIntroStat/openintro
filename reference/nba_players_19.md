# NBA Players for the 2018-2019 season

Summary information from the NBA players for the 2018-2019 season.

## Usage

``` r
nba_players_19
```

## Format

A data frame with 494 observations on the following 7 variables.

- first_name:

  First name.

- last_name:

  Last name.

- team:

  Team name

- team_abbr:

  3-letter team abbreviation.

- position:

  Player position.

- number:

  Jersey number.

- height:

  Height, in inches.

## Source

<https://www.nba.com/players>

## Examples

``` r

hist(nba_players_19$height, 20)

table(nba_players_19$team)
#> 
#>      Blazers        Bucks        Bulls    Cavaliers      Celtics     Clippers 
#>           15           18           17           15           16           17 
#>    Grizzlies        Hawks         Heat      Hornets         Jazz        Kings 
#>           16           17           16           16           17           17 
#>       Knicks       Lakers        Magic    Mavericks         Nets      Nuggets 
#>           17           17           17           17           17           17 
#>       Pacers     Pelicans      Pistons      Raptors      Rockets       Sixers 
#>           16           16           17           16           16           16 
#>        Spurs         Suns      Thunder Timberwolves     Warriors      Wizards 
#>           17           15           16           17           16           17 
```
