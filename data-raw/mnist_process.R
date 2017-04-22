# pretty much solely taken from https://gist.github.com/brendano/39760

load_image_file <- function(filename) {
    ret = list()
    f = file(filename,'rb')
    readBin(f,'integer',n=1,size=4,endian='big')
    ret$n = readBin(f,'integer',n=1,size=4,endian='big')
    nrow = readBin(f,'integer',n=1,size=4,endian='big')
    ncol = readBin(f,'integer',n=1,size=4,endian='big')
    x = readBin(f,'integer',n=ret$n*nrow*ncol,size=1,signed=F)
    ret$x = matrix(x, ncol=nrow*ncol, byrow=T)
    close(f)
    ret
}

load_label_file <- function(filename) {
    f = file(filename,'rb')
    readBin(f,'integer',n=1,size=4,endian='big')
    n = readBin(f,'integer',n=1,size=4,endian='big')
    y = readBin(f,'integer',n=n,size=1,signed=F)
    close(f)
    y
}

mnist_train <- load_image_file('data-raw/train-images-idx3-ubyte')
mnist_test <- load_image_file('data-raw/t10k-images-idx3-ubyte')

mnist_train$y <- load_label_file('data-raw/train-labels-idx1-ubyte')
mnist_test$y <- load_label_file('data-raw/t10k-labels-idx1-ubyte')

mnist_train$y <- as.factor(mnist_train$y)
mnist_test$y <- as.factor(mnist_test$y)

mnist_train <- mnist_train[-1]
train <- as.data.frame(mnist_train$x)
train$y <- mnist_train$y
mnist_train <- train
rm(train)

mnist_test <- mnist_test[-1]
test <- as.data.frame(mnist_test$x)
test$y <- mnist_test$y
mnist_test <- test
rm(test)

devtools::use_data(mnist_train, overwrite = T)
devtools::use_data(mnist_test, overwrite = T)
