# Professor evaluations and beauty

The data are gathered from end of semester student evaluations for 463
courses taught by a sample of 94 professors from the University of Texas
at Austin. In addition, six students rate the professors' physical
appearance. The result is a data frame where each row contains a
different course and each column has information on the course and the
professor who taught that course.

## Usage

``` r
evals
```

## Format

A data frame with 463 observations on the following 23 variables.

- course_id:

  Variable identifying the course (out of 463 courses).

- prof_id:

  Variable identifying the professor who taught the course (out of 94
  professors).

- score:

  Average professor evaluation score: (1) very unsatisfactory - (5)
  excellent.

- rank:

  Rank of professor: teaching, tenure track, tenured.

- ethnicity:

  Ethnicity of professor: not minority, minority.

- gender:

  Gender of professor: female, male.

- language:

  Language of school where professor received education: English or
  non-English.

- age:

  Age of professor.

- cls_perc_eval:

  Percent of students in class who completed evaluation.

- cls_did_eval:

  Number of students in class who completed evaluation.

- cls_students:

  Total number of students in class.

- cls_level:

  Class level: lower, upper.

- cls_profs:

  Number of professors teaching sections in course in sample: single,
  multiple.

- cls_credits:

  Number of credits of class: one credit (lab, PE, etc.), multi credit.

- bty_f1lower:

  Beauty rating of professor from lower level female: (1) lowest - (10)
  highest.

- bty_f1upper:

  Beauty rating of professor from upper level female: (1) lowest - (10)
  highest.

- bty_f2upper:

  Beauty rating of professor from second level female: (1) lowest - (10)
  highest.

- bty_m1lower:

  Beauty rating of professor from lower level male: (1) lowest - (10)
  highest.

- bty_m1upper:

  Beauty rating of professor from upper level male: (1) lowest - (10)
  highest.

- bty_m2upper:

  Beauty rating of professor from second upper level male: (1)
  lowest - (10) highest.

- bty_avg:

  Average beauty rating of professor.

- pic_outfit:

  Outfit of professor in picture: not formal, formal.

- pic_color:

  Color of professor's picture: color, black & white.

## Source

Daniel S. Hamermesh, Amy Parker, Beauty in the classroom: instructors’
pulchritude and putative pedagogical productivity, Economics of
Education Review, Volume 24, Issue 4, 2005.
[doi:10.1016/j.econedurev.2004.07.013](https://doi.org/10.1016/j.econedurev.2004.07.013)
.

## Examples

``` r

evals
#> # A tibble: 463 × 23
#>    course_id prof_id score rank    ethnicity gender language   age cls_perc_eval
#>        <int>   <int> <dbl> <fct>   <fct>     <fct>  <fct>    <int>         <dbl>
#>  1         1       1   4.7 tenure… minority  female english     36          55.8
#>  2         2       1   4.1 tenure… minority  female english     36          68.8
#>  3         3       1   3.9 tenure… minority  female english     36          60.8
#>  4         4       1   4.8 tenure… minority  female english     36          62.6
#>  5         5       2   4.6 tenured not mino… male   english     59          85  
#>  6         6       2   4.3 tenured not mino… male   english     59          87.5
#>  7         7       2   2.8 tenured not mino… male   english     59          88.6
#>  8         8       3   4.1 tenured not mino… male   english     51         100  
#>  9         9       3   3.4 tenured not mino… male   english     51          56.9
#> 10        10       4   4.5 tenured not mino… female english     40          87.0
#> # ℹ 453 more rows
#> # ℹ 14 more variables: cls_did_eval <int>, cls_students <int>, cls_level <fct>,
#> #   cls_profs <fct>, cls_credits <fct>, bty_f1lower <int>, bty_f1upper <int>,
#> #   bty_f2upper <int>, bty_m1lower <int>, bty_m1upper <int>, bty_m2upper <int>,
#> #   bty_avg <dbl>, pic_outfit <fct>, pic_color <fct>
```
