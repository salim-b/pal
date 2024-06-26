% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal-GEN.R
\name{gh_text_file}
\alias{gh_text_file}
\title{Read in a text file from a GitHub repository}
\usage{
gh_text_file(path, owner, name, rev = "HEAD")
}
\arguments{
\item{path}{The path from the repository's root to the desired directory. A \link[fs:fs_path]{path} or character scalar.}

\item{owner}{The repository owner's GitHub user or organization name. A character scalar.}

\item{name}{The repository name. A character scalar.}

\item{rev}{The \href{https://git-scm.com/docs/revisions#Documentation/revisions.txt-emltrevgtltpathgtemegemHEADREADMEememmasterREADMEem}{Git revision expression}
matching the desired Git tree object, e.g. a branch name or another symbolic reference like \code{"HEAD@{yesterday}"} or \code{"HEAD~10"}. A character scalar.}
}
\value{
A character scalar, or an empty character vector in case no text file is found under \code{rev:path}.
}
\description{
Downloads the text file under the specified path from a GitHub repository via \href{https://docs.github.com/graphql}{GitHub's GraphQL API v4} and returns its
content as a string.
}
\details{
Works for both public and private repositories, for the latter you just need to set up a sufficiently authorized \link[gh:gh_token]{GitHub Personal Access Token (PAT)}.

Note that nothing is returned in case of a \href{https://en.wikipedia.org/wiki/Binary_file}{\emph{binary} file}, as if no file at all existed under the given
\code{path}.
}
\examples{
pal::gh_text_file(path = "pal.Rproj",
                  owner = "salim-b",
                  name = "pal",
                  rev = "HEAD~2") |>
  cat()
}
\seealso{
Other GitHub functions:
\code{\link{gh_dir_ls}()},
\code{\link{gh_text_files}()}
}
\concept{gh}
