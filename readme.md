
MNIST Image Data
----------------

Chris Hua / `chua@wharton.upenn.edu`

Installation
------------

``` r
install.packages("devtools")
devtools::install_github("stillmatic/MNIST")
```

Usage
-----

Data is exported as `MNIST::mnist_train` and `MNIST::mnist_test`.

``` r
MNIST::mnist_train %>% str
```

    ## List of 3
    ##  $ n: int 60000
    ##  $ x: int [1:60000, 1:784] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ y: Factor w/ 10 levels "0","1","2","3",..: 6 1 5 2 10 3 2 4 2 5 ...

``` r
MNIST::mnist_test %>% str
```

    ## List of 3
    ##  $ n: int 10000
    ##  $ x: int [1:10000, 1:784] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ y: Factor w/ 10 levels "0","1","2","3",..: 8 3 2 1 5 2 5 10 6 10 ...

``` r
MNIST::show_digit(MNIST::mnist_train$x[42,])
```

![](README-unnamed-chunk-4-1.png)

Notes
-----

Credit belongs to [Yann Lecun](http://yann.lecun.com/exdb/mnist/), etc.
