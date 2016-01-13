#' Trim Leading and Trailing Whitespace
#'
#' \code{trim_ws} trims leading and trailing whitespace from data.
#'
#' @param x A data frame or vector.
#' @param ... Additional optional arguments to be passed onto
#'   \code{\link{trimws}}.
#' @export
#' @examples
#' # Toy example
#' d <- data.frame(x = c(" a ", "b ", "c"),
#'                 y = c("   1 ", "2", " 3"),
#'                 z = c(4, 5, 6))
#' print(d)  # print data as is
#' trim_ws(d)  # print data with whitespace trimmed off
#' sapply(trim_ws(d), class)  # check that column types are preserved
trim_ws <- function(x, ...) {
  UseMethod("trim_ws")
}


#' @export
trim_ws.default <- function(x, ...) {
  trimws(x, ...)
}


#' @export
trim_ws.data.frame <- function(x, ...) {
  as.data.frame(lapply(x, function(y) {
    if (is.numeric(y)) y else trim_ws(y, ...)
  }), stringsAsFactors = FALSE)
}
