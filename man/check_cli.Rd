% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal-GEN.R
\name{check_cli}
\alias{check_cli}
\title{Check if CLI tool is available on the system}
\usage{
check_cli(cmd, get_cmd_path = FALSE, force_which = FALSE)
}
\arguments{
\item{cmd}{The system command to invoke the CLI tool. A character scalar.}

\item{get_cmd_path}{Return the filesystem path to the CLI tool. If \code{FALSE} (the default), a boolean is returned indicating if the CLI tool is found on the
system or not.}

\item{force_which}{If set to \code{TRUE}, \code{\link[=Sys.which]{Sys.which()}}, which relies on the system command \code{which}, will be used instead of \code{command -v} to determine the
availability of \code{cmd} on Unix-like systems. On Windows, \code{Sys.which()} is used in any case. \code{command -v} is
\href{https://unix.stackexchange.com/q/85249/201803}{generally recommended for bourne-like shells} and therefore is the default on Linux, macOS and other
\href{https://en.wikipedia.org/wiki/Unix-like}{Unixes}.}
}
\value{
A logical scalar if \code{get_cmd_path = FALSE}, otherwise the filesystem \link[fs:path]{path} to the \code{cmd} executable.
}
\description{
Checks if a CLI tool is found on the system's \href{https://en.wikipedia.org/wiki/PATH_(variable)}{\code{PATH}} and optionally returns the executable's filesystem
path.
}
\examples{
pal::check_cli("Rscript")

cmd <- ifelse(xfun::is_windows(), "pandoc.exe", "pandoc")
pal::check_cli(cmd, get_cmd_path = TRUE)
}
\seealso{
Other system interaction functions:
\code{\link{path_script}()}
}
\concept{sys}
