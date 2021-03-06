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
#' show_digit(MNIST::mnist_train[30,])
#' show_digit(MNIST::mnist_train[42,])
show_digit <- function(arr784, col=gray(12:1/12), ...) {
    base_par <- par(pty = "s", no.readonly = T)
    arr784 <- unlist(arr784[1:784])
    graphics::image(matrix(arr784, nrow=28)[,28:1], col=col, ...)
    par(base_par)
}
