#' Wrap Caption
#'
#' Adds line breaks at the appropriate spots in a caption string
#' @param caption A string containing the caption text.
#' @param w A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{strwrap}}, \code{\link{paste}}
#' @export

wrap.caption <- function(caption, w = 98) {
  split.cap <- strwrap(caption, width = w)
  wrapped.cap <- paste(split.cap, collapse = "\n")
  return(wrapped.cap)
}