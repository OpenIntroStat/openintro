# UCLA courses in Fall 2018

List of all courses at UCLA during Fall 2018.

## Usage

``` r
ucla_f18
```

## Format

A data frame with 3950 observations on the following 14 variables.

- year:

  Year the course was offered

- term:

  Term the course was offered

- subject:

  Subject

- subject_abbr:

  Subject abbreviation, if any

- course:

  Course name

- course_num:

  Course number, complete

- course_numeric:

  Course number, numeric only

- seminar:

  Boolean for if this is a seminar course

- ind_study:

  Boolean for if this is some form of independent study

- apprenticeship:

  Boolean for if this is an apprenticeship

- internship:

  Boolean for if this is an internship

- honors_contracts:

  Boolean for if this is an honors contracts course

- laboratory:

  Boolean for if this is a lab

- special_topic:

  Boolean for if this is any of the special types of courses listed

## Source

<https://sa.ucla.edu/ro/public/soc>, retrieved 2018-11-22.

## Examples

``` r

nrow(ucla_f18)
#> [1] 3950
table(ucla_f18$special_topic)
#> 
#> FALSE  TRUE 
#>  2768  1182 
subset(ucla_f18, is.na(course_numeric))
#> # A tibble: 3 × 14
#>    year term  subject      subject_abbr course course_num course_numeric seminar
#>   <dbl> <chr> <chr>        <chr>        <chr>  <chr>               <dbl> <lgl>  
#> 1  2018 Fall  Aerospace S… AERO ST      Leade… A                      NA FALSE  
#> 2  2018 Fall  Military Sc… MIL SCI      Leade… Z                      NA FALSE  
#> 3  2018 Fall  Naval Scien… NAV SCI      Naval… Z                      NA FALSE  
#> # ℹ 6 more variables: ind_study <lgl>, apprenticeship <lgl>, internship <lgl>,
#> #   honors_contracts <lgl>, laboratory <lgl>, special_topic <lgl>
table(subset(ucla_f18, !special_topic)$course_numeric < 100)
#> 
#> FALSE  TRUE 
#>  2225   543 
elig_courses <-
  subset(ucla_f18, !special_topic & course_numeric < 100)
set.seed(1)
ucla_textbooks_f18 <-
  elig_courses[sample(nrow(elig_courses), 100), ]
tmp <- order(
  ucla_textbooks_f18$subject,
  ucla_textbooks_f18$course_numeric
)
ucla_textbooks_f18 <- ucla_textbooks_f18[tmp, ]
rownames(ucla_textbooks_f18) <- NULL
head(ucla_textbooks_f18)
#> # A tibble: 6 × 14
#>    year term  subject      subject_abbr course course_num course_numeric seminar
#>   <dbl> <chr> <chr>        <chr>        <chr>  <chr>               <dbl> <lgl>  
#> 1  2018 Fall  Anthropology ANTHRO       Cultu… 3                       3 FALSE  
#> 2  2018 Fall  Anthropology ANTHRO       Cultu… 4                       4 FALSE  
#> 3  2018 Fall  Architectur… ARCH&UD      Intro… 30                     30 FALSE  
#> 4  2018 Fall  Art          NA           Produ… 21B                    21 FALSE  
#> 5  2018 Fall  Arts and Ar… ART&ARC      Arts … 10                     10 FALSE  
#> 6  2018 Fall  Asian Ameri… ASIA AM      UCLA … 19                     19 FALSE  
#> # ℹ 6 more variables: ind_study <lgl>, apprenticeship <lgl>, internship <lgl>,
#> #   honors_contracts <lgl>, laboratory <lgl>, special_topic <lgl>
```
