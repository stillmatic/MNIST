% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{datasets}
\alias{datasets}
\alias{mnist_train}
\alias{mnist_test}
\title{MNIST dataset}
\format{Dataframe with 785 variables.
\itemize{
\item V1:V784: variables which correspond to pixel darkness, at a particular
pixel in the image.  Each row corresponds to an observation and each
column corresponds to a pixel in the image.
\item y: Corresponds to number between 0 and 9, which is the digit written down.
Preprocessed into an R factor.
}}
\source{
\href{http://yann.lecun.com/exdb/mnist/}{Yann Lecun}
}
\usage{
mnist_train

mnist_test
}
\description{
The MNIST database (Modified National Institute of Standards and Technology
database) is a large database of handwritten digits that is commonly used
for training various image processing systems.

\itemize{
\item MNIST dataset - training: 10000 observations of 28x28 image data.
Corresponds to digits between 0 and 9.
}

\itemize{
\item MNIST dataset - testing: 60000 observations of 28x28 image data.
Corresponds to digits between 0 and 9.
}
}
\keyword{datasets}
