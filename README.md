
# openintro <img src="man/figures/logo.png" align="right" alt="Hex logo for package" width="120" />

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/openintro)](https://cran.r-project.org/package=openintro)
[![R-CMD-check](https://github.com/OpenIntroStat/openintro/workflows/R-CMD-check/badge.svg)](https://github.com/OpenIntroStat/openintro/actions)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/openintro)](https://cran.r-project.org/package=openintro)
<!-- badges: end -->

Supplemental functions and data for OpenIntro resources, which includes
open-source textbooks and resources for introductory statistics at
[openintro.org](https://www.openintro.org/). The package contains
datasets used in our open-source textbooks along with custom plotting
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
or used reprex before, you’re in for a treat! Seriously, reprex will
make all of your R-question-asking endeavors easier (which is a pretty
insane ROI for the five to ten minutes it’ll take you to learn what it’s
all about). For additional reprex pointers, check out the [Get
help!](https://www.tidyverse.org/help/) section of the tidyverse site.

Before opening a new issue, be sure to [search issues and pull
requests](https://github.com/openintrostat/openintro/issues) to make
sure the bug hasn’t been reported and/or already fixed in the
development version. By default, the search will be pre-populated with
`is:issue is:open`. You can [edit the
qualifiers](https://help.github.com/articles/searching-issues-and-pull-requests/)
(e.g. `is:pr`, `is:closed`) as needed. For example, you’d simply remove
`is:open` to search *all* issues in the repo, open or closed.

## Contributing

Process for adding new data to the package

The following steps use the **devtools** and **usethis** packages for
various steps. We recommend using this process when suggesting new
datasets to be added to the package. If the dataset is large (\>500MB)
or you’d like to add a function, please open an issue first for
discussion before making the pull request.

1.  Fork and clone the repo with
    `usethis::create_from_github("OpenIntroStat/openintro")`
    - Note: If you have write access to the repo, you can skip this
      step.
2.  Start a new pull request with `usethis::pr_init("BRANCH-NAME")`,
    where `BRANCH-NAME` is an informative branch name.
3.  If adding a file that is not an .rda file to begin with (Excel, csv,
    etc.), create a folder in the `data-raw` folder with the name of the
    dataset (how you’d like it to show up in the package). Please use
    `snake_case` for naming, e.g. `name_of_dataset`.
4.  Place your dataset in its raw form in the folder.
5.  Also in the `data-raw` folder, create a new R script called
    `name_of_dataset-dataprep.R` and write the code needed to read in
    the file, make any modifications to the data that are needed (if
    any), and end with `usethis::use_data()` to save the data in the
    package as an .rda file with the ideal compression. See examples
    from other folders in `data-raw` for sample code. The contents of
    this folder do not end up in the package (the entire folder is
    ignored in the `.Rbuildignore`) so you don’t need to worry about
    adding package dependencies etc.
6.  In the `R` folder, create an R script called `data-name_of_dataset`
    and add documentation using Roxygen style. See other documentation
    files for help with style. In the examples, use tidyverse syntax but
    do not use `library(tidyverse)` and only use the relevant packages,
    e.g. `library(dplyr)`, `library(ggplot2)`.
7.  Restart R and run `devtools::load_all()` to make sure the data loads
    and run your examples to confirm they all work.
8.  Run `devtools::document()`, restart R, and then
    `devtools::load_all()`. Then, check out `?name_of_dataset` to make
    sure the documentation looks as expected.
9.  Run `devtools::check()`. The only NOTE you should see as a result of
    the check should be about the package size. If any other ERRORs,
    NOTEs, or WARNINGs are generated, resolve them or open an issue for
    help.
10. In the `pkgdown.yml` file, add the name of the dataset under
    `reference`, in the correct alphabetical order.
11. Add a note in the `NEWS.md` with the new dataset you’ve added with a
    link to your GitHub username so we can acknowledge your
    contribution, e.g. “added by
    [@mine-cetinkaya-rundel](https://github.com/mine-cetinkaya-rundel)”.

## Code of Conduct

Please note that the openintro project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
