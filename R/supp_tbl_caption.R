#' Supplemental Table Caption
#'
#' Create an auto-numbered, wrapped supplemental table caption
#' @param caption A string containing the caption text.
#' @param s.numbers If it is a supplmental figure, how to you want it formatted: "Supplemental Table 1" (FALSE) or "Table S1" (TRUE)? Defaults to FALSE.
#' @param caption.width A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{table.caption}}, \code{\link{wrap.caption}}
#' @export
#' @examples
#' data(example_data)
#'
#' knitr::kable(example.data, format = "latex", caption = supp.tbl.caption("This is a table"))

supp.tbl.caption <- function(caption, s.numbers = FALSE, caption.width = 98) {
  tracking.env$supp.tbl.count <- tracking.env$supp.tbl.count + 1
  if (s.numbers) {
    cap <- paste0("Table S", tracking.env$supp.tbl.count, ". ", caption)
  } else {
    cap <- paste0("Supplemental Table ", tracking.env$supp.tbl.count, ". ", caption)
  }
  return(wrap.caption(cap, w = caption.width))
}