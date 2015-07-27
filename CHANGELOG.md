# Change log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased] - unreleased

### Changed
- `na_count` works with data frames as well as with vectors. Previous
behavior was to sum up all the NAs in a data frame. Now a call of `na_count`
on a data frame returns a vector with a sum for each variable in the data frame.

### Removed
- The operator %+% to concatenate two strings is removed. It was a joke and
clashes with the same operator from ggplot2.


## [0.0.2] - 2015-07-26
First release with some functions.
