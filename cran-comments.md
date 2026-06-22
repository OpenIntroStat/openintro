## Test environments

* local OS X install, R 4.6.0
* GitHub Actions (ubuntu-24.04): release, devel
* GitHub Actions (windows): release
* Github Actions (macOS): release
* win-builder: devel
* r-hub: windows, ubuntu-gcc12

## R CMD check results

There were no ERRORs, WARNINGs, or NOTEs.

There was 1 INFO, explained below.

* checking installed package size ... INFO
     installed size is  7.2Mb
     sub-directories of 1Mb or more:
       data   6.1Mb
      
  * This is a majority data package that contains the datasets that are used in the OpenIntro textbooks (open-source, free introductory statistics textbooks, openintro.org) as well as accompanying labs and slide decks. The size is larger than recommended. CRAN policies state that "where a large amount of data is required (even after compression), consideration should be given to a separate data-only package which can be updated only rarely", and this package fits that criteria. This release adds new datasets ported from ISLBS and fixes documentation for the `mammals` dataset.
