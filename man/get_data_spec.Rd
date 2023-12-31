% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spec.R
\name{get_data_spec}
\alias{get_data_spec}
\title{Read in the variable specification sheet for a SDTM data set}
\usage{
get_data_spec(domain, dir, filename, arrange_by = "Order")
}
\arguments{
\item{domain}{string, SDTM domain or supplemental domain code}

\item{dir}{string, specification directory}

\item{filename}{string, file name of the specification}

\item{arrange_by}{character vector, the column(s) by which to sort the domain
sheet, default is \code{"Order"}}
}
\value{
a data frame of the variable specification for \code{domain}
}
\description{
Reads the specified domain variable specification sheet from an MS Excel file.
}
\details{
The \code{\link[readxl:read_excel]{readxl::read_excel()}} function will causes an access denied warning when
reading in a read-only specification file. This does not affect the data
import. Variables will be arranged in descending order per the \code{"Order"}
column in the specification.
}
\examples{
work_dir <- system.file("extdata", package = "sdtmval")
spec <- get_data_spec(domain = "XX",
                      dir = work_dir,
                      filename = "spec.xlsx")

}
\seealso{
\code{\link[=get_key_vars]{get_key_vars()}}, \code{\link[=get_codelist]{get_codelist()}}, \code{\link[=assign_meta_data]{assign_meta_data()}}
}
