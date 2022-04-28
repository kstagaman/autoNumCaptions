#' Supplemental Figure Caption
#'
#' Create an auto-numbered, wrapped supplemental figure caption
#' @param caption A string containing the caption text.
#' @param s.numbers If it is a supplmental figure, how to you want it formatted: "Supplemental Figure 1" (FALSE) or "Figure S1" (TRUE)? Defaults to FALSE.
#' @param caption.width A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{figure.caption}}, \code{\link{wrap.caption}}
#' @export
#' @examples
#' data(example_data)
#'
#' plot(example.data$X, example.data$Y, sub = supp.fig.caption("This is a figure"))

supp.fig.caption <- function(caption, s.numbers = FALSE, caption.width = 98) {
  tracking.env$supp.fig.count <- tracking.env$supp.fig.count + 1
  if (s.numbers) {
    cap <- paste0("Figure S", tracking.env$supp.fig.count, ". ", caption)
  } else {
    cap <- paste0("Supplemental Figure ", tracking.env$supp.fig.count, ". ", caption)
  }
  return(wrap.caption(cap, w = caption.width))
}