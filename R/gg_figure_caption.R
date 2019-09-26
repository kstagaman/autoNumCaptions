#' ggplot Figure Caption
#'
#' Add an auto-numbered caption to a ggplot.
#' @param caption A string containing the caption text.
#' @param supplemental Is this a supplemental figure? Defaults to FALSE.
#' @param s.numbers If it is a supplmental figure, how to you want it formatted: "Supplemental Figure 1" (FALSE) or "Figure S1" (TRUE)? Defaults to FALSE.
#' @param caption.width A positive integer giving the target column for wrapping lines in the output. Defaults to 98
#' @seealso \code{\link{ggplot2::labs}}, \code{\link{figure.caption}}, \code{\link{supp.fig.caption}}
#' @export
#' @examples
#' data(example_data)
#'
#' ggplot(example.data, aes(x = X, y = Y)) +
#'   geom_point() +
#'   gg_figure_caption(caption = "This is a figure")

gg_figure_caption <- function(caption, supplemental = FALSE, s.numbers = FALSE, caption.width = 98)
{
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package \"ggplot2\" needed for this function to work. Please install it.",
         call. = FALSE)
  } else {
    if (supplemental) {
      gg_cap <- ggplot2::labs(
        caption = supp.fig.caption(caption, s.numbers = s.numbers, caption.width = caption.width)
      )
    } else {
      gg_cap <- ggplot2::labs(
        caption = figure.caption(caption, caption.width = caption.width)
      )
    }
    return(gg_cap)
  }
}