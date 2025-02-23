% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ATC_classification.R
\name{get_atc_stats}
\alias{get_atc_stats}
\title{Get ATC Statistics}
\usage{
get_atc_stats(
  conn,
  schema,
  atc_code,
  start_date = "2016-01-01",
  end_date = "2024-12-31"
)
}
\arguments{
\item{conn}{A DBI connection object}

\item{schema}{Character string with the database schema name}

\item{atc_code}{Character string with the ATC code}

\item{start_date}{Start date for the analysis period (YYYY-MM-DD)}

\item{end_date}{End date for the analysis period (YYYY-MM-DD)}
}
\value{
A data frame with prescription statistics
}
\description{
Retrieves prescription statistics for a specific ATC category.
}
\examples{
\dontrun{
conn <- DBI::dbConnect(...)
stats <- get_atc_stats(conn, "cdm_schema", "C", "2020-01-01", "2020-12-31")
DBI::dbDisconnect(conn)
}
}
