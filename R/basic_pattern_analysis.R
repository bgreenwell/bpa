#' @keywords internal
get_pattern <- function(x, show_whitespace = FALSE) {
  if (!is.character(x)) {
    x <- as.character(x)
  }
  x <- gsub("[a-z]", "a", x)
  x <- gsub("[A-Z]", "A", x)
  x <- gsub("[0-9]", "9", x)
  if (show_whitespace) {
    x <- gsub("\\s", "w", x)
  }
  x
}

#' Basic Pattern Analysis
#'
#' Perform a basic pattern analysis
#'
#' @param x A data frame or character vector.
#' @param unique_only Logical indicating wether or not to only show the unique
#'   patterns. Default is \code{FALSE}.
#' @param ... Additional optional arguments to be passed onto \code{llply}.
#' @rdname bpa
#' @export
#' @examples
#' basic_pattern_analysis(iris)
#' basic_pattern_analysis(iris, unique_only = TRUE)
basic_pattern_analysis <- function(x, unique_only = FALSE,
                                   show_whitespace = FALSE) {
  UseMethod("basic_pattern_analysis")
}


#' @rdname bpa
#' @export
basic_pattern_analysis.default <- function(x, unique_only = FALSE,
                                           show_whitespace = FALSE) {
  if (unique_only) {
    table(get_pattern(x, show_whitespace = show_whitespace))
  } else {
    get_pattern(x, show_whitespace = show_whitespace)
  }
}


#' @rdname bpa
#' @importFrom plyr llply
#' @export
basic_pattern_analysis.data.frame <- function(x, unique_only = FALSE,
                                              show_whitespace = FALSE, ...) {
  z <- llply(x, basic_pattern_analysis.default, unique_only = unique_only,
             show_whitespace = show_whitespace, ...)
  if (unique_only) {
    z
  } else {
    data.frame(z)
  }
}
