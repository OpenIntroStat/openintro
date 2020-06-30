## Resubmission

This is a resubmission. In this version I have:

* Removed 14 datasets and 2 functions that made sense to move into other packages 
  in order to reduce the package size. Note that the package size is still greater 
  than 5MB. See note below.

* Added dependency on 3 packages (airports, cherryblossom, and usdata) that where 
  the datasets and functions from this package were moved into.
  
* Added a vignette on associated packages and datasets they contain. 
  
## Test environments

* local OS X install, R 4.0.1
* GitHub Actions (ubuntu-16.04): release
* GitHub Actions (windows): release
* Github Actions (macOS): release, devel
* win-builder: release, devel, oldrelease
* r-hub: windows-x86_64-oldrel, ubuntu-gcc-release, fedora-clang-devel

## R CMD check results

* checking CRAN incoming feasibility ... NOTE
  Maintainer: ‘Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>’

  New maintainer:
    Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>
  Old maintainer(s):
    David M Diez <david@openintro.org>
  
  * David M Diez notified CRAN about the change in package maintainer on 
  2020-06-09 by email.

* checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    data   5.2Mb
  
  * This is a majority data package that contains the datasets that are used 
  in the OpenIntro textbooks (open-source, free introductory statistics 
  textbooks, openintro.org) as well as accompanying labs and slide decks.
  The size is larger than recommended. CRAN policies state that "where a large 
  amount of data is required (even after compression), consideration
  consideration should be given to a separate data-only package which can be
  updated only rarely", and this package fits the critera.

0 errors ✓ | 0 warnings ✓ | 2 notes x

----

From r-hub:

- Fedora Linux, R-devel, clang, gfortran

* checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    data   5.2Mb
* checking data for non-ASCII characters ... NOTE
  Note: found 2518 marked UTF-8 strings
  
- Fedora Linux, R-devel, clang, gfortran

* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>’

New maintainer:
  Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>
Old maintainer(s):
  David M Diez <david@openintro.org>

Found the following (possibly) invalid URLs:
  URL: https://www.kaggle.com/gsutters/the-human-freedom-index
    From: man/hfi.Rd
    Status: 404
    Message: Not Found
* checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    data   5.2Mb

- Ubuntu Linux 16.04 LTS, R-release, GCC

* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>’

New maintainer:
  Mine Çetinkaya-Rundel <cetinkaya.mine@gmail.com>
Old maintainer(s):
  David M Diez <david@openintro.org>

Found the following (possibly) invalid URLs:
  URL: https://sedac.ciesin.columbia.edu/es/esi/ESI2005_Main_Report.pdf
    From: man/esi.Rd
    Status: Error
    Message: libcurl error code 60:
        SSL certificate problem: certificate has expired
        (Status without verification: OK)
  URL: https://www.kaggle.com/gsutters/the-human-freedom-index
    From: man/hfi.Rd
    Status: 404
    Message: Not Found
* checking installed package size ... NOTE
  installed size is  6.1Mb
  sub-directories of 1Mb or more:
    data   5.2Mb
