# Generate Contingency Tables for LaTeX

Input a data frame or a table, and the LaTeX output will be returned.
Options exist for row and column proportions as well as for showing
work.

## Usage

``` r
contTable(
  x,
  prop = c("none", "row", "col"),
  show = FALSE,
  digits = 3,
  caption = NULL,
  label = NULL
)
```

## Arguments

- x:

  A data frame (with two columns) or a table.

- prop:

  Indicate whether row (`"r"`, `"R"`, `"row"`) or column (`"c"`, `"C"`,
  `"col"`) proportions should be used. The default is to simply print
  the contingency table.

- show:

  If row or column proportions are specified, indicate whether work
  should be shown.

- digits:

  The number of digits after the decimal that should be shown for row or
  column proportions.

- caption:

  A string that contains the table caption. The default value is `NULL`.
  If `x` is a data frame and `caption=NULL`, then `contTable` creates a
  sensible caption from the data frame's column names. If `x` is a table
  and `caption=NULL`, then the caption is an empty string.

- label:

  The latex table label. The default value is `NULL`. If `x` is a data
  frame and `label=NULL`, then `contTable` creates a sensible label from
  the data frame's column names. If `x` is a table and `label=NULL`,
  then the label is an empty string.

## Details

The `contTable` function makes substantial use of the
[`cat`](https://rdrr.io/r/base/cat.html) function.

## See also

[`email`](https://openintrostat.github.io/openintro/reference/email.md),
[`cars93`](https://openintrostat.github.io/openintro/reference/cars93.md),
[`possum`](https://openintrostat.github.io/openintro/reference/possum.md),
[`mariokart`](https://openintrostat.github.io/openintro/reference/mariokart.md)

## Author

David Diez

## Examples

``` r

data(email)
table(email[, c("spam", "sent_email")])
#>     sent_email
#> spam    0    1
#>    0 2464 1090
#>    1  367    0
contTable(email[, c("spam", "sent_email")])
#> \begin{table}
#> \begin{center}
#> \begin{tabular}{lrrr}
#> \hline
#>  & 0 & 1 & Total \\
#> \hline
#> 0 & 2464 & 1090 & 3554 \\
#> 1 &  367 &    0 &  367 \\
#> \hline
#> Total & 2831 & 1090 & 3921 \\
#> \hline
#> \end{tabular}
#> \end{center}
#> \caption{Contingency table for spam and sent\_email}
#> \label{spam-and-sentemail}
#> \end{table}
```
