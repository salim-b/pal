% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal-GEN.R
\name{cli_process_expr}
\alias{cli_process_expr}
\title{Evaluate an expression with \href{https://cli.r-lib.org/}{cli} process indication}
\usage{
cli_process_expr(
  expr,
  msg,
  msg_done = paste(msg, "... done"),
  msg_failed = paste(msg, "... failed"),
  msg_class = "alert-info",
  done_class = "alert-success",
  failed_class = "alert-danger",
  env = parent.frame()
)
}
\arguments{
\item{expr}{An expression to be evaluated.}

\item{msg}{The message to show to indicate the start of the process or
computation. It will be collapsed into a single string, and the first
line is kept and cut to \code{\link[cli:console_width]{console_width()}}.}

\item{msg_done}{The message to use for successful termination.}

\item{msg_failed}{The message to use for unsuccessful termination.}

\item{msg_class}{The style class to add to the message. Use an empty
string to suppress styling.}

\item{done_class}{The style class to add to the successful termination
message. Use an empty string to suppress styling.a}

\item{failed_class}{The style class to add to the unsuccessful
termination message. Use an empty string to suppress styling.a}

\item{env}{Default environment to evaluate \code{expr}, as well as possible \link[glue:glue]{glue} expressions within \code{msg}, in.}
}
\value{
The result of the evaluated \code{expr}, invisibly.
}
\description{
Convenience wrapper around \code{\link[cli:cli_process_start]{cli::cli_process_start()}}, \code{\link[cli:cli_process_start]{cli::cli_process_done()}} and \code{\link[cli:cli_process_start]{cli::cli_process_failed()}}.
}
\examples{
\donttest{
pal::cli_process_expr(Sys.sleep(3L), "Zzzz")}

\dontrun{
# "russian roulette"
msg <- "Spinning the cylinder \U0001F91E … "
pal::cli_process_expr(msg = msg,
                      msg_done = paste0(msg, "and pulling the trigger – lucky again. \U0001F60C"),
                      msg_failed = paste0(msg, "and pulling the trigger – head blast!"),
                      expr = {
                        if (interactive()) Sys.sleep(1)
                        if (runif(1L) < 0.4) stop("\U0001F92F\u2620")
                      })}
}
