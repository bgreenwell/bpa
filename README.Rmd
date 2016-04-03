# bpa: Basic Pattern Analysis in R

[![Build Status](https://travis-ci.org/bgreenwell/bpa.svg?branch=master)](https://travis-ci.org/bgreenwell/bpa)
[![Coverage Status](https://img.shields.io/codecov/c/github/bgreenwell/bpa.svg)](https://codecov.io/github/bgreenwell/bpa?branch=master)

Basic pattern analysis, as implemented in the R package `bpa`, is a data pre-processing tool and is designed to help reduce the time spent doing various pre-processing tasks. It takes inspiration from some of the functionality of [SAS/DataFlux Data Management Studio](https://support.sas.com/documentation/onlinedoc/dfdmstudio/). More specifically, the functions in `bpa` help standardize the data so that multiple formatting issues, typos, and other unexpected outcomes can more easily be identified in unfamiliar and/or large amounts of data. For more information and example usage, see the introductory vignette included with the package.

## Installation
The current stable release of the `bpa` package is available from CRAN and can be installed using `install.packages`:
```r
# Install current stable release from CRAN
install.packages("bpa")
```
The development version is hosted on GitHub at https://github.com/bgreenwell/bpa and can be installed using `install_github` from the [`devtools`](https://github.com/hadley/devtools) package:
```r
# Assuming devtools is already installed
devtools::install_github("bgreenwell/bpa")
```
Bug reports should be submitted to https://github.com/bgreenwell/bpa/issues.
