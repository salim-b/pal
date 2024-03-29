% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal.gen.R
\name{flatten_path_tree}
\alias{flatten_path_tree}
\title{Flatten path tree}
\usage{
flatten_path_tree(path_tree, parent_path = NULL)
}
\arguments{
\item{path_tree}{Directory tree. A nested list of named lists and character vectors.}

\item{parent_path}{Optional parent path of \code{path_tree}. A character scalar.}
}
\value{
A character vector.
}
\description{
Flattens a hierarchical list of path elements into a character vector of full paths.
}
\examples{
list("root_dir" = list("subdir1",
                       "subdir2" = list("file1.ext"),
                       "file2.ext")) |>
  pal::flatten_path_tree() |>
  pal::cat_lines()
}
\seealso{
Other path functions:
\code{\link{draw_path_tree}()},
\code{\link{path_mod_time}()}
}
\concept{path}
