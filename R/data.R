#' MNIST dataset - training
#'
#' 10000 observations of 28x28 image data. Corresponds to digits between
#' 0 and 9.
#'
#' @format List with 3 elements:
#' 1. **n**: number of elements
#' 2. **x**: n x 784 matrix. Each row corresponds to an observation and each
#' column corresponds to a pixel in the image.
#' 3. **y**: n-entry vector. Responds to number between 0 and 9, which is the
#' digit written down. Preprocessed into an R factor.
#' @source [Yann Lecun](http://yann.lecun.com/exdb/mnist/)
#' @md
"mnist_train"

#' MNIST dataset - testing
#'
#' 60000 observations of 28x28 image data. Corresponds to digits between
#' 0 and 9.
#'
#' @format List with 3 elements:
#' 1. **n**: number of elements
#' 2. **x**: n x 784 matrix. Each row corresponds to an observation and each
#' column corresponds to a pixel in the image.
#' 3. **y**: n-entry vector. Responds to number between 0 and 9, which is the
#' digit written down. Preprocessed into an R factor.
#' @source [Yann Lecun](http://yann.lecun.com/exdb/mnist/)
#' @md
"mnist_test"
