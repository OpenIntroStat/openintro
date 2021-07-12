library(readr)
library(dplyr)
library(magrittr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/mlb_teams/mlb_teams.csv"))

# cleaning ----------------------------------------------------------------------

# rename columns
raw_data %<>%
  rename(Year=yearID,
         GamesPlayed=G,
         LeagueID=lgID,
         TeamID=teamID,
         FranchiseID=franchID,
         DivisionID=divID,
         HomeGames=Ghome,
         Wins=W,
         Losses=L,
         DivisionWinner=DivWin,
         WildCardWinner=WCWin,
         LeagueWinner=LgWin,
         WorldSeriesWinner=WSWin,
         RunsScored=R,
         AtBats=AB,
         Hits=H,
         Doubles=X2B,
         Triples=X3B,
         Homeruns=HR,
         Walks=BB,
         StrikeoutsByBatters=SO,
         StolenBases=SB,
         CaughtStealing=CS,
         BattersHitByPitch=HBP,
         SacrificeFlies=SF,
         OpponentsRunsScored=RA,
         EarnedRunsAllowed=ER,
         EarnedRunAverage=ERA,
         CompleteGames=CG,
         Shutouts=SHO,
         Saves=SV,
         OutsPitches=IPouts,
         HitsAllowed=HA,
         HomerunsAllowed=HRA,
         WalksAllowed=BBA,
         StrikeoutsByPitchers=SOA,
         Errors=E,DoublePlays=DP,
         FieldingPercentage=FP,
         TeamName=name,
         BallPark=park,
         HomeAttendance=attendance,
         BattersParkFactor=BPF,
         PitchersParkFactor=PPF) %>% 
  janitor::clean_names()

# drop some columns
mlb_teams <- subset(raw_data,select=-c(team_idbr,team_i_dlahman45,team_i_dretro, team_id, franchise_id, batters_park_factor, pitchers_park_factor)) %>% 
                      filter(league_id %in% c("AL", "NL"))

# save --------------------------------------------------------------------------

usethis::use_data(mlb_teams, overwrite = TRUE)
