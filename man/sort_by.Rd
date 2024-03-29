% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal.gen.R
\name{sort_by}
\alias{sort_by}
\title{Sort vector by another vector}
\usage{
sort_by(x, by)
}
\arguments{
\item{x}{Vector to be ordered.}

\item{by}{Reference vector which \code{x} will be ordered by.}
}
\value{
A permutation of \code{x}.
}
\description{
Orders a vector \code{x} by the order of another vector \code{by}.
}
\examples{
library(magrittr)

# generate 100 random letters
random_letters <-
  letters |>
  magrittr::extract(sample.int(n = 26L,
                               size = 100L,
                               replace = TRUE)) \%T>\%
  print()

# sort the random letters alphabetically
random_letters |> pal::sort_by(by = letters)
}
