#' Set Figure/Table Numbers
#'
#' Set figure, table, supplemental figure, and/or supplemental table numbers to a specific value
#' @param type A character vector indicating whether you want figure, table, supplemental figure, and/or supplemental table numbers set to specific values. Defaults to all four: c("figure", "table", "supplmental figure", "supplemental table")
#' @param set.to A positive integer vector giving the the new values you want set for figure/table numbers. Must be in same order as the type vector, or a single value to set them all to. Defaults to 0.
#' @export
#' @examples
#' data(example_data)
#'
#' plot(example.data$X, example.data$Y, sub = figure.caption("This is a figure"))
#'
#' set.tracking.nums(type = "figure", set.to = 3)
#'
#' plot(example.data$X, example.data$Y, sub = figure.caption("This is another figure"))

set.tracking.nums <- function(type = c("figure", "table", "supplemental figure", "supplemental table"), set.to = 0) {
  good.types <- c("figure", "table", "supplemental figure", "supplemental table")
  type <- tolower(type)
  if (!any(type %in% good.types)) {
    stop("type must be set to 'figure', 'table', 'supplemental figure', and/or 'supplemental table'")
  } else if (length(set.to) > 1 & length(set.to) != length(type)){
    stop("length of of 'set.to' must be 1 or the same length as 'type'")
  } else {
    if ("figure" %in% type) {
      tracking.env$fig.count <- ifelse(
        length(set.to) > 1, set.to[which(type == "figure")], set.to
        )
    }
    if ("supplemental figure" %in% type) {
      tracking.env$supp.fig.count <- ifelse(
        length(set.to) > 1, set.to[which(type == "supplemental figure")], set.to
      )
    }
    if ("table" %in% type) {
      tracking.env$tbl.count <- ifelse(
        length(set.to) > 1, set.to[which(type == "table")], set.to
      )
    }
    if ("supplemental table" %in% type) {
      tracking.env$supp.tbl.count <- ifelse(
        length(set.to) > 1, set.to[which(type == "supplemental table")], set.to
      )
    }
  }
}

