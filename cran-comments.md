## Test environments

* local OS X install, R 4.4.0
* GitHub Actions (ubuntu-22.04.4): release, devel
* GitHub Actions (windows): release
* Github Actions (macOS): release
* win-builder: devel
* r-hub: windows, ubuntu-gcc12

## R CMD check results

There were no ERRORs or WARNINGs.

There was 1 NOTE, explained below.

* checking installed package size ... NOTE
    installed size is  6.1Mb
    sub-directories of 1Mb or more:
      data   5.0Mb
      
  * This is a majority data package that contains the datasets that are used in the OpenIntro textbooks (open-source, free introductory statistics textbooks, openintro.org) as well as accompanying labs and slide decks. The size is larger than recommended. CRAN policies state that "where a large amount of data is required (even after compression), consideration consideration should be given to a separate data-only package which can be updated only rarely", and this package fits the critera. This release is for fixing HTML5 for documentation pages.
