## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(
    fig.width = 3,
    fig.height = 3,
    echo = TRUE
)

## ------------------------------------------------------------------------
library(neuralnet)
library(MNIST)
library(dplyr)

## ------------------------------------------------------------------------
broom::glance(MNIST::mnist_train)

## ------------------------------------------------------------------------
MNIST::mnist_train %>% dplyr::select(y) %>% table

## ----eval=F--------------------------------------------------------------
#  nn <- neuralnet(y ~ ., data = MNIST::mnist_train, ...)

## ------------------------------------------------------------------------
inds <- nnet::class.ind(mnist_train$y)
inds %>% head

## ------------------------------------------------------------------------
colnames(inds) <- paste("val", colnames(inds), sep = "")
f <- as.formula(paste(paste(colnames(inds), collapse = "+"), " ~ ", 
                      paste(names(MNIST::mnist_train)[1:784], collapse = "+")))
f

## ------------------------------------------------------------------------
train <- cbind(MNIST::mnist_train[, 1:784], inds)

