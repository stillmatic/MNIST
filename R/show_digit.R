#' Plots an MNIST digit
#'
#' Works by default for the MNIST objects as established here.
#'
#' @param arr784 an 'image'
#' @param col what color to draw the image iwth
#' @param ... other options passed to `image`
#' @importFrom grDevices gray
#' @importFrom graphics image
#'
#' @export
#' @md
#'
#' @examples
#' show_digit(MNIST::mnist_train$x[30,])
show_digit <- function(arr784, col=gray(12:1/12), ...) {
    graphics::image(matrix(arr784, nrow=28)[,28:1], col=col, ...)
}
