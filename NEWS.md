# Developmental

* Added new datasets:
  * `LEAP`, `arenosa`, `cdc`, `cdc.samp`, `census.2010`, `danish.ed.primary`, `danish.ed.validation`, `dds.discr`, `famuss`, `forest.birds`, `frog`, `hyperuricemia`, `hyperuricemia.samp`, `infant_mortality_2022`, `mcas`, `nhanes.samp`, `nhanes.samp.adult`, `nhanes.samp.adult.500`, `opp_insights_colleges`, `opp_insights_colleges_4year`, `prevend`, `prevend.samp`, `sugar.levels.A`, `sugar.levels.B`, `swim`, `tb.interruption`, `thermometry`, `wdi_2022` ported from ISLBS by [@npaterno](https://github.com/npaterno)

# openintro 2.5.0

* Added new datasets:
  * `fish_age`, `nba_finals` and `nba_finals_teams` by [@npaterno](https://github.com/npaterno)
  * `lego_population` and `lego_sample` by [@mmeece](https://github.com/mmeece)
  * `lecture_learning` by [@jonathanaakin](https://github.com/jonathanaakin)
  * `cars04`, `life_exp`, `comics`, `nyc`, `gss_wordsum_class`, `manhattan`, `iran`, `iowa`, `twins`, `LAhomes`, `movies`, `ucb_admit`, `soda` ported from IMS Tutorials by [@npaterno](https://github.com/npaterno)
  * `nyc_marathon`, `paralympic_1500`, `pm25_2011_durham`, `pm25_2022_durham`, `us_temperature`, by [@hardin47](https://github.com/hardin47)
* Fix HTML version of manual
* Remove some URLs that no longer work
* Updated docs to use the base pipe
* Enhance `contTable` to allow user-supplied caption and label, by [@sjvrensburg](https://github.com/sjvrensburg)

# openintro 2.4.0

* Fix HTML version of manual
* Remove some URLs that no longer work

# openintro 2.3.0

* Added new datasets:
  * `reddit_finance`, `blizzard_salary`, `climber_drugs` and `simpsons_paradox_covid ` by [@npaterno](https://github.com/npaterno)
  * `mlb_teams`, `world_pop`, `sowc_demographics`, `sowc_maternal_newborn`, `sowc_child_mortality`, `gdp_countries` and `mn_police_use_of_force` by [@karenjh2](https://github.com/karenjh2)
  * `sa_gdp_elec` by [@mmeece](https://github.com/mmeece)
  * `labor_market_discrimination` by [@thiagoscarelli](https://github.com/thiagoscarelli)
* Fixed level names for variables in `cle_sac`

# openintro 2.2.0

* Added new datasets:
  * `lizard_run` and `lizard_habitat` (thanks Stephen Adolph!)
  * `daycare_fines`, `biontech_adolescents`, `nyc_marathon`, `epa2021`, `duke_forest`
* Add tests for some of the new datasets
* Better terminology: `sex_discrimination`

# openintro 2.1.0

* Added `LazyDataCompression: xz` to DESCRIPTION per CRAN.
* Added new datasets:
  * `earthquakes`, `mcu_films`, `salinity`, `snowfall`, `ssd_speed`, `fact_opinion`, `flow_rates`, `race_justice` by [@npaterno](https://github.com/npaterno)
  * `exam_grades`, `opportunity_cost`
  * `births14` by [@AmeliaMN](https://github.com/AmeliaMN)
* Removed redundant `prof_evals` dataset
* Updated `email` and `email50` datasets to make indicator variables factors, remove variables that don't exist in the data from the documentation, and update the documentation for `email50` to match the randomly sampled data
* Updated `orings` data to require much less manipulation to do glm with
* Updated `epa2012` to have NAs for empty levels and updated documentation to describe the variables better
* Updated documentation for `births`, `ncbirths`, `babies`, and `murders` for data provenance issues
* Updated `midterms_house` to have party levels "Democrat" and "Republican" (not "Democratic")
* Added two new objects for colors: `openintro_colors` and `openintro_palettes`
* Added new functions: 
  * `write_pkg_data()` for creating downloadable datasets on the OpenIntro site
  * `scale_color_openintro()` and `scale_fill_openintro()` for constructing for OpenIntro color scales for ggplot2 (and less likely to be directly used `openintro_pal()` (unexported) and `openintro_cols()`)

# openintro 2.0.0

* Added a `NEWS.md` file to track changes to the package.
* Consolidated openintro, oilabs, and oidata packages.
* Updated all dataframe and variable names to use snake_case.
* Turned data.frames into tibbles.
* Simplified code in most examples to make it more accessible for the student audience for the package.
* Added new datasets used in OpenIntro Statistics, 4th Edition.
* Added new datasets used in new OpenIntro labs.
* Removed package startup message.
* Added dependency on the following packages: [airports](https://openintrostat.github.io/airports/), [cherryblossom](https://openintrostat.github.io/cherryblossom/), and [usdata](https://openintrostat.github.io/usdata/).
* Moved `run09`, `run12`, and `run19` datasets to the cherryblossom package.
* Moved `usairports` to the airports packages.
* Moved `county_complete`, `county`, `govrace10`, `houserace10`, `prrace08`, `senaterace10`, `state_stats`, `urban_owner`, `urban_rural_pop`, `vote_nsa` datasets and `state2abbr` and `abbr2state` functions to the usdata package.
