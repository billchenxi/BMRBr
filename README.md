[![Build Status](https://travis-ci.org/billchenxi/BMRBr.svg?branch=master)](https://travis-ci.org/billchenxi/BMRBr)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/billchenxi/BMRBr?branch=master&svg=true)](https://ci.appveyor.com/project/billchenxi/BMRBr)
[![codecov](https://codecov.io/gh/billchenxi/BMRBr/branch/master/graph/badge.svg)](https://codecov.io/gh/billchenxi/BMRBr)
[![](https://www.r-pkg.org/badges/version/BMRBr)](https://CRAN.R-project.org/package=BMRBr)
[![](https://cranlogs.r-pkg.org/badges/BMRBr)](https://cran.r-project.org/package=BMRBr)
[![DOI](https://zenodo.org/badge/117279208.svg)](https://zenodo.org/badge/latestdoi/117279208)

# BMRBr Package
Author: Xi Chen
Email: billchenxi@gmail.com
Date: Jan 12, 2018
GitHub: github.com/billchenxi

## Welcome! 
BMRBr is a package that facilites R users to analyze data from BMRB data repo by simplifing the download procedure. Currently, the only way to download individual BMRB NMR-star file is to download manually or using shell code, this package frees R users by allowing users to enter only ID and store location.

Right now, the two function in this package is `bmrb_download()` and `collect_ids()`. In future, I will release more functionalities by adding more functions.

### `bmrb_download()`
Required two input parameter: BMRB ID and storage path.

Example:
* bmrb_download(956, "../store_location")


### `collect_ids()`
No required parameter.

Example:
* bmrb_download()
