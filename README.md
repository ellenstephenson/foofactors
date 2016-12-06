
This is the README for the foofactors package. This is a toy package made for a course assignment. It is not recommended for general use. Instead use the forcats package.

foofactors
==========

The foofactors packages contains 4 functions to help make taking control of factors easier and less annoying.

To install
==========

``` r
devtools::install_github("ellenstephenson/foofactors")
#> Using GitHub PAT from envvar GITHUB_PAT
#> Downloading GitHub repo ellenstephenson/foofactors@master
#> from URL https://api.github.com/repos/ellenstephenson/foofactors/zipball/master
#> Installing foofactors
#> '/Library/Frameworks/R.framework/Resources/bin/R' --no-site-file  \
#>   --no-environ --no-save --no-restore --quiet CMD INSTALL  \
#>   '/private/var/folders/_8/51lbgnfn3_543wm_gqz9mxhw0000gn/T/Rtmpu10DXR/devtools1b99688e5263/ellenstephenson-foofactors-7bd9901'  \
#>   --library='/Library/Frameworks/R.framework/Versions/3.3/Resources/library'  \
#>   --install-tests
#> 
library(foofactors)
```

fbind()
=======

`fbind()` combines two factors in a way that is more logical than c(a,b)

``` r
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
c(a,b)
#> [1] 1 3 4 2 1 3 4 2
fbind(a,b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

freq\_out
=========

To get a frequency table for the factor levels, use `freq_out()` function.

``` r
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
freq_out(x)
#> # A tibble: 5 × 2
#>        x     n
#>   <fctr> <int>
#> 1      a    20
#> 2      b    23
#> 3      c    28
#> 4      d    12
#> 5      e    17
```

levels\_length
==============

Factors that have only one entry for each level might be better left as character. `levels_length()` tests whether the number of levels is equal to the length of the factor.

``` r
x
#>   [1] c a c e c b a a b c b e c e c b e e c b b a d d c c c b b c e a a b d
#>  [36] c a e a c d b b c c c c a a e a c e a e c e b c d d e b a b c a a e b
#>  [71] b d c b b b b a a d e c a c c e d b a b c d e b c c d a d e
#> Levels: a b c d e
levels(x)
#> [1] "a" "b" "c" "d" "e"
length(x)
#> [1] 100
levels_length(x)
#> [1] FALSE

a
#> [1] character hits      your      eyeballs 
#> Levels: character eyeballs hits your
levels(a)
#> [1] "character" "eyeballs"  "hits"      "your"
length(a)
#> [1] 4
levels_length(a)
#> [1] TRUE
```

factor\_levels
==============

`factor()` will put the levels of the new factor in alphabetical order. `factor_levels` creates a factor where the levels are in the order they appear in the dataset.

``` r
time <- c("morning", "noon", "evening")
factor(time)
#> [1] morning noon    evening
#> Levels: evening morning noon
factor_levels(time)
#> [1] morning noon    evening
#> Levels: morning noon evening
levels(factor(time)) == time
#> [1] FALSE FALSE FALSE
```
