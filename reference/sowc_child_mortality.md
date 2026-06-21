# SOWC Child Mortality Data.

Child mortality data from UNICEF's State of the World's Children 2019
Statistical Tables.

## Usage

``` r
sowc_child_mortality
```

## Format

A data frame with 195 rows and 19 variables.

- countries_and_areas:

  Country or area name.

- under5_mortality_1990:

  Under-5 mortality rate (deaths per 1,000 live births) in 1990.

- under5_mortality_2000:

  Under-5 mortality rate (deaths per 1,000 live births) in 2000.

- under5_mortality_2018:

  Under-5 mortality rate (deaths per 1,000 live births) in 2018.

- under5_reduction:

  Annual rate of reduction in under-5 mortality rate (%)2000–2018.

- under5_mortality_2018_male:

  Under-5 mortality rate male (deaths per 1,000 live births) 2018.

- under5_mortality_2018_female:

  Under-5 mortality rate female (deaths per 1,000 live births) 2018.

- infant_mortality_1990:

  Infant mortality rate (deaths per 1,000 live births) 1990

- infant_mortality_2018:

  Infant mortality rate (deaths per 1,000 live births) 2018

- neonatal_mortality_1990:

  Neonatal mortality rate (deaths per 1,000 live births) 1990.

- neonatal_mortality_2000:

  Neonatal mortality rate (deaths per 1,000 live births) 2000.

- neonatal_mortality_2018:

  Neonatal mortality rate (deaths per 1,000 live births) 2018.

- prob_dying_age5to14_1990:

  Probability of dying among children aged 5–14 (deaths per 1,000
  children aged 5) 1990.

- prob_dying_age5to14_2018:

  Probability of dying among children aged 5–14 (deaths per 1,000
  children aged 5) 2018.

- under5_deaths_2018:

  Annual number of under-5 deaths (thousands) 2018.

- neonatal_deaths_2018:

  Annual number of neonatal deaths (thousands) 2018.

- neonatal_deaths_percent_under5:

  Neonatal deaths as proportion of all under-5 deaths (%) 2018.

- age5to14_deaths_2018:

  Number of deaths among children aged 5–14 (thousands) 2018.

## Source

[United Nations Children's Emergency Fund
(UNICEF)](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables/)

## Examples

``` r
library(dplyr)
library(ggplot2)

# List countries and areas whose children aged 5 and under have a higher probability of dying in
# 2018 than they did in 1990
sowc_child_mortality |>
  mutate(decrease_prob_dying = prob_dying_age5to14_1990 - prob_dying_age5to14_2018) |>
  select(countries_and_areas, decrease_prob_dying) |>
  filter(decrease_prob_dying < 0) |>
  arrange(decrease_prob_dying)
#>                countries_and_areas decrease_prob_dying
#> 1             Syrian Arab Republic                  -3
#> 2                         Eswatini                  -2
#> 3                          Grenada                  -2
#> 4                             Niue                  -1
#> 5 Saint Vincent and the Grenadines                  -1

# List countries and areas and their relative rank for neonatal mortality in 2018
sowc_child_mortality |>
  mutate(rank = round(rank(-neonatal_mortality_2018))) |>
  select(countries_and_areas, rank, neonatal_mortality_2018) |>
  arrange(rank)
#>                       countries_and_areas rank neonatal_mortality_2018
#> 1                                Pakistan    1                      42
#> 2                Central African Republic    2                      41
#> 3                             South Sudan    3                      40
#> 4                                 Somalia    4                      38
#> 5                             Afghanistan    6                      37
#> 6                           Guinea-Bissau    6                      37
#> 7                                 Nigeria    7                      36
#> 8                                 Lesotho    8                      35
#> 9                                    Chad   10                      34
#> 10                          Cote d'Ivoire   10                      34
#> 11                                   Mali   12                      33
#> 12                             Mauritania   12                      33
#> 13                           Sierra Leone   12                      33
#> 14                                Comoros   14                      32
#> 15                               Djibouti   14                      32
#> 16                                  Benin   16                      31
#> 17                                 Guinea   16                      31
#> 18                      Equatorial Guinea   18                      30
#> 19                                  Sudan   19                      29
#> 20                                 Angola   22                      28
#> 21       Democratic Republic of the Congo   22                      28
#> 22                               Dominica   22                      28
#> 23                               Ethiopia   22                      28
#> 24                             Mozambique   22                      28
#> 25                               Cameroon   26                      27
#> 26                                  Yemen   26                      27
#> 27                                 Gambia   28                      26
#> 28                                  Haiti   28                      26
#> 29                           Burkina Faso   30                      25
#> 30                                  Niger   30                      25
#> 31                                   Togo   30                      25
#> 32                               Botswana   33                      24
#> 33                                  Ghana   33                      24
#> 34                                Liberia   33                      24
#> 35                                  India   37                      23
#> 36                               Kiribati   37                      23
#> 37       Lao People's Democratic Republic   37                      23
#> 38                                Myanmar   37                      23
#> 39                                 Zambia   37                      23
#> 40                                Burundi   41                      22
#> 41                                 Malawi   41                      22
#> 42                       Papua New Guinea   41                      22
#> 43                                  Gabon   46                      21
#> 44                             Madagascar   46                      21
#> 45                                Senegal   46                      21
#> 46                           Turkmenistan   46                      21
#> 47            United Republic of Tanzania   46                      21
#> 48                               Zimbabwe   46                      21
#> 49                                  Congo   52                      20
#> 50                                  Kenya   52                      20
#> 51                                  Nauru   52                      20
#> 52                                  Nepal   52                      20
#> 53                            Timor-Leste   52                      20
#> 54                                 Uganda   52                      20
#> 55                     Dominican Republic   55                      19
#> 56                                Eritrea   56                      18
#> 57                                 Guyana   56                      18
#> 58                             Bangladesh   58                      17
#> 59                               Eswatini   58                      17
#> 60                                 Bhutan   62                      16
#> 61       Micronesia (Federated States of)   62                      16
#> 62                                Namibia   62                      16
#> 63                                 Rwanda   62                      16
#> 64                                 Tuvalu   62                      16
#> 65                                Algeria   67                      15
#> 66                                   Iraq   67                      15
#> 67                       Marshall Islands   67                      15
#> 68                             Tajikistan   67                      15
#> 69     Venezuela (Bolivarian Republic of)   67                      15
#> 70       Bolivia (Plurinational State of)   72                      14
#> 71                               Cambodia   72                      14
#> 72                                Morocco   72                      14
#> 73                            Philippines   72                      14
#> 74                  Sao Tome and Principe   72                      14
#> 75                              Indonesia   76                      13
#> 76                             Kyrgyzstan   76                      13
#> 77                             Cabo Verde   80                      12
#> 78                              Guatemala   80                      12
#> 79                                   Niue   80                      12
#> 80                    Republic of Moldova   80                      12
#> 81                            Saint Lucia   80                      12
#> 82                    Trinidad and Tobago   80                      12
#> 83                             Uzbekistan   80                      12
#> 84                                Vanuatu   80                      12
#> 85                             Azerbaijan   88                      11
#> 86                                  Egypt   88                      11
#> 87                                   Fiji   88                      11
#> 88                               Paraguay   88                      11
#> 89                           South Africa   88                      11
#> 90                     State of Palestine   88                      11
#> 91                                Tunisia   88                      11
#> 92                               Viet Nam   88                      11
#> 93  Democratic People's Republic of Korea   96                      10
#> 94                                Grenada   96                      10
#> 95                               Honduras   96                      10
#> 96                                Jamaica   96                      10
#> 97       Saint Vincent and the Grenadines   96                      10
#> 98                               Suriname   96                      10
#> 99                                 Belize  103                       9
#> 100            Iran (Islamic Republic of)  103                       9
#> 101                                Jordan  103                       9
#> 102                             Mauritius  103                       9
#> 103                              Mongolia  103                       9
#> 104                             Nicaragua  103                       9
#> 105                                 Palau  103                       9
#> 106                            Seychelles  103                       9
#> 107                  Syrian Arab Republic  103                       9
#> 108                              Barbados  112                       8
#> 109                                Brazil  112                       8
#> 110                              Colombia  112                       8
#> 111                                Mexico  112                       8
#> 112                                Panama  112                       8
#> 113                 Saint Kitts and Nevis  112                       8
#> 114                                 Samoa  112                       8
#> 115                       Solomon Islands  112                       8
#> 116                               Albania  118                       7
#> 117                               Ecuador  118                       7
#> 118                           El Salvador  118                       7
#> 119                       North Macedonia  118                       7
#> 120                                  Peru  118                       7
#> 121                                 Tonga  118                       7
#> 122                             Argentina  124                       6
#> 123                               Armenia  124                       6
#> 124                            Costa Rica  124                       6
#> 125                               Georgia  124                       6
#> 126                            Kazakhstan  124                       6
#> 127                                 Libya  124                       6
#> 128                               Bahamas  132                       5
#> 129                     Brunei Darussalam  132                       5
#> 130                                 Chile  132                       5
#> 131                              Maldives  132                       5
#> 132                                 Malta  132                       5
#> 133                                  Oman  132                       5
#> 134                              Thailand  132                       5
#> 135                                Turkey  132                       5
#> 136                               Ukraine  132                       5
#> 137                               Uruguay  132                       5
#> 138                Bosnia and Herzegovina  144                       4
#> 139                              Bulgaria  144                       4
#> 140                                 China  144                       4
#> 141                          Cook Islands  144                       4
#> 142                                Kuwait  144                       4
#> 143                               Lebanon  144                       4
#> 144                              Malaysia  144                       4
#> 145                                 Qatar  144                       4
#> 146                          Saudi Arabia  144                       4
#> 147                             Sri Lanka  144                       4
#> 148                  United Arab Emirates  144                       4
#> 149                         United States  144                       4
#> 150                   Antigua and Barbuda  157                       3
#> 151                               Bahrain  157                       3
#> 152                                Canada  157                       3
#> 153                               Croatia  157                       3
#> 154                               Denmark  157                       3
#> 155                                France  157                       3
#> 156                                Greece  157                       3
#> 157                           New Zealand  157                       3
#> 158                                Poland  157                       3
#> 159                               Romania  157                       3
#> 160                    Russian Federation  157                       3
#> 161                                Serbia  157                       3
#> 162                              Slovakia  157                       3
#> 163                           Switzerland  157                       3
#> 164                        United Kingdom  157                       3
#> 165                             Australia  174                       2
#> 166                               Austria  174                       2
#> 167                               Belgium  174                       2
#> 168                                  Cuba  174                       2
#> 169                               Czechia  174                       2
#> 170                               Germany  174                       2
#> 171                               Hungary  174                       2
#> 172                               Ireland  174                       2
#> 173                                Israel  174                       2
#> 174                                 Italy  174                       2
#> 175                                Latvia  174                       2
#> 176                             Lithuania  174                       2
#> 177                                Monaco  174                       2
#> 178                            Montenegro  174                       2
#> 179                           Netherlands  174                       2
#> 180                              Portugal  174                       2
#> 181                                 Spain  174                       2
#> 182                                Sweden  174                       2
#> 183                               Andorra  189                       1
#> 184                               Belarus  189                       1
#> 185                                Cyprus  189                       1
#> 186                               Estonia  189                       1
#> 187                               Finland  189                       1
#> 188                               Iceland  189                       1
#> 189                                 Japan  189                       1
#> 190                            Luxembourg  189                       1
#> 191                                Norway  189                       1
#> 192                     Republic of Korea  189                       1
#> 193                            San Marino  189                       1
#> 194                             Singapore  189                       1
#> 195                              Slovenia  189                       1
```
