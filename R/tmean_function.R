#' Trimmed Mean
#'
#' This function can be used to express the trimmed mean of a vector x
#' @param x = vector
#' s = number of smaller values to ignore
#' l = number of larger values to ignore
#' @keywords mean, trimmed
#' @export
#' @examples
#' tmean()
tmean <- function(x, s, l) {
  small <- head(sort(x), s)
  large <- tail(sort(x), l)
  x1 <- setdiff(x, small)
  x2 <- setdiff(x1, large)
  print(mean(x2))
}

