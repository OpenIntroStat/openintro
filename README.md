
# openintro <a href="https://www.openintro.org/"><img src="https://github.com/OpenIntroStat/openintro-r-package/blob/master/man/figures/openintro-hex.jpg?raw=true" align="right" height="139" /></a>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/openintro)](https://cran.r-project.org/package=openintro)
<!-- badges: end -->

Supplemental functions and data for ‘OpenIntro’ resources, which
includes open-source textbooks and resources for introductory statistics
at [openintro.org](https://www.openintro.org/). The package contains
data sets used in our open-source textbooks along with custom plotting
functions for reproducing book figures. Note that many functions and
examples include color transparency; some plotting elements may not show
up properly (or at all) when run in some versions of Windows operating
system.

## Installation

You can install the released version of openintro from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("openintro")
```

You can install the development version of openintro from GitHub with:

``` r
# install.packages("devtools")
library(devtools)
install_github("OpenIntroStat/openintro-r-package")
```

This package was produced as part of the OpenIntro project. For the
accompanying textbook, visit openintro.org. A PDF of the textbook is
free and paperbacks can be purchased online (royalty-free).

## Datasets

The following are all the datasets in the package.

``` r
library(printr)
library(openintro)
#> Please visit openintro.org for free statistics materials
#> 
#> Attaching package: 'openintro'
#> The following object is masked from 'package:datasets':
#> 
#>     cars
data(package = "openintro")
```

| Item                                       | Title                                                                        |
| :----------------------------------------- | :--------------------------------------------------------------------------- |
| COL                                        | OpenIntro Statistics colors                                                  |
| absenteeism                                | Absenteeism                                                                  |
| acs12                                      | American Community Survey, 2012                                              |
| age\_at\_mar                               | Age at first marriage of 5,534 US women.                                     |
| ami\_occurrences                           | Acute Myocardial Infarction (Heart Attack) Events                            |
| antibiotics                                | Pre-existing conditions in 92 children                                       |
| ask                                        | How important is it to ask pointed questions?                                |
| association                                | Simulated data for association plots                                         |
| assortive\_mating                          | Eye color of couples                                                         |
| avandia                                    | Cardiovascular problems for two types of Diabetes medicines                  |
| babies                                     | The Child Health and Development Studies                                     |
| babies\_crawl                              | Crawling age                                                                 |
| bac                                        | Beer and blood alcohol content                                               |
| ball\_bearing                              | Lifespan of ball bearings                                                    |
| bdims                                      | Body measurements of 507 physically active individuals.                      |
| birds                                      | Aircraft-Wildlife Collisions                                                 |
| births                                     | North Carolina births                                                        |
| books                                      | Sample of books on a shelf                                                   |
| burger                                     | Burger preferences                                                           |
| cancer\_in\_dogs                           | Cancer in dogs                                                               |
| cards                                      | Deck of cards                                                                |
| cars                                       | cars                                                                         |
| cchousing                                  | Community college housing (simulated data)                                   |
| census                                     | Random sample of 2000 U.S. Census Data                                       |
| cherry                                     | Summary information for 31 cherry trees                                      |
| children\_gender\_stereo                   | Gender Stereotypes in 5-7 year old Children                                  |
| china                                      | Child care hours                                                             |
| cia\_factbook                              | CIA Factbook Details on Countries                                            |
| classdata                                  | Simulated class data                                                         |
| cle\_sac                                   | Cleveland and Sacramento                                                     |
| coast\_starlight                           | Coast Starlight Amtrak train                                                 |
| corr\_match                                | Sample data sets for correlation problems                                    |
| country\_iso                               | Country ISO information                                                      |
| county                                     | United States Counties                                                       |
| county\_complete                           | United States Counties                                                       |
| county\_w\_sm\_ban                         | County data set with smoking ban.                                            |
| cpr                                        | CPR data set                                                                 |
| credits                                    | College credits.                                                             |
| diabetes2                                  | Type 2 Diabetes Clinical Trial for Patients 10-17 Years Old                  |
| dream                                      | Survey on views of the DREAM Act                                             |
| drone\_blades                              | Quadcopter Drone Blades                                                      |
| drug\_use                                  | Drug use of students and parents                                             |
| ebola\_survey                              | Survey on Ebola quarantine                                                   |
| elmhurst                                   | Elmhurst College gift aid                                                    |
| email                                      | Data frame representing information about a collection of emails             |
| email50                                    | Sample of 50 emails                                                          |
| email\_test                                | Data frame representing information about a collection of emails             |
| env\_regulation                            | American Adults on Regulation and Renewable Energy                           |
| epa2012                                    | Vehicle info from the EPA                                                    |
| esi                                        | Environmental Sustainability Index 2005                                      |
| ethanol                                    | Ethanol Treatment for Tumors Experiment                                      |
| evals                                      | Professor evaluations and beauty                                             |
| exams                                      | Exam scores                                                                  |
| exclusive\_relationship                    | Number of Exclusive Relationships                                            |
| family\_college                            | Simulated sample of parent / teen college attendance                         |
| fcid                                       | Summary of male heights from USDA Food Commodity Intake Database             |
| fheights                                   | Female college student heights, in inches                                    |
| fish\_oil\_18                              | Findings on n-3 Fatty Acid Supplement Health Benefits                        |
| friday                                     | Friday the 13th                                                              |
| full\_body\_scan                           | Poll about use of full-body airport scanners                                 |
| gear\_company                              | Fake data for a gear company example                                         |
| gender\_discrimination                     | Bank manager recommendations based on gender                                 |
| get\_it\_dunn\_run                         | Get it Dunn Run, Race Times                                                  |
| gifted                                     | Analytical skills of young gifted children                                   |
| global\_warming\_pew                       | Pew survey on global warming                                                 |
| goog                                       | Google stock data                                                            |
| gov\_poll                                  | Pew Research poll on goverment approval ratings                              |
| govrace10                                  | Election results for 2010 Governor races in the U.S.                         |
| gpa                                        | Survey of Duke students on GPA, studying, and more                           |
| gpa\_iq                                    | Sample of students and their GPA and IQ                                      |
| gpa\_study\_hours                          | gpa\_study\_hours                                                            |
| gradestv                                   | Simulated data for analyzing the relationship between watching TV and grades |
| gsearch                                    | Simulated Google search experiment                                           |
| gss2010                                    | 2010 General Social Survey                                                   |
| health\_coverage                           | Health Coverage and Health Status                                            |
| healthcare\_law\_survey                    | Pew Research Center poll on health care, including question variants         |
| heart\_transplant                          | Heart Transplant Data                                                        |
| helium                                     | Helium football                                                              |
| helmet                                     | Socioeconomic status and reduced-fee school lunches                          |
| house                                      | United States House of Representatives historical make-up                    |
| houserace10                                | Election results for the 2010 U.S. House of Represenatives races             |
| housing                                    | Simulated data set on student housing                                        |
| hsb2                                       | High School and Beyond survey                                                |
| husbands\_wives                            | Great Britain: husband and wife pairs                                        |
| immigration                                | Poll on illegal workers in the US                                            |
| infmortrate                                | Infant Mortality Rates, 2012                                                 |
| ipo                                        | Facebook, Google, and LinkedIn IPO filings                                   |
| ipod                                       | Length of songs on an iPod                                                   |
| jury                                       | Simulated juror data set                                                     |
| law\_resume                                | Gender, Socioeconomic Class, and Interview Invites                           |
| leg\_mari                                  | Legalization of Marijuana Support in 2010 California Survey                  |
| loan50                                     | Loan data from Lending Club                                                  |
| loans\_full\_schema                        | Loan data from Lending Club                                                  |
| london\_boroughs                           | London Borough Boundaries                                                    |
| london\_murders                            | London Murders, 2006-2011                                                    |
| mail\_me                                   | Influence of a Good Mood on Helpfulness                                      |
| major\_survey                              | Survey of Duke students and the area of their major                          |
| malaria                                    | Malaria Vaccine Trial                                                        |
| male\_heights                              | Sample of 100 male heights                                                   |
| male\_heights\_fcid                        | Random sample of adult male heights                                          |
| mammals                                    | Sleep in Mammals                                                             |
| mammogram                                  | Experiment with Mammogram Randomized                                         |
| marathon                                   | New York City Marathon Times                                                 |
| mariokart                                  | Wii Mario Kart auctions from Ebay                                            |
| midterms\_house                            | President’s party performance and unemployment rate                          |
| migraine                                   | Migraines and acupuncture                                                    |
| military                                   | US Military Demographics                                                     |
| mlb                                        | Salary data for Major League Baseball (2010)                                 |
| mlb\_players\_18                           | Batter Statistics for 2018 Major League Baseball (MLB) Season                |
| mlbbat10                                   | Major League Baseball Player Hitting Statistics for 2010                     |
| mtl                                        | Medial temporal lobe (MTL) and other data for 26 participants                |
| murders                                    | Data for 20 metropolitan areas.                                              |
| nba\_heights                               | NBA Player heights from 2008-9                                               |
| nba\_players\_19                           | NBA Players for the 2018-2019 season                                         |
| ncbirths                                   | North Carolina births                                                        |
| nuclear\_survey                            | Nuclear Arms Reduction Survey                                                |
| offshore\_drilling                         | California poll on drilling off the California coast                         |
| orings                                     | 1986 Challenger disaster and O-rings                                         |
| oscars                                     | Oscar winners, 1929 to 2018                                                  |
| outliers                                   | Simulated data sets for different types of outliers                          |
| penetrating\_oil                           | What’s the best way to loosen a rusty bolt?                                  |
| penny\_ages                                | Penny Ages                                                                   |
| pew\_energy\_2018                          | Pew Survey on Energy Sources in 2018                                         |
| photo\_classify                            | Photo classifications: fashion or not                                        |
| piracy                                     | Piracy and PIPA/SOPA                                                         |
| playing\_cards                             | Table of Playing Cards in 52-Card Deck                                       |
| pm25\_2011\_durham                         | Air quality for Durham, NC                                                   |
| poker                                      | Poker winnings during 50 sessions                                            |
| possum                                     | possum                                                                       |
| ppp\_201503                                | US Poll on who it is better to raise taxes on                                |
| president                                  | United States Presidental History                                            |
| prison                                     | Prison isolation experiment                                                  |
| prof\_evals                                | Professor evaluations and beauty                                             |
| prrace08                                   | Election results for the 2008 U.S. Presidential race                         |
| res\_demo\_1                               | Simulated data for regression                                                |
| res\_demo\_2                               | Simulated data for regression                                                |
| resume                                     | Which resume attributes drive job callbacks? (Race and gender under study.)  |
| run10                                      | Cherry Blossom 10 mile run data, 2009                                        |
| run10\_09                                  | Cherry Blossom 10 mile run data, 2009                                        |
| run10samp                                  | Cherry Blossom 10 mile run data, 2009                                        |
| run17                                      | Cherry Blossom Run data, 2017                                                |
| russian\_influence\_on\_us\_election\_2016 | Russians’ Opinions on US Election Influence in 2016                          |
| sat\_improve                               | Simulated data for SAT score improvement                                     |
| satgpa                                     | SAT and GPA data                                                             |
| scotus\_healthcare                         | Public Opinion with SCOTUS ruling on American Healthcare Act                 |
| senaterace10                               | Election results for the 2010 U.S. Senate races                              |
| simulated\_dist                            | Simulated data sets, not necessarily drawn from a normal distribution.       |
| simulated\_normal                          | Simulated data sets, drawn from a normal distribution.                       |
| simulated\_scatter                         | Simulated data for sample scatterplots                                       |
| sinusitis                                  | Sinusitis and antibiotic experiment                                          |
| sleep\_deprivation                         | Survey on sleep deprivation and transportation workers                       |
| smallpox                                   | Smallpox vaccine results                                                     |
| smoking                                    | UK Smoking Data                                                              |
| socialexp                                  | Social experiment                                                            |
| solar                                      | Energy Output From Two Solar Arrays in San Francisco                         |
| sp500                                      | Financial information for 50 S\&P 500 companies                              |
| sp500\_1950\_2018                          | Daily observations for the S\&P 500                                          |
| sp500\_seq                                 | S\&P 500 stock data                                                          |
| speed\_gender\_height                      | Speed, gender, and height of 1325 students                                   |
| starbucks                                  | Starbucks nutrition                                                          |
| state\_stats                               | State-level data                                                             |
| stats\_scores                              | Final exam scores for twenty students                                        |
| stem\_cell                                 | Embryonic stem cells to treat heart attack (in sheep)                        |
| stent30                                    | Stents for the treatment of stroke                                           |
| stent365                                   | Stents for the treatment of stroke                                           |
| stocks\_18                                 | Monthly Returns for a few stocks                                             |
| student\_housing                           | Community college housing (simulated data, 2015)                             |
| student\_sleep                             | Sleep for 110 students (simulated)                                           |
| sulphinpyrazone                            | Treating heart attacks                                                       |
| supreme\_court                             | Supreme Court approval rating                                                |
| teacher                                    | Teacher Salaries in St. Louis, Michigan                                      |
| textbooks                                  | Textbook data for UCLA Bookstore and Amazon                                  |
| thanksgiving\_spend                        | Thanksgiving spending, simulated based on Gallup poll.                       |
| tips                                       | Tip data                                                                     |
| toohey                                     | Simulated polling data set                                                   |
| tourism                                    | Turkey tourism                                                               |
| toy\_anova                                 | Simulated data set for ANOVA                                                 |
| transplant                                 | Transplant consultant success rate (fake data)                               |
| ucla\_f18                                  | UCLA courses in Fall 2018                                                    |
| ucla\_textbooks\_f18                       | Sample of UCLA course textbooks for Fall 2018                                |
| ukdemo                                     | United Kingdom Demographic Data                                              |
| unempl                                     | Annual unemployment since 1890                                               |
| unemploy\_pres                             | President’s party performance and unemployment rate                          |
| urban\_owner                               | Summary of many state-level variables                                        |
| urban\_rural\_pop                          | State summary info                                                           |
| usairports                                 | US Airports                                                                  |
| vote\_nsa                                  | Predicting Who’d Vote for NSA Mass Surveillance                              |
| winery\_cars                               | Time Between Gondola Cars at Sterling Winery                                 |
| xom                                        | Exxon Mobile stock data                                                      |
| yawn                                       | Contagiousness of yawning                                                    |
| yrbss                                      | Youth Risk Behavior Surveillance System (YRBSS)                              |
| yrbss\_samp                                | Sample of Youth Risk Behavior Surveillance System (YRBSS)                    |

Data sets in openintro

## Code of Conduct

Please note that the ‘openintro’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
