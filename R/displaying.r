#' Print with a newline.
#'
#' Just like \code{cat} with an automatic newline.
#'
#' @param x The object to display.
#' @examples
#' println('foo')
println <- function(x) cat(x, '\n')

#' Terminal Width.
#'
#' Update the width of the terminal. R use 80 columns by default, no
#' matter what the width of your terminal is. Calling \code{tw} set the
#' R's width according to your current terminal's width. If you resize
#' your terminal, you'll have to recall \code{tw} again.
#'
#' @examples
#' tw()
tw <- function() {
    tryCatch({
        width <- as.integer(system('tput cols', intern=TRUE))
        options(width=width)
        cat(paste("Terminal set to ", width, " columns."), '\n')
    }, error=function(err) {
        write('Width set to 80.', stderr())
        options(width=80)
    })
}
