# Create a CSV variant of .rda files

The function should be run with a path to a package directory. It will
then look through the `data` directory of the package, and for all
datasets that are data frames, create CSV variants in a `data-csv`
directory.

## Usage

``` r
write_pkg_data(
  pkg,
  dir = paste0("data-", out_type),
  overwrite = FALSE,
  out_type = c("csv", "tab", "R")
)
```

## Arguments

- pkg:

  The R package where we'd like to generate CSVs of any data frames.

- dir:

  A character string representing the path to the folder. where the CSV
  files should be written. If no such directory exists, one will be
  created (recursively).

- overwrite:

  Boolean to indicate if to overwrite any existing files that have
  conflicting names in the directory specified.

- out_type:

  Format for the type of output as a CSV (`"csv"`), tab-delimited text
  file (`"tab"`), or the R code to generate the object (`"R"`).

## Examples

``` r
if (FALSE) { # \dontrun{
write_pkg_data("openintro")
list.files("data-csv")
} # }
```
