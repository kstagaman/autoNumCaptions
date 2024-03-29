% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table_caption.R
\name{table.caption}
\alias{table.caption}
\title{Table Caption}
\usage{
table.caption(caption, caption.width = 98)
}
\arguments{
\item{caption}{A string containing the caption text.}

\item{caption.width}{A positive integer giving the target column for wrapping lines in the output. Defaults to 98}
}
\description{
Create an auto-numbered, wrapped table caption
}
\examples{
data(example_data)

knitr::kable(example.data, format = "latex", caption = table.caption("This is a table"))
}
\seealso{
\code{\link{wrap.caption}}, \code{\link{supp.tbl.caption}}
}
