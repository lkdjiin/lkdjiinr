# R Utility Functions

Some of my personal R utility functions in a package.

This is mostly a pretext to make my first R package ;)

## Install

    install_github('lkdjiin/lkdjiinr')

## Usage

    library(lkdjiinr)

    library(help=lkdjiinr)

### Display Functions

**`println`** Print with a newline.

    println('foo')

**`tw`** Terminal Width.

*Update the width of the terminal. R use 80 columns by default, no
matter what the width of your terminal is. Calling `tw` set the
R's width according to your current terminal's width. If you resize
your terminal, you'll have to recall `tw` again.*

    tw()

### NAs Functions

**`na_count`** Count number of NAs in a vector.

    x <- c(NA, 'a', 'b', NA, 'c')
    na_count(x)
    #=> 2

**`nas`** Alias to `na_count`

**`na_prop`** Proportion of NAs in a vector.

    x <- c(NA, 'a', 'b', NA, 'c')
    na_prop(x)
    #=> 0.4

**`na_percent`** Percentage of NAs in a vector.

    x <- c(NA, 'a', 'b', NA, 'c')
    na_percent(x)
    #=> 40

### String Functions

**`%+%`** String Concatenation Operator.

*Because, you know, the world is in great need of an operator to concatenate
strings.*

    "foo" %+% "bar"
    #=> "foobar"

**`tr`** Alias to chartr.

    tr("foo", "o", "u")
    #=> "fuu"

### Misc Functions

**`now`** Alias to Sys.time

    now()

**`.`** Recall last computed value.

*Useful function to working interactively. It's a king of shorter
alias for `.Last.value`.*

    rnorm(3)
    #=> 1.3475191 -0.2122325 -1.4027707
    .()
    #=> 1.3475191 -0.2122325 -1.4027707


**`cd`** Alias to setwd.

    cd('foo')
    getwd()
    #=> "foo"


## License

MIT
