# Sample Responses to Two Public Health Questions

Public health has improved and evolved, but has the public's knowledge
changed with it? This dataset explores sample responses for two survey
questions posed by Hans Rosling during lectures to a wide array of
well-educated audiences.

## Usage

``` r
rosling_responses
```

## Format

A data frame with 278 rows and 3 variables:

- question:

  ID for the question being posed.

- response:

  Noting whether the response was `correct` or `incorrect`.

- prob_random_correct:

  The probability the person would have guessed the answer correctly if
  they were guessing completely randomly.

## Source

The samples we describe are plausible based on the exact rates observed
in larger samples. For more info on the actual rates observed, visit
<https://www.gapminder.org>.

Another relevant reference is a book by Hans Rosling, Anna Rosling
Ronnlund, and Ola Rosling called
[Factfulness](https://www.gapminder.org/factfulness-book/).

## Examples

``` r

frac_correct <- tapply(
  rosling_responses$response == "correct",
  rosling_responses$question,
  mean
)
frac_correct
#>                    children_in_2100 children_with_1_or_more_vaccination 
#>                           0.1491228                           0.2400000 
n <- table(rosling_responses$question)
n
#> 
#>                    children_in_2100 children_with_1_or_more_vaccination 
#>                                 228                                  50 
expected <- tapply(
  rosling_responses$prob_random_correct,
  rosling_responses$question,
  mean
)

# Construct confidence intervals.
se <- sqrt(frac_correct * (1 - frac_correct) / n)
# Lower bounds.
frac_correct - 1.96 * se
#>                    children_in_2100 children_with_1_or_more_vaccination 
#>                           0.1028853                           0.1216186 
# Upper bounds.
frac_correct + 1.96 * se
#>                    children_in_2100 children_with_1_or_more_vaccination 
#>                           0.1953603                           0.3583814 

# Construct Z-scores and p-values.
z <- (frac_correct - expected) / se
pt(z, df = n - 1)
#>                    children_in_2100 children_with_1_or_more_vaccination 
#>               0.0000000000001058928               0.0643556683546200603 
```
