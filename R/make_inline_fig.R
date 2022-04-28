#' print markdown to create a inline figure
#'
#' Prints proper markdown to create an inline figure from a file with or without a caption below it. Requires setting `results='asis'` in chunk header.
#' @param filename path to file of figure
#' @param caption the caption to print below figure using the blockquote markdown syntax. Also creates a link to the original figure. default NULL
#' @seealso \code{\link{figure.caption}}, \code{\link{opts_chunk}}
#' @export
#' @examples
#' ```{r example, results='asis'}
#' plot.file <- "example_plot.png"
#' caption <- "An example plot."
#' ggplot::qplot(x = 1:10, y = 1:10) %>%
#'   ggsave(filename = plot.file)
#' make.inline.fig(plot.file, caption)
#' ```

make.inline.fig <- function(filename, caption = NULL) {
  paste0("![](", filename, ")") %>%
    cat(sep = "\n") %>%
    cat(sep = "\n")
  if (!is.null(caption)) {
    figure.caption(caption = caption) %>%
      paste0(">", .) %>%
      stringr::str_replace(
        "(Figure \\d+\\.)",
        paste0("\\[\\1\\]\\(", filename, ")")
      ) %>%
      cat(sep = "\n") %>%
      cat(sep = "\n")
  }
}