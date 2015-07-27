#' Count Number of NAs in a Vector or a Data Frame.
#'
#' @param x A vector or a data frame.
#' @return The number of NAs in the object x.
#' @examples
#' x <- c(NA, 'a', 'b', NA, 'c')
#' na_count(x)
#' #=> 2
#'
#' df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
#' na_count(df)
#' #=> x y z
#' #=> 0 1 2
#' @seealso \code{\link{nas}}
na_count <- function(x) {
    if(is.data.frame(x)) {
        sapply(x, function(λ) sum(is.na(λ)))
    } else {
        sum(is.na(x))
    }
}


#' Alias for \code{na_count}
#' @seealso \code{\link{na_count}}
nas <- function(x) na_count(x)

#' Proportion of NAs in a vector.
#'
#' What proportion of NA values are in a vector?
#'
#' @param x A vector.
#' @return A number between 0 (no NAs) and 1 (all values are NAs).
#' @examples
#' x <- c(NA, 'a', 'b', NA, 'c')
#' na_prop(x)
#' #=> 0.4
#' @seealso \code{\link{na_percent}}
na_prop <- function(x) na_count(x) / length(x)

#' Percentage of NAs in a vector.
#'
#' What percentage of NA values are in a vector?
#'
#' @param x A vector.
#' @return A number between 0 (no NAs) and 100 (all values are NAs).
#' @examples
#' x <- c(NA, 'a', 'b', NA, 'c')
#' na_percent(x)
#' #=> 40
#' @seealso \code{\link{na_prop}}
na_percent <- function(x) na_prop(x) * 100
