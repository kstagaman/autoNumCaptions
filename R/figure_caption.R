#' Figure Caption
#'
#' Create an auto-numbered, wrapped figure caption
#' @param caption A string containing the caption text.
#' @param caption.width A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{start.tracking}}, \code{\link{wrap.caption}}, \code{\link{supp.fig.caption}}
#' @export
#' @examples
#' data(example_data)
#'
#' plot(example.data$X, example.data$Y, sub = figure.caption("This is a figure"))

figure.caption <- function(caption, caption.width = 98) {
  tracking.env$fig.count <- tracking.env$fig.count + 1
  cap <- paste0("Figure ", tracking.env$fig.count, ". ", caption)
  return(wrap.caption(cap, w = caption.width))
}

