% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal-GEN.R
\name{roxy_obj}
\alias{roxy_obj}
\title{Get roxygen2 block object}
\usage{
roxy_obj(blocks, obj_name)
}
\arguments{
\item{blocks}{A list of \code{\link[roxygen2:roxy_block]{roxy_block}} objects as returned by \code{\link[=roxy_blocks]{roxy_blocks()}}.}

\item{obj_name}{The object name to extract, usually a function name. A character scalar.}
}
\value{
A \code{\link[roxygen2:roxy_block]{roxy_block}} object.
}
\description{
Extracts a single object from a list of \code{\link[roxygen2:roxy_block]{roxy_block}} objects.
}
\seealso{
Other package documentation functions:
\code{\link{roxy_blocks}()},
\code{\link{roxy_tag_value}()}
}
\concept{roxy}
