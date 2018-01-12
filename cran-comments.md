## Test environments
* local OS X install, R 3.4.0
* Fedora 24, R 3.1.2
* Windows 10, R 3.1.2

## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies
I have also run R CMD check on downstream dependencies of httr 
(https://github.com/wch/checkresults/blob/master/httr/r-release). 
All packages that I could install passed except:

* Ecoengine: this appears to be a failure related to config on 
  that machine. I couldn't reproduce it locally, and it doesn't 
  seem to be related to changes in httr (the same problem exists 
  with httr 0.4).
