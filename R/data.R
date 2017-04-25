#' MNIST dataset
#'
#' The MNIST database (Modified National Institute of Standards and Technology
#' database) is a large database of handwritten digits that is commonly used
#' for training various image processing systems.
#'
#' @format Dataframe with 785 variables.
#'
#' * V1:V784: variables which correspond to pixel darkness, at a particular
#' pixel in the image.  Each row corresponds to an observation and each
#' column corresponds to a pixel in the image.
#' * y: Corresponds to number between 0 and 9, which is the digit written down.
#' Preprocessed into an R factor.
#' @md
#' @source [Yann Lecun](http://yann.lecun.com/exdb/mnist/)
#' @name datasets
NULL

#' * MNIST dataset - training: 10000 observations of 28x28 image data.
#' Corresponds to digits between 0 and 9.
#'
#' @rdname datasets
#' @md
"mnist_train"

#' * MNIST dataset - testing: 60000 observations of 28x28 image data.
#' Corresponds to digits between 0 and 9.
#'
#' @rdname datasets
#' @md
"mnist_test"
