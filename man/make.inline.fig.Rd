% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_inline_fig.R
\name{make.inline.fig}
\alias{make.inline.fig}
\title{print markdown to create a inline figure}
\usage{
make.inline.fig(filename, caption = NULL)
}
\arguments{
\item{filename}{path to file of figure}

\item{caption}{the caption to print below figure using the blockquote markdown syntax. Also creates a link to the original figure. default NULL}
}
\description{
Prints proper markdown to create an inline figure from a file with or without a caption below it. Requires setting `results='asis'` in chunk header.
}
\examples{
```{r example, results='asis'}
plot.file <- "example_plot.png"
caption <- "An example plot."
ggplot::qplot(x = 1:10, y = 1:10) \%>\%
  ggsave(filename = plot.file)
make.inline.fig(plot.file, caption)
```
}
\seealso{
\code{\link{figure.caption}}, \code{\link{opts_chunk}}
}
