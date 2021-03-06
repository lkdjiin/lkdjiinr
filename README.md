# R Utility Functions

Some of my personal R utility functions in a package.

This is mostly a pretext to make my first R package, but I think you could
find some functions useful.

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

**`na_count`** Count number of NAs in a vector or in a data frame.

```r
x <- c(NA, 'a', 'b', NA, 'c')
na_count(x)
#=> 2
```

```r
df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
na_count(df)
#=> x y z 
#=> 0 1 2
```

**`nas`** Alias to `na_count`

**`na_prop`** Proportion of NAs in a vector or a data frame.

```r
x <- c(NA, 'a', 'b', NA, 'c')
na_prop(x)
#=> 0.4
```

```r
df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
na_prop(df)
#=>   x   y   z 
#=> 0.0 0.5 1.0
```

**`na_percent`** Percentage of NAs in a vector or a data frame.

```r
x <- c(NA, 'a', 'b', NA, 'c')
na_percent(x)
#=> 40
```

```r
df <- data.frame(x=c(1, 2), y=c(3, NA), z=c(NA, NA))
na_percent(df)
#=> x   y   z 
#=> 0  50 100 
```

**`na_zero`** Replace NAs by zeros in a vector, a data frame, or a matrix.

```r
x <- c(1, NA, 2, NA)
na_zero(x)
#=> 1 0 2 0
```

### String Functions

**`tr`** Alias to chartr, with different argument's order.

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

## Questions and/or Comments

Feel free to email [Xavier Nayrac](mailto:xavier.nayrac@gmail.com)
with any questions, or contact me on [twitter](https://twitter.com/lkdjiin).
