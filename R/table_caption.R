#' Table Caption
#'
#' Create an auto-numbered, wrapped table caption
#' @param caption A string containing the caption text.
#' @param caption.width A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{start.tracking}}, \code{\link{wrap.caption}}, \code{\link{supp.tbl.caption}}
#' @export
#' @examples
#' data(example_data)
#'
#' knitr::kable(example.data, format = "latex", caption = table.caption("This is a table"))

table.caption <- function(caption, caption.width = 98) {
  tracking.env$tbl.count <- tracking.env$tbl.count + 1
  cap <- paste0("Table ", tracking.env$tbl.count, ". ", caption)
  return(wrap.caption(cap, w = caption.width))
}