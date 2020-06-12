## Resubmission
This is a resubmission. In this version I have:

* Fixed possibly mis-spelled words in DESCRIPTION.

* Fixed all possibly invalid URLs in README.md and various .Rd files, 
  except for https://fcid.foodrisk.org which works for me in the browswer even 
  though it gave a "libcurl error code 60" on the Debian check (it was not 
  flagged in the Windows check).
  
* Fixed cross-references in loop.Rd.
  
## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Mine �etinkaya-Rundel <cetinkaya.mine@gmail.com>'
  
  New maintainer:
    Mine �etinkaya-Rundel <cetinkaya.mine@gmail.com>
  Old maintainer(s):
    David M Diez <david@openintro.org>
  
  * David M Diez notified CRAN about the change in package maintainer on 
  2020-06-09 by email.

> On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release), fedora-clang-devel (r-devel)
  checking installed package size ... NOTE
    installed size is  9.2Mb
    sub-directories of 1Mb or more:
      data   8.4Mb
  
  * This is a majority data package that contains the datasets that are used 
  in the OpenIntro textbooks (open-source, free introductory statistics 
  textbooks, openintro.org) as well as accompanying labs and slide decks.
  The size is larger than recommended. CRAN policies state that "where a large 
  amount of data is required (even after compression), consideration
  consideration should be given to a separate data-only package which can be
  updated only rarely", and this package fits the critera.

0 errors ✓ | 0 warnings ✓ | 2 notes x
