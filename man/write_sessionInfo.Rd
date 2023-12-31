% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write.R
\name{write_sessionInfo}
\alias{write_sessionInfo}
\title{Write R session information for a script to a .txt file}
\usage{
write_sessionInfo(filename, dir = NULL)
}
\arguments{
\item{filename}{a string, the script file name (with or without .R extension)}

\item{dir}{a string, the directory to write to, default is \code{NULL} which means
the current working directory will be used}
}
\value{
nothing
}
\description{
Writes a .txt file of the output from \code{\link[utils:sessionInfo]{utils::sessionInfo()}} with the file
name \verb{[filename]_sessionInfo.txt}. By creating a log of the R session
conditions a script was run with, results from the script can be reproduced
in the future.
}
\examples{
path <- tempdir()
write_sessionInfo(filename = "test.R", dir = path)

}
\seealso{
\code{\link[=convert_to_script]{convert_to_script()}}
}
