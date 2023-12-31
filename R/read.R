#' Import EDC data tables
#'
#' Reads-in EDC data table .csv files and puts them in a list.
#'
#' The file encoding will be UTF-8.
#'
#' @param edc_tbls character vector of EDC table file names (without extension)
#' @param dir string, EDC data directory
#'
#' @returns a named list of data frames where the names are taken from `edc_tbls`
#'  and the data frames are the EDC data tables
#' @export
#'
#' @seealso [read_sdtm_tbls()]
#'
#' @examples
#' edc_tbls <- c("xx", "vd")
#' edc_dir <- system.file("extdata", package = "sdtmval")
#' edc_dat <- read_edc_tbls(edc_tbls, dir = edc_dir)
#'
read_edc_tbls <- function(edc_tbls, dir) {
  edc_paths <- setNames(file.path(dir, paste0(edc_tbls, ".csv")), edc_tbls)
  edc_dat <- purrr::map(edc_paths,
    read.csv,
    stringsAsFactors = F,
    encoding = "UTF-8",
    na.strings = NULL
  )
  return(edc_dat)
}


#' Import SDTM data tables
#'
#' Reads-in SDTM data tables store as .sas7bdat files and puts them in a list.
#'
#' The file encoding will be UTF-8.
#'
#' @param sdtm_tbls character vector of SDTM table file names (without extension)
#' @param dir string, the directory containing the production SDTM tables
#'
#' @returns a named list of data frames where the names are taken from
#' `sdtm_tbls` and the data frames are the SDTM data
#' @export
#'
#' @seealso [read_edc_tbls()]
#'
#' @examples
#' sdtm_tbls <- "dm"
#' sdtm_dir <- system.file("extdata", package = "sdtmval")
#' sdtm_dat <- read_sdtm_tbls(sdtm_tbls, dir = sdtm_dir)
#'
read_sdtm_tbls <- function(sdtm_tbls, dir) {
  sdtm_paths <- setNames(
    file.path(dir, paste0(sdtm_tbls, ".sas7bdat")),
    sdtm_tbls
  )
  sdtm_dat <- purrr::map(sdtm_paths,
    haven::read_sas,
    encoding = "UTF-8"
  )
  return(sdtm_dat)
}
