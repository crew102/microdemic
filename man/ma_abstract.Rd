% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/abstract.R
\name{ma_abstract}
\alias{ma_abstract}
\title{Fetch abstracts}
\usage{
ma_abstract(query, count = 10, offset = 0, orderby = NULL,
  model = "latest", key = NULL, ...)
}
\arguments{
\item{query}{(character) query terms}

\item{count}{(intger) number of records to return. default: 10}

\item{offset}{(intger) record number to start at. default: 0}

\item{orderby}{(logical) column by which to order. default: none}

\item{model}{(character) Name of the model that you wish to query. One
of 'latest' or 'beta-2015'. Default: latest}

\item{key}{(character) microsoft academic API key, see the \code{Authentication}
section in \link{microdemic-package}}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
data.frame, with two columns: \code{Id} and \code{abstract}
}
\description{
Fetch abstracts
}
\examples{
\dontrun{
ma_abstract(query = "Y=2010", count = 10)
ma_abstract(query = "Y=[2010, 2012)", count = 10)
}
}
