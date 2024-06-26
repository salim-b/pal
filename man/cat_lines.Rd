% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal-GEN.R
\name{cat_lines}
\alias{cat_lines}
\title{Print \code{x} as newline-separated character vector using \code{cat()}.}
\usage{
cat_lines(...)
}
\arguments{
\item{...}{The \R object(s) to print. \link[rlang:dyn-dots]{Dynamic dots} are supported.}
}
\value{
None (invisible \code{NULL}).
}
\description{
Convenience wrapper around \code{\link[=as_chr]{as_chr()}} and \code{\link[base:cat]{cat()}}, mainly intended for interactive use.
}
\examples{
library(magrittr)

fs::path_package(package = "pal",
                 "DESCRIPTION") \%>\%
  readr::read_lines() \%>\%
  pal::cat_lines()

# recursive conversion to type character or not
to_convert <-
  list(tibble::tibble(a = 1:3), "A", factor("wonderful"), xfun::strict_list("day")) \%T>\%
  print()

to_convert \%>\% pal::cat_lines()
to_convert \%>\% cli::cat_line()
}
\seealso{
\code{\link[cli:cat_line]{cli::cat_line()}} for a faster alternative that doesn't \emph{recursively} convert its input to type character.

\code{\link[xfun:raw_string]{xfun::raw_string()}} (and \code{\link[xfun:file_string]{xfun::file_string()}}) for an alternative approach to the same use case (but without any conversion to type character at all).

Other string functions:
\code{\link{as_chr}()},
\code{\link{as_comment_string}()},
\code{\link{as_string}()},
\code{\link{dsv_colnames}()},
\code{\link{escape_lf}()},
\code{\link{fuse_regex}()},
\code{\link{prettify_nr}()},
\code{\link{prose_ls}()},
\code{\link{sentenceify}()},
\code{\link{wrap_chr}()}
}
\concept{string}
