#' Tracking Environment
#'
#' Create environment for tracking figures and tables.
#'@export

tracking.env <- new.env()
tracking.env$fig.count <- 0
tracking.env$supp.fig.count <- 0
tracking.env$tbl.count <- 0
tracking.env$supp.tbl.count <- 0