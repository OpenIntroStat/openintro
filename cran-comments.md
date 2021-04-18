## Test environments

* local OS X install, R 4.0.4
* GitHub Actions (ubuntu-20.04): release, devel
* GitHub Actions (windows): release
* Github Actions (macOS): release
* win-builder: release, devel, oldrelease
* r-hub: windows-x86_64-oldrel, ubuntu-gcc-release, fedora-clang-devel

## R CMD check results

There were no ERRORs or WARNINGs.

There were 2 NOTEs, explained below.

* checking installed package size ... NOTE
    installed size is  7.1Mb
    sub-directories of 1Mb or more:
      data   6.1Mb
  
  * This is a majority data package that contains the datasets that are used 
  in the OpenIntro textbooks (open-source, free introductory statistics 
  textbooks, openintro.org) as well as accompanying labs and slide decks.
  The size is larger than recommended. CRAN policies state that "where a large 
  amount of data is required (even after compression), consideration
  consideration should be given to a separate data-only package which can be
  updated only rarely", and this package fits the critera.

Additionally, the following URLs were tagged as possibly invalid in Win Builder checks. All of them work in incognito browsers for me:

- URL: https://www.kaggle.com/gsutters/the-human-freedom-index
    From: man/hfi.Rd
    Status: 404
    Message: Not Found

- URL: https://sedac.ciesin.columbia.edu/es/esi/ESI2005_Main_Report.pdf
    From: man/esi.Rd
    Status: Error
    Message: libcurl error code 60:
        SSL certificate problem: certificate has expired
        (Status without verification: OK)

- URL: https://doi.org/10.1073/pnas.1615324114 (moved to https://www.pnas.org/lookup/doi/10.1073/pnas.1615324114)
    From: man/malaria.Rd
    Status: 503
    Message: Service Unavailable
