
# openintro <a href="https://www.openintro.org/"><img src="man/figures/openintro-hex.png" align="right" height="170"></a>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/openintro)](https://cran.r-project.org/package=openintro)
[![R build
status](https://github.com/OpenIntroStat/openintro/workflows/R-CMD-check/badge.svg)](https://github.com/OpenIntroStat/openintro/actions)
<!-- badges: end -->

Supplemental functions and data for ‘OpenIntro’ resources, which
includes open-source textbooks and resources for introductory statistics
at [openintro.org](https://www.openintro.org/). The package contains
data sets used in our open-source textbooks along with custom plotting
functions for reproducing book figures. The package also contains the
datasets used in OpenIntro labs. Note that many functions and examples
include color transparency; some plotting elements may not show up
properly (or at all) when run in some versions of Windows operating
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
install_github("OpenIntroStat/openintro")
```

This package was produced as part of the OpenIntro project. For the
accompanying textbook, visit [openintro.org](https://openintro.org). A
PDF of the textbook is free and paperbacks can be purchased online
(royalty-free).

## Questions, bugs, feature requests

You can file an issue to get help, report a bug, or make a feature
request.

When filing an issue to get help or report a bug, please make a minimal
**repr**oducible **ex**ample using the
[reprex](https://reprex.tidyverse.org/) package. If you haven’t heard of
or used reprex before, you’re in for a treat\! Seriously, reprex will
make all of your R-question-asking endeavors easier (which is a pretty
insane ROI for the five to ten minutes it’ll take you to learn what it’s
all about). For additional reprex pointers, check out the [Get
help\!](https://www.tidyverse.org/help/) section of the tidyverse site.

Before opening a new issue, be sure to [search issues and pull
requests](https://github.com/openintrostat/openintro/issues) to make
sure the bug hasn’t been reported and/or already fixed in the
development version. By default, the search will be pre-populated with
`is:issue is:open`. You can [edit the
qualifiers](https://help.github.com/articles/searching-issues-and-pull-requests/)
(e.g. `is:pr`, `is:closed`) as needed. For example, you’d simply remove
`is:open` to search *all* issues in the repo, open or closed.

## Code of Conduct

Please note that the openintro project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
