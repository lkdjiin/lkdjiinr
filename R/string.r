#' String Concatenation Operator.
#'
#' The world is in need of an operator to concatenate strings. This will
#' be %+%.
#'
#' @return A string.
#' @examples
#' "foo" %+% "bar"
#' #=> "foobar"
#'
#' c("a", "a") %+% c("b", "c")
#' #=> "ab" "ac"
"%+%" <- function(...) paste(..., sep='')

#' Alias to chartr.
#'
#' Like \code{chartr} but with a different order of arguments.
#'
#' @param x A vector of strings to transform.
#' @param old Old characters.
#' @param new New characters.
#' @return A vector of strings.
#' @examples
#' tr("foo", "o", "u")
#' #=> "fuu"
#' @seealso \code{\link{chartr}}
tr <- function(x, old, new) chartr(old, new, x)

