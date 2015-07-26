#' Alias to Sys.time
#'
#' @examples
#' now()
#' #=> "2015-07-26 14:23:25 CEST"
#' @seealso \code{\link{Sys.time}}
now <- Sys.time

# FIXME roxygen2 seems to hate the . (dot) function name.
#
# Recall last computed value.
#
# Useful function to working interactively. It's a king of shorter
# alias for \code{.Last.value}.
#
# @examples
# 1 + 1
# #=> 2
# .()
# #=> 2
# rnorm(3)
# #=> 1.3475191 -0.2122325 -1.4027707
# .()
# #=> 1.3475191 -0.2122325 -1.4027707
. <- function() .Last.value

#' Alias to setwd.
#'
#' @examples
#' cd('foo')
#' getwd()
#' #=> "foo"
#' @seealso \code{\link{setwd}}
cd <- setwd

#' Change Directory Dot Dot.
#'
#' Move up one directory level. Same as UNIX `cd ..`.
#'
#' @examples
#' cddd()
cddd <- setwd('..')

