#' Check the length of the factor against the number of levels
#'
#'This function detects factors that should be character because # unique values = length
#'This function does not convert these problematic factors to character.
#'
#' @param x factor
#'
#' @return logical
#' @export
#' @examples
#' freq_out(iris$Species)
#' levels_length(iris$Species)

levels_length <- function(x) {
	length(x) == dplyr::n_distinct(levels(x))
}
