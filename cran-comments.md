## Test environments

* local OS X install, R 4.0.4
* GitHub Actions (ubuntu-20.04): release, devel
* GitHub Actions (windows): release
* Github Actions (macOS): release
* win-builder: release, devel, oldrelease
* r-hub: windows-x86_64-devel, ubuntu-gcc-release, fedora-clang-devel

## R CMD check results

There were no ERRORs or WARNINGs.

There were 2 NOTEs, explained below.

* checking installed package size ... NOTE
    installed size is  5.1Mb
    sub-directories of 1Mb or more:
      data   4.0Mb
  
  * This is a majority data package that contains the datasets that are used 
  in the OpenIntro textbooks (open-source, free introductory statistics 
  textbooks, openintro.org) as well as accompanying labs and slide decks.
  The size is larger than recommended. CRAN policies state that "where a large 
  amount of data is required (even after compression), consideration
  consideration should be given to a separate data-only package which can be
  updated only rarely", and this package fits the critera. This update uses 
  LazyDataCompression: xz as recommended, which reduced the package size 
  compared to the previous submission.

Additionally, the following URLs were tagged as possibly invalid in Win Builder checks. All of them work in incognito browsers for me:

- URL: https://ssd.userbenchmark.com/
    From: man/ssd_speed.Rd
    Status: 404
    Message: Not Found

- URL: https://www.sec.gov/Archives/edgar/data/1326801/000119312512034517/d287954ds1.htm
    From: man/ipo.Rd
    Status: 403
    Message: Forbidden

- URL: https://www.wsj.com/articles/BL-TOTALB-326
    From: man/ipo.Rd
    Status: 403
    Message: Forbidden

- URL: https://www.bls.gov/cps/eetech_methods.pdf
    From: man/unempl.Rd
    Message: libcurl error code 35:
        schannel: next InitializeSecurityContext failed: SEC_E_ILLEGAL_MESSAGE (0x80090326) - This error usually occurs when a fatal SSL/TLS alert is received (e.g. handshake failed).

- URL: https://www.nps.gov/mora/planyourvisit/annual-snowfall-totals.htm
    Status: Error
    From: man/snowfall.Rd
    Status: Error
    Message: libcurl error code 35:
        schannel: next InitializeSecurityContext failed: SEC_E_ILLEGAL_MESSAGE (0x80090326) - This error usually occurs when a fatal SSL/TLS alert is received (e.g. handshake failed).
