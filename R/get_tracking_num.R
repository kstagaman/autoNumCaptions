#' Get Figure/Table Number
#'
#' Get current figure, table, supplemental figure, and/or supplemental table number
#' @param type A character vector indicating whether you want the current "figure", "table", "supplemental figure", or "supplemental table" number. Defaults is "figure".
#' @export
#' @examples
#' data(example_data)
#'
#' plot(example.data$X, example.data$Y, sub = figure.caption("This is a figure"))
#'
#' get.tracking.num(type = "figure")
#'
#' plot(example.data$X, example.data$Y, sub = figure.caption("This is another figure"))

get.tracking.num <- function(type = "figure") {
  good.types <- c("figure", "table", "supplemental figure", "supplemental table")
  type <- tolower(type)
  if (!any(type %in% good.types)) {
    stop(
      "type must be get to 'figure', 'table', 'supplemental figure', and/or 'supplemental table'"
    )
  } else {
    ifelse(
      type == "figure", tracking.env$fig.count,
      ifelse(
        type == "supplemental figure", tracking.env$supp.fig.count,
        ifelse(
          type == "table", tracking.env$tbl.count,
          tracking.env$supp.tbl.count
        )
      )
    ) %>% return()
  }
}

