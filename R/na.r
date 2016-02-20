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

#' Proportion of NAs in a Vector or a Data Frame.
#'
#' What proportion of NA values are in a vector or in each variable of a
#' data frame?
#'
#' @param x A vector or data frame.
#' @return The proportion between 0 (no NAs) and 1 (all values are NAs)
#' of the object x.
#' @examples
#' x <- c(NA, 'a', 'b', NA, 'c')
#' na_prop(x)
#' #=> 0.4
#'
#' df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
#' na_prop(df)
#' #=>   x   y   z 
#' #=> 0.0 0.5 1.0
#' @seealso \code{\link{na_percent}}
na_prop <- function(x) {
    vector_prop <- function(λ) na_count(λ) / length(λ)
    if(is.data.frame(x)) {
        sapply(x, vector_prop)
    } else {
        vector_prop(x)
    }
}

#' Percentage of NAs in a Vector or a Data Frame.
#'
#' What percentage of NA values are in a vector or in each variable of a
#' data frame?
#'
#' @param x A vector or a data frame.
#' @return The percentage (between 0: no NAs, and 100: all values are
#' NAs) of the object x.
#' @examples
#' x <- c(NA, 'a', 'b', NA, 'c')
#' na_percent(x)
#' #=> 40
#'
#' df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
#' na_percent(df)
#' #=> x   y   z 
#' #=> 0  50 100 
#' @seealso \code{\link{na_prop}}
na_percent <- function(x) {
    vector_percent <- function(λ) na_prop(λ) * 100
    if(is.data.frame(x)) {
        sapply(x, vector_percent)
    } else {
        vector_percent(x)
    }
}

#' Replace NAs with zeros.
#'
#' @param x A vector, data frame, or matrix.
#' @return The object x with all NAs replaced by zeros.
#' @examples
#' na_zero(c(1, NA, 2))
#' #=> 1 0 2
na_zero <- function(x) {
    x[is.na(x)] <- 0
    x
}
