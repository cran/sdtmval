% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format.R
\name{format_chars_and_dates}
\alias{format_chars_and_dates}
\title{Format date and character columns for SDTM tables}
\usage{
format_chars_and_dates(tbl)
}
\arguments{
\item{tbl}{a data frame, the SDTM table}
}
\value{
a modified copy of the \code{tbl} data frame
}
\description{
Converts all date columns to character class and replaces all \code{NA} values in
character/date columns with \code{""}.
}
\details{
This function should be applied as one of the last steps in the data process
but before \code{\link[=assign_meta_data]{assign_meta_data()}}.
}
\examples{
df <- data.frame(
  dates = as.Date(c("2017-02-05", NA)),
  strings = c(NA_character_, "this"),
  nums = c(1, NA)
)
format_chars_and_dates(df)

}
\seealso{
\code{\link[=trim_and_make_blanks_NA]{trim_and_make_blanks_NA()}}
}
