# United States Presidental History

Summary of the changes in the president and vice president for the
United States of America.

## Usage

``` r
president
```

## Format

A data frame with 67 observations on the following 5 variables.

- potus:

  President of the United States

- party:

  Political party of the president

- start:

  Start year

- end:

  End year

- vpotus:

  Vice President of the United States

## Source

Presidents of the United States (table) – infoplease.com (visited: Nov
2nd, 2010)

<https://www.infoplease.com/us/government/executive-branch/presidents>
and
<https://www.infoplease.com/us/government/executive-branch/vice-presidents>

## Examples

``` r


president
#> # A tibble: 67 × 5
#>    potus             party                   start   end vpotus            
#>    <fct>             <fct>                   <int> <dbl> <fct>             
#>  1 George Washington " "                      1789  1797 John Adams        
#>  2 John Adams        "Federalist"             1797  1801 Thomas Jefferson  
#>  3 Thomas Jefferson  "Democratic-Republican"  1801  1805 Aaron Burr        
#>  4 Thomas Jefferson  "Democratic-Republican"  1805  1809 George Clinton    
#>  5 James Madison     "Democratic-Republican"  1809  1812 George Clinton    
#>  6 James Madison     "Democratic-Republican"  1812  1813 No Vice President 
#>  7 James Madison     "Democratic-Republican"  1813  1814 Elbridge Gerry    
#>  8 James Madison     "Democratic-Republican"  1814  1817 No Vice President 
#>  9 James Monroe      "Democratic-Republican"  1817  1825 Daniel D. Tompkins
#> 10 John Quincy Adams "Democratic-Republican"  1825  1829 John C. Calhoun   
#> # ℹ 57 more rows
```
