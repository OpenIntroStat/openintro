## Test environments

* local OS X install, R 4.0.5
* GitHub Actions (ubuntu-20.04): release, devel
* GitHub Actions (windows): release
* Github Actions (macOS): release
* win-builder: release, devel, oldrelease
* r-hub: windows-x86_64-devel, ubuntu-gcc-release, fedora-clang-devel

## R CMD check results

There were no ERRORs or WARNINGs.

There were 1 NOTE, explained below.

* checking installed package size ... NOTE
    installed size is  5.1Mb
    sub-directories of 1Mb or more:
      data   4.0Mb
      
  * This is a majority data package that contains the datasets that are used in the OpenIntro textbooks (open-source, free introductory statistics textbooks, openintro.org) as well as accompanying labs and slide decks. The size is larger than recommended. CRAN policies state that "where a large amount of data is required (even after compression), consideration consideration should be given to a separate data-only package which can be updated only rarely", and this package fits the critera. This submission addresses the `LazyDataCompression: xz` suggestion by CRAN, reducing the size of the package.


