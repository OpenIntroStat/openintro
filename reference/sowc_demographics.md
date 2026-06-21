# SOWC Demographics Data.

Demographic data from UNICEF's State of the World's Children 2019
Statistical Tables.

## Usage

``` r
sowc_demographics
```

## Format

A data frame with 202 rows and 18 variables.

- countries_and_areas:

  Country or area name.

- total_pop_2018:

  Population in 2018 in thousands.

- under18_pop_2018:

  Population under age 18 in 2018 in thousands.

- under5_pop_2018:

  Population under age 5 in 2018 in thousands.

- pop_growth_rate_2018:

  Rate at which population is growing in 2018.

- pop_growth_rate_2030:

  Rate at which population is estimated to grow in 2030.

- births_2018:

  Number of births in 2018 in thousands.

- fertility_2018:

  Number of live births per woman in 2018.A total fertility level of 2.1
  is called replacement level and represents a level at which the
  population would remain the same size.

- life_expectancy_1970:

  Life expectancy at birth in 1970.

- life_expectancy_2000:

  Life expectancy at birth in 2000.

- life_expectancy_2018:

  Life expectancy at birth in 2018.

- dependency_ratio_total:

  The ratio of the not-working-age population to the working-age
  population of 15 - 64 years.

- dependency_ratio_child:

  The ratio of the under 15 population to the working-age population of
  15 - 64 years.

- dependency_ratio_oldage:

  The ratio of the over 64 population to the working-age population of
  15 - 64 years.

- percent_urban_2018:

  Percent of population living in urban areas.

- pop_urban_growth_rate_2018:

  Annual urban population growth rate from 2000 to 2018.

- pop_urban_growth_rate_2030:

  Estimated annual urban population growth rate from 2018 to 2030.

- migration_rate:

  Net migration rate per 1000 population from 2015 to 2020.

## Source

[United Nations Children's Emergency Fund
(UNICEF)](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables/)

## Examples

``` r
library(dplyr)
library(ggplot2)

# List countries and areas' life expectancy, ordered by rank of life expectancy in 2018
sowc_demographics |>
  mutate(life_expectancy_change = life_expectancy_2018 - life_expectancy_1970) |>
  mutate(rank_life_expectancy = round(rank(-life_expectancy_2018), 0)) |>
  select(
    countries_and_areas, rank_life_expectancy, life_expectancy_2018,
    life_expectancy_change
  ) |>
  arrange(rank_life_expectancy)
#>                       countries_and_areas rank_life_expectancy
#> 1                                   Japan                    2
#> 2                             Switzerland                    2
#> 3                               Australia                    7
#> 4                                  France                    7
#> 5                                 Iceland                    7
#> 6                                  Israel                    7
#> 7                                   Italy                    7
#> 8                       Republic of Korea                    7
#> 9                               Singapore                    7
#> 10                                  Spain                    7
#> 11                                 Sweden                    7
#> 12                                 Canada                   16
#> 13                                Finland                   16
#> 14                                 Greece                   16
#> 15                                Ireland                   16
#> 16                             Luxembourg                   16
#> 17                                  Malta                   16
#> 18                            Netherlands                   16
#> 19                            New Zealand                   16
#> 20                                 Norway                   16
#> 21                               Portugal                   16
#> 22                                Austria                   25
#> 23                                Belgium                   25
#> 24                                 Cyprus                   25
#> 25                                Denmark                   25
#> 26                                Germany                   25
#> 27                               Slovenia                   25
#> 28                         United Kingdom                   25
#> 29                                  Chile                   30
#> 30                             Costa Rica                   30
#> 31                                  Qatar                   30
#> 32                               Barbados                   36
#> 33                                   Cuba                   36
#> 34                                Czechia                   36
#> 35                                Estonia                   36
#> 36                                Lebanon                   36
#> 37                               Maldives                   36
#> 38                                 Poland                   36
#> 39                          United States                   36
#> 40                                Albania                   42
#> 41                                Croatia                   42
#> 42                                   Oman                   42
#> 43                                 Panama                   42
#> 44                   United Arab Emirates                   42
#> 45                                Uruguay                   42
#> 46                                Algeria                   54
#> 47                    Antigua and Barbuda                   54
#> 48                              Argentina                   54
#> 49                                Bahrain                   54
#> 50                 Bosnia and Herzegovina                   54
#> 51                                  China                   54
#> 52                               Colombia                   54
#> 53                                Ecuador                   54
#> 54                                Hungary                   54
#> 55                             Montenegro                   54
#> 56                                   Peru                   54
#> 57                               Slovakia                   54
#> 58                              Sri Lanka                   54
#> 59                               Thailand                   54
#> 60                                Tunisia                   54
#> 61                                 Turkey                   54
#> 62                                 Brazil                   66
#> 63                      Brunei Darussalam                   66
#> 64             Iran (Islamic Republic of)                   66
#> 65                              Lithuania                   66
#> 66                               Malaysia                   66
#> 67                                Morocco                   66
#> 68                        North Macedonia                   66
#> 69                                Romania                   66
#> 70                            Saint Lucia                   66
#> 71                                 Serbia                   66
#> 72                                Armenia                   76
#> 73                                Belarus                   76
#> 74                               Bulgaria                   76
#> 75                               Honduras                   76
#> 76                                 Kuwait                   76
#> 77                                 Latvia                   76
#> 78                              Mauritius                   76
#> 79                                 Mexico                   76
#> 80                           Saudi Arabia                   76
#> 81                               Viet Nam                   76
#> 82                                Bahamas                   86
#> 83                                 Belize                   86
#> 84                     Dominican Republic                   86
#> 85                                Georgia                   86
#> 86                              Guatemala                   86
#> 87                                Jamaica                   86
#> 88                                 Jordan                   86
#> 89                              Nicaragua                   86
#> 90                               Paraguay                   86
#> 91                     State of Palestine                   86
#> 92                             Azerbaijan                   96
#> 93                             Cabo Verde                   96
#> 94                            El Salvador                   96
#> 95                             Kazakhstan                   96
#> 96                                  Libya                   96
#> 97                                  Samoa                   96
#> 98                             Seychelles                   96
#> 99                        Solomon Islands                   96
#> 100                   Trinidad and Tobago                   96
#> 101                            Bangladesh                  107
#> 102 Democratic People's Republic of Korea                  107
#> 103                                 Egypt                  107
#> 104                               Grenada                  107
#> 105                             Indonesia                  107
#> 106                   Republic of Moldova                  107
#> 107                    Russian Federation                  107
#> 108      Saint Vincent and the Grenadines                  107
#> 109                              Suriname                  107
#> 110                  Syrian Arab Republic                  107
#> 111                               Ukraine                  107
#> 112                            Uzbekistan                  107
#> 113    Venezuela (Bolivarian Republic of)                  107
#> 114                                Bhutan                  116
#> 115      Bolivia (Plurinational State of)                  116
#> 116                            Kyrgyzstan                  116
#> 117                           Philippines                  116
#> 118                            Tajikistan                  116
#> 119                                 Tonga                  116
#> 120                              Cambodia                  123
#> 121                                Guyana                  123
#> 122                                  Iraq                  123
#> 123                              Mongolia                  123
#> 124                                 Nepal                  123
#> 125                 Sao Tome and Principe                  123
#> 126                               Vanuatu                  123
#> 127                              Botswana                  128
#> 128                                 India                  128
#> 129                                Rwanda                  128
#> 130                           Timor-Leste                  128
#> 131                              Kiribati                  133
#> 132      Lao People's Democratic Republic                  133
#> 133      Micronesia (Federated States of)                  133
#> 134                               Senegal                  133
#> 135                          Turkmenistan                  133
#> 136                              Djibouti                  138
#> 137                                  Fiji                  138
#> 138                            Madagascar                  138
#> 139                               Myanmar                  138
#> 140                              Pakistan                  138
#> 141                               Eritrea                  143
#> 142                              Ethiopia                  143
#> 143                                 Gabon                  143
#> 144                                 Kenya                  143
#> 145                                 Yemen                  143
#> 146                            Mauritania                  147
#> 147                                 Sudan                  147
#> 148           United Republic of Tanzania                  147
#> 149                           Afghanistan                  154
#> 150                               Comoros                  154
#> 151                                 Congo                  154
#> 152                                 Ghana                  154
#> 153                                 Haiti                  154
#> 154                               Liberia                  154
#> 155                                Malawi                  154
#> 156                      Papua New Guinea                  154
#> 157                          South Africa                  154
#> 158                                Zambia                  154
#> 159                               Namibia                  160
#> 160                                Uganda                  160
#> 161                                Gambia                  162
#> 162                                 Niger                  162
#> 163                                Angola                  166
#> 164                                 Benin                  166
#> 165                          Burkina Faso                  166
#> 166                               Burundi                  166
#> 167                                Guinea                  166
#> 168                                  Togo                  166
#> 169                              Zimbabwe                  166
#> 170      Democratic Republic of the Congo                  170
#> 171                            Mozambique                  170
#> 172                              Cameroon                  173
#> 173                              Eswatini                  173
#> 174                                  Mali                  173
#> 175                     Equatorial Guinea                  176
#> 176                         Guinea-Bissau                  176
#> 177                           South Sudan                  176
#> 178                         Cote d'Ivoire                  178
#> 179                               Somalia                  178
#> 180                                  Chad                  182
#> 181                               Lesotho                  182
#> 182                               Nigeria                  182
#> 183                          Sierra Leone                  182
#> 184              Central African Republic                  184
#> 185                               Andorra                  185
#> 186                              Anguilla                  186
#> 187                British Virgin Islands                  187
#> 188                          Cook Islands                  188
#> 189                              Dominica                  189
#> 190                              Holy See                  190
#> 191                         Liechtenstein                  191
#> 192                      Marshall Islands                  192
#> 193                                Monaco                  193
#> 194                            Montserrat                  194
#> 195                                 Nauru                  195
#> 196                                  Niue                  196
#> 197                                 Palau                  197
#> 198                 Saint Kitts and Nevis                  198
#> 199                            San Marino                  199
#> 200                               Tokelau                  200
#> 201              Turks and Caicos Islands                  201
#> 202                                Tuvalu                  202
#>     life_expectancy_2018 life_expectancy_change
#> 1                     84                     12
#> 2                     84                     11
#> 3                     83                     12
#> 4                     83                     11
#> 5                     83                      9
#> 6                     83                     11
#> 7                     83                     11
#> 8                     83                     22
#> 9                     83                     15
#> 10                    83                     11
#> 11                    83                      9
#> 12                    82                      9
#> 13                    82                     12
#> 14                    82                     11
#> 15                    82                     11
#> 16                    82                     12
#> 17                    82                     11
#> 18                    82                      8
#> 19                    82                     11
#> 20                    82                      8
#> 21                    82                     15
#> 22                    81                     11
#> 23                    81                     10
#> 24                    81                      8
#> 25                    81                      8
#> 26                    81                     10
#> 27                    81                     12
#> 28                    81                      9
#> 29                    80                     18
#> 30                    80                     14
#> 31                    80                     12
#> 32                    79                     10
#> 33                    79                      9
#> 34                    79                      9
#> 35                    79                      9
#> 36                    79                     13
#> 37                    79                     35
#> 38                    79                      9
#> 39                    79                      8
#> 40                    78                     11
#> 41                    78                     10
#> 42                    78                     28
#> 43                    78                     12
#> 44                    78                     17
#> 45                    78                      9
#> 46                    77                     27
#> 47                    77                     11
#> 48                    77                     11
#> 49                    77                     14
#> 50                    77                     11
#> 51                    77                     18
#> 52                    77                     15
#> 53                    77                     19
#> 54                    77                      8
#> 55                    77                      7
#> 56                    77                     23
#> 57                    77                      7
#> 58                    77                     13
#> 59                    77                     18
#> 60                    77                     26
#> 61                    77                     25
#> 62                    76                     17
#> 63                    76                     13
#> 64                    76                     25
#> 65                    76                      5
#> 66                    76                     11
#> 67                    76                     23
#> 68                    76                     10
#> 69                    76                      8
#> 70                    76                     12
#> 71                    76                      8
#> 72                    75                      5
#> 73                    75                      4
#> 74                    75                      4
#> 75                    75                     22
#> 76                    75                      9
#> 77                    75                      5
#> 78                    75                     12
#> 79                    75                     14
#> 80                    75                     22
#> 81                    75                     15
#> 82                    74                      8
#> 83                    74                      8
#> 84                    74                     16
#> 85                    74                      7
#> 86                    74                     21
#> 87                    74                      6
#> 88                    74                     14
#> 89                    74                     20
#> 90                    74                      9
#> 91                    74                     18
#> 92                    73                     10
#> 93                    73                     20
#> 94                    73                     18
#> 95                    73                     10
#> 96                    73                     17
#> 97                    73                     13
#> 98                    73                      7
#> 99                    73                     17
#> 100                   73                      8
#> 101                   72                     25
#> 102                   72                     12
#> 103                   72                     20
#> 104                   72                      6
#> 105                   72                     19
#> 106                   72                      7
#> 107                   72                      3
#> 108                   72                      8
#> 109                   72                      9
#> 110                   72                     13
#> 111                   72                      1
#> 112                   72                     10
#> 113                   72                      7
#> 114                   71                     31
#> 115                   71                     25
#> 116                   71                     11
#> 117                   71                      8
#> 118                   71                     17
#> 119                   71                      7
#> 120                   70                     28
#> 121                   70                      8
#> 122                   70                     12
#> 123                   70                     15
#> 124                   70                     29
#> 125                   70                     15
#> 126                   70                     16
#> 127                   69                     15
#> 128                   69                     21
#> 129                   69                     24
#> 130                   69                     29
#> 131                   68                     16
#> 132                   68                     22
#> 133                   68                      9
#> 134                   68                     29
#> 135                   68                     10
#> 136                   67                     18
#> 137                   67                      5
#> 138                   67                     22
#> 139                   67                     18
#> 140                   67                     14
#> 141                   66                     23
#> 142                   66                     23
#> 143                   66                     19
#> 144                   66                     13
#> 145                   66                     29
#> 146                   65                     15
#> 147                   65                     13
#> 148                   65                     18
#> 149                   64                     27
#> 150                   64                     18
#> 151                   64                     13
#> 152                   64                     15
#> 153                   64                     18
#> 154                   64                     25
#> 155                   64                     24
#> 156                   64                     18
#> 157                   64                     11
#> 158                   64                     14
#> 159                   63                     10
#> 160                   63                     14
#> 161                   62                     24
#> 162                   62                     26
#> 163                   61                     20
#> 164                   61                     19
#> 165                   61                     22
#> 166                   61                     17
#> 167                   61                     24
#> 168                   61                     14
#> 169                   61                      4
#> 170                   60                     16
#> 171                   60                     19
#> 172                   59                     12
#> 173                   59                     11
#> 174                   59                     27
#> 175                   58                     18
#> 176                   58                     17
#> 177                   58                     22
#> 178                   57                     13
#> 179                   57                     16
#> 180                   54                     13
#> 181                   54                      3
#> 182                   54                     13
#> 183                   54                     18
#> 184                   53                     11
#> 185                   NA                     NA
#> 186                   NA                     NA
#> 187                   NA                     NA
#> 188                   NA                     NA
#> 189                   NA                     NA
#> 190                   NA                     NA
#> 191                   NA                     NA
#> 192                   NA                     NA
#> 193                   NA                     NA
#> 194                   NA                     NA
#> 195                   NA                     NA
#> 196                   NA                     NA
#> 197                   NA                     NA
#> 198                   NA                     NA
#> 199                   NA                     NA
#> 200                   NA                     NA
#> 201                   NA                     NA
#> 202                   NA                     NA

# List countries and areas' migration rate and population, ordered by rank of migration rate
sowc_demographics |>
  mutate(rank = round(rank(migration_rate))) |>
  mutate(population_millions = total_pop_2018 / 1000) |>
  select(countries_and_areas, rank, migration_rate, population_millions) |>
  arrange(rank)
#>                       countries_and_areas rank migration_rate
#> 1                    Syrian Arab Republic    1          -24.1
#> 2      Venezuela (Bolivarian Republic of)    2          -22.3
#> 3                             South Sudan    3          -15.9
#> 4                                   Samoa    4          -14.3
#> 5                                 Eritrea    6          -11.6
#> 6                               Lithuania    6          -11.6
#> 7                Central African Republic    7           -8.6
#> 8                                Zimbabwe    8           -8.2
#> 9                   Sao Tome and Principe    9           -8.0
#> 10                                 Guyana   10           -7.7
#> 11                                  Tonga   10           -7.7
#> 12                                 Latvia   12           -7.6
#> 13                               Eswatini   13           -7.4
#> 14                                   Fiji   14           -7.0
#> 15                               Kiribati   15           -6.9
#> 16                 Bosnia and Herzegovina   16           -6.4
#> 17                            El Salvador   17           -6.3
#> 18       Micronesia (Federated States of)   18           -5.4
#> 19                                Albania   19           -4.9
#> 20                                Lesotho   20           -4.8
#> 21                              Sri Lanka   21           -4.6
#> 22                                Lebanon   22           -4.5
#> 23                            Timor-Leste   23           -4.3
#> 24                                Jamaica   24           -3.9
#> 25                                Romania   25           -3.8
#> 26                              Nicaragua   26           -3.3
#> 27                                  Haiti   27           -3.2
#> 28                                Myanmar   28           -3.1
#> 29                     Dominican Republic   29           -2.8
#> 30                                Somalia   30           -2.7
#> 31                             Cabo Verde   32           -2.5
#> 32                                Georgia   32           -2.5
#> 33                        Solomon Islands   32           -2.5
#> 34                                Comoros   34           -2.4
#> 35                               Paraguay   34           -2.4
#> 36                             Bangladesh   36           -2.3
#> 37                     State of Palestine   38           -2.2
#> 38                             Tajikistan   38           -2.2
#> 39       Lao People's Democratic Republic   40           -2.1
#> 40                                   Mali   40           -2.1
#> 41                             Seychelles   40           -2.1
#> 42                                Namibia   42           -2.0
#> 43                               Cambodia   44           -1.9
#> 44                                Croatia   44           -1.9
#> 45                                Grenada   46           -1.8
#> 46       Saint Vincent and the Grenadines   46           -1.8
#> 47                            Afghanistan   48           -1.7
#> 48                                Armenia   48           -1.7
#> 49                               Suriname   48           -1.7
#> 50                                 Greece   50           -1.5
#> 51                                 Gambia   52           -1.4
#> 52                                Morocco   52           -1.4
#> 53                           Burkina Faso   54           -1.3
#> 54                                   Cuba   54           -1.3
#> 55                                Senegal   54           -1.3
#> 56                                  Sudan   56           -1.2
#> 57                               Pakistan   58           -1.1
#> 58                                  Yemen   58           -1.1
#> 59                             Kazakhstan   60           -1.0
#> 60                                Liberia   60           -1.0
#> 61                                 Malawi   62           -0.9
#> 62                           Turkmenistan   62           -0.9
#> 63                                Uruguay   62           -0.9
#> 64       Bolivia (Plurinational State of)   66           -0.8
#> 65                                  Congo   66           -0.8
#> 66                          Guinea-Bissau   66           -0.8
#> 67                             Montenegro   66           -0.8
#> 68                                 Poland   66           -0.8
#> 69                               Viet Nam   66           -0.8
#> 70                               Bulgaria   72           -0.7
#> 71                               Honduras   72           -0.7
#> 72             Iran (Islamic Republic of)   72           -0.7
#> 73                                 Rwanda   72           -0.7
#> 74            United Republic of Tanzania   72           -0.7
#> 75                             Kyrgyzstan   77           -0.6
#> 76                            Philippines   77           -0.6
#> 77                               Portugal   77           -0.6
#> 78                           Sierra Leone   77           -0.6
#> 79                    Trinidad and Tobago   77           -0.6
#> 80                              Guatemala   82           -0.5
#> 81                                 Mexico   82           -0.5
#> 82                        North Macedonia   82           -0.5
#> 83                                 Zambia   82           -0.5
#> 84                                  Egypt   85           -0.4
#> 85                                  India   85           -0.4
#> 86                              Indonesia   85           -0.4
#> 87                               Barbados   92           -0.3
#> 88                          Cote d'Ivoire   92           -0.3
#> 89                                  Ghana   92           -0.3
#> 90                                 Guinea   92           -0.3
#> 91                                  Libya   92           -0.3
#> 92                               Mongolia   92           -0.3
#> 93                                Nigeria   92           -0.3
#> 94                    Republic of Moldova   92           -0.3
#> 95                                   Togo   92           -0.3
#> 96                                Tunisia   92           -0.3
#> 97                             Uzbekistan   92           -0.3
#> 98                                Algeria  101           -0.2
#> 99                                  Benin  101           -0.2
#> 100                              Cameroon  101           -0.2
#> 101                                 China  101           -0.2
#> 102 Democratic People's Republic of Korea  101           -0.2
#> 103                                 Kenya  101           -0.2
#> 104                            Mozambique  101           -0.2
#> 105                            Madagascar  106           -0.1
#> 106                      Papua New Guinea  106           -0.1
#> 107                   Antigua and Barbuda  108            0.0
#> 108                     Brunei Darussalam  108            0.0
#> 109                             Mauritius  108            0.0
#> 110                           Saint Lucia  108            0.0
#> 111                             Argentina  112            0.1
#> 112                            Azerbaijan  112            0.1
#> 113                                Brazil  112            0.1
#> 114                                  Chad  112            0.1
#> 115                                Angola  118            0.2
#> 116                               Burundi  118            0.2
#> 117                                  Iraq  118            0.2
#> 118                                 Niger  118            0.2
#> 119                     Republic of Korea  118            0.2
#> 120                               Ukraine  118            0.2
#> 121      Democratic Republic of the Congo  122            0.3
#> 122                              Ethiopia  122            0.3
#> 123                              Slovakia  122            0.3
#> 124                              Thailand  122            0.3
#> 125                                Bhutan  126            0.4
#> 126                               Vanuatu  126            0.4
#> 127                                Serbia  127            0.5
#> 128                                France  129            0.6
#> 129                               Hungary  129            0.6
#> 130                                 Japan  129            0.6
#> 131                            Costa Rica  131            0.8
#> 132                               Belarus  134            0.9
#> 133                              Djibouti  134            0.9
#> 134                           Netherlands  134            0.9
#> 135                                 Spain  134            0.9
#> 136                              Slovenia  136            1.0
#> 137                               Iceland  138            1.1
#> 138                                Jordan  138            1.1
#> 139                                Israel  140            1.2
#> 140                            Mauritania  140            1.2
#> 141                              Botswana  142            1.3
#> 142                    Russian Federation  142            1.3
#> 143                                 Nepal  143            1.5
#> 144                                 Gabon  144            1.6
#> 145                              Malaysia  144            1.6
#> 146                               Czechia  146            2.1
#> 147                                 Malta  146            2.1
#> 148                               Ecuador  148            2.2
#> 149                               Finland  150            2.5
#> 150                                 Italy  150            2.5
#> 151                          South Africa  150            2.5
#> 152                               Bahamas  152            2.6
#> 153                               Denmark  152            2.6
#> 154                                Panama  154            2.7
#> 155                         United States  155            2.9
#> 156                               Estonia  156            3.0
#> 157                                  Peru  157            3.1
#> 158                                Belize  158            3.2
#> 159                           New Zealand  158            3.2
#> 160                                Turkey  160            3.5
#> 161                        United Kingdom  161            3.9
#> 162                                Sweden  162            4.0
#> 163                                Uganda  162            4.0
#> 164                          Saudi Arabia  164            4.1
#> 165                               Belgium  166            4.2
#> 166                              Colombia  166            4.2
#> 167                                Cyprus  166            4.2
#> 168                  United Arab Emirates  166            4.2
#> 169                             Singapore  169            4.7
#> 170                               Ireland  170            4.9
#> 171                                Norway  171            5.3
#> 172                                 Chile  172            6.0
#> 173                           Switzerland  173            6.1
#> 174                             Australia  174            6.4
#> 175                                Canada  176            6.6
#> 176                               Germany  176            6.6
#> 177                               Austria  177            7.4
#> 178                                Kuwait  178            9.8
#> 179                     Equatorial Guinea  179           12.4
#> 180                                 Qatar  180           14.7
#> 181                            Luxembourg  181           16.3
#> 182                                  Oman  182           18.6
#> 183                              Maldives  183           22.8
#> 184                               Bahrain  184           31.1
#> 185                               Andorra  185             NA
#> 186                              Anguilla  186             NA
#> 187                British Virgin Islands  187             NA
#> 188                          Cook Islands  188             NA
#> 189                              Dominica  189             NA
#> 190                              Holy See  190             NA
#> 191                         Liechtenstein  191             NA
#> 192                      Marshall Islands  192             NA
#> 193                                Monaco  193             NA
#> 194                            Montserrat  194             NA
#> 195                                 Nauru  195             NA
#> 196                                  Niue  196             NA
#> 197                                 Palau  197             NA
#> 198                 Saint Kitts and Nevis  198             NA
#> 199                            San Marino  199             NA
#> 200                               Tokelau  200             NA
#> 201              Turks and Caicos Islands  201             NA
#> 202                                Tuvalu  202             NA
#>     population_millions
#> 1                16.945
#> 2                28.887
#> 3                10.976
#> 4                 0.196
#> 5                 3.453
#> 6                 2.801
#> 7                 4.666
#> 8                14.439
#> 9                 0.211
#> 10                0.779
#> 11                0.103
#> 12                1.928
#> 13                1.136
#> 14                0.883
#> 15                0.116
#> 16                3.324
#> 17                6.421
#> 18                0.113
#> 19                2.883
#> 20                2.108
#> 21               21.229
#> 22                6.859
#> 23                1.268
#> 24                2.935
#> 25               19.506
#> 26                6.466
#> 27               11.123
#> 28               53.708
#> 29               10.627
#> 30               15.008
#> 31                0.544
#> 32                4.003
#> 33                0.653
#> 34                0.832
#> 35                6.956
#> 36              161.377
#> 37                4.863
#> 38                9.101
#> 39                7.061
#> 40               19.078
#> 41                0.097
#> 42                2.448
#> 43               16.250
#> 44                4.156
#> 45                0.111
#> 46                0.110
#> 47               37.172
#> 48                2.952
#> 49                0.576
#> 50               10.522
#> 51                2.280
#> 52               36.029
#> 53               19.751
#> 54               11.338
#> 55               15.854
#> 56               41.802
#> 57              212.228
#> 58               28.499
#> 59               18.320
#> 60                4.819
#> 61               18.143
#> 62                5.851
#> 63                3.449
#> 64               11.353
#> 65                5.244
#> 66                1.874
#> 67                0.628
#> 68               37.922
#> 69               95.546
#> 70                7.052
#> 71                9.588
#> 72               81.800
#> 73               12.302
#> 74               56.313
#> 75                6.304
#> 76              106.651
#> 77               10.256
#> 78                7.650
#> 79                1.390
#> 80               17.248
#> 81              126.191
#> 82                2.083
#> 83               17.352
#> 84               98.424
#> 85             1352.642
#> 86              267.671
#> 87                0.287
#> 88               25.069
#> 89               29.767
#> 90               12.414
#> 91                6.679
#> 92                3.170
#> 93              195.875
#> 94                4.052
#> 95                7.889
#> 96               11.565
#> 97               32.476
#> 98               42.228
#> 99               11.485
#> 100              25.216
#> 101            1427.648
#> 102              25.550
#> 103              51.393
#> 104              29.496
#> 105              26.262
#> 106               8.606
#> 107               0.096
#> 108               0.429
#> 109               1.267
#> 110               0.182
#> 111              44.361
#> 112               9.950
#> 113             209.469
#> 114              15.478
#> 115              30.810
#> 116              11.175
#> 117              38.434
#> 118              22.443
#> 119              51.172
#> 120              44.246
#> 121              84.068
#> 122             109.224
#> 123               5.453
#> 124              69.428
#> 125               0.754
#> 126               0.293
#> 127               8.803
#> 128              64.991
#> 129               9.708
#> 130             127.202
#> 131               4.999
#> 132               9.453
#> 133               0.959
#> 134              17.060
#> 135              46.693
#> 136               2.078
#> 137               0.337
#> 138               9.965
#> 139               8.382
#> 140               4.403
#> 141               2.254
#> 142             145.734
#> 143              28.096
#> 144               2.119
#> 145              31.528
#> 146              10.666
#> 147               0.439
#> 148              17.084
#> 149               5.523
#> 150              60.627
#> 151              57.793
#> 152               0.386
#> 153               5.752
#> 154               4.177
#> 155             327.096
#> 156               1.323
#> 157              31.989
#> 158               0.383
#> 159               4.743
#> 160              82.340
#> 161              67.142
#> 162               9.972
#> 163              42.729
#> 164              33.703
#> 165              11.482
#> 166              49.661
#> 167               1.189
#> 168               9.631
#> 169               5.758
#> 170               4.819
#> 171               5.338
#> 172              18.729
#> 173               8.526
#> 174              24.898
#> 175              37.075
#> 176              83.124
#> 177               8.891
#> 178               4.137
#> 179               1.309
#> 180               2.782
#> 181               0.604
#> 182               4.829
#> 183               0.516
#> 184               1.569
#> 185               0.077
#> 186               0.015
#> 187               0.030
#> 188               0.018
#> 189               0.072
#> 190               0.001
#> 191               0.038
#> 192               0.058
#> 193               0.039
#> 194               0.005
#> 195               0.011
#> 196               0.002
#> 197               0.018
#> 198               0.052
#> 199               0.034
#> 200               0.001
#> 201               0.038
#> 202               0.012

# Scatterplot of life expectancy v population in 2018
ggplot(sowc_demographics, aes(life_expectancy_1970, life_expectancy_2018, size = total_pop_2018)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Life Expectancy",
    subtitle = "1970 v. 2018",
    x = "Life Expectancy in 1970",
    y = "Life Expectancy in 2018",
    size = "2018 Total Population"
  )
#> Warning: Removed 18 rows containing missing values or values outside the scale range
#> (`geom_point()`).
```
